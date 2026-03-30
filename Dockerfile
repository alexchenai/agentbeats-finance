FROM python:3.12-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy agent code
COPY agent.py .
COPY server.py .
COPY officeqa_lookup.py .

# Expose A2A port
EXPOSE 8080

# Health check - A2A agent card endpoint
HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
    CMD curl -sf http://localhost:8080/.well-known/agent.json || exit 1

# Run the finance agent using a2a-sdk server
ENTRYPOINT ["python", "server.py"]
CMD ["--host", "0.0.0.0", "--port", "8080"]
