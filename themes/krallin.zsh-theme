# Primary prompt

eval grey='$FG[237]'

PROMPT='
%{$fg_bold[green]%}%n@%M %{$reset_color%}\
%{$fg_bold[green]%}(%h) %{$reset_color%}\
%(1j.%{$fg[gren]%}[%{$fg_bold[blue]%}jobs:%{$fg_bold[green]%}%j%{$reset_color%}] %{${reset_color}%}.)\
$(git_prompt_info)\
$(virtualenv_prompt_info)\

%{$fg_bold[cyan]%}${PWD/#$HOME/~} %{$reset_color%}\
%{$fg_bold[red]%}%# %{$reset_color%}'

# Secondary prompt

# Prepare battery output

BATTERY_WARNING=40
BATTERY_LOW=20

function battery_state() {
    if which ibam &> /dev/null; then
        battery_state="$(ibam --percentbattery)"
        battery_prcnt="${battery_state[(f)1][(w)-2]}"
        battery_left="${battery_state[(f)2][(w)-1]}"
        if [[ "${battery_prcnt}" -lt $BATTERY_LOW ]]; then
            battery_color="%{$fg_bold[red]%}"
        elif [[ "${battery_prcnt}" -lt BATTERY_WARNING ]]; then
            battery_color="%{$fg_bold[yellow]%}"
        else
            battery_color="$FG[244]"
        fi
        battery_status_line="${battery_color}[B:${battery_prcnt}%%]%{$reset_color%}"
    else
        battery_status_line=""
    fi
    echo $battery_status_line
}

RPROMPT='\
$FG[244]\
[%*] \
$(battery_state)\
%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg_bold[blue]%}git:%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}] "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✓ "

ZSH_THEME_VIRTUALENV_PROMPT_PREFIX="[%{$fg_bold[blue]%}venv:%{$fg_bold[green]%}"
ZSH_THEME_VIRTUALENV_PROMPT_SUFFIX="%{$reset_color%}] "
