#! /usr/bin/env bash

ROOT="$(readlink -f "$(dirname "$0")")"
BUILD="$ROOT/librawgo"
rm -rf "$BUILD"
mkdir -p "$BUILD"
cd "$BUILD" && cmake "$ROOT"
make