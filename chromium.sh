#!/bin/bash

# Define paths
CHROOT_DIR="/storage/my-alpine-chroot"
WAYLAND_SOCKET="/run/user/1000/wayland-0"
PULSE_SOCKET="/run/user/1000/pulse/native"

# Ensure required directories exist in chroot
mkdir -p "$CHROOT_DIR/run/user/1000"

# Bind Wayland socket
if ! mountpoint -q "$CHROOT_DIR$WAYLAND_SOCKET"; then
    mount --bind "$WAYLAND_SOCKET" "$CHROOT_DIR$WAYLAND_SOCKET"
fi

# Bind PulseAudio socket
if ! mountpoint -q "$CHROOT_DIR$PULSE_SOCKET"; then
    mkdir -p "$CHROOT_DIR$(dirname $PULSE_SOCKET)"
    mount --bind "$PULSE_SOCKET" "$CHROOT_DIR$PULSE_SOCKET"
fi

# Run Firefox inside the chroot
exec chroot "$CHROOT_DIR" env WAYLAND_DISPLAY=wayland-0 PULSE_SERVER=unix:$PULSE_SOCKET /usr/bin/chromium --no-sandbox
