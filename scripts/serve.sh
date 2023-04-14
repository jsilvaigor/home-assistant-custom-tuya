#!/usr/bin/env bash
# Setups the repository.

# Stop on errors
set -e

cd "$(dirname "$0")/.."

if [ ! -n "$VIRTUAL_ENV" ];then
  python3 -m venv venv
  source venv/bin/activate
fi

cp -rf tuya/ config/custom_components/tuya

python3 -m homeassistant -c config