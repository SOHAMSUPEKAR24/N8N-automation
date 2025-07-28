#!/bin/sh

# Import workflow
n8n import:workflow --input /data/workspace.json

# Start N8N
n8n start
