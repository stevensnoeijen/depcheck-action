#!/usr/bin/env bash

set -eo pipefail

UNUSED_JSON=$(npx --yes depcheck@1.4.3 --ignores="${INPUT_IGNORES}" test/ --json)

echo "UNUSED_JSON=test" >> "$GITHUB_OUTPUT"
echo "exitcode=0" >> "$GITHUB_OUTPUT"