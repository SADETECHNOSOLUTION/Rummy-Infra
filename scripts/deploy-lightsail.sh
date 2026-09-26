#!/usr/bin/env bash
set -euo pipefail
JAR=${1:?jar path required}; HOST=${DEPLOY_HOST:?}; USER=${DEPLOY_USER:-ubuntu}
scp "$JAR" "$USER@$HOST:/tmp/rummy-app.jar"
ssh "$USER@$HOST" 'sudo install -o rummy -g rummy -m 0644 /tmp/rummy-app.jar /opt/rummy/app.jar && sudo systemctl restart rummy-backend && sleep 3 && curl -fsS http://127.0.0.1:8080/actuator/health'
