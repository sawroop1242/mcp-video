#!/bin/bash
set -e

# Install FFmpeg
sudo apt-get update && sudo apt-get install -y ffmpeg

# Install uv + mcp-video
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

pip install mcp-video --break-system-packages || uvx --from mcp-video mcp-video --help

echo "✅ mcp-video setup done"
