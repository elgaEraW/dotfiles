local return_status="%(?:%{$fg_bold[green]%}π:%{$fg_bold[red]%}π)"


virtual_env() {
    typeset -a venv_prompt
    if [[ ! -z "$VIRTUAL_ENV" ]]; then
        # venv_prompt+=" в:${VIRTUAL_ENV##*/}"
        # Shorten venv name by first occurence of a hyphen (pipenv)
        venv_prompt+=" $(echo "(`basename $VIRTUAL_ENV`)" | cut -d'-' -f1-1)"
    fi
    echo "${venv_prompt}"
}

PROMPT=$'\
${return_status}%{$fg_bold[yellow]$(virtual_env)%} %{$fg_bold[magenta]%}%n %{$reset_color%}at %{$fg_bold[green]%}%m %{$reset_color%}in %{$fg_bold[cyan]%}%~%{$reset_color%} $(git_prompt_info)\
%{$fg_bold[cyan]%}➜%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg_bold[yellow]%}(%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[yellow]%})"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}) %{$fg[red]%}✗"
