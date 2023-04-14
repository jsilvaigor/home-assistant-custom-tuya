#!/usr/bin/env bash
# Setups the repository.

# Stop on errors
set -e

cd "$(dirname "$0")/.."

if [ ! -n "$VIRTUAL_ENV" ];then
  python3 -m venv venv
  source venv/bin/activate
fi

python3 -m pip install -r requirements.txt