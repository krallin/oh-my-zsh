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

RPROMPT='\
$(vi_mode_prompt_info) \
$FG[244][%*]%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg_bold[blue]%}git:%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}] "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✓ "

ZSH_THEME_VIRTUALENV_PROMPT_PREFIX="[%{$fg_bold[blue]%}venv:%{$fg_bold[green]%}"
ZSH_THEME_VIRTUALENV_PROMPT_SUFFIX="%{$reset_color%}] "

MODE_INDICATOR="$FG[244][%{$fg_bold[red]%}cmd%{$reset_color%}$FG[244]]%{$reset_color%}"
