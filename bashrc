
#added by netoguimaraes dotfiles' script 

test -s ~/.alias && . ~/.alias || true

branch_name() {
    git branch 2> /dev/null | grep "\*" | cut -b 3-
}

branch_changes() {
    CHANGES=$(git status 2> /dev/null | wc -l)
    if [ "$CHANGES" -gt 4 ]
    then
        STR_CHANGES="*"
    else
        STR_CHANGES=""
    fi

    echo "$STR_CHANGES"
}

export PS1="\W \[$(tput sgr0)\]\$(branch_name)\$(branch_changes) \[\033[38;5;133m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

#finish of netoguimaraes dotfiles' script input
