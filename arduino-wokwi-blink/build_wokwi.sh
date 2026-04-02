#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

TMP_DIR=".tmp_arduino_buildsrc/sketch"
CLI_TMP_DIR=".tmp_arduino_tmp"
CLI_BUILD_DIR=".tmp_arduino_build"

rm -rf .tmp_arduino_buildsrc "$CLI_TMP_DIR" "$CLI_BUILD_DIR" build
mkdir -p "$TMP_DIR"
mkdir -p "$CLI_TMP_DIR"
cp sketch.ino "$TMP_DIR/sketch.ino"

TMPDIR="$SCRIPT_DIR/$CLI_TMP_DIR" arduino-cli compile \
	--fqbn arduino:avr:uno \
	--build-path "$CLI_BUILD_DIR" \
	--output-dir build \
	"$TMP_DIR"

echo "Build completed: build/sketch.ino.hex"
