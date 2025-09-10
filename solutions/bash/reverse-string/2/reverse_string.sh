#!/usr/bin/env bash

main() {
    local str="$1"
    local reversed=""
    local len=${#str}

    for ((i = len - 1; i >= 0; i--)); do
        reversed+="${str:$i:1}"
    done
    echo "$reversed"
}
main "$@"