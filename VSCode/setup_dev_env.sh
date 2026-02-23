#!/bin/bash

# Debian 12 Developer Environment Setup
# --------------------------------------

set -e

echo "------------------------------------------------------"
echo "Debian 12 Development Environment Setup MD HARRINGTON "
echo "------------------------------------------------------"

if [ "$EUID" -ne 0 ]; then
  echo "Please run with sudo:"
  echo "sudo ./setup_dev_env.sh"
  exit 1
fi

echo "Updating package list..."
apt update

echo "Installing development tools..."

apt install -y \
    build-essential \
    gcc \
    g++ \
    make \
    cmake \
    git \
    gdb \
    pkg-config \
    curl \
    unzip \
    htop \
    tree

echo "--------------------------------------"
echo "Development environment installed!"
echo "gcc version:"
gcc --version | head -n 1
echo "g++ version:"
g++ --version | head -n 1
echo "--------------------------------------"
