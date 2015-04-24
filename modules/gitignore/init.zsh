
_gitignore_api_url=https://www.gitignore.io/api/

function gi() {
  touch .gitignore
  wget -q -O - "${_gitignore_api_url}$(IFS=, eval 'echo "$*"')" | tail -n +1 >> .gitignore;
}

_gitignireio_get_command_list() {
  wget -q -O - ${_gitignore_api_url}/list | tr "," "\n"
}

_gitignireio () {
  compset -P '*,'
  compadd -S '' `_gitignireio_get_command_list`
}

compdef _gitignireio gi
