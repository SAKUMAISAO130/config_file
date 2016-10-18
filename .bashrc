####################
#color set
####################
black="\[\033[30m\]"
red="\[\033[31m\]"
green="\[\033[32m\]"
yellow="\[\033[33m\]"
blue="\[\033[34m\]"
purple="\[\033[35m\]"
lightblue="\[\033[36m\]"
white="\[\033[37m\]"




####################
# add user name color
####################
#PS1="\[\033[37m\]\h_\W_\u_\t \$\[\033[0m\] "


####################
# Add RVM to PATH for scripting
####################
export PATH="$PATH:$HOME/.rvm/bin"


####################
# git settings
###################

source /usr/local/git/contrib/completion/git-prompt.sh
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1=${green}'╭─● '${white}' \u@\h : '${green}'\w'${yellow}'$(__git_ps1)\n'${green}'╰─➤  '${green}

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto




####################$
# alias
####################$

alias la='ls -la'
alias ll='ls -la'


#vagrant
alias vh='vagrant halt'
alias vr='vagrant reload'
alias vs='vagrant ssh'
alias vu='vagrant up'


#git
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gs='git status'
alias gcm='git checkout master'
alias gpom='git pull origin master'
alias gmm='git merge master'
alias gpom='git push origin master'


#cd
alias cdof='cd ~/Downloads/015_openframeworks'
alias cddt='cd ~/Desktop/000_desktop'
alias cdx='cd /Applications/XAMPP/xamppfiles/htdocs'
alias cdkobito='cd ~/Desktop/000_desktop/kobito'




