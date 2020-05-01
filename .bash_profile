# Source .bashrc if it exists
if [ -f ~/dotfiles/.bashrc ]; then
    source ~/dotfiles/.bashrc
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



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/michaeljennings/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/michaeljennings/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/michaeljennings/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/michaeljennings/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

