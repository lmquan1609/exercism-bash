#!/usr/bin/env bash

# Allergy values
declare -A allergies=(
    [1]="eggs"
    [2]="peanuts"
    [4]="shellfish"
    [8]="strawberries"
    [16]="tomatoes"
    [32]="chocolate"
    [64]="pollen"
    [128]="cats"
)

# Check if allergic to specific item
allergic_to() {
    local score=$1
    local item=$2
    # Find the value for the item
    for val in "${!allergies[@]}"; do
        if [[ "${allergies[$val]}" == "$item" ]]; then
            # Use bitwise AND to check if  the bit is set
            if (( (score & val) != 0 )); then
                echo "true"
            else
                echo "false"
            fi
            return
        fi
    done

    # Item not found in our list
    echo "false"
}

# List all allergies for a given score
list_allergies() {
    local score=$1
    local result=()

    # Check each known allergy
    for val in "${!allergies[@]}"; do
        if (( (score & val) != 0 )); then
            result+=("${allergies[$val]}")
        fi
    done

    # Sort the results alphabetically 
    echo "${result[*]}"
}

main() {
    local score=$1
    local command=$2
    local item=$3

    case "$command" in
        "allergic_to")
            allergic_to "$score" "$item"
            ;;
        "list")
            list_allergies "$score"
            ;;
    esac
}
main "$@"