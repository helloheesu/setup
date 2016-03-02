alias ls="ls -alhF"
alias whatismyip="ifconfig | grep -e 'inet [0-9]*\.[0-9]*\.[0-9]*\.[0-9]*'"

# BREW
export HOMEBREW_CASK_OPTS="--appdir=/Applications" # make symlink of brew cask into /Applications
export HOMEBREW_GITHUB_API_TOKEN=THE_TOKEN # https://gist.github.com/christopheranderton/8644743
source $(brew --repository)/Library/Contributions/brew_bash_completion.sh # brew install homebrew/completions/brew-cask-completion

# bash tap completion ignore case
bind "set completion-ignore-case on"






### for git

# Colors
ColorOff="\[\033[0m\]"       # Text Reset
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White
# Commands
Username="\u"
Shellname="\s"
#Path="\w" #if you want to see full path, $pwd.
Path="\W"
#CommandNumber="\#" #count not after login, but as is history
CommandNumber="\!"

if [ ! -f ~/.git-completion.bash ]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
fi
source ~/.git-completion.bash

if [ ! -f ~/.git-prompt.sh ]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
fi
source ~/.git-prompt.sh

# https://gist.github.com/trey/2722934#bash-fanciness
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM=true

# Git branch
# http://code-worrier.com/blog/git-branch-in-bash-prompt/
# https://github.com/iugu/bash-git-status/blob/master/.git-status.bash
# http://mediadoneright.com/content/ultimate-git-ps1-bash-prompt
export PS1="$ColorOff[$CommandNumber:$Username] "\
'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  # when Prompt in GIT repo
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # Clean repository - nothing to commit
    echo "'$Green'"$(__git_ps1 "{%s}"); \
  else \
    # Changes to working tree
    echo "'$Red'"$(__git_ps1 "{%s}"); \
  fi) '$ColorOff'"; \
fi)'\
"$Path \$ "
