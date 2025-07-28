FROM n8nio/n8n

# Copy your exported workflow into the container
COPY workspace.json /data/workspace.json

# Load the workflows on start
CMD ["sh", "-c", "n8n import:workflow --input /data/workspace.json && n8n start"]
