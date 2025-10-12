# Who is this guide for?

This guide (or documentation) is intended for people who want to understand the script. Here I won't cover basic terms and keywords like `echo`, variable creation, etc. You can find those in the project directory under `"doc for beginners"`.

# What does the script do?

The script is designed for backing up files from one directory to another.

# Compatibility

- **Linux:** Fully compatible
- **macOS:** Fully compatible (the only difference is the user home directory path)

*********

# Backup code for Linux

```bash
#!/bin/bash

BACKUP_DIR="/home/user/backups" # REPLACE "user" WITH YOUR USERNAME
SOURCE_DIR="/home/user/documents" # REPLACE "user" WITH YOUR USERNAME
BACKUP_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$BACKUP_DIR"

echo "Creating backup..."
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "Backup successfully created: $BACKUP_NAME"
    echo "Size: $(du -h "$BACKUP_DIR/$BACKUP_NAME" | cut -f1)"
else
    echo "Error creating backup!"
    exit 1
fi
```

## Line-by-line analysis

#### Shebang

Specifies to the OS kernel which interpreter to use for executing the script.

#### Backup Variables

1. `BACKUP_DIR` - Target directory for storing backups
2. `SOURCE_DIR` - Source directory for file backup
3. `BACKUP_NAME` - Name for backups, generated with text, timestamp, as:  
`"backup_YYYYmmdd_HHMMSS.tar.gz"`

- `Y` - year
- `m` - month
- `d` - day
- `H` - hour
- `M` - minute
- `S` - second
#### Creating BACKUP_DIR

Initially, the user likely won't have the directory for storing results (backups), so we'll create it using `mkdir -p "$BACKUP_DIR"`.

- `mkdir` - command for creating directories in the system
    
- `mkdir` parameter `-p` allows creating missing (previously non-existent) directories in the user's system
#### Archive

When moving backups to the backups directory, we'll archive them in `gzip` format.  
The `tar` command (which creates archives) has a parameter combination `-czf`, which means:

- `c` - create archive
    
- `z` - convert to `.gzip` extension
    
- `f` - specify the archive filename
    

The `f` parameter names the archive following this principle:  
`"archive_file" "source_directory"`
#### Conditional statement

The structure can be read as follows:  
If the last executed action (`$?`) equals true (0), then execute:

- `echo "Backup successfully created: $BACKUP_NAME"`
    
- `echo "Size: $(du -h "$BACKUP_DIR/$BACKUP_NAME" | cut -f1)"`
    

Otherwise return:

- `echo "Error creating backup!"`
    
- `exit 1` (return false (1))

********

```bash
#!/bin/bash

BACKUP_DIR="/Users/user/backups" # REPLACE "user" WITH YOUR USERNAME
SOURCE_DIR="/Users/user/documents" # REPLACE "user" WITH YOUR USERNAME
BACKUP_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$BACKUP_DIR"

echo "Creating backup..."
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "Backup successfully created: $BACKUP_NAME"
    echo "Size: $(du -h "$BACKUP_DIR/$BACKUP_NAME" | cut -f1)"
else
    echo "Error creating backup!"
    exit 1
fi
```

The only difference from Linux is that when specifying paths, we use `/Users/` instead of `/home/`.