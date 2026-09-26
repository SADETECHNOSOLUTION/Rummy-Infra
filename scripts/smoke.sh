#!/usr/bin/env bash
set -euo pipefail
BASE=${1:?base API URL}; curl -fsS "$BASE/actuator/health"; curl -fsS "$BASE/api/public/configuration" >/dev/null; echo SMOKE_OK
