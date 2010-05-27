alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias sl='sl -e'
alias dev='cd ~/projects/dmc_dev'
alias hot='cd ~/projects/hotsites'
alias prod='cd ~/projects/prod'
alias monta='vai; script/server'
alias pd='params_debugger'
alias homo='ssh homolog@10.11.13.123' 
alias baixa='git co master; git fetch; git pull --rebase origin master'
alias raul='ssh raul@10.11.13.126'
alias dmc01='ssh dmc01@10.11.13.121'

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

green=$'\e[32m'
magenta=$'\e[1;36m'
normal_colours=$'\e[m'

PS1="\[$green\]\u@\h:\w\[$magenta\]\$git_branch\[$green\]\\$\[$normal_colours\] "
# git branch done

alias gvim="gvim -reverse 2>/dev/null"
