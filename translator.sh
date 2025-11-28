#!/bin/bash

# Retrieve the selected text from the clipboard (more reliable on KDE/Wayland)
text=$(wl-paste --primary 2>/dev/null)

# If clipboard is empty, try wl-paste (Wayland-native) as fallback
if [ -z "$text" ]; then
    if command -v wl-paste >/dev/null 2>&1; then
        text=$(wl-paste 2>/dev/null)
    fi
fi

# Stop if still empty (avoid empty notifications)
if [ -z "$text" ]; then
    notify-send -a "CustomTranslator" "Translation" "No text selected"
    exit 0
fi

# Translate the text
translation=$(trans -b :es "$text")

# Display the translation
notify-send -a "CustomTranslator" "Translation" "$translation"
