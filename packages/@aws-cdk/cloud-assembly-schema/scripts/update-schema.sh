#!/bin/bash
set -euo pipefail
scriptsdir=$(cd $(dirname $0) && pwd)
packagedir=$(realpath ${scriptsdir}/..)

# Output
OUTPUT_DIR="${packagedir}/schema.generated"
OUTPUT_FILE="${OUTPUT_DIR}/cloud-assembly.schema.json"

mkdir -p ${OUTPUT_DIR}

node -e "require('${packagedir}/scripts/schema.js').generate('${OUTPUT_FILE}', true)"
