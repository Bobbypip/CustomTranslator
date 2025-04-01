# CustomTranslator

CustomTranslator is a simple Bash script that enables you to translate selected text from English to Spanish in your Linux desktop environment. By integrating with system utilities, it captures the selected text, translates it, and displays the translation in a desktop notification.&#8203;:contentReference[oaicite:2]{index=2}

## Dependencies

:contentReference[oaicite:3]{index=3}&#8203;:contentReference[oaicite:4]{index=4}

- **xsel**: :contentReference[oaicite:5]{index=5}&#8203;:contentReference[oaicite:6]{index=6}
- **translate-shell (`trans`)**: :contentReference[oaicite:7]{index=7}&#8203;:contentReference[oaicite:8]{index=8}
- **libnotify-bin (`notify-send`)**: :contentReference[oaicite:9]{index=9}&#8203;:contentReference[oaicite:10]{index=10}

## Installation

:contentReference[oaicite:11]{index=11}&#8203;:contentReference[oaicite:12]{index=12}

1. **Install `xsel`**:
   - :contentReference[oaicite:13]{index=13}&#8203;:contentReference[oaicite:14]{index=14}
     ```bash
     sudo apt-get install xsel
     ```
   - :contentReference[oaicite:15]{index=15}&#8203;:contentReference[oaicite:16]{index=16}
     ```bash
     sudo pacman -S xsel
     ```

2. **Install `translate-shell`**:
   - :contentReference[oaicite:17]{index=17}&#8203;:contentReference[oaicite:18]{index=18}
     ```bash
     wget git.io/trans
     chmod +x trans
     sudo mv trans /usr/local/bin/
     ```
   - :contentReference[oaicite:19]{index=19}&#8203;:contentReference[oaicite:20]{index=20}
     ```bash
     sudo apt-get install translate-shell
     ```
   - :contentReference[oaicite:21]{index=21}&#8203;:contentReference[oaicite:22]{index=22}
     ```bash
     sudo pacman -S translate-shell
     ```

3. **Install `libnotify-bin`**:
   - :contentReference[oaicite:23]{index=23}&#8203;:contentReference[oaicite:24]{index=24}
     ```bash
     sudo apt-get install libnotify-bin
     ```
   - :contentReference[oaicite:25]{index=25}&#8203;:contentReference[oaicite:26]{index=26}
     ```bash
     sudo pacman -S libnotify
     ```

4. **Download and prepare the CustomTranslator files**:
   - :contentReference[oaicite:27]{index=27}&#8203;:contentReference[oaicite:28]{index=28}

5. **Run the installation script**:
   - :contentReference[oaicite:29]{index=29}&#8203;:contentReference[oaicite:30]{index=30}
     ```bash
     cd /path/to/directory
     ```
   - :contentReference[oaicite:31]{index=31}&#8203;:contentReference[oaicite:32]{index=32}
     ```bash
     chmod +x install.sh
     ```
   - :contentReference[oaicite:33]{index=33}&#8203;:contentReference[oaicite:34]{index=34}
     ```bash
     ./install.sh
     ```
     This script will copy `translator.sh` to `~/.local/bin/`, copy `CustomTranslator.desktop` to `~/.local/share/applications/`, and update the application database.

   **Note**: :contentReference[oaicite:35]{index=35}&#8203;:contentReference[oaicite:36]{index=36}

6. **Update the application database**:
   - :contentReference[oaicite:37]{index=37}&#8203;:contentReference[oaicite:38]{index=38}
     ```bash
     update-desktop-database ~/.local/share/applications
     ```

## Usage

:contentReference[oaicite:39]{index=39}&#8203;:contentReference[oaicite:40]{index=40}

1. **Select the text** you wish to translate in any application.
2. **Run the `translator.sh` script**. You can do this in several ways:
   - **From the terminal**: Open a terminal and type:
     ```bash
     ~/.local/bin/translator.sh
     ```
   - **From the application menu**: Search for "CustomTranslator" in your application menu and execute it.
   - **Assigning a keyboard shortcut**: Depending on your desktop environment, you can assign a key combination to run the script. For example, in GNOME:
     - Go to **Settings** > **Keyboard** > **Shortcuts**.
     - Add a new custom shortcut with the command `/home/your_user/.local/bin/translator.sh` and assign the desired key combination.

:contentReference[oaicite:41]{index=41}&#8203;:contentReference[oaicite:42]{index=42}

## Troubleshooting

- **The notification does not appear**: :contentReference[oaicite:43]{index=43}&#8203;:contentReference[oaicite:44]{index=44}
- **The script does not run from the application menu**: :contentReference[oaicite:45]{index=45}&#8203;:contentReference[oaicite:46]{index=46}
- **Errors related to dependencies**: :contentReference[oaicite:47]{index=47}&#8203;:contentReference[oaicite:48]{index=48}

## License

:contentReference[oaicite:49]{index=49}&#8203;:contentReference[oaicite:50]{index=50}
