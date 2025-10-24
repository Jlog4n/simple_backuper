ENG
******
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

   
RU
*******
# 🔄 Скрипт Резервного Копирования

Простое и надежное решение для резервного копирования на системах Linux и macOS. Создавайте автоматизированные, помеченные временем резервные копии ваших важных файлов с минимальной настройкой.

![Bash](https://img.shields.io/badge/bash-v5.0+-blue.svg)
![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20macOS-green.svg)
![License](https://img.shields.io/badge/license-MIT-yellow.svg)

## Возможности

- ✅ **Кроссплатформенность** - Работает на Linux и macOS
- ✅ **Автоматическое именование** - Резервные копии с метками времени предотвращают перезапись
- ✅ **Сжатие** - Gzip сжатие для экономии места
- ✅ **Обработка ошибок** - Комплексная проверка и отчетность об ошибках
- ✅ **Простая настройка** - Легко настроить и адаптировать
- ✅ **Легковесный** - Без зависимостей, чистый bash

## Быстрый старт

### Предварительные требования
- Bash оболочка
- Утилита tar (включена в большинство систем)
- Базовые знания терминала

### Установка и настройка

1. **Клонируйте репозиторий**
   ```bash
   git clone https://github.com/JeyLogan/simple_backuper.git
   cd simple_backuper
2. **Измените код**
   Обновите yourusername на своё настоящее имя пользователя
   ```bash
   BACKUP_DIR="/home/yourusername/backups"
   SOURCE_DIR="/home/yourusername/documents"
   ```   

3. **Сделайте скрипт исполняемым**
   ```bash
   chmod +x src/backup_linux.sh
   ```

4. **Выберете свой скрипт (зависит от системы):**

   For Linux: Use src/backup_linux.sh

   For macOS: Use src/backup_macos.sh

5. **Запустите скрипт**
   для Linux
   ```bash
   ./src/backup_linux.sh
   ```
   
   для MacOS
   ```bash
   ./src/backup_macos.sh
   ```
