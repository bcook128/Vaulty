# vaulty_password_check.sh

check_password() {
    local password="$1"
    local length=${#password}

    if [ $length -lt 1 ]; then
        printf "%s\n" "${RED}Password must not be empty.${NC}"
        return 1
    fi

    return 0
}
