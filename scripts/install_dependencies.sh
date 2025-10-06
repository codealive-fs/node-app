#!/bin/bash
set -e

echo ">>> Installing Node.js dependencies..."
cd /var/www/node-app

# Install dependencies
npm install --production
