# Use official n8n image
FROM n8nio/n8n:latest

# Copy workflows
COPY ./workflows /home/node/.n8n/workflows

# Copy data folder
COPY ./data /home/node/.n8n/data

# Expose port
EXPOSE 5678

# Start n8n
ENTRYPOINT ["n8n"]
CMD ["start"]
