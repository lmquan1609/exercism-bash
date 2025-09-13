#!/usr/bin/env bash

main() {
    local command="$1"
    if [[ $command == "total" ]]; then
        echo "18446744073709551615"
    elif (( command > 0 && command < 65 )); then
        echo "2^$((command - 1))" | bc
    else
        echo "Error: invalid input"
    fi
}

main "$@"