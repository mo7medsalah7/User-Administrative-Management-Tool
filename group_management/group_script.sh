#!/bin/bash

# Function to create a group
create_group() {
 local groupname=$(whiptail --inputbox "Enter group name:" 8 40 --title "Create Group" 3>&1 1>&2 2>&3)
  sudo groupadd "$groupname"
  whiptail --title "Group Created" --msgbox "Group '$groupname' has been created successfully." 8 40
}

# Function to list groups
list_groups() {
 local groups=$(cut -d: -f1 /etc/group | sort)
  whiptail --title "List Groups" --msgbox "Groups:\n\n$groups" 20 60
}

# Function to delete a group
delete_group() {
  local groupname=$(whiptail --inputbox "Enter group name to delete:" 8 40 --title "Delete Group" 3>&1 1>&2 2>&3)
  sudo groupdel "$groupname"
  whiptail --title "Group Deleted" --msgbox "Group '$groupname' has been deleted successfully." 8 40
}

# Function to add a user to a group
add_user_to_group() {
  local username=$(whiptail --inputbox "Enter username:" 8 40 --title "Add User to Group" 3>&1 1>&2
}

# Function to remove a user from a group
remove_user_from_group() {
  # Implementation goes here
}

# Group menu
group_menu() {
  while true; do
    group_choice=$(whiptail --menu "Group Management" 12 40 5 --cancel-button "Back" \
      "1" "Create Group" \
      "2" "List Groups" \
      "3" "Delete Group" \
      "4" "Add User to Group" \
      "5" "Remove User from Group" \
      3>&1 1>&2 2>&3)

    case $group_choice in
      "1") # Create Group
        create_group
        ;;
      "2") # List Groups
        list_groups
        ;;
      "3") # Delete Group
        delete_group
        ;;
      "4") # Add User to Group
        add_user_to_group
        ;;
      "5") # Remove User from Group
        remove_user_from_group
        ;;
      *) # Back
        break
        ;;
    esac
  done
}

