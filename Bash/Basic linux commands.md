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

### File and Directory Permissions

File and directory permissions control access to files and directories on a Unix-like operating system, determining who can read, write, and execute files or enter directories.

#### File Permissions

File permissions are represented by a 10-character string, where the first character indicates the file type, and the next nine characters represent the permissions for the owner, group, and others.

- **`-rw-r--r--`**: Example of file permissions.
  - The leading `-` indicates that it is a regular file.
  - The next three characters (`rw-`) indicate that the owner (`user`) has read and write permissions, but no execute permission.
  - The next three characters (`r--`) indicate that the group (`group`) has read-only permission.
  - The final three characters (`r--`) indicate that others have read-only permission.

  - **Command Example**:
    ```bash
    ls -l file.txt
    ```
  - **Expected Output**:
    ```
    -rw-r--r-- 1 user group 100 Jun 15 12:00 file.txt
    ```

##### Directory Permissions

Directory permissions are similar to file permissions but with a slightly different interpretation.

- **`drwxr-xr-x`**: Example of directory permissions.
  - The leading `d` indicates that it is a directory.
  - The next three characters (`rwx`) indicate that the owner (`user`) has read, write, and execute permissions.
  - The next three characters (`r-x`) indicate that the group (`group`) has read and execute permissions but no write permission.
  - The final three characters (`r-x`) indicate that others have read and execute permissions but no write permission.

  - **Command Example**:
    ```bash
    ls -ld directory
    ```
  - **Expected Output**:
    ```
    drwxr-xr-x 2 user group 4096 Jun 15 12:00 directory
    ```

##### Modifying Permissions

Permissions can be modified using the `chmod` command, which stands for "change mode". The permissions can be represented symbolically or numerically.

- **Symbolic Representation**:
  - Example: `chmod u+x filename`
    - This command adds execute (`+x`) permission for the owner (`u`/`user`) of the file or directory.
    - Multiple permissions can be combined using `+` and removed using `-`.

- **Numeric Representation**:
  - Example: `chmod 700 filename`
    - This command sets the permissions to `rwx------` for the owner (`7`), and no permissions for the group and others.
    - The numeric representation is calculated by adding the values of the desired permissions (4 for read, 2 for write, 1 for execute).

##### Explanation of Permissions

- **`r` (read)**: Allows viewing the contents of a file or the list of files in a directory.
- **`w` (write)**: Allows modifying the contents of a file or creating, renaming, or deleting files in a directory.
- **`x` (execute)**: For files, allows executing the file as a program. For directories, allows accessing files and subdirectories within the directory.

##### Understanding Ownership

- **Owner User (`user`)**: The user who owns the file or directory. They have full control over the file or directory and can modify permissions.
- **Owner Group (`group`)**: The group to which the owner user belongs. Members of this group may have specific permissions assigned to them.
- **Others**: Users who are not the owner user or part of the owner group. They have the permissions specified for "others" in the file or directory permissions.

### Disk Management

#### Disk Space Usage

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
- **df (disk free)**: Provides information about available disk space.
  - Use without options to display disk space usage in kilobytes:
    ```bash
    df
    ```
    Example output:
    ```
    Filesystem     1K-blocks     Used Available Use% Mounted on
    /dev/sda1      123456789    98765432   20482056  83% /
    ```
  - Use the `-h` option for human-readable output:
    ```bash
    df -h
    ```
    Example output:
    ```
    Filesystem      Size  Used Avail Use% Mounted on
    /dev/sda1        118G   94G   19G  84% /
    ```
  - Use `-i` to check inode usage:
    ```bash
    df -i
    ```
    This is useful when a disk appears full but still has available space.

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

### Process Management

#### Monitoring and Managing Processes

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

- **`top`**: Displays real-time system information including tasks, memory usage, and CPU usage.
  - **Command**: 
    ```bash
    top
    ```

- **htop**: An interactive process viewer for Unix systems.
  - Launch **htop** to view and manage running processes:
    ```bash
    htop
    ```
    Example output:
    ```
    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
    1234 user     20   0 1013044  11308   7296 S   1.0   0.1   0:01.23 bash
    5678 user     20   0  409340  78904  43240 R  25.0   1.2   0:12.34 htop
    ```
    Navigate with arrow keys and press **F9** to kill a process.

#### System Monitoring

