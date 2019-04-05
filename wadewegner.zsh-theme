# wadewegner.zsh-theme

prompt_fn() {

  config="$(cat .sfdx/sfdx-config.json 2> /dev/null)";
  globalConfig="$(cat ~/.sfdx/sfdx-config.json)";

  defaultusername="$(echo ${config} | jq -r .defaultusername)"
  defaultdevhubusername="$(echo ${config} | jq -r .defaultdevhubusername)"
  globaldefaultusername="$(echo ${globalConfig} | jq -r .defaultusername)"
  globaldefaultdevhubusername="$(echo ${globalConfig} | jq -r .defaultdevhubusername)"

  username=$globaldefaultusername
  if [ ! $defaultusername = "null" ]
  then
    username=$defaultusername
  fi

  devhub=$globaldefaultdevhubusername
  if [ ! $defaultdevhubusername = "null" ]
  then
    devhub=$defaultdevhubusername
  fi

  prompt="%{$fg[blue]%}d:%{$reset_color%} $devhub, %{$fg[blue]%}u:%{$reset_color%} $username"

  echo $prompt
}

PROMPT='%{$fg_bold[blue]%}☁  %{$fg_bold[green]%}%~%{$reset_color%} %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}%{$fg[red]%}❯%{$reset_color%} '
# used for presentations
# PROMPT='%{$fg_bold[blue]%}☁  $(git_prompt_info)%{$fg[red]%}❯%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="±(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) "

# RPROMPT='$(prompt_fn)'
