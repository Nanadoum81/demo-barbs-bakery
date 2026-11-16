#!/bin/bash
set -e
cd "$(dirname "$0")"
for base in img/hero.jpg img/wedding.jpg img/tarts.jpg img/bars.jpg img/cupcake-cake.jpg img/birthday-cake.jpg; do
  if ls ${base}.b64.* >/dev/null 2>&1; then
    cat ${base}.b64.* | tr -d '\n' | base64 -d > ${base}
    rm -f ${base}.b64.*
  fi
done
rm -f build.sh
