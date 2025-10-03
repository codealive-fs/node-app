#!/bin/bash
set -euo pipefail
echo "Stopping node-app (if running)..."

if systemctl list-units --full -all | grep -Fq "node-app.service"; then
  if systemctl is-active --quiet node-app; then
    systemctl stop node-app || true
  fi
fi