- **uptime**: Displays system uptime and load average.
  - Check system uptime and load average:
    ```bash
    uptime
    ```
    Example output:
    ```
    12:34:56 up 3 days,  4:55,  2 users,  load average: 0.15, 0.30, 0.20
    ```
    The load average values represent the system load over the last 1 minute, 5 minutes, and 15 minutes, respectively.


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
### Package Management

In Linux systems, package management is crucial for installing, updating, and removing software packages efficiently. Here's an overview of package management utilities and commands:

#### Symbols

- **`apt`**: The go-to package management utility for Debian and Ubuntu-based systems.
- **`yum`**: Found in Red Hat Enterprise Linux (RHEL), CentOS, and Fedora distributions.

#### Updating Packages

- **`sudo apt update`**: Refreshes the local package index with the latest information from central repositories.
- **`sudo apt upgrade`**: Updates packages to their latest versions without altering dependencies.
- **`sudo apt dist-upgrade`**: Upgrades packages, including necessary dependency changes.

#### System Maintenance

- **`sudo reboot`**: Initiates a system reboot, recommended after updates to apply security patches effectively.

#### Package Installation and Removal

- **`apt search`**: Searches the local package cache for specific packages.
- **`sudo apt install <package>`**: Installs new packages.
- **`sudo apt remove <package>`**: Uninstalls a package.
- **`sudo apt autoremove`**: Clears out unused package dependencies.

By utilizing these commands, users can efficiently manage software packages, ensuring their systems are up-to-date and secure.

### Service Management with systemd

`systemd` is a service manager for Linux operating systems. It provides a robust and efficient way to manage system services.

#### Command Line Tool: `systemctl`

`systemctl` is the command-line utility that interacts with `systemd` to manage services.

#### Checking Service Status

- **`systemctl status <service>`**: Checks the status of a service.
  - **Command**:
    ```bash
    systemctl status apache2
    ```
  - **Expected Output**:
    ```bash
    ● apache2.service - The Apache HTTP Server
       Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset: enabled)
       Active: active (running) since Wed 2023-06-16 14:23:15 UTC; 1h 45min ago
     Main PID: 1234 (apache2)
        Tasks: 6 (limit: 4915)
       Memory: 13.3M
       CGroup: /system.slice/apache2.service
               ├─1234 /usr/sbin/apache2 -k start
               ├─5678 /usr/sbin/apache2 -k start
               └─9101 /usr/sbin/apache2 -k start
    ```

#### Enabling and Disabling Services

- **`sudo systemctl disable <service>`**: Disables a service so it will not start automatically on boot.
  - **Command**:
    ```bash
    sudo systemctl disable apache2
    ```
  - **Expected Output**:
    ```bash
    Synchronizing state of apache2.service with SysV service script with /lib/systemd/systemd-sysv-install.
    Disabling apache2.service, created symlink /etc/systemd/system/apache2.service → /dev/null.
    ```

- **`sudo systemctl enable <service>`**: Enables a service to start automatically on boot.
  - **Command**:
    ```bash
    sudo systemctl enable apache2
    ```
  - **Expected Output**:
    ```bash
    Synchronizing state of apache2.service with SysV service script with /lib/systemd/systemd-sysv-install.
    Created symlink /etc/systemd/system/multi-user.target.wants/apache2.service → /lib/systemd/system/apache2.service.
    ```

#### Starting and Stopping Services

- **`sudo systemctl stop <service>`**: Stops a running service.
  - **Command**:
    ```bash
    sudo systemctl stop apache2
    ```

- **`sudo systemctl start <service>`**: Starts a service.
  - **Command**:
    ```bash
    sudo systemctl start apache2
    ```

- **`sudo systemctl restart <service>`**: Restarts a service.
  - **Command**:
    ```bash
    sudo systemctl restart apache2
    ```

By using these commands, you can efficiently manage services on your Linux system, ensuring they start, stop, and restart as needed.

# Logs Management

## Log Files and Directories

- **/var/log**: Directory where most log files are stored.
- **syslog**: General system log file.
- **dmesg**: Displays hardware and kernel-related logs.

## Viewing Log Files

- `head <file name>`: Displays the first 10 lines of a file.
  - **Command**:
    ```bash
    head syslog
    ```
  - **Expected Output**: Displays the first 10 lines of the syslog file.

