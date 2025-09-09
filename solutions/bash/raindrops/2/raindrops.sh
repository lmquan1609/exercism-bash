main(){
    result=""
    num=$1

    case $((num % 3)) in
        0) result+="Pling" ;;
    esac

    case $((num % 5)) in
        0) result+="Plang" ;;
    esac

    case $((num % 7)) in
        0) result+="Plong" ;;
    esac
    echo "${result:-$num}"
}

main "$@"
