# VS Code Installer for Debian 12

![Debian](https://img.shields.io/badge/Debian-12-red)
![License](https://img.shields.io/badge/License-MIT-blue)
![Shell](https://img.shields.io/badge/Shell-Bash-green)
![Architecture](https://img.shields.io/badge/Arch-amd64%20|%20arm64%20|%20armhf-orange)

A clean, automated installer for **Visual Studio Code** on Debian 12 (Bookworm), using Microsoft's official repository.

# What This Project Does

This project provides:

- `install_vscode.sh` – Installs VS Code properly via Microsoft APT repo
- `setup_dev_env.sh` – Installs a full C/C++ development environment
-  Secure GPG key handling
-  ARM / Raspberry Pi support
-  Automatic update support via APT



# First step 

## Check Architecture  

dpkg --print-architecture or you  can use uname  , bash commands 

Supported: Architecture's
- amd64
- arm64
- armhf

```
Code Structure 

Run the  following

├── install_vscode.sh
├── setup_dev_env.sh
└── README.md
```
## Verify Installation

```
< Bash commands > 
apt policy code


```

## You should see 

https://packages.microsoft.com/repos/code



---

---

#  Quick Start

```bash
chmod +x install_vscode.sh
sudo ./install_vscode.sh
