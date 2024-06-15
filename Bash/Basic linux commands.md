# Basic Commands - Bash

## Online Disclaimer of Purpose

This repository contains a list of basic Linux commands along with their descriptions, usage examples, and expected outputs. These commands are intended for educational purposes to help users familiarize themselves with common tasks in the Linux command line. The commands are suitable for both beginners and intermediate users who wish to enhance their proficiency in using the Linux operating system.

### Symbols

- **`#`**: Prompt symbol indicating commands to be executed as the root user.
- **`$`**: Prompt symbol indicating commands to be executed as a normal user.
- **`~`**: Symbol representing the home directory of the current user.
- **`/`**: Symbol representing the root directory of the filesystem.

### Command Categories

#### Directory and Navigation Commands

- **`.`**: Represents the current directory.
  - **Command**: 
    ```bash
    cd .
    ```

- **`pwd`**: Print the present working directory.
  - **Command**: 
    ```bash
    pwd
    ```
  - **Output**:
    ```
    /home/user
    ```

- **`cd`**: Change the current directory.
  - **Command**: 
    ```bash
    cd /path/to/directory
    ```

- **`cd ..`**: Go to the parent directory.
  - **Command**: 
    ```bash
    cd ..
    ```

- **`cd -`**: Go to the previous directory.
  - **Command**: 
    ```bash
    cd -
    ```

- **`ls`**: List files and directories.
  - **Command**: 
    ```bash
    ls
    ```
  - **Output**:
    ```
    file1.txt  file2.txt  directory1  directory2
    ```

- **`ls -a`**: List all files and directories, including hidden ones.
  - **Command**: 
    ```bash
    ls -a
    ```
  - **Output**:
    ```
    .  ..  .hiddenfile  file1.txt  directory1
    ```

#### File Management Commands

- **`cat`**: Create a new file with content, view the content of a file, concatenate two files, etc.
  - **Command**: 
    ```bash
    cat file1.txt
    ```
  - **Output**:
    ```
    This is the content of file1.txt
    ```

  - **Command to concatenate files**: 
    ```bash
    cat file1.txt file2.txt > combined.txt
    ```

- **`touch`**: Change the access time of a file or create new empty files.
  - **Command**: 
    ```bash
    touch newfile.txt
    ```
  - **Output**: An empty file named `newfile.txt` is created.

- **`vi` and `nano`**: Text editors for creating and modifying files.
  - **Command (vi)**: 
    ```bash
    vi file.txt
    ```
  - **Command (nano)**: 
    ```bash
    nano file.txt
    ```
  - **Usage in `nano`**: 
    - `Ctrl+O` to write in the file.
    - `Ctrl+X` to exit.

  - **Usage in `vim`**: 
    - Press `i` to enter insert mode.
    - Press `Esc` to exit insert mode.
    - Type `:wq` to save and quit.
    - Type `:q` to quit without saving.

- **`mkdir`**: Create a new directory.
  - **Command**: 
    ```bash
    mkdir new_directory
    ```

- **`cp`**: Copy files or directories.
  - **Command**: 
    ```bash
    cp source.txt destination.txt
    ```
  - **Output**: The file `source.txt` is copied to `destination.txt`.

- **`diff`**: Compare the contents of two files and display the differences.
  - **Command**: 
    ```bash
    diff file1.txt file2.txt
    ```
  - **Output**:
    ```
    1c1
    < This is file1
    ---
    > This is file2
    ```

- **`rm`**: Remove files.
  - **Command**: 
    ```bash
    rm file.txt
    ```

- **`rm -r`**: Remove directories and all their contents (be careful using this).
  - **Command**: 
    ```bash
    rm -r directory_name
    ```

- **`mv`**: Move files from one directory to another or rename files.
  - **Command**: 
    ```bash
    mv source.txt /path/to/destination/
    ```
  - **Output**: The file `source.txt` is moved to `/path/to/destination/`.

  - **Command to rename a file**: 
    ```bash
    mv oldname.txt newname.txt
    ```
  - **Output**: The file `oldname.txt` is renamed to `newname.txt`.

