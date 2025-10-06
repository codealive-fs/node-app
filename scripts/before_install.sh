#!/bin/bash
set -e

echo ">>> Stopping Node.js service before deployment..."
sudo systemctl stop node-app || true

# Backup existing release
timestamp=$(date +%s)
if [ -d /var/www/node-app ]; then
  echo ">>> Backing up existing app to /var/www/node-app-backup-$timestamp"
  sudo mv /var/www/node-app /var/www/node-app-backup-$timestamp
fi
