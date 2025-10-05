# 🔄 Backup Script

A simple and reliable backup solution for Linux and macOS systems. Create automated, timestamped backups of your important files with minimal configuration.

![Bash](https://img.shields.io/badge/bash-v5.0+-blue.svg)
![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20macOS-green.svg)
![License](https://img.shields.io/badge/license-MIT-yellow.svg)

## Features

- ✅ **Cross-platform** - Works on Linux and macOS
- ✅ **Automatic naming** - Timestamped backups prevent overwrites
- ✅ **Compression** - Gzip compression to save space
- ✅ **Error handling** - Comprehensive error checking and reporting
- ✅ **Simple configuration** - Easy to set up and customize
- ✅ **Lightweight** - No dependencies, pure bash

## Quick Start

### Prerequisites
- Bash shell
- tar utility (included in most systems)
- Basic terminal knowledge

### Installation & Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/JeyLogan/simple_backuper.git
   cd simple_backuper
   ```
2. **Change the code
   Update these variables with your actual nickname!
   ```bash
   BACKUP_DIR="/home/yourusername/backups"
   SOURCE_DIR="/home/yourusername/documents"
   ```   

3. **Make executable
   ```bash
   chmod +x src/backup_linux.sh
   ```

4. **Choose your script

  For Linux: Use src/backup_linux.sh

  For macOS: Use src/backup_macos.sh

5. **Run it
   for linux
   ```bash
   ./src/backup_linux.sh
   ```
   
   for macOS
   ```bash
   ./src/backup_macos.sh
   ```

   
