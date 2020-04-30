if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

alias python=python3


# added by Anaconda3 5.2.0 installer
export PATH="/anaconda3/bin:$PATH"
export PATH=/anconda3/inlude:$PATH
export DYLD_LIBRARY_PATH=/anaconda3/lib:$DYLD_LIBRARY_PATH
export PATH=/Users/michaeljennings/yt-conda/bin:$PATH
alias yta='source /Users/michaeljennings/yt-conda/bin/activate'

export PATH=$PATH:/opt/local/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/michaeljennings/yt-conda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/michaeljennings/yt-conda/etc/profile.d/conda.sh" ]; then
        . "/Users/michaeljennings/yt-conda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/michaeljennings/yt-conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

