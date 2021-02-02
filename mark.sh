#!/bin/bash
#
# mark.sh mark-todo <todo-id>
# mark.sh unmark-todo <todo-id>
#
# Usage:
#    mark.sh mark-todo 32
#    mark.sh unmark-todo 32
#

mark_todo(){

}

unmark_todo(){
    
}

main() {
    if [[ "$1" == "mark-todo" ]]
    then
        mark_todo $2
    elif [[ "$1" == "unmark-todo" ]]
    then
        unmark_todo $2
    fi
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]
then
    main "$@"
fi
