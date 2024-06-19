# Git Documentation

## Overview

Git is a **distributed version control system (VCS)** used for:

- **Collaboration**: Multiple developers can work on the same project simultaneously.
- **Backup and Restore**: Ensures that your work is saved and can be restored if needed.
- **Tracking**: Keeps track of changes made to the project over time.
- **Branching and Merging**: Allows for different lines of development to be created and merged.

## Getting Started with Git

On a Windows system, after installing Git, you can use **Git Bash** or **Visual Studio Code** to work with Git.

### Checking Git Version

To check the installed Git version:

```bash
git --version
```

**Expected Output:**

```
git version 2.30.0.windows.2
```

### Configuring Git User

Set up your user name and email for version control details:

```bash
git config --global user.name "chromazo"
git config --global user.email "something@email.com"
```

Verify the configuration:

```bash
git config --list
```

**Expected Output:**

```
user.name=chromazo
user.email=something@email.com
```

## Initializing a Git Repository

To start tracking a project, initialize Git in the project folder:

```bash
git init
```

**Expected Output:**

```
Initialized empty Git repository in /path/to/your/project/.git/
```

### Checking the Status

To see the current status of the working directory and staging area:

```bash
git status
```

**Expected Output:**

```
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        <your-file>

nothing added to commit but untracked files present (use "git add" to track)
```

### Viewing Changes

To see the differences between changes:

```bash
git diff
```

**Expected Output:**

```
diff --git a/your-file b/your-file
new file mode 100644
index 0000000..e69de29
```

### Adding Changes

To stage files for commit:

```bash
git add <file name>
```

To add all changes:

```bash
git add *
```

**Expected Output:**

```
(no output for successful command)
```

### Committing Changes

To commit staged changes with a message:

```bash
git commit -m "<change description>"
```

**Expected Output:**

```
[master (root-commit) 9c1dc17] <change description>
 1 file changed, 1 insertion(+)
 create mode 100644 your-file
```

## Viewing Commit History

To view the commit history:

```bash
git log
```

**Expected Output:**

```
commit 9c1dc17a3bc12345678901234567890123456789 (HEAD -> master)
Author: chromazo <something@email.com>
Date:   Mon Jun 14 12:34:56 2021 +0200

    <change description>
```

To show the last 2 commits with their diffs:

```bash
git log -p -2
```

**Expected Output:**

```
commit 9c1dc17a3bc12345678901234567890123456789 (HEAD -> master)
Author: chromazo <something@email.com>
Date:   Mon Jun 14 12:34:56 2021 +0200

    <change description>

diff --git a/your-file b/your-file
new file mode 100644
index 0000000..e69de29
```

To show a summary of changes:

```bash
git log --stat
```

**Expected Output:**

```
commit 9c1dc17a3bc12345678901234567890123456789 (HEAD -> master)
Author: chromazo <something@email.com>
Date:   Mon Jun 14 12:34:56 2021 +0200

    <change description>

 your-file | 1 +
 1 file changed, 1 insertion(+)
```

To show commit details in a single line:

```bash
git log --pretty=oneline
```

**Expected Output:**

```
9c1dc17a3bc12345678901234567890123456789 (HEAD -> master) <change description>
```

To search commit messages:

```bash
git log --grep="<search term>"
```

**Expected Output:**

```
commit 9c1dc17a3bc12345678901234567890123456789 (HEAD -> master)
Author: chromazo <something@email.com>
Date:   Mon Jun 14 12:34:56 2021 +0200

    <change description>
```

### Showing Specific Commits

To show details of a specific commit:

```bash
git show <commit id>
```

**Expected Output:**

```
commit 9c1dc17a3bc12345678901234567890123456789 (HEAD -> master)
Author: chromazo <something@email.com>
Date:   Mon Jun 14 12:34:56 2021 +0200

    <change description>

diff --git a/your-file b/your-file
new file mode 100644
index 0000000..e69de29
```

To show a specific file from a commit:

```bash
git show <commit id>:<file path>
```

**Expected Output:**

```
(contents of the specified file)
```

## Working with Branches

### Checking Branches

To see the current branches:

```bash
git branch
```

**Expected Output:**

```
* master
```

### Switching Branches

To switch to a specific commit:

```bash
git checkout <commit id>
```

**Expected Output:**

```
Note: switching to '<commit id>'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them. You can discard any commits you make in this
state without impacting any branches by switching back to a branch.

... (additional instructions)
```

To switch back to the master branch:

```bash
git checkout master
```

**Expected Output:**

```
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
```

## Handling Negative Cases

### Reverting Changes

If changes were made and saved, to revert to the last committed version:

```bash
git restore . 
# or
git restore <file path>
```

**Expected Output:**

```
(no output for successful command)
```

### Unstaging Changes

If changes were staged but not committed, to unstage and revert to the last committed version:

1. Check changes to be committed:

    ```bash
    git diff --cached
    ```

    **Expected Output:**

    ```
    diff --git a/your-file b/your-file
    new file mode 100644
    index 0000000..e69de29
    ```

2. Unstage the changes:

    ```bash
    git restore --staged . 
    # or
    git restore --staged <file path>
    ```

    **Expected Output:**

    ```
    (no output for successful command)
    ```

3. Revert the changes:

    ```bash
    git restore . 
    # or
    git restore <file path>
    ```

    **Expected Output:**

    ```
    (no output for successful command)
    ```

### Restoring Worktree Changes

If changes were made and added but not committed, and more changes were made:

```bash
git restore --worktree . 
# or
git restore --worktree <file path>
```

**Expected Output:**

```
(no output for successful command)
```

### Resetting Commits

If the wrong files were committed:

To move back to the previous commit, keeping the changes:

```bash
git reset --soft HEAD^
```

**Expected Output:**

```
(no output for successful command)
```

To move back to the previous commit, discarding the changes:

```bash
git reset --hard HEAD^
```

**Expected Output:**

```
HEAD is now at <previous commit id> <previous commit message>
```

## Git Workflow

### Working Directory

The working directory is where you work on your project. It contains the latest version of the project files.

### Staging Area

The staging area is where you place changes that you want to commit. This allows you to selectively stage changes.

### Git Local Repository

The local repository is where Git stores all the project history and configuration files. This is where your commits are stored.

## Example Workflow

1. **Initialize a new repository**:

    ```bash
    git init
    ```

2. **Check the status**:

    ```bash
    git status
    ```

3. **Stage a file**:

    ```bash
    git add <file name>
    ```

4. **Commit the changes**:

    ```bash
    git commit -m "Initial commit"
    ```

5. **View the commit history**:

    ```bash
    git log
    ```
