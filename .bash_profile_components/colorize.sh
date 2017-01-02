# Colorizing
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
txtblu='\e[0;34m' # Blue
bldgrn='\e[1;32m' # Green
bldwht='\e[1;37m' # White
txtrst='\e[0m'    # Text Reset

# Prompt set here. And yeah: I like it on two lines. Wanna fight?
PS1='-- JZ > '
PS2='----- > '

function color_my_prompt {
    local __user="\[$bldwht\]-- JZ "
    local __cur_location="\n\[$txtred\][\w]"
    local __git_branch_color="\[$txtblu\]"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\\[\\\\\1\\]\/` \n'
    local __prompt_tail="\[$bldgrn\]>"
    local __last_color="\[$txtrst\]"
    export PS1="$__cur_location$__git_branch_color$__git_branch$__user$__prompt_tail$__last_color "
    export PS2="$__user$__prompt_tail$__last_color "
}

color_my_prompt
