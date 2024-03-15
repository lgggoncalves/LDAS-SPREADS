# CREATE NEW REPOSITORY

To create a repository on GitHub and start working with it on your local machine, follow these straightforward, technical steps. This guide assumes you have basic knowledge of terminal commands and have Git installed on your local machine. If Git is not installed, please refer to the official Git documentation to install it before proceeding.

# 1. Create a New Repository on GitHub

1. Sign in to your GitHub account.
2. Navigate to the GitHub homepage.
3. Click on the "+" icon in the top-right corner and select "New repository".
4. Enter a Repository name. Optionally, add a description.
5. Choose the repository visibility: Public or Private.
6. Optionally, initialize the repository with a README, .gitignore, or license.
7. Click "Create repository".

# 2. Set Up Your Local Workspace

Open your terminal (Command Prompt, PowerShell, Terminal, etc.) and perform the following steps:

1. Navigate to the directory where you want to place the project using the `cd` command. If you need to create a new directory, you can use the `mkdir <directory_name>` command followed by `cd <directory_name>` to move into it.

2. Clone the repository to your local machine:

```sh
git clone https://github.com/<your_username>/<repository_name>.git
```

Replace `<your_username>` with your GitHub username and `<repository_name>` with the name of your repository.

3. Navigate into your cloned repository:

```sh
cd <repository_name>
```

# 3. Start Working on Your Project

1. Create a new file or modify existing files in your project's directory.

2. Stage your changes for commit:

```sh
git add .
```

This command stages all modified files. If you want to stage only specific files, replace `.` with the file names.

3. Commit your changes to your local repository:

```sh
git commit -m "Initial commit"
```

Replace `"Initial commit"` with a meaningful commit message describing your changes.

4. Push Changes to GitHub

# 1. Push your changes to GitHub:

```sh
git push origin main
```

Replace `main` with the branch name you are pushing to if it is different.

# 5. Continue Development

- Repeat the steps in section 3 to continue developing your project. Regularly push your changes to GitHub to ensure your remote repository stays up to date with your local development.

# 6. Pull Latest Changes

If you are collaborating with others, or if you've made changes to your GitHub repository through the web interface, you'll want to pull the latest changes to your local repository:

```sh
git pull origin main
```

This guide provides a minimalistic approach to start working with a repository on GitHub and synchronize it with your local machine. For more complex Git operations and collaboration workflows, consult the official Git and GitHub documentation.

# FILTER OUT LARGE (UNWANTED) DATASETS

To prevent datasets or any specific files from being pushed to GitHub, you can use the `.gitignore` file. The `.gitignore` file is a text file that tells Git which files or directories to ignore in a project. Typically, large datasets, sensitive information, build directories, and temporary files are added to `.gitignore` to avoid uploading them to the repository. Here's how to set it up:

1. Create a `.gitignore` File

If your repository doesn't already have a `.gitignore` file, you'll need to create one in the root directory of your local repository. To do this, navigate to your repository's root directory in your terminal and run:

```sh
touch .gitignore
```

2. Specify Files or Directories to Ignore

Open the `.gitignore` file in a text editor and specify the paths to the datasets or any files you want to ignore. You can list files or directories, one per line. Here are some examples:

- To ignore a specific file: `data.csv`
- To ignore an entire directory: `datasets/`
- To ignore all files with a certain extension: `*.csv`
- To ignore files except certain ones, use the `!` prefix: `*.log` (ignore all `.log` files), `!important.log` (but keep `important.log`).

3. Save and Commit `.gitignore`

After you've updated your `.gitignore`, you need to stage and commit it to your repository:

```sh
git add .gitignore
git commit -m "Add .gitignore file"
```

4. Push Changes to GitHub

Finally, push the `.gitignore` file to your GitHub repository:

```sh
git push origin main
```

Additional Tips

- Review `.gitignore`: Regularly review your `.gitignore` file to ensure it's up to date with any new files or directories that should be ignored.
- Global `.gitignore`: For files that should be ignored across all projects (like system files or editor temporary files), you can configure a global `.gitignore` file on your machine.
- Removing Tracked Files: If you accidentally tracked files that should be ignored, remove them from the repository and commit that change before adding the paths to `.gitignore`. Use `git rm --cached <file>` to untrack files without deleting them from your local filesystem.

By following these steps, you can effectively prevent datasets or any unwanted files from being uploaded to GitHub, ensuring your repository remains clean and only contains necessary files.
