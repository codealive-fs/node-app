
#!/bin/bash
set -euo pipefail
echo "Installing app dependencies on instance..."

cd /var/www/node-app

# If Node isn't present on instance, fail early (prefer building in CodeBuild)
if ! command -v node >/dev/null 2>&1; then
  echo "ERROR: node is not installed on this instance. Either install Node globally or use CodeBuild to produce artifacts."
  exit 1
fi

# install production dependencies
npm ci --production
