main(){
    local result=""
    local num=$1

    if (( num % 3 == 0 )); then
        result="${result}Pling"    
    fi

    if (( num % 5 == 0 )); then
        result="${result}Plang"
    fi

    if (( num % 7 == 0 )); then
        result="${result}Plong"
    fi

    if [[ -n "$result" ]]; then
        echo "$result"
    else
        echo "$num"
    fi
}

main "$@"
