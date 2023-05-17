#!/bin/bash

# Function to display an error message and exit
display_error() {
  local message="$1"
  whiptail --title "Error" --msgbox "$message" 8 40
  exit 1
}

# User functions
source ./user_management/user_script.sh

# Group functions
source ./group_management/group_script.sh

# Main menu
while true; do
  choice=$(whiptail --menu "User and Group Management" 12 40 5 --cancel-button "Exit" \
    "1" "User Management" \
    "2" "Group Management" \
    3>&1 1>&2 2>&3)

  case $choice in
    "1") # User Management
      user_menu
      ;;
    "2") # Group Management
      group_menu
      ;;
    *) # Exit
      exit 0
      ;;
  esac
done

