alias la="ls -alhF"
alias ll="ls -lhF"

bind "set completion-ignore-case on"

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

# Colors and Commands
# http://www.ibm.com/developerworks/linux/library/l-tip-prompt/

# Bash Commands
# >&
# http://superuser.com/questions/335396/what-is-the-difference-between-and-in-bash
# 2>&1
# http://stackoverflow.com/questions/818255/in-the-shell-what-is-21
# $? -eq 0
# http://stackoverflow.com/questions/7101995/what-does-if-eq-0-mean-for-shell-scripts
# ln : ln -s {{src}} [dest] # if skipped, use same file name



# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
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


# http://code-worrier.com/blog/autocomplete-git/
# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
