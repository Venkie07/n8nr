# Use official n8n image
FROM n8nio/n8n:latest

# Ensure data folder exists
RUN mkdir -p /home/node/.n8n/data

# Copy workflows
COPY ./workflows /home/node/.n8n/workflows

# Copy dummy data folder
COPY ./data /home/node/.n8n/data

# Ensure correct permissions
RUN chown -R node:node /home/node/.n8n/data

# Expose default port
EXPOSE 5678

# Use CMD only (official n8n image already has entrypoint)
USER node
ENTRYPOINT ["n8n"] 
CMD ["start"]
