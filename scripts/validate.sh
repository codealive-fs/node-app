
#!/bin/bash
set -euo pipefail
echo "Validating node-app is running..."

sleep 5
STATUS=$(systemctl is-active node-app || true)

if [ "$STATUS" != "active" ]; then
  echo "node-app service is not active!"
  exit 1
fi
