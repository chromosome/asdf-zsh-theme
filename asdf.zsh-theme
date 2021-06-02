# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user='%{$terminfo[bold]$bg[blue]%}%n'
    local user_symbol='#'
else
    local user='%{$terminfo[bold]$fg[blue]%}%n'
    local user_symbol='$'
fi
local sprt='%{$fg[green]%}@'
local host='%{$fg[red]%}%m%{$reset_color%}'

local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'

local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="╭─${user}${sprt}${host} ${current_dir} ${rvm_ruby} ${git_branch}
╰─%B${user_symbol}%b "
RPS1="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"

