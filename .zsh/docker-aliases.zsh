alias docker-clean='docker-compose kill || true && docker-compose rm -f'
alias docker-remove-all='docker rmi $(docker images -q)'
alias docker-purge-i='docker images -qf dangling=true | xargs -r docker rmi'  # purge images
alias docker-purge-i-force='docker images -qf dangling=true | xargs -r docker rmi --force'
alias docker-purge-v='docker volume ls -qf dangling=true | xargs -r docker volume rm' # purge volumes
alias docker-purge-c='docker ps -qf status=exited | xargs -r docker rm' # purge containers
alias docker-purge-all='docker-purge-i && docker-purge-v && docker-purge-c'
alias upgrade-docker-compose='pip2 install --user docker-compose --upgrade'
alias docker-ngrep=sudo ngrep -d docker0 port 6543