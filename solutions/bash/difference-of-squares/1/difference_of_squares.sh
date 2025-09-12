#!/usr/bin/env bash

main() {
    local command=$1
    local num=$2
    local total_sum=0
    local total_square=0
    for ((i = 1; i <= $num; i++)) {
        total_sum=$((total_sum + i))
        total_square=$((total_square + i * i))
    }

    case "$command" in
        "square_of_sum")
            echo $((total_sum * total_sum))
            ;;
        "sum_of_squares")
            echo $total_square
            ;;
        "difference")
            echo $((total_sum * total_sum - total_square))
            ;;
    esac
}
main "$@"