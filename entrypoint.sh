#!/usr/bin/env bash

unused_json=$(npx --yes depcheck@"${INPUT_VERSION}" --ignores="${INPUT_IGNORES}" "${INPUT_DIR}" --json)

echo "unused_json=$unused_json" >> "$GITHUB_OUTPUT"
