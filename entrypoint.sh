#!/usr/bin/env bash

set -eo pipefail

UNUSED_JSON=$(npx depcheck@"${INPUT_VERSION}" --ignores="${INPUT_IGNORES}" "${INPUT_DIR}" --json 2>&1 && exit_status=$? || exit_status=$?)

echo "UNUSED_JSON=$UNUSED_JSON" >> "$GITHUB_OUTPUT"
echo "exit_code=$exit_status" >> "$GITHUB_OUTPUT"