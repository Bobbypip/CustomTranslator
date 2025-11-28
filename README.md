# CustomTranslator 

CustomTranslator is a simple Bash script that allows you to translate selected text from English to Spanish in your Linux desktop environment. By integrating with system utilities, it captures the currently selected text, translates it, and displays the translation in a desktop notification.  
This updated version supports Wayland natively using `wl-paste`, with a fallback mechanism when the primary selection is empty.

## Dependencies

To ensure the proper functioning of CustomTranslator, the following packages must be installed on your system:

- **wl-clipboard (`wl-paste`)**: Required for Wayland environments. Used to capture both the primary selection and clipboard contents.
- **xsel** *(optional, only for X11 users)*: Retrieves the X11 primary selection.
- **translate-shell (`trans`)**: A command-line translator powered by various translation engines. It performs the translation of the selected text.
- **libnotify-bin (`notify-send`)**: Sends desktop notifications displaying the translated text.

## Installation

Follow these steps to install the necessary dependencies and set up CustomTranslator:

1. **Install required packages**:

   - On Debian-based systems (e.g., Ubuntu, Linux Mint):
     ```bash
     sudo apt-get install wl-clipboard xsel translate-shell libnotify-bin
     ```

   - On Arch-based systems (e.g., Arch Linux, Manjaro):
     ```bash
     sudo pacman -S wl-clipboard xsel translate-shell libnotify
     ```

2. **Download and prepare the CustomTranslator files**:
   - Clone this repository or download the files `translator.sh`, `CustomTranslator.desktop`, and `install.sh` into a directory of your choice.

3. **Run the installation script**:
   - Navigate to the directory containing the files:
     ```bash
     cd /path/to/directory
     ```
   - Grant execute permissions to the installation script:
     ```bash
     chmod +x install.sh
     ```
   - Run the installation:
     ```bash
     ./install.sh
     ```
     This script will copy `translator.sh` to `~/.local/bin/`, copy `CustomTranslator.desktop` to `~/.local/share/applications/`, and update the application database.

   **Note**: If you see "Permission denied" when running `./install.sh`, ensure the file has executable permissions and that the shebang (`#!/bin/bash`) is present at the top of the file.

4. **Update the application database manually** (optional):
   ```bash
   update-desktop-database ~/.local/share/applications
## Usage

Once installation is complete, you can use CustomTranslator as follows:

Select the text you want to translate in any application.

Run the translator.sh script using any of the following methods:

From the terminal:
   ```bash
   ~/.local/bin/translator.sh
   ```

From the application menu: Look for "CustomTranslator".

Assigning a keyboard shortcut:

Go to your desktop environment’s Keyboard Shortcuts settings.

Create a custom shortcut pointing to /home/your_user/.local/bin/translator.sh.

Assign a key combination you prefer.

When executed, the script retrieves the currently selected text (Wayland primary selection first, clipboard as fallback), translates it to Spanish, and displays the result as a desktop notification.