#### System Information Commands

- **`nproc`**: Displays the number of CPUs in the system.
  - **Command**: 
    ```bash
    nproc
    ```
  - **Output**:
    ```
    4
    ```

- **`lscpu`**: Provides detailed information about the CPU architecture.
  - **Command**: 
    ```bash
    lscpu
    ```
  - **Output**:
    ```
    Architecture:        x86_64
    CPU op-mode(s):      32-bit, 64-bit
    Byte Order:          Little Endian
    CPU(s):              4
    ...
    ```

- **`free -g`**: Displays the amount of free and used memory in the system in gigabytes.
  - **Command**: 
    ```bash
    free -g
    ```
  - **Output**:
    ```
                 total        used        free      shared  buff/cache   available
    Mem:             15           2           5           0           7           12
    Swap:             1           0           1
    ```

- **`lsblk`**: Lists information about all available or the specified block devices.
  - **Command**: 
    ```bash
    lsblk
    ```
  - **Output**:
    ```
    NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
    sda      8:0    0  100G  0 disk 
    ├─sda1   8:1    0   98G  0 part /
    └─sda2   8:2    0    2G  0 part [SWAP]
    ```

- **`df -hT`**: Displays the amount of disk space available on the filesystem in a human-readable format along with the filesystem type.
  - **Command**: 
    ```bash
    df -hT
    ```
  - **Output**:
    ```
    Filesystem     Type      Size  Used Avail Use% Mounted on
    /dev/sda1      ext4       98G   21G   72G  23% /
    ```

- **`top`**: Displays real-time system information including tasks, memory usage, and CPU usage.
  - **Command**: 
    ```bash
    top
    ```

#### Help and Documentation Commands

- **`man`**: Displays the manual page for a command, providing detailed information on its usage and options.
  - **Command**: 
    ```bash
    man ls
    ```

#### Utility Commands

- **`clear`**: Clears the terminal screen.
  - **Command**: 
    ```bash
    clear
    ```

- **`alias`**: Create shortcuts for frequently used commands.
  - **Command**: 
    ```bash
    alias c='clear'
    ```
  - **Usage**: Now, instead of writing `clear`, you can just use `c` to clear the terminal screen.

- **`stat`**: Displays detailed information about a file or file system.
  - **Command**: 
    ```bash
    stat file.txt
    ```
  - **Output**:
    ```
      File: file.txt
      Size: 128             Blocks: 8          IO Block: 4096   regular file
    ```

- **`which`**: Locates the executable file associated with the given command by searching the directories listed in the PATH environment variable.
  - **Command**: 
    ```bash
    which ls
    ```
  - **Output**:
    ```
    /bin/ls
    ```

- **`apt install <name>`**: Installs a package using the APT package manager.
  - **Command**: 
    ```bash
    sudo apt install htop
    ```


---

### Shell Scripting

#### Shebang (`#!`)

- **`#!` (Shebang or Hashbang)**: The shebang is used at the beginning of a script to specify the path to the interpreter that should be used to execute the script.
  - **Purpose**: It tells the operating system which interpreter to use to parse the rest of the script.
  - **Example**: 
    ```bash
    #!/bin/bash
    ```
    - In this example, `bash` is the executable interpreter. Other possible interpreters include `sh`, `dash`, `ksh`, etc.
    - **Popular Interpreters**:
      - **`/bin/bash`**: The most popular and widely used interpreter.
      - **`/bin/sh`**: Often points to `bash` in many distributions. However, in some distributions like Ubuntu, it points to `dash`, a smaller and faster shell.
      - **`/bin/dash`**: A minimal and fast interpreter, used in systems where performance is critical.
      - **`/bin/ksh`**: Korn shell, known for its powerful scripting capabilities.
  - **Note**: When using `#!/bin/sh`, be aware of the specific system configuration as it might link to different interpreters depending on the distribution.

#### Comments (`#`)

- **`#` (Comments)**: Comments are lines in a script that are not executed. They are used to add explanations or annotations within the code.
