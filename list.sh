#!/bin/bash
#
# list.sh list-users
# list.sh list-todos
# list.sh list-user-todos
#
# Usage:
#    list.sh list-users
#    list.sh list-todos Paul
#    list.sh list-user-todos John
#    list.sh list-user-todos "John Doe"
#

DB_NAME="todoDB"

list_users() {
    psql $DB_NAME <<EOF
SELECT * FROM "user"
EOF
}

list_todos() {
    psql $DB_NAME <<EOF
SELECT * FROM todo
EOF
}

list_user_todos() {
    # echo "User: $1"
    user_id="$(psql -qt $DB_NAME <<EOF
SELECT id FROM "user" WHERE name = '$1'
EOF
)"

psql $DB_NAME <<EOF
SELECT * FROM todo WHERE user_id = $user_id
EOF
}

main() {
    if [[ "$1" == "list-users" ]]
    then
        list_users
    elif [[ "$1" == "list-todos" ]]
    then
        list_todos
    elif [[ "$1" == "list-user-todos" ]]
    then
        list_user_todos "$2"
    fi
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]
then
    main "$@"
fi
