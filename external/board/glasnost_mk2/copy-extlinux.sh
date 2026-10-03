#!/bin/sh
set -e
BOARD_DIR="$(dirname "$0")"
mkdir -p "$1/extlinux"
cp "${BOARD_DIR}/extlinux.conf" "$1/extlinux/extlinux.conf"
