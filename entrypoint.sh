#!/usr/bin/env bash

echo "unused_json=$(npx --yes depcheck@"${INPUT_VERSION}" --ignores="${INPUT_IGNORES}" "${INPUT_DIR}" --json | jq -Rsa . | sed 's/\\[tn]//g')" >> "$GITHUB_OUTPUT"
