#!/bin/bash

function npm-check {
  target="${1:-$(pwd)/index.js}"
  filename="$(basename "${target}")"
  directory="$(dirname "${target}")"
  prefix="${prefix:-/app/}"
  script="${script:-/usr/local/bin/run_checks.sh}"
  docker run -it --rm -v "${directory}":"${prefix}" wesleydean/npm-check-docker "${script}" "${prefix}${filename}"
}
