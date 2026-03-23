# 📦 Linux Package Checker & Installer

> A lightweight, interactive Bash script that validates, checks, and installs Linux packages — built with a DevOps mindset for automation and reliability.

![Bash](https://img.shields.io/badge/Shell-Bash-4EAA25?style=flat-square&logo=gnubash&logoColor=white)
![Linux](https://img.shields.io/badge/OS-Linux-FCC624?style=flat-square&logo=linux&logoColor=black)
![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=flat-square)

---

## 🔍 Overview

**Linux Package Checker & Installer** is a Bash automation script designed to streamline package management on Linux systems. Instead of manually running multiple commands to verify and install software, this script consolidates the entire workflow into a single, interactive session — checking package availability, installation status, and prompting for user confirmation before making any changes.

Whether you're managing a fresh server, setting up a development environment, or learning Linux automation, this script provides a clean and controlled approach to software installation.

---

## ✨ Features

- 🔎 **Package Existence Check** — Validates whether the specified package exists in the system's repositories before proceeding
- ✅ **Installation Status Detection** — Determines if the package is already installed, preventing redundant operations
- 🤝 **User Confirmation Prompt** — Asks for explicit consent before installing, giving you full control
- 🔀 **Multi-Distro Support** — Compatible with both Debian/Ubuntu-based systems (`apt`) and RHEL/CentOS-based systems (`yum`)
- 🛡️ **Privilege Check** — Verifies root or sudo privileges before attempting installation
- 📋 **Clear Output Messaging** — Provides informative, color-coded feedback at every step
- 🧱 **Minimal Dependencies** — Relies only on standard Linux utilities — no external tools required

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| **Bash** | Core scripting language |
| **apt** | Package management on Debian/Ubuntu-based distros |
| **yum** | Package management on RHEL/CentOS-based distros |
| **Linux CLI** | Environment and utility commands (`which`, `dpkg`, `rpm`) |

---

## 🗂️ Project Structure

```
linux-package-checker/
├── package_checker.sh      # Main script — entry point
├── README.md               # Project documentation
└── LICENSE                 # MIT License
```

---

## 🚀 Getting Started

### Prerequisites

- A Linux-based operating system (Debian, Ubuntu, CentOS, RHEL, or compatible)
- Bash shell (`v4.0+` recommended)
- `sudo` privileges for package installation

### Installation & Setup

**1. Clone the repository:**

```bash
git clone https://github.com/your-username/linux-package-checker.git
```

**2. Navigate into the project directory:**

```bash
cd linux-package-checker
```

**3. Make the script executable:**

```bash
chmod +x package_checker.sh
```

**4. Run the script:**

```bash
./package_checker.sh
```

> 💡 If a package installation is triggered, the script will automatically invoke `sudo`. Ensure your user has the necessary permissions.

---

## 💻 Example Usage

```bash
$ ./package_checker.sh

Enter the package name to check: curl

[✔] Package 'curl' found in the repository.
[✔] Package 'curl' is already installed on this system.
No installation needed. Exiting.
```

```bash
$ ./package_checker.sh

Enter the package name to check: htop

[✔] Package 'htop' found in the repository.
[✗] Package 'htop' is NOT currently installed.

Would you like to install 'htop'? (yes/no): yes

[⏳] Installing 'htop'...
[✔] Package 'htop' has been successfully installed.
```

```bash
$ ./package_checker.sh

Enter the package name to check: fakepackage123

[✗] Package 'fakepackage123' was not found in the repository.
Please verify the package name and try again. Exiting.
```

---

## ⚙️ How It Works

The script follows a clear, linear decision-making flow:

1. **Prompt for Input** — The user is asked to enter the name of the package they want to manage.

2. **Detect Package Manager** — The script identifies whether the system uses `apt` (Debian/Ubuntu) or `yum` (RHEL/CentOS) and selects the appropriate commands accordingly.

3. **Check Repository Availability** — Queries the package index to confirm the package exists in the configured repositories. If not found, the script exits gracefully with a message.

4. **Check Installation Status** — Uses `dpkg -s` (Debian) or `rpm -q` (RHEL) to determine if the package is already installed on the system.

5. **Prompt for Confirmation** — If the package is not installed, the user is asked whether they want to proceed with installation. A `no` response exits cleanly.

6. **Install the Package** — On confirmation, the script runs the appropriate install command with `sudo` and reports the outcome.

7. **Exit with Status** — The script exits with a clear success or failure message.

---

## 📋 Requirements

- **OS:** Linux (Debian, Ubuntu, CentOS, RHEL, or compatible derivatives)
- **Shell:** Bash `4.0` or higher
- **Permissions:** `sudo` or root access for package installation
- **Package Manager:** `apt` or `yum` must be available on the system
- **Internet Access:** Required for downloading packages from remote repositories

---

## ⚠️ Limitations

- Currently supports only `apt` and `yum` package managers — does not support `dnf`, `pacman`, `zypper`, or `brew`
- Does not handle package version pinning or version-specific installations
- No batch processing — processes one package per execution
- Does not perform dependency conflict resolution beyond what the package manager handles natively
- Assumes a stable internet/repository connection is available during installation

---

## 🔮 Future Improvements

- [ ] Add support for `dnf` (Fedora/RHEL 8+) and `pacman` (Arch Linux)
- [ ] Enable batch mode to accept a list of packages from a `.txt` file or comma-separated input
- [ ] Implement a `--dry-run` flag to simulate actions without making changes
- [ ] Add structured logging to a file for audit trails (e.g., `/var/log/pkg_checker.log`)
- [ ] Integrate version-specific installation support
- [ ] Build a `--uninstall` flag to extend the script to package removal
- [ ] Add color-coded output using ANSI escape codes for improved readability
- [ ] Package as a portable `.deb` or `.rpm` for easy distribution

---

## 🌍 Real-World Use Cases

- **Server Provisioning** — Automate dependency setup when spinning up new Linux servers
- **CI/CD Pipelines** — Use as a pre-build step to ensure required tools are installed in pipeline environments
- **Developer Onboarding** — Simplify environment setup for new team members with a single script
- **Sysadmin Tooling** — Quickly audit and install missing packages during routine system maintenance
- **DevOps Learning Labs** — Demonstrates Bash fundamentals in a practical, hands-on context

---

## 🧠 Learning Outcomes

By studying or extending this project, you will gain practical experience with:

- Writing structured, readable Bash scripts following best practices
- Handling user input and conditional logic in shell scripting
- Working with Linux package managers (`apt`, `yum`) programmatically
- Implementing privilege checks and safe `sudo` usage in scripts
- Building interactive CLI tools with clear user feedback
- Designing scripts that are portable across multiple Linux distributions

---

## 🤝 Contributing

Contributions are welcome and appreciated! To contribute:

1. Fork this repository
2. Create a new feature branch: `git checkout -b feature/your-feature-name`
3. Commit your changes with a clear message: `git commit -m "feat: add support for dnf package manager"`
4. Push to your fork: `git push origin feature/your-feature-name`
5. Open a Pull Request and describe your changes

Please follow the [conventional commits](https://www.conventionalcommits.org/) format for commit messages and keep PRs focused on a single concern.

---

## 📄 License

This project is licensed under the **MIT License** — you are free to use, modify, and distribute it with attribution.
See the [LICENSE](./LICENSE) file for full details.

---

## 👤 Author

**Your Name**
- 🌐 GitHub: [@your-username](https://github.com/your-username)
- 💼 LinkedIn: [linkedin.com/in/your-profile](https://linkedin.com/in/your-profile)
- 📧 Email: your.email@example.com

---

## ⭐ Support

If you found this project useful or learned something from it, consider giving it a **star on GitHub** — it helps others discover the project and motivates continued development.

> 💬 Have a suggestion or found a bug? [Open an issue](https://github.com/your-username/linux-package-checker/issues) — all feedback is welcome.
