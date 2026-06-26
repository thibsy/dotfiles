#!/usr/bin/env bash

# spins up qwen3.5:9b (optimized 64K context)
qwen9b() {
  llama-server \
    -hf unsloth/Qwen3.5-9B-GGUF:UD-Q4_K_XL \
    --host "$LLAMA_DEFAULT_HOST" \
    --port "$LLAMA_DEFAULT_PORT" \
    -c 65536 \
    --cache-type-k q8_0 \
    --cache-type-v q8_0 \
    -ngl 999 \
    -fa on \
    --jinja \
    --chat-template-kwargs '{"enable_thinking":true}' \
    "$@"
}
