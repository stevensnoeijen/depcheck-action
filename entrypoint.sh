#!/usr/bin/env bash

set -eo pipefail

UNUSED_JSON=$(npx --yes depcheck@"${INPUT_VERSION}" --ignores="${INPUT_IGNORES}" "${INPUT_DIR}" --json)

echo "UNUSED_JSON=$UNUSED_JSON" >> "$GITHUB_OUTPUT"