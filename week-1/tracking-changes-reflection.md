## How does tracking and adding changes make developers' lives easier?

Developers do not work on the same files at the same time. The original files are copied and distributed to each developer to work on at their local machine. When they bring their changes back together, it's critical to be able to assess who made changes and what they were. By tracking these changes, the various contributions can be merged back together into a new code base, for the team to continue working on, or to distribute. This iterative approach allows for the team to quickly identify bugs and work to fix them.

## What is a commit?

A commit is a saved version of a project. The analogy to video games is useful, comparing a game's saved checkpoint status to a commit. The checkpoint contains all the relevant player data that was up-to-date at the moment of the save. In git, the commit contains all the most up-to-date version of the files in the project, at the moment of the commit. In both video games and coding life, we can have multiple versions of both, including the most recent save/commit and past ones. We can also revert back to those previous saves/commits, if needed.

## What are the best practices for commit messages?

Good commit messages are short, with verbs written in imperative form. They do not require a detailed description of the changes to the code, rather a brief comment on how features or functions have changed. It's also useful to reference a comparison to previous or other versions of the code, when relevant.

## What does the HEAD^ argument mean?

HEAD^ refers to the lastest commit, or the most up-to-date version of the code. 'Git log' shows all the saved commits, and we can use HEAD~2, HEAD~3, etc. to access those.

## What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages of making changes with git are: modify the file, stage or add the file, and commit it to the branch. Before the process starts, though, we make sure we have the latest commit (pull) and that we are tracking changes to the branch. Now we can begin editing our files as needed. Second we stage individual files (git add filename) or an entire directory (git add ./) for the commit. Then we commit those files (git commit -m "fix typos in earlier text") into a new commit.

## Write a handy cheatsheet of the commands you need to commit your changes?

git pull origin master
git checkout -b working-branch
git add ./
git commit -m "write better code"

## What is a pull request and how do you create and merge one?

A pull request is a method for making iterative changes to a code base. We start the process by taking the master code base and creating a new branch. Changes and edits are made in the new branch and, once completed, pushed up to Github. From here, other devs can review changes made in the new branch. Finally we merge the new branch with the master.

The first half of this process is performed on the local machine. Then we navigate to Github, once the new branch is uploaded to the server. Here we click the "Compare and pull requests" button on the new branch, and then hit the buttons for "Create pull request" and "Merge" on the following pages.

## Why are pull requests preferred when working with teams?

Teams use pull requests to assess and implement the changes that individual developers make to the code base. I could ask one dev to do a pull on my latest code, and she can look at it to make sure it's working. Github provides tools to quickly assess the changes I made, going line-by-line to indicate additions or edits in the code. Once it gets the OK, we can merge into the original code base.