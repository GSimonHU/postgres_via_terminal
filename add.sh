#!/bin/bash
#
# add.sh add-user <user>
# add.sh add-todo <user> <todo>
#
# Usage:
#    add.sh add-user John
#    add.sh add-user Paul
#    add.sh add-todo John Meeting
#    add.sh add-todo Paul "Make breakfast"
#

DB_NAME="todoDB"

add_user() {
psql -qt $DB_NAME <<EOF
INSERT INTO "user" (name)
VALUES ('$1');
EOF
echo "User added"
}

add_todo() {
    psql -qt $DB_NAME <<EOF
    INSERT INTO todo (user_id, task)
    VALUES ($1, '$2');
EOF
    echo "Todo added"
}

main() {
    if [[ "$1" == "add-user" ]]
    then
        add_user "$2"
    elif [[ "$1" == "add-todo" ]]
    then
        add_todo "$2" "$3"
    fi
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]
then
    main "$@"
fi
