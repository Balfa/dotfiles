# Mo's exports
export VISUAL="subl.exe --wait"
export EDITOR="$VISUAL"
# export KUBE_EDITOR="$VISUAL"

# From https://kubernetes.io/docs/tasks/tools/included/optional-kubectl-configs-bash-linux/
# uncomment if you install kubectl (rancher desktop?)
# source <(kubectl completion bash)
# alias k=kubectl
# complete -o default -F __start_kubectl k

# bash parameter completion for the dotnet CLI (from https://docs.microsoft.com/en-us/dotnet/core/tools/enable-tab-autocomplete)
_dotnet_bash_complete()
{
  local word=${COMP_WORDS[COMP_CWORD]}
  local completions
  completions="$(dotnet complete --position "${COMP_POINT}" "${COMP_LINE}")"
  COMPREPLY=( $(compgen -W "$completions" -- "$word") )
}
complete -f -F _dotnet_bash_complete dotnet

# Eternal bash history. (from https://stackoverflow.com/a/19533853)
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Disable bash history expansion since it's more hassle than it's worth. https://unix.stackexchange.com/a/33341/368429
set +o histexpand

# Disable XON/XOFF flow control (ctrl+s pauses terminal output, ctrl+q resumes), so
# that we can use ctrl+s for forward history search instead.
# See https://stackoverflow.com/a/791800/326110
stty -ixon

# Mo's aliases
alias kubectl='kubectl.exe'
alias minikube='minikube.exe'
alias docker='docker.exe'
alias az='az.cmd'

alias cls='printf "\033c"'
alias l='ls -al'
alias devenv="\"/c/Program Files/Microsoft Visual Studio/2022/Enterprise/Common7/IDE/devenv.exe\""
