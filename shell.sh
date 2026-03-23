#!/bin/bash

# Ask user for package name
echo "Enter package name:"
read package

# Detect package manager (apt or yum)
if command -v apt > /dev/null; then
    PKG_MANAGER="apt"
elif command -v yum > /dev/null; then
    PKG_MANAGER="yum"
else
    echo "No supported package manager found!"
    exit 1
fi

# Check if package exists
if [ "$PKG_MANAGER" = "apt" ]; then
    apt-cache show "$package" > /dev/null 2>&1
elif [ "$PKG_MANAGER" = "yum" ]; then
    yum list available "$package" > /dev/null 2>&1
fi

if [ $? -ne 0 ]; then
    echo "❌ Package '$package' not found in repository."
    exit 1
fi

echo "✅ Package '$package' is available."

# Check if already installed
if command -v "$package" > /dev/null; then
    echo "✔ Package '$package' is already installed."
else
    echo "⚠ Package '$package' is not installed."
    
    echo "Do you want to install it? (y/n)"
    read choice

    if [ "$choice" = "y" ]; then
        echo "Installing '$package'..."

        if [ "$PKG_MANAGER" = "apt" ]; then
            sudo apt update
            sudo apt install -y "$package"
        else
            sudo yum install -y "$package"
        fi

        echo "✅ Installation completed."
    else
        echo "❌ Installation cancelled."
    fi
fi
