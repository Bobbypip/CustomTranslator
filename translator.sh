#!/bin/bash

# Retrieve the selected text from the primary clipboard
text=$(xsel -o)

# Translate the text from English to Spanish using 'trans'
translation=$(trans -b :es "$text")

# Display the translation in a notification without sound
notify-send -a "CustomTranslator" -h "string:desktop-entry:CustomTranslator" "Translation" "$translation"
