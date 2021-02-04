#!/bin/bash
DELAY=4

echo Listing all users:
bash ./list.sh list-users
sleep $DELAY
clear
echo Listing all todos:
bash ./list.sh list-todos
sleep $DELAY
clear
echo "Listing Dominic's todos":
bash ./list.sh list-user-todos Dominic
sleep $DELAY
clear
echo "Adding new todo for Dominic"
bash ./add.sh add-todo 1 "Do a DEMO!"
sleep $DELAY
clear
echo "Listing Dominic's todos + the new todo"
bash ./list.sh list-user-todos Dominic
sleep $DELAY
clear
echo "Marking Dominic's new todo"
bash ./mark.sh mark-todo 12
sleep $DELAY
clear
echo "Listing Dominic's todos + the new and marked todo"
bash ./list.sh list-user-todos Dominic
sleep $DELAY
clear
echo "Removing the newly added todo"
bash ./delete.sh delete-todo 12
sleep $DELAY
clear
echo "Listing Dominic's todos"
bash ./list.sh list-user-todos Dominic