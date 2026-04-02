#!/bin/bash

# Configuration
SESSION_NAME="litellm-proxy"

# --- Environment Variable Loading ---
# Load from .env file if it exists, without overwriting existing environment variables
if [ -f .env ]; then
    echo "Loading environment variables from .env..."
    # Export variables from .env file, removing potential quotes and whitespace
    # Using a more robust way to export from .env
    set -a
    [ -f .env ] && . .env
    set +a
fi
# ------------------------------------

# Cleanup function to kill the tmux session
cleanup() {
    if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
        echo -e "\nStopping LiteLLM tmux session ($SESSION_NAME)..."
        tmux kill-session -t "$SESSION_NAME" 2>/dev/null
    fi
}

# Trap exit signals (Ctrl+C, normal exit, etc.) to run cleanup
trap cleanup EXIT

# Mode Selection
if [ "$1" == "aider" ]; then
    echo "Launching Aider with Gemini..."
    # Ensure GEMINI_API_KEY is set for Aider
    if [ -z "$GEMINI_API_KEY" ]; then
        echo "Error: GEMINI_API_KEY is not set in .env or environment!"
        echo "Please set it in .env (see .env.example for format)."
        exit 1
    fi
    aider --model gemini/gemini-2.5-pro-latest
    exit 0
fi

# Default: Claude Code CLI with LiteLLM Proxy
echo "Starting LiteLLM + Claude Code CLI mode..."

# Ensure GEMINI_API_KEY is set
if [ -z "$GEMINI_API_KEY" ]; then
    echo "Error: GEMINI_API_KEY is not set in .env or environment!"
    echo "Please set it in .env (see .env.example for format)."
    exit 1
fi

# Export the variables so the CLI knows to use the proxy
export ANTHROPIC_BASE_URL="http://localhost:4000"

# --- BYPASS LOGIN & FIX AUTH HEADER ---
# 1. Provide a dummy API key to disable OAuth/Login checks
export ANTHROPIC_API_KEY="sk-ant-dummy-key"

# 2. Force the Authorization header that LiteLLM expects for Gemini.
# Claude Code usually sends x-api-key, but LiteLLM needs Authorization: Bearer.
# We use ANTHROPIC_CUSTOM_HEADERS to inject it.
export ANTHROPIC_CUSTOM_HEADERS="Authorization: Bearer $GEMINI_API_KEY"

# Ensure we don't use the Bedrock client which was causing issues
unset CLAUDE_CODE_USE_BEDROCK
unset CLAUDE_CODE_SKIP_BEDROCK_AUTH
# ---------------------------------------

# Kill existing session if any
tmux kill-session -t "$SESSION_NAME" 2>/dev/null

# Start litellm in a detached tmux session
echo "Starting LiteLLM in detached tmux session: $SESSION_NAME"
# LiteLLM respects GEMINI_API_KEY from environment
tmux new-session -d -s "$SESSION_NAME" "export GEMINI_API_KEY=\"$GEMINI_API_KEY\"; litellm --config litellm_config.yaml --port 4000"

# Wait a few seconds to ensure it's up
sleep 2 

# Start your dev command
echo "Launching Claude Code CLI (Bypassing Login)..."
bun run dev