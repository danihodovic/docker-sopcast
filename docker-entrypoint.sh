#!/usr/bin/env bash
usage() {
    cat <<EOM
Usage:
  ./$(basename "$0") url player-port

  url           - sopcast stream url
  player-port   - external player port (must be exposed on the host to the container)
EOM
}

if [[ "$#" -ne 2 ]]; then
  usage
  exit 1
fi

url=$1
external_player_port=$2
sopcast_port=5000

/app/sp-auth/sp-sc-auth "$url" "$sopcast_port" "$external_player_port"
