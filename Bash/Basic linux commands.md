# Basic Commands - Bash

## Online Disclaimer of Purpose

This repository contains a list of basic Linux commands along with their descriptions and usage examples. These commands are intended for educational purposes to help users familiarize themselves with common tasks in the Linux command line. The commands are suitable for both beginners and intermediate users who wish to enhance their proficiency in using the Linux operating system.

### Command Categories

#### Directory and Navigation Commands

- **`pwd`**: Print the present working directory.
  - **Example**: 
    ```bash
    pwd
    ```
    - Output: `/home/user`

- **`cd`**: Change the current directory.
  - **Example**: 
    ```bash
    cd /path/to/directory
    ```

- **`cd ..`**: Go to the parent directory.
  - **Example**: 
    ```bash
    cd ..
    ```

- **`cd -`**: Go to the previous directory.
  - **Example**: 
    ```bash
    cd -
    ```

- **`ls`**: List files and directories.
  - **Example**: 
    ```bash
    ls
    ```

#### File Management Commands

- **`cat`**: Create a new file with content, view the content of a file, concatenate two files, etc.
  - **Example**: 
    ```bash
    cat file1.txt file2.txt > combined.txt
    ```

- **`touch`**: Change the access time of a file or create new empty files.
  - **Example**: 
    ```bash
    touch newfile.txt
    ```

- **`vi` and `nano`**: Text editors for creating and modifying files.
  - **Example (vi)**: 
    ```bash
    vi file.txt
    ```
  - **Example (nano)**: 
    ```bash
    nano file.txt
    ```

- **`mkdir`**: Create a new directory.
  - **Example**: 
    ```bash
    mkdir new_directory
    ```

#### System Information Commands

- **`nproc`**: Displays the number of CPUs in the system.
  - **Example**: 
    ```bash
    nproc
    ```
    - Output: `4`

- **`lscpu`**: Provides detailed information about the CPU architecture.
  - **Example**: 
    ```bash
    lscpu
    ```

- **`free -g`**: Displays the amount of free and used memory in the system in gigabytes.
  - **Example**: 
    ```bash
    free -g
    ```

- **`lsblk`**: Lists information about all available or the specified block devices.
  - **Example**: 
    ```bash
    lsblk
    ```

- **`df -hT`**: Displays the amount of disk space available on the filesystem in a human-readable format along with the filesystem type.
  - **Example**: 
    ```bash
    df -hT
    ```

- **`top`**: Displays real-time system information including tasks, memory usage, and CPU usage.
  - **Example**: 
    ```bash
    top
    ```

#### Help and Documentation Commands

- **`man`**: Displays the manual page for a command, providing detailed information on its usage and options.
  - **Example**: 
    ```bash
    man ls
    ```

### Symbols

- **`#`**: Prompt symbol indicating commands to be executed as the root user.
- **`$`**: Prompt symbol indicating commands to be executed as a normal user.
- **`~`**: Symbol representing the home directory of the current user.
- **`/`**: Symbol representing the root directory of the filesystem.

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
  - **Purpose**: To provide context and explanations for the code, making it easier to understand and maintain.
  - **Example**:
    ```bash
    # This is a comment
    echo "Hello, World!"  # This prints 'Hello, World!' to the terminal
    ```

---

These concepts are fundamental for writing and understanding shell scripts. For more detailed usage and options, refer to the man pages or official documentation for each interpreter. This list aims to provide a quick reference for commonly used concepts and their purposes.
