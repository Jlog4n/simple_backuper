# Who is this guide for?

This guide is intended for people who want to understand how the script works. 
It provides simple explanations for almost all key terms using easy-to-understand language.

# What does the script do?

This program creates backup copies of files from one directory to another.

# System compatibility

**The script works with Linux and macOS operating systems**

The code differs between these operating systems only in the file paths.
First, let's examine the code for Linux, and then for macOS.

********
# Backup code for Linux
```bash
#!/bin/bash

BACKUP_DIR="/home/user/backups"    # REPLACE "user" WITH YOUR USERNAME
SOURCE_DIR="/home/user/documents"  # REPLACE "user" WITH YOUR USERNAME
BACKUP_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$BACKUP_DIR"

echo "Creating backup..."
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "Backup successfully created: $BACKUP_NAME"
else
    echo "Something went wrong!"
    exit 1
fi
```
# Line by line analysis

# shebang. What is it?

For our script to work, we need to tell the system which interpreter to use.  
In our case, it's `bash`. This gives us the following line:

```
#!/bin/bash
```

# Understanding the variables

Now we need to decide where to get data from and where to move it.  
Variables will help us with this - first we'll set the source (where we take files from),  
then the destination (where we store the backup).

```
BACKUP_DIR="/home/user/backups"
SOURCE_DIR="/home/user/documents"
```

- `BACKUP_DIR` - variable that stores the path to the `backups` directory (where results are stored)
- `SOURCE_DIR` - variable that takes files from `documents` for backup
**IMPORTANT! Replace `user` with your actual username!**

Additionally, as you can see in the code, we create one more variable - `BACKUP_NAME`.  
It generates backup names with text, timestamp, and file extension like:  
`"backup_YYYYmmdd_HHMMSS.tar.gz"`

timestamp explanation:
`Y` - year;
`m` - month;
`d` - day;
`H` - hour;
`M` - minute;
`S` - second.
	
**Example**
If a user creates a backup on October 4, 2025 at 12:25:00, the backup name will be:  
`backup_20251004_122500.tar.gz`
# Сreating the missing directory

The next piece of the code looks like:

```
mkdir -p "$BACKUP_DIR"
```

`mkdir` creates directories in the system, and the `-p` parameter creates all "missing" directories  
in the path. In our case, it creates the path to `BACKUP_DIR` (backups).

Imagine if the user doesn't have this directory - there would be no place to store the result!
# Archive creation

```
echo "I'm creating a backup..."
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"
```

`echo` - command that displays text (in our case: "Creating backup...")

We should mention that we'll store archives in the backup directory, where duplicate files will be kept.

**Difference between backup and archive:**

- **Backup** - quick copy for recovery. Backups are often overwritten, don't last long (days, weeks), and must be fast to deploy.
    
- **Archive** - long-term copy for storage. Not designed for quick system restoration.

Now let's examine this line:
```
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"
```
`tar` - command that creates archives  
`-czf` - combination of parameters for `tar`:

1. `c` - create an archive
2. `z` - compress the archive to `.gz` format
3. `f` - specify the filename

The `f` parameter names the archive following this principle:  
`"archive_file" "source_directory"`

# Understanding the conditional statement

Now let's check if our actions succeeded or failed:
```
if [ $? -eq 0 ]; then
    echo "Backup was successfully created: $BACKUP_NAME"
else
    echo "Something went wrong!"
    exit 1
fi
```

This code means:  
If the last completed action (in our case, archiving) equals 0 (in Bash, 0 means success), then:
```
    echo "Backup was successfully created: $BACKUP_NAME"
```
The `$BACKUP_NAME` will be replaced with the actual backup name.

Otherwise (if the last action doesn't equal 0):
```
    echo "Something went wrong!"
    exit 1
```
After `echo`, we have `exit 1` which returns code 1 (in Bash, this means error).

The final `fi` simply ends the conditional statement.

*******
# Backup-code for MacOS

```bash
#!/bin/bash

BACKUP_DIR="/home/user/backups" # INSTEAD OF "user" SET YOUR NICKNAME
SOURCE_DIR="/home/user/documents" # INSTEAD OF "user" SET YOUR NICKNAME
BACKUP_NAME="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$BACKUP_DIR"

echo "I'm creating a backup..."
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "Backup was successfully created: $BACKUP_NAME"
else
    echo "Something went wrong!"
    exit 1
fi
```

The only difference from Linux is that we use `/Users/` instead of `/home/` in the file paths.