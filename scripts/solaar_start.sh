#!/bin/bash

# Start Solaar in the background (if not already running)
pgrep -x solaar >/dev/null || solaar --window=hide &
#
# Give Solaar and the receiver time to initialize
sleep 5
mouse="G502 SE Hero Gaming Mouse"

# # Set device name — get this from `solaar show`
# DEVICE="MX Master 3"

# Apply settings — adjust based on what your device supports
solaar config "$mouse" dpi 1400

#
