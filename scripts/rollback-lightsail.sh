#!/usr/bin/env bash
set -euo pipefail
HOST=${DEPLOY_HOST:?}; USER=${DEPLOY_USER:-ubuntu}; RELEASE=${1:?release jar path on host required}
ssh "$USER@$HOST" "sudo cp '$RELEASE' /opt/rummy/app.jar && sudo systemctl restart rummy-backend"
