#!/bin/zsh
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TRAINING_REPO="$SCRIPT_DIR/micro-wake-word"

if [ ! -d "$TRAINING_REPO" ]; then
  echo "Training repo not found: $TRAINING_REPO" >&2
  exit 1
fi

cd "$TRAINING_REPO"
echo "Opening Jupyter Lab in: $TRAINING_REPO"
echo "Open notebooks/basic_training_notebook.ipynb"
echo "Then set: target_word = \"hey Clio\""
jupyter lab
