# Source .bashrc if it exists
if [ -f ~/dotfiles/.bashrc ]; then
    source ~/dotfiles/.bashrc
fi

if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/dotfiles/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Set PATH
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}
export PATH=$PATH:/opt/local/bin

tmux source-file ~/dotfiles/.tmux.conf
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/robertmjenningsjr/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/robertmjenningsjr/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/robertmjenningsjr/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/robertmjenningsjr/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(/opt/homebrew/bin/brew shellenv)"
