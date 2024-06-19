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

### Managing Remote Repositories

#### Add Remote Origin
- **Description**: Adds a new remote repository to the local Git repository.
- **Command**: 
  ```bash
  git remote add origin <url>
  ```
- **Explanation**: This command establishes a connection between the local repository and a remote repository hosted on a Git server. The `<url>` parameter specifies the URL of the remote repository.

#### Rename Branch to Main
- **Description**: Renames the current branch from "master" to "main".
- **Command**: 
  ```bash
  git branch -M main
  ```
- **Explanation**: This command renames the current branch. In recent years, the term "master" has been replaced with "main" as the default branch name in many Git repositories for inclusivity and sensitivity reasons.

#### Push to Remote Repository
- **Description**: Pushes local commits to a remote repository.
- **Command**: 
  ```bash
  git push -u origin main
  ```
- **Explanation**: This command uploads local commits to the remote repository specified by "origin". The "-u" flag sets the upstream branch, allowing future pushes without specifying the remote and branch. "main" specifies the branch being pushed.

#### Verify Remote Repository
- **Description**: Checks if the local repository is connected to a remote repository.
- **Command**: 
  ```bash
  git remote -v
  ```
- **Explanation**: This command displays the URLs of the remote repositories linked to the local repository, along with their fetch and push URLs.

### Working with Remote Repositories

#### Pull Changes from Remote
- **Description**: Fetches and merges changes from a remote repository to the local repository.
- **Command**: 
  ```bash
  git pull
  ```
- **Explanation**: This command combines the "git fetch" and "git merge" commands. It retrieves changes from the remote repository and integrates them into the current branch of the local repository.

#### Clone a Repository
- **Description**: Creates a local copy of a remote repository.
- **Command**: 
  ```bash
  git clone <url>
  ```
- **Explanation**: This command downloads the entire history of a remote repository to the local machine, creating a copy that includes all branches, commits, and files.

#### Merge Branches
- **Description**: Integrates changes from one branch into another.
- **Command**: 
  ```bash
  git merge <secondary branch name>
  ```
- **Explanation**: This command combines the changes made in the specified secondary branch into the current branch. It creates a new commit to record the merge.

### Collaborating and Contributing

#### Forking a Repository
- **Description**: Creates a personal copy of a repository in the user's GitHub account.
- **Explanation**: Forking allows users to freely experiment with changes without affecting the original repository. Users can make changes, propose fixes, or add features to their forked repository.

#### Syncing a Fork
- **Description**: Updates a forked repository with changes from the original repository.
- **Explanation**: Syncing ensures that the forked repository is up-to-date with any changes made to the original repository. It involves fetching changes from the original repository and merging them into the forked repository.

#### Contribute
- **Description**: Propose changes to the original repository through pull requests.
- **Explanation**: Contributing involves making changes, committing them to a branch, and creating a pull request to merge those changes into the original repository. Pull requests are reviewed by repository maintainers before being merged.

### Other Git Commands

#### Ignore Files
- **Description**: Specifies files or patterns to be ignored by Git.
- **Explanation**: The `.gitignore` file contains a list of file names or patterns that Git should ignore. This prevents irrelevant files, such as build artifacts or temporary files, from being tracked by version control.

#### Clean Working Directory
- **Description**: Removes untracked files from the working directory.
- **Explanation**: The "git clean" command is used to remove untracked files from the working directory. The `-n` flag performs a dry run to show what would be deleted, while the `-f` flag forces deletion without confirmation.

#### Tags
- **Description**: Assigns meaningful names to specific commits in the repository history.
- **Explanation**: Tags are used to mark specific commits as important milestones, releases, or versions. Annotated tags include a message and are signed with the creator's GPG key for added security. Tags can be pushed to the remote repository to share them with others.
