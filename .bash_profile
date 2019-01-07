if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
# PS1 original
#export PS1='\h:\W \u\$ '
# PS1 customized
export PS1='\[\e[31m\]\u\[\e[m\] \w \[\e[34m\]$(vcprompt)\[\e[m\]\[\e[32m\]\\$\[\e[m\] '

export CLICOLOR=1
alias ls='ls -GFh'

export PATH="$PATH"
export BROWSER=open

alias vim="nvim"
alias vi="nvim"
alias nvi="nvim"

# added by Anaconda3 4.4.0 installer
export PATH="~/Library/Python/3.6/bin:$PATH:/anaconda/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:~/External/flutter/bin"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

source ~/git-completion.bash

# aws command
alias s3="aws s3"

# added by Anaconda3 5.1.0 installer
export PATH="/anaconda3/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
