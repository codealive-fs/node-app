#!/bin/bash
set -e

echo ">>> Restarting Node.js service..."

# Reload systemd config and restart the service
sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl restart node-app
sudo systemctl enable node-app

# Show service status (for debugging logs)
sudo systemctl status node-app --no-pager -l
