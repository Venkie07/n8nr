# Use the official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node/.n8n

# Copy your workflows
COPY ./workflows /home/node/.n8n/workflows

# Ensure a data folder exists for SQLite
COPY ./data /home/node/.n8n/data

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
