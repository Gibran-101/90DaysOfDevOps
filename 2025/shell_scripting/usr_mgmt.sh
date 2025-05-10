#!/bin/bash

LOGFILE="all_user.log"
exec > >(tee -a $LOGFILE) 2>&1

timestamp=$(date '+%Y-%m-%d_%H-%M-%S')

log_info() {
    echo "[INFO] $1 ($timestamp)"
}
log_error() {
    echo "[ERROR] $1 ($timestamp)"
}
log_warning(){
    echo "[WARNING] $1 ($timestamp)"
}
log_success(){
    echo "[SUCCESS] $1 ($timestamp)"
}

validator(){
    if [ $? -eq 0 ]; then
      log_success "$1 operation successfully...."
    else
      log_error "$1 operation failed...."
    fi
}

echo "Usage: ./user_manager.sh [OPTION]"
echo ""
echo "Options:"
echo "  -c, --create     Create a new user account. Prompts for username and password."
echo "  -d, --delete     Delete an existing user account. Prompts for username to delete."
echo "  -r, --reset      Reset the password for an existing user. Prompts for username and new password."
echo "  -l, --list       List all existing user accounts with their usernames and UIDs."
echo "  -h, --help       Display this help message and usage information."
echo "Please enter you option here: "
read option

if [ "$option" = "-c" ] || [ "$option" = "--create" ] || [ "$option" = "-r" ] || [ "$option" = "--reset" ]; then
    echo "Please provide username"
    read usrname
    echo "Please provide password"
    read passwd

    if [ -z "$usrname" ] || [ -z "$passwd" ]; then
        log_error "Username or password missing."
        exit 1
    fi

elif [ "$option" = "-d" ] || [ "$option" = "--delete" ]; then
    echo "Please provide username"
    read usrname

    if [ -z "$usrname" ]; then
        log_error "Username missing."
        exit 1
    fi

fi


if [ -z "$option" ]; then
    log_error "Option is not provided...."
    exit 1
fi

case $option in
  -c|--create)
    log_info "Creating a new user account...."
    ./usr_creation.sh $usrname $passwd

    validator "User"
    ;;
  -d|--delete)
    log_info "Deleting an existing user...."
    ./usr_deletion.sh $usrname

    validator "User"

    ;;
  -r|--reset)
    log_info "Resetting the passwd for an existing user...."
    ./reset_passwd.sh $usrname $passwd

    validator "Password"

    ;;
  -l|--list)
    log_info "Listing all users...."
    ./list_usrs.sh
    ;;
   -h|--help)
    log_info "Help message...."
    ;;
  *)
    log_warning "Invalid entry...."
    exit 1
    ;;
esac

