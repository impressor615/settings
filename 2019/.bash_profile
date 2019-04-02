if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export CLICOLOR=1
alias ls='ls -GFh'

export PATH="$PATH"
export BROWSER=open

alias vim="nvim"
alias vi="nvim"
alias nvi="nvim"
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."

# added by Anaconda3 4.4.0 installer
export PATH="$PATH:/anaconda/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:mongodb-osx-x86_64-enterprise-4.0.5/bin:~/Library/Python/3.7/bin"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

source ~/git-completion.bash

# aws command
alias s3="aws s3"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset
 
print_before_the_prompt () {
    printf "\n $txtred%s: $bldgrn%s $txtpur%s\n$txtrst" "$USER" "$PWD" "$(vcprompt)"
}
 
PROMPT_COMMAND=print_before_the_prompt
PS1='-> '
