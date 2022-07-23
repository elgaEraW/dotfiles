PROMPT=$'\
%{$fg_bold[green]%}%n@%m %{$reset_color%}%{$fg_bold[cyan]%}[%~]%{$reset_color%} $(git_prompt_info)\
%{$fg_bold[cyan]%}➜%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
