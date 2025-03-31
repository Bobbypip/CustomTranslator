#!/bin/bash

# Define paths
SCRIPT_PATH="$HOME/.local/bin/translator.sh"
DESKTOP_ENTRY_PATH="$HOME/.local/share/applications/CustomTranslator.desktop"

# Create directories if they do not exist
mkdir -p "$(dirname "$SCRIPT_PATH")"
mkdir -p "$(dirname "$DESKTOP_ENTRY_PATH")"

# Copy files
cp translator.sh "$SCRIPT_PATH"
cp CustomTranslator.desktop "$DESKTOP_ENTRY_PATH"

# Grant execution permissions to the script
chmod +x "$SCRIPT_PATH"

# Update the application database
update-desktop-database "$HOME/.local/share/applications"

echo "Installation completed. You can find 'CustomTranslator' in your application menu."
