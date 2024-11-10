#!/bin/bash

# Get the ID of the currently focused window
WIN_ID=$(xdotool getwindowfocus)

# Get the window's absolute position and size
eval "$(xdotool getwindowgeometry --shell "$WIN_ID")"

# Calculate the center coordinates of the window
CENTER_X=$((X + WIDTH / 2))
CENTER_Y=$((Y + HEIGHT / 2))

# Move the mouse to the center of the window
xdotool mousemove "$CENTER_X" "$CENTER_Y"
