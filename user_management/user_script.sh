#!/bin/bash

# Function to add a user
add_user() {
local username=$(whiptail --inputbox "Enter username:" 8 40 --title "Add User" 3>&1 1>&2 2>&3)
  local password=$(whiptail --passwordbox "Enter password:" 8 40 --title "Add User" 3>&1 1>&2 2>&3)
  sudo useradd -m -p $(openssl passwd -1 "$password") "$username"

  whiptail --title "User Added" --msgbox "User '$username' has been added successfully." 8 40
}

# Function to list users
list_users() {
local users=$(cut -d: -f1 /etc/passwd | sort)
  whiptail --title "List Users" --msgbox "Users:\n\n$users" 20 60
}

# Function to delete a user
delete_user() {
  local username=$(whiptail --inputbox "Enter username to delete:" 8 40 --title "Delete User" 3>&1 1>&2 2>&3)
  sudo userdel -r "$username"
  whiptail --title "User Deleted" --msgbox "User '$username' has been deleted successfully." 8 40
}

# Function to change a user's password
change_password() {
local username=$(whiptail --inputbox "Enter username:" 8 40 --title "Change Password" 3>&1 1>&2 2>&3)
  local password=$(whiptail --passwordbox "Enter new password:" 8 40 --title "Change Password" 3>&1 1>&2 2>&3)
  sudo echo "$username:$password" | sudo chpasswd
  whiptail --title "Password Changed" --msgbox "Password for user '$username' has been changed successfully." 8 40
}

# User menu
user_menu() {
  while true; do
    user_choice=$(whiptail --menu "User Management" 12 40 5 --cancel-button "Back" \
      "1" "Add User" \
      "2" "List Users" \
      "3" "Delete User" \
      "4" "Change Password" \
      3>&1 1>&2 2>&3)

    case $user_choice in
      "1") # Add User
        add_user
        ;;
      "2") # List Users
        list_users
        ;;
      "3") # Delete User
        delete_user
        ;;
      "4") # Change Password
        change_password
        ;;
      *) # Back
        break
        ;;
    esac
  done
}

