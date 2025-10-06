# #!/bin/bash
# set -euo pipefail
# echo "Fixing ownership and permissions..."

# chown -R www-data:www-data /var/www/node-app
# find /var/www/node-app -type f -exec chmod 644 {} \;
# find /var/www/node-app -type d -exec chmod 755 {} \;

# # make sure scripts are executable
# chmod +x /var/www/node-app/scripts/*.sh || true

