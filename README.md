# CustomTranslator

CustomTranslator is a simple Bash script that allows you to translate selected text from English to Spanish on your Linux desktop environment. By integrating with system utilities, it captures the selected text, translates it, and displays the translation in a desktop notification.

## Dependencies

To ensure the proper functioning of CustomTranslator, the following packages must be installed on your system:

- **xsel**: A command-line utility that retrieves and sets the selection in X11. It is used to capture the currently selected text.
- **translate-shell (`trans`)**: A command-line translator powered by various translation engines (e.g., Google Translate). It performs the actual translation of the selected text.
- **libnotify-bin (`notify-send`)**: A library that sends desktop notifications to the user. It is utilized to display the translated text as a notification.

## Installation

Follow these steps to install the necessary dependencies:

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

Ensure that these packages are correctly installed before running the CustomTranslator script to avoid any issues.

## Usage

Once the dependencies are installed and the `translator.sh` script is set up as described in the project documentation, you can use the application by selecting text in any application and triggering the script via the assigned keyboard shortcut. The translated text will appear as a desktop notification.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
