# load my aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

## nicer prompts
if [ -f ~/.nicer.bashprompt ]; then
	. ~/.nicer.bashprompt
fi

## source SSH keys
if [ -f ~/.local_keys ]; then
	. ~/.local_leys
fi

## git autocomplete
if [ -f ~/autocompletions/.git-completion.bash ]; then
	. ~/autocompletions/.git-completion.bash
	__git_complete gco _git_checkout
fi

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# per instructions at https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally
export PATH=~/.npm-global/bin:$PATH
# MAMP Pro's version of MySQL
export PATH=/Applications/MAMP/Library/bin/:$PATH
# my own scripts
export PATH=~/sites/scripts/:$PATH
export PATH=~/sites/scripts/hosting_reports/:$PATH