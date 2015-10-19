# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git)

# User configuration
export PATH="$PATH:/Users/scottdownie/.rvm/gems/ruby-2.1.1/bin:/Users/scottdownie/.rvm/gems/ruby-2.1.1@global/bin:/Users/scottdownie/.rvm/rubies/ruby-2.1.1/bin:/Users/scottdownie/.rbenv/bin:/Users/scottdownie/.pyenv/bin:/usr/local/bin:./node_modules/.bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/scottdownie/.gem/ruby/1.8/bin:/opt/nginx/sbin:/Users/scottdownie/.rvm/bin:/Users/scottdownie/.bash_it/plugins/available/todo:/Users/scottdownie/.rvm/bin"

source $ZSH/oh-my-zsh.sh

# EDITOR
export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim
export BUNDLER_EDITOR=vim

alias ls='ls -ltr'
alias t='tmuxinator'
alias pewpew='touch ~/.pow/restart.txt'

# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export DISABLE_AUTO_TITLE=true

# Powerline
function powerline_precmd() {
  PS1="$(~/powerline-shell.py $? --shell zsh 2> /dev/null)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi
