Things to come back to:
- Bash Profile customization

the following is an example of code highlighting in a language 

```ruby
10.times do
  puts "hi"
end
```

## BASH 
(aka Shell, Terminal, Command Line Prompt, Bash Prompt, Bash Shell):

### What are the bash commands?

All commands are Unix programs
    ex: pwd is a program (whose definition lives in a bin directory)
    see also: Unix philosophy (http://en.wikipedia.org/wiki/Unix_philosophy)

    Unix file structure is like a tree.
    / is the root

         / {
             volumes [file 1 ,file 2]
             bin     [cd, ls, man] (the bin is like the dictionary that the terminal looks 
                            in to find out what things mean)
             etc     [passwords, apache, ...]
             user    [me]
            }
    Types of files: binary, text
    
### Terminal HotKeys:
* command-k clears the screen
* command T = opens new tab in terminal 
    

### Useful bash commands:

* `pwd` (print working directory)
* `cd` (change directory)
    * `cd ..` (go up one level)
       * NOTE: `cd ../../..` means go up 3 levels
    * `cd .` (current directory)
    * `cd /` (go directly to root directory)
    * `cd` (goes to your current logged-in user's home directory)
* `ls` (list all the files and folders in the current directory)
    * `ls -a` (list even the hidden files and folders)
    * `ls -al` (lists all files in long form.)
        * permissions - # of files - owner - group owner - size in bits - date last 
        * modified - name of file
    * `ls ..` (references one level up)
* `echo` (print some arguments or the value of a variable)  
    * `echo $PATH` (show your path variable) 
* `history`: type history to see entire list or use arrow key up, 
    * use `!`## to execute from history list
* `man` (finds the manual page for a command (e.g. "man ls")) 
    * type "q" to quit the manual
* ~ (references home directory (e.g. cd ~, ls ~, ls ~/Code))
* less (viewing the content of a file from the command line)
* cat (concatenating. output content, can't scroll through)
    * (works like "print" in ruby)
    * cat blue green > colors (pipes output from first into second as input)
* subl (open a file in sublime text)
* nano filename (in-terminal text editor, "hackers-style".) 
    * ctrl-o-enter to save
    * ctrl-x to exit
* mkdir (make a new directory)
    * TRY: mkdir code in the home directory     look what you've DUN
* touch (make a new file)
* rm (delete file)
    * rm -r (delete directories with files in them.  -r means recursively)
    * rm -rf (remove recursively forcefully delete all the things (chainsaw))
* cp (copy file)
* mv (move or rename file) 
    * (e.g. mv file folder/ (the slash after the directory name says "into this 
    directory"))
* sudo (do a command as root user)
* open . (open the current directory in finder)
* killall finder (closes all open finder windows)
* wc filename (word count)
* | (pipe takes the output of the command on the left and puts it as input to the command on the right.)
    * ls -l | wc -l (takes the long-form list of contents and performs word count on it)


### Notes:

* Easily browse through commands you've already typed using the up and down keys
* permission: read, write, or execute a file
* tab completion
* DS.Store file stores the position for your graphic system & where things visually live. (typically hidden)
* if file begins with a ".", the file is hidden.
* ./filename.txt (reference a file in the current directory)
* . = reference self
* .. = reference parent


## GIT:

### What is Git??

GIT is a version control system.
    * saves history of changes
        *revert to prior versions
    * merge work from multiple collaborators

### Git origin story:

Linux by Linus Torvalds is a big open-source software project started in the 90s.  
The creator had people emailing him asking him to change things, so he invented 
Git so they could do it themselves.
    
Linus then became known as the time lord.

### Git tips and tricks:

* Commit early and often. 
* Saving every 5 minutes with descriptive commit messages is important.
* Good commit messages are specific and written in the imperative ( for more formatting best practices: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html). 
* Could your team members work with your commit message?
* Don't put git repos inside of git repos.


### DEFINE repository: 
    A repository is a directory (aka folder) where you are saving all the code files for any given project.  
    First, you make a folder and then use git init to make it into a git repository.
    
### Branching
    "On branch master" (means on the main project, not a side branch)
    to add to main branch use -m
    to add to side branch use -t

### Git commands to type in terminal:

* git init (initializes repository (tells git to look for files in this folder)) 
    *   ONCE PER PROJECT
* git add  . (stages files for a commit; the dot adds all files in the directory) 
* git commit -m "comment" (creates a commit aka save. This is a save command in git; save often and frequently to track your changes) 
    * the -m commits to the master branch, e.g. the main branch 
* git log (shows history of changes made by all contributing members)
* git status (shows you whats added ("staged") but not yet committed, and tells you if any files have changed since last commit)
* git commit -am "comment" (adds and commits in one step)
* git add -u (tells commit to remove files you've deleted)
* git push origin master (sends updates to github)
* git pull origin master (pulls updates from github)

### Working with shared repositories on Github:

To turn in homework/quiz/etc, push back to your account, then do a PULL REQUEST (PR) (request that they pull code from yours)

Clone onto local machine:
    * fork from someone else's github to your own 
    * navigate in terminal to the place where you want to put that folder.
    * git clone <SSH key from your github> (copy from your own github account to your home computer)
    * git remote add upstream <SSH key from upstream github> (link your home computer to the upstream repository)

Github accounts are remote.
git status doesn't know about edits made on github that have been committed

In order for Git to respect the deletion of files, a "git add" modifier is needed.
    git add -u (adds the "deleted-ness" of a deleted file)
    

### Github commands to type from terminal:
   * git push origin master (means push to github my (local) master branch)
   * git pull origin master (pulls new changes from the master branch on github to local repository)
   * git clone <SSH key from origin>
   * git remote add upstream <SSH url from upstream>
   * git remote -v (shows all Github repositories)
   * git pull upstream master
   * git push upstream master

    
### To start a git repository:
    1. in terminal, navigate to the folder you want to use
    2. git init (just do this once per project)
    3. make some files and put them in the directory
    4. git add . (the dot says to add all the files in the directory and below)
        Or use: git add README.md (adds just one file) (this stages the files)
    5. git commit -m "commit message" 
        (summarize what changes you made, be specific in present tense; you are committing these files to a certain version)
    6. change your file and save it in sublime text
    7. git status (check to see if you have made changes since the last commit)
    8. git add <filename>
    9. git commit (creates a commit(SAVE GAME))
    10. git log: Displays the commits along with messages.
    11. go to github and make a new repository on github
    12. link github repository to your computer's local repository: 
        git remote add origin https://github.com/USERNAME/REPO_NAME.git
        git push -u origin master
    13. git push origin master
    14. git push
    15. git pull origin master
    16. git pull 


For Quiz:
1. Fork
2. Clone
3. Pull Upstream (if updates made after cloned)
4. Edit/Add/Commit
5. Push to Origin
6. Pull request

Day 1 Homework:

1. Play around on Github
2. Prepare for Quiz
3. Read Ch. 2, 6, and 8 (Chapter 6 is new + interesting. Chapter 8 = wtf)

Things are bout to get deep guys!





