#!/bin/bash

LOGFILE="all_user.json"

log_info() {
    timestamp=$(date -u '+%Y-%m-%dT%H:%M:%S')
    log="{\"level\": \"INFO\", \"message\": \"$1\", \"timestamp\": \"$timestamp\"}"
    echo "$log" | tee -a "$LOGFILE"
}

log_error() {
    timestamp=$(date -u '+%Y-%m-%dT%H:%M:%S')
    log="{\"level\": \"ERROR\", \"message\": \"$1\", \"timestamp\": \"$timestamp\"}" >> "$LOGFILE"
    echo "$log" | tee -a "$LOGFILE"
}

log_warning() {
    timestamp=$(date -u '+%Y-%m-%dT%H:%M:%S')
    log="{\"level\": \"WARNING\", \"message\": \"$1\", \"timestamp\": \"$timestamp\"}" >> "$LOGFILE"
    echo "$log" | tee -a "$LOGFILE"
}

log_success() {
    timestamp=$(date -u '+%Y-%m-%dT%H:%M:%S')
    log="{\"level\": \"SUCCESS\", \"message\": \"$1\", \"timestamp\": \"$timestamp\"}" >> "$LOGFILE"
    echo "$log" | tee -a "$LOGFILE"
}


validator(){
    if [ $? -eq 0 ]; then
      log_success "$1 operation successful...."
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

if [[ "$option" =~ ^(-c|--create|-r|--reset)$ ]]; then
    echo "Please provide username"
    read usrname
    echo "Please provide password"
    read passwd
    if [ -z "$usrname" ] || [ -z "$passwd" ]; then
        log_error "Username or password missing."
        exit 1
    fi
elif [[ "$option" =~ ^(-d|--delete)$ ]]; then
    echo "Please provide username"
    read usrname
    if [ -z "$usrname" ]; then
        log_error "Username missing."
        exit 1
    fi
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

