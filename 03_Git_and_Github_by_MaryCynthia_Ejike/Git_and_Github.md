## GIT AND GITHUB 

### 🧠 Objectives
- Understand version control systems
- Learn Git basics: commits, branches, merges
- Fork and clone a website project
- Make edits, push changes, and create a pull request
- Collaborate using GitHub (e.g., for SCAL team)

####  What Is Git?
- Git is a free and open-source distributed version control system (DVCS) used to track changes in source code during software development.

- It helps multiple developers collaborate on the same codebase without overwriting each other’s work — by saving versions, managing branches, and merging changes.

🚀 Key Features of Git
Version Control	Records the history of every change to your code.
Distributed	Every developer has a full copy of the project’s history.
Branching	Allows working on new features without affecting the main code.
Merging	Combines changes from different branches.
Speed	Fast performance for commits, diffs, and merges.
### VERSION CONTROL
-  What is Version Control?
  
Version control is a system that records changes to a file or set of files over time so you can recall specific versions later.

#### Benefits
- Tracks history of changes
- Enables collaboration
- Supports experimentation via branches
- Facilitates issue resolution and rollback


#### Git Essentials
```bash

# Initialize Git in a Project
git init
# Staging and Committing

git add .                 # Stage all changes
git commit -m "message"   # Commit changes
# View Changes and History
git status
git log

```

#### Branching and Merging
Create and Switch to a Branch
```
git checkout -b new-feature
# Merge Branch into Main

git checkout main
git merge new-feature

```
####  Forking and Cloning a Sample Website

Step 1: Fork the Repository

Go to the GitHub repo (e.g., https://github.com/scal-org/sample-website) and click Fork.
This creates your own copy of the repo under your GitHub account.

Step 2: Clone Your Fork Locally
git clone https://github.com/your-username/sample-website.git
cd sample-website

#### Editing and Committing Changes
Make Edits
Open files in a code editor (e.g., index.html, style.css) and save changes.
Stage and Commit
```
git add .
git commit -m "Updated homepage content"
```
- Push Changes to Your Branch
If you created a branch:
```
git push origin your-branch-name
If working on main:
git push origin main
```
#### Create a Pull Request (PR)
- Go to your forked repo on GitHub
- Click Compare & pull request
- Ensure the base repo is scal-org/sample-website
- Add a descriptive title and summary

- Click Create pull request

✅ This submits your changes to the repository for review and merging.

 #### GitHub Collaboration Tips
Always pull the latest changes before pushing:

```
git pull origin main
Use branches for new features or fixes:
git checkout -b fix-navbar
```
Use .gitignore to exclude unnecessary files (e.g., .env, node_modules/)

🧪 Example Workflow Summary (for SCAL)
#### Fork & Clone
```
git clone https://github.com/your-username/sample-website.git
cd sample-website
```
#### Create a branch
git checkout -b update-footer

#### Edit code (e.g., update footer in index.html)

#### Commit and push
```
git add .
git commit -m "Updated footer for SCAL site"
git push origin update-footer
```
Go to GitHub and create a pull request



