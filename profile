export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH
export MANPATH=/usr/local/share/man:$MANPATH
export INFOPATH=/usr/local/share/info:$INFOPATH
export PYTHONPATH=/usr/local/lib/python2.7/site-packages

# Git branch parsing
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

# Custom prompt
export PS1="\[$(tput bold)\]\h:\W\$(parse_git_branch) $ \[$(tput sgr0)\]"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# rbenv
eval "$(rbenv init -)"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# deploybot
alias deploybot="ssh -p 2242 deploybot@deploybot.coverallcrew.com"

# rmb (remove merged branches)
function rmb {
  current_branch=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
  if [ "$current_branch" != "master" ]; then
    echo "WARNING: You are on branch $current_branch, NOT master."
  fi
    echo "Fetching merged branches..."
  git remote prune origin
  remote_branches=$(git branch -r --merged | grep -v '/master$' | grep -v "/$current_branch$")
  local_branches=$(git branch --merged | grep -v 'master$' | grep -v "$current_branch$")
  if [ -z "$remote_branches" ] && [ -z "$local_branches" ]; then
    echo "No existing branches have been merged into $current_branch."
  else
    echo "This will remove the following branches:"
    if [ -n "$remote_branches" ]; then
      echo "$remote_branches"
    fi
    if [ -n "$local_branches" ]; then
      echo "$local_branches"
    fi
    read -p "Continue? (y/n): " -n 1 choice
    echo
    if [ "$choice" == "y" ] || [ "$choice" == "Y" ]; then
      # Remove remote branches
      git push origin `git branch -r --merged | grep -v '/master$' | grep -v "/$current_branch$" | sed 's/origin\//:/g' | tr -d '\n'`
      # Remove local branches
      git branch -d `git branch --merged | grep -v 'master$' | grep -v "$current_branch$" | sed 's/origin\///g' | tr -d '\n'`
    else
      echo "No branches removed."
    fi
  fi
}

# git auto-completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
