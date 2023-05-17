# Whiptail-bash-user-group-administration-tool


## Theory 

A Bash script that provides a simple command-line interface for managing users and groups on a Linux system. It utilizes the Whiptail library to display dialog boxes for interactive user input and feedback. The script allows users to perform various operations, including adding and deleting users, changing passwords, creating and deleting groups, and adding or removing users from groups. It provides an intuitive menu-based interface that guides users through the different management tasks, making it easier to handle user and group administration tasks efficiently.

## Permessions Map
Make sure the **main_script.sh** is executable.

`
chmod +x main_script.sh
`

## Menu
Execute main script

`
sudo ./main_script.sh
`
![Menu](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/main-menu.png?raw=true)

## Add User

![Add User](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/add_user.png?raw=true)

 - And I added the password

![User Added Succesfully](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/add_user02.png?raw=true)

### Check Our File System for new users

![User Added to /etc/passwd](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/add_user03.png?raw=true)


## Create Group

Choose "Create group"

![Create Group](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/create_group.png?raw=true)

Enter the Group Name, ***ITI***

![ITI Group](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/create_group01.png?raw=true)

And It is successfully added.

<<<<<<< HEAD
![ITI Group is Successfully Added](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/group02.png?raw=true)
=======
![ITI Group is Successfully Added](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/group_02.png?raw=true)
>>>>>>> e82c41f (fix issue with image url in README)


## Add User To Group

![Add user to group](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/addug.png?raw=true)

![name of group](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/addug_01.png?raw=true)

![name of user to be added to the group](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/addug_02.png?raw=true)

![Used added to group](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/addug_03.png?raw=true)

Check Our file system for groups and thier users

`
cat /etc/group | tail -n 3
`

![Used added to group](https://github.com/mo7medsalah7/whiptail-bash-user-group-administration-tool/blob/main/validation/checkug.png?raw=true)


### All Is Good. Good Bye.