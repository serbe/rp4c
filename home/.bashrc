#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ "$TERM" = "xterm-termite" ]; then
  TERM=xterm-256color
fi

export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

if [[ -z "$TMUX" ]] && [ "$SSH_CONNECTION" != "" ]; then
  tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
fi
