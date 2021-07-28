source ~/.profile

if [ -f "$HOME/.bashrc" ]; then
	. ~/.bashrc
fi

## Shell integration with iTerm2
if [ -f "$HOME/.iterm2_shell_integration.bash" ]; then
	source ~/.iterm2_shell_integration.bash
fi

export PATH=$PATH:./node_modules/.bin
