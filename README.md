# CustomTranslator

CustomTranslator is a simple Bash script that allows you to translate selected text from English to Spanish in your Linux desktop environment. By integrating with system utilities, it captures the selected text, translates it, and displays the translation in a desktop notification.

## Dependencies

To ensure the proper functioning of CustomTranslator, the following packages must be installed on your system:

- **xsel**: A command-line utility that retrieves and sets the selection in X11. It is used to capture the currently selected text.
- **translate-shell (`trans`)**: A command-line translator powered by various translation engines (e.g., Google Translate). It performs the translation of the selected text.
- **libnotify-bin (`notify-send`)**: A library that sends desktop notifications to the user. It is used to display the translated text as a notification.

## Installation

Follow these steps to install the necessary dependencies and set up CustomTranslator:

1. **Install `xsel`**:
   - On Debian-based systems (e.g., Ubuntu, Linux Mint):
     ```bash
     sudo apt-get install xsel
     ```
   - On Arch-based systems (e.g., Arch Linux, Manjaro):
     ```bash
     sudo pacman -S xsel
     ```

2. **Install `translate-shell`**:
   - Download and install the latest version:
     ```bash
     wget git.io/trans
     chmod +x trans
     sudo mv trans /usr/local/bin/
     ```
   - Alternatively, on Debian-based systems:
     ```bash
     sudo apt-get install translate-shell
     ```
   - On Arch-based systems:
     ```bash
     sudo pacman -S translate-shell
     ```

3. **Install `libnotify-bin`**:
   - On Debian-based systems:
     ```bash
     sudo apt-get install libnotify-bin
     ```
   - On Arch-based systems:
     ```bash
     sudo pacman -S libnotify
     ```

4. **Download and prepare the CustomTranslator files**:
   - Clone this repository or download the files `translator.sh`, `CustomTranslator.desktop`, and `install.sh` into a directory of your choice.

5. **Run the installation script**:
   - Open a terminal and navigate to the directory where the downloaded files are located. For example:
     ```bash
     cd /path/to/directory
     ```
   - Grant execute permissions to the installation script:
     ```bash
     chmod +x install.sh
     ```
   - Run the installation script:
     ```bash
     ./install.sh
     ```
     This script will copy `translator.sh` to `~/.local/bin/`, copy `CustomTranslator.desktop` to `~/.local/share/applications/`, and update the application database.

   **Note**: If you encounter a "Permission denied" message when attempting to run `./install.sh`, ensure that the script has execute permissions, as indicated above. Additionally, verify that the shebang line (`#!/bin/bash`) is present at the beginning of the `install.sh` file.

6. **Update the application database**:
   - Although the installation script attempts to update the database automatically, you can do it manually by running:
     ```bash
     update-desktop-database ~/.local/share/applications
     ```

## Usage

Once the installation is complete, you can use CustomTranslator as follows:

1. **Select the text** you wish to translate in any application.
2. **Run the `translator.sh` script**. You can do this in several ways:
   - **From the terminal**: Open a terminal and type:
     ```bash
     ~/.local/bin/translator.sh
     ```
   - **From the application menu**: Search for "CustomTranslator" in your application menu and run it.
   - **Assigning a keyboard shortcut**: Depending on your desktop environment, you can assign a key combination to run the script. For example, in GNOME:
     - Go to **Settings** > **Keyboard** > **Shortcuts**.
     - Add a new custom shortcut with the command `/home/your_user/.local/bin/translator.sh` and assign the desired key combination.

When you run the script, the translation of the selected text will appear as a notification on your desktop.

## Troubleshooting

- **The notification does not appear**: Ensure that `libnotify-bin` is installed and that notifications are enabled in your desktop environment.
- **The script does not run from the application menu**: Verify that the `CustomTranslator.desktop` file is correctly located in `~/.local/share/applications/` and that the path in the `Exec` field points to `~/.local/bin/translator.sh`.
- **Dependency-related errors**: Check that all packages mentioned in the dependencies section are correctly installed.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.

