# Source .bashrc if it exists
if [ -f $HOME/dotfiles/.bashrc ]; then
    source $HOME/dotfiles/.bashrc
fi

if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in $HOME/dotfiles/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Set PATH
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}
export PATH=$PATH:/opt/local/bin

#tmux source-file ~/dotfiles/.tmux.conf
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('"$HOME/miniconda3/bin/conda"' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(/opt/homebrew/bin/brew shellenv)"

# set MESA_DIR to be the directory to which you downloaded MESA
# The directory shown is only an example and must be modified for your particular system.
export MESA_DIR=$HOME/mesa-r22.11.1

# set OMP_NUM_THREADS to be the number of cores on your machine
export OMP_NUM_THREADS=10

# you should have done this when you set up the MESA SDK
# The directory shown is only an example and must be modified for your particular system.
export MESASDK_ROOT=/Applications/mesasdk
source $MESASDK_ROOT/bin/mesasdk_init.sh
