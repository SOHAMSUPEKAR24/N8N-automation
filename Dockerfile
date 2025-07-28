FROM n8nio/n8n

COPY workspace.json /data/workspace.json
COPY init.sh /init.sh

RUN chmod +x /init.sh

ENTRYPOINT ["/init.sh"]
