#!/bin/bash

set -e

DIR="$(dirname "$(realpath "$BASH_SOURCE")")"
PUBDIR="$(basename "$DIR")"

rsync -va --delete "$DIR/src/" ~/.lampp/htdocs/"$PUBDIR"
