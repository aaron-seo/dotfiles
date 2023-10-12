ZSH_THEME="avit"

PROMPT='%F{118}%n:%f %F{208}%~%f $ '

path+=('/Users/aaronseo/Library/Python/3.9/bin')
path+=('/Users/aaronseo/.cache/rebar3/bin')
path+=('/opt/homebrew/opt/make/libexec/gnubin')
export PATH

squashon () {
  # If user just enters 'squashon', give help text
  if (( # == 0 )); then
    echo Hello!  This will squash your current branch down to one unstaged commit.
    echo Use by typing squashon rootBranchName
    echo usage: squashon develop
  fi
  # If a root branch is provided, run the squasher
  if (( # == 1 )); then
    branch=$(git symbolic-ref HEAD)
    echo Squashing all commits from $branch
    git reset $(git merge-base $1 $branch)
    echo ------SUCCESS!------
    echo Commits successfully squashed, all file changes are unstaged.
    echo Run 'git add -A' and 'git commit -m "your commit message"' to add your squashed commit.
  fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
