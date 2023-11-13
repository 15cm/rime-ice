#!/usr/bin/env bash

set -e

# Args:
# $1: output dir
# $2: installation id

RIME_DIR="$1"
mkdir -p $RIME_DIR
cp -R -f *.yaml *.lua cn_dicts en_dicts lua opencc $RIME_DIR

cat << EOF > $RIME_DIR/installation.yaml
installation_id: "$2"
EOF

echo "Deployed to $RIME_DIR"
