#!/usr/bin/env bash

main() {
    local command="$1"
    if [[ $command == "total" ]]; then
        echo $((2**65 - 1))
    else
        if (( command > 0 && command < 65 )); then
            echo $((2**(command - 1)))
        else
            echo "Error: invalid input"
        fi
    fi
}

main "$@"