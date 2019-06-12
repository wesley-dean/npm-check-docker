#!/bin/bash

target="${1:-/app/index.js}"
filename="$(basename "${target}")"
directory="$(dirname "${target}")"

cd "${directory}"
npm install

node --check "${filename}" && npm-audit && npm-check && npm-lint
