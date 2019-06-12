#!/bin/bash

function npm-check {
  target="${1:-$(pwd)/index.js}"
  filename="$(basename "${target}")"
  directory="$(dirname "${target}")"
  prefix="${prefix:-/app/}"

  docker run -it -v "${directory}":"${prefix}" wesleydean/npm-check-docker "${prefix}${filename}"
}
