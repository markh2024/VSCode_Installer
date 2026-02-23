#!/bin/bash

#!/usr/bin/env bash

# VS Code Installer for Debian 12
# ---------------------------------

set -e
# ── Colours ───────────────────────────────────────────────────────────────────
RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
CYAN='\033[0;36m'; BOLD='\033[1m'; RESET='\033[0m'
 echo -e "\n${BOLD}${CYAN}"
    cat <<'BANNER'
  +============================================================+
  |    Professional Installer Visual Studio Code MD Harrington |
  |                   Debian 12 Bookworm                       |
  +============================================================+
BANNER
    echo -e "${RESET}"
# Check for root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root or use sudo:"
  echo "sudo ./install_vscode.sh"
  exit 1
fi

echo "Updating package list..."
apt update

echo "Installing prerequisites..."
apt install -y wget gpg apt-transport-https

echo "Adding Microsoft GPG key..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /usr/share/keyrings/microsoft.gpg

echo "Adding VS Code repository..."
echo "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list

echo "Updating package list again..."
apt update

echo "Installing VS Code..."
apt install -y code

echo "Thankyou for using my script Bye , Bye  "

echo -e "\n${BOLD}${YELLOW}"
    cat <<'BANNER'
  +============================================================+
  |    VS Code installation complete!       Code MD Harrington |
  |    Debian 12 Bookworm                   Launching VSCode   |
  +============================================================+
BANNER
    echo -e "${RESET}"
echo "The End  eh eh eh Bye By cruel world !! " 
