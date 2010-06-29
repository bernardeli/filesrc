alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias sl='sl -e'
alias prod='cd ~/projects/prod'
alias pd='params_debugger'
alias vai='cd ~/projects/edelivery'

# git branchs
function find_git_branch {
    local dir=. head
    until [ "$dir" -ef / ]; do
        if [ -f "$dir/.git/HEAD" ]; then
            head=$(< "$dir/.git/HEAD")
            if [[ $head == ref:\ refs/heads/* ]]; then
                git_branch=" (${head#*/*/})"
            elif [[ $head != '' ]]; then
                git_branch=' (detached)'
            else
                git_branch=' (unknown)'
            fi
            return
        fi
        dir="../$dir"
    done
    git_branch=''
}

PROMPT_COMMAND="find_git_branch; $PROMPT_COMMAND"

green=$'\e[13m'
magenta=$'\e[1;36m'
blue=$'\e[1;34m'
normal_colours=$'\e[m'

rvm="\$(~/.rvm/bin/rvm-prompt i v p g)"

PS1="\[$green\]\u@\h:\w\[$blue\] (\$(~/.rvm/bin/rvm-prompt v p g))\[$magenta\]\$git_branch\[$green\]\\$\[$normal_colours\] "
# git branch done

alias gvim="gvim -reverse 2>/dev/null"
