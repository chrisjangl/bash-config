## binary shortcuts
# alias node='nodejs'
# alias wp='~/wp-cli.phar'
# alias mysql='/Applications/MAMP/Library/bin/mysql'


## environment specific frecents
### client hosting servers
#alias clients='cd ~/public_html/clients/'
#alias staging='cd ~/public_html/staging/'

### local dev machine
alias mamp='cd ~/sites/'


## directory traversal
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'


## git
alias bpub='git push --set-upstream bitbucket $(git branch | grep \* | cut -b 3-) '
alias g='git'
# working version:
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gco='git checkout '
alias gco-b='git checkout -b'
alias gd='git diff'
# alias ghide='git update-index --skip-worktree'
alias gl='git log'
alias glog='git log'
alias gpub='git push --set-upstream github $(git branch | grep \* | cut -b 3-) '
alias gs='git status '
# alias gshow='git update-index --no-skip-worktree'
alias gsb='git status -sb '
alias gwhoops='git commit --amend --no-edit'


## "alias" functions - could be regular aliases, but this allows for "parameters"
### don't show changes in working directory for given file
function ghide {
    git update-index --skip-worktree "$1";
}

### DO show changes in working directory for given file
function gshow {
    git update-index --no-skip-worktree "$1";
}


## Source SSH keys



## Local (by Flywheel)
### show all the site shell files
# @see https://localwp.com/community/t/open-site-shell-not-working-macos-big-sur/22270/12
alias local-site-shells="find ~/Library/Application\ Support/Local/ssh-entry/*.sh -exec grep -H 'echo -n -e' {} \; | sed -E 's/^(.*):.*;(.*)Shell\\.*/\2 @ \"\1\"/' | column -s '@' -t"
