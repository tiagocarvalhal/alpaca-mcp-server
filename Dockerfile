FROM python:3.11-slim

WORKDIR /app

# Copy dependencies and server file
COPY requirements.txt alpaca_mcp_server.py ./
COPY .github/core .github/core

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Run the MCP server
CMD ["python", "alpaca_mcp_server.py"]
