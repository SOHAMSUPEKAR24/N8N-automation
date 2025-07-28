FROM n8nio/n8n

# Copy workflow and init script to /data (writable)
COPY workspace.json /data/workspace.json
COPY init.sh /data/init.sh

# Set permissions before switching context
USER root
RUN chmod +x /data/init.sh
USER node

# Use /data/init.sh as entrypoint
ENTRYPOINT ["/data/init.sh"]