- `tail <file name>`: Displays the last 10 lines of a file.
  - **Command**:
    ```bash
    tail syslog
    ```
  - **Expected Output**: Displays the last 10 lines of the syslog file.

- `head -n 50 <file name>`: Displays the first 50 lines of a file.
  - **Command**:
    ```bash
    head -n 50 syslog
    ```
  - **Expected Output**: Displays the first 50 lines of the syslog file.

- `tail -f <file name>`: Follows the logs in real-time for troubleshooting.
  - **Command**:
    ```bash
    tail -f syslog
    ```
  - **Expected Output**: Continuously displays new lines appended to the syslog file in real-time.

- `journalctl -u <unit/service name>`: Shows all logs related to the given unit or service. Use `-f` to follow the logs in real-time with `journalctl`. It is part of systemd.
  - **Command**:
    ```bash
    journalctl -u apache2
    ```
  - **Expected Output**: Displays logs related to the Apache2 service.

Certainly! Below is the enhanced Markdown file with brief explanations for each command along with examples and expected output.

```markdown
# Useful Linux Commands

## Sorting and Uniqueness

### Sort
Sorts lines of text files in ascending order.
```sh
sort file.txt
```
**Example Output:**
```
apple
banana
cherry
date
```

### Reverse Sort
Sorts lines of text files in descending order.
```sh
sort -r file.txt
```
**Example Output:**
```
date
cherry
banana
apple
```

### Unique Values
Sorts and removes duplicate lines from the output.
```sh
sort file.txt | uniq
```
**Example Output:**
```
apple
banana
cherry
date
```

## Searching and Comparing Files

### Grep
Searches for a specific word or pattern in a file.
```sh
grep "word" filename.txt
```
**Example Output:**
```
This is the word you are searching for.
```

### Extended Grep
Searches for multiple patterns in a file using extended regular expressions.
```sh
egrep "egg|mango" filename.txt
```
**Example Output:**
```
I like eggs.
I like mangoes.
```

### Compare Files
Compares two files byte by byte.
```sh
cmp file1.txt file2.txt
```
**Example Output:**
```
file1.txt file2.txt differ: byte 1, line 1
```

### Diff Files
Compares files and displays differences in a unified format.
```sh
diff -u file1.txt file2.txt
```
**Example Output:**
```diff
--- file1.txt 2021-01-01 12:00:00.000000000 +0000
+++ file2.txt 2021-01-01 12:00:00.000000000 +0000
@@ -1 +1 @@
-Hello World
+Hello Everyone
```

## File and Directory Operations

### Find File
Searches for files in a directory hierarchy.
```sh
find /path -name filename.txt
```
**Example Output:**
```
/path/to/filename.txt
```

### Locate File
Finds files by name using an updated database.
```sh
locate filename.txt
```
**Example Output:**
```
/path/to/filename.txt
```

### Update Locate Database
Updates the database used by `locate`.
```sh
sudo updatedb
```

## System Monitoring and Management

### Command History
Displays the command history.
```sh
history
```
**Example Output:**
```
1  ls
2  cd /home
3  mkdir new_folder
...
```

### Uptime
Shows how long the system has been running and the load average.
```sh
uptime
```
**Example Output:**
```
12:34:56 up 10 days,  2:31,  1 user,  load average: 0.00, 0.01, 0.05
```

### System Architecture
Displays the machine's architecture.
```sh
arch
```
**Example Output:**
```
x86_64
```

### List Processes
Displays detailed information about all running processes.
```sh
ps -ef
```
**Example Output:**
```
UID        PID  PPID  C STIME TTY          TIME CMD
root         1     0  0 12:00 ?        00:00:01 /sbin/init
root         2     0  0 12:00 ?        00:00:00 [kthreadd]
...
```

### Search Process by Name
Searches for processes by name.
```sh
pgrep sshd
```
**Example Output:**
```
1234
5678
```

### Kill Process by PID
Forcefully kills a process by PID.
```sh
kill -9 1234
```

### Kill Process by Name
Kills processes by name.
```sh
pkill sshd
```

### List Jobs
Lists the currently running jobs.
```sh
jobs
```
**Example Output:**
```
[1]+  Stopped                 nano
```

### Background Job
Resumes a suspended job in the background.
```sh
bg 1
```

### Foreground Job
Brings a job to the foreground.
```sh
fg 1
```

## Network Operations

### Network Interface Configuration
Displays network interface configuration.
```sh
ifconfig
```
**Example Output:**
```
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.2  netmask 255.255.255.0  broadcast 192.168.1.255
        inet6 fe80::1a2b:3c4d:5e6f  prefixlen 64  scopeid 0x20<link>
        ether 00:1a:2b:3c:4d:5e  txqueuelen 1000  (Ethernet)
        RX packets 123456  bytes 123456789 (123.4 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 123456  bytes 123456789 (123.4 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

### Ping
Checks connectivity to a host.
```sh
ping google.com
```
**Example Output:**
```
PING google.com (172.217.14.238) 56(84) bytes of data.
64 bytes from lax17s05-in-f14.1e100.net (172.217.14.238): icmp_seq=1 ttl=53 time=11.4 ms
64 bytes from lax17s05-in-f14.1e100.net (172.217.14.238): icmp_seq=2 ttl=53 time=10.8 ms
...
```

### Telnet
Connects to a server on a specified port.
```sh
telnet 192.168.1.1 80
```
**Example Output:**
```
Trying 192.168.1.1...
Connected to 192.168.1.1.
Escape character is '^]'.
```

### Network Statistics
Displays network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.
```sh
netstat -putan | grep 80
```
**Example Output:**
```
tcp        0      0 0.0.0.0:80            0.0.0.0:*               LISTEN      1234/nginx: master
```

### Traceroute
Shows the route packets take to a network host.
```sh
traceroute google.com
```
**Example Output:**
```
traceroute to google.com (172.217.14.238), 30 hops max, 60 byte packets
 1  192.168.1.1 (192.168.1.1)  0.350 ms  0.282 ms  0.260 ms
 2  10.0.0.1 (10.0.0.1)  1.359 ms  1.320 ms  1.306 ms
 ...
```

## System Management

### List Systemd Services
Lists all systemd services.
```sh
systemctl list-units --type=service --all
```
**Example Output:**
```
  UNIT                         LOAD      ACTIVE   SUB     DESCRIPTION
  accounts-daemon.service      loaded    active   running Accounts Service
  alsa-restore.service         loaded    inactive dead    Save/Restore Sound Card State
  alsa-state.service           loaded    inactive dead    Manage Sound Card State (restore and store)
...
```

## Package Management

### List Installed RPM Packages
Lists all installed RPM packages and filters by the app.
```sh
rpm -qa | grep app
```
**Example Output:**
```
application-1.2.3-1.el7.x86_64
```

### List Installed DNF Packages
Lists all installed packages using DNF.
```sh
dnf list installed
```
**Example Output:**
```
Installed Packages
NetworkManager.x86_64                        1:1.22.8-4.el8                         @BaseOS
adobe-mappings-cmap.noarch                   20171205-3.el8                         @AppStream
adobe-mappings-cmap-deprecated.noarch        20171205-3.el8                         @AppStream
...
```

### Search APT Packages
Searches for packages in APT package manager.
```sh
apt search package
```
**Example Output:**
```
Sorting... Done
Full Text Search... Done
package/stable 1.2.3-1 amd64
  Description of the package
```

### List Available YUM Packages
Lists available packages in YUM.
```sh
yum list available
```
**Example Output:**
```
Available Packages
package.x86_64                          1.2.3-1.el7                          base
```

## Utility Commands

### Alias
Creates a shortcut for a command.
```sh
alias ll='ls -la'
```

### Script
Records terminal sessions.
```sh
script
```
**Example Output:**
```
Script started, file is typescript


```

### Wget
Downloads files from the web.
```sh
wget http://example.com/file
```
**Example Output:**
```
--2021-01-01 12:00:00--  http://example.com/file
Resolving example.com (example.com)... 93.184.216.34
Connecting to example.com (example.com)|93.184.216.34|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 12345 (12K) [text/plain]
Saving to: ‘file’

file                100%[===================>]  12.05K  --.-KB/s    in 0s

2021-01-01 12:00:00 (123 MB/s) - ‘file’ saved [12345/12345]
```

### Curl
Transfers data from or to a server.
```sh
curl http://example.com
```
**Example Output:**
```
<!doctype html>
<html>
<head>
<title>Example Domain</title>
...
</html>
```

## System Reboot and Shutdown

### Reboot
Reboots the system.
```sh
reboot
```

### Shutdown
Shuts down the system.
```sh
shutdown
```
```
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
