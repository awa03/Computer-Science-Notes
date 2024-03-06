<h1><strong>Version Control Systems </strong></h1>
- Version control systems are software tools that help software teams manage changes to source code over time
- Allow you to efficiently track the history of a collection of files and revert to the previous or more recent version of the files.
- Each version captures a snapshot of files at a certain point in time
<h3>Repository</h3>
- working directory + store
- It contains a collection of files that make up the project
- The <strong>working directory</strong> contains a copy of the project files that is private to the developer
<h3>Repository Store</h3>
- The store contains the complete history of the project
- hidden file, `.git`, is the store 
- The rest is the working directory
<h3>CVCS vs DVCS</h3>
- The <strong>Centralized version control system</strong> each person works on the servers repository.
	- More difficult to integrate
	- Easier to administrate and control backups, access and progress
- The <strong>Distributed version control system</strong> each person has a repo that they can push to the main repository, the servers repository.
	- Safer for the server
	- Lighter direct load on the server
	- Offline work
	- Faster
<h3>Git</h3>
- A distributed version control system
- <strong>Working directory</strong> Local copy of the repository where the user can make changes locally
- <strong>Staging index</strong> It is the place where a commit will be prepared. We can add changes in the index. 
- <strong>Project History</strong> Displays the history of revisions to the project
- <strong>Commit</strong> is a atomic collection of changes to a repository.
	- Contains all recored local modifications that lead to the new revision
	- Contains info such as; Commit id, Commit branch, etc
- <strong>Branch</strong> represents an independent line of development
	- Serve as an abstraction for the edit/stage/commit process
	- Basically a brand new working directory, staging area, and project history
	- <strong>Head Pointer</strong> is the pointer to the tip (last commit) of a branch and it is the parent of the next commit

<h3>Git Commands</h3>
- `git clone <url>`
	- Copies the repository to the working directory
- `git add <filenames>`
	- Make changes and add them to the staging area
- `git commit -m <message>`
	- Allows you to commit two changes 'e' and 'f'
	- A new revision is created in your repository based on the state of the working directory
	- Should have a short descriptive message attached
- `git pull <url>`
	- The command allows you to retrieve changes from a remote repository into your local repository
	- Finish your work and commit before pulling
- `git push`
	- A push propagates changes from a local repository
- `git merge <branch_name>`
	- The command lets you take independent lines of development
- `git log`
	- List of all commits made to a repository
- `git revert`
	- revert a commit
- Atomic commits are small changes
<h3>Remote</h3>
- A <strong>Remote</strong> the place where your code is stored
<h3>Merging Actions</h3>
- The process of joining two branches into one
- Usually merging the last changes into your working directory
- Sometimes there are conflicts between these changes, the user is usually prompted to interactively resolve them
- After you merge you still need to commit your changes
<h3>Branching</h3>
- Supports quality assurance/ code quality/ and integration
- Isolate bugs
- ex. `git branch BugFix`
