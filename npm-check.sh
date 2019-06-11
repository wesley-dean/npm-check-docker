#!/bin/bash

function npm-check {
  directory="${1:-$(pwd)}"

  docker run -it -v "${directory}":/app wesleydean/npm-check-docker
}
