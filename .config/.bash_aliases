# bash aliases

# list and sort
alias l='ls -CF'
alias lt='ls --human-readable --size -1 -S --classify'  # sort by file size
alias left='ls -t -1 -l'  # sort by modification time

# view file structure
alias treed='tree -d -C'   # view file tree structure, directories only

# count files (not dirs, ignore contents of dirs)
alias count='find . -type f | wc -l'  

# view only mounted drives
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"  


# move file to trash (protect from rm)
alias tcn='mv --force -t ~/.local/share/Trash '  


# command history 
alias hgrep='history|grep' # find a command in grep history
alias h='history'  
alias h10='history 10'  
alias h20='history 20'  
alias h30='history 30'  
alias j='jobs -l'


# quick way to get out of current directory 
alias cd..='cd ..'
alias cd...='cd ../../'
alias cd....='cd ../../../'
alias cd....='cd ../../../../'
alias cd.....='cd ../../../../../'


# specific navigation
alias tolydia='cd /mnt/c/Users/lydia/'   # get from /home/london to my local directory
alias tolondon='cd /home/london'   # get from my local directory to /home/london
alias toncl='cd /mnt/c/Users/lydia/Downloads/NCL'   # get from /home/london to NCL directory
alias togit='cd /mnt/c/Users/lydia/Downloads/CS/GIT'   # get from /home/london to GIT


# Python virtual environments
alias ve='python3 -m venv ./venv'     # create a new venv directory
alias va='source .venv/bin/activate'  # activate environment in current shell


# git commands 
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gca='git commit -a -m'
alias gcot='git checkout'
alias go='git push -u origin'
alias gw='git whatchanged'
alias gitlg='git log –graph –pretty=format:’%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset’ –abbrev-commit'
alias cg='cd `git rev-parse --show-toplevel`'  # return to Git project top level


# install and update
alias sai='sudo apt-get install'
alias sau='sudo apt-get update'
