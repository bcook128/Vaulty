#!/bin/bash

delete() {
    printf "%b" "${BLUE}Enter the website name to delete the profile: ${NC}"
    read website

    # Check if the profile exists
    profile=$(grep "^$website," $HOME/.local/share/Vaulty/passwords.txt)
    
    if [ -z "$profile" ]; then
        printf "%b\n" "${RED}No profile found for the given website.${NC}"
    else
        # Delete the profile line from the file
        grep -v "^$website," $HOME/.local/share/Vaulty/passwords.txt > $HOME/.local/share/Vaulty/temp.txt && mv $HOME/.local/share/Vaulty/temp.txt $HOME/.local/share/Vaulty/passwords.txt
        printf "%b\n" "${GREEN}Profile for $website deleted.${NC}"
    fi
}
