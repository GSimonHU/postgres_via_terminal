# TodoDB.sh

## Story

Simple todo list application for the terminal using postgres to persist data

## Prerequisites

- Program meant to be run on Linux
- Postgres running and a database already exists named todoDB
- Run dbschema.sql and data.sql to populate relevant data to todoDB

## Functions

1. List(list.sh)
- `list.sh list-users` will list all users
- `list.sh list-todos` will list all todos
- `list.sh list-user-todos <user>` will list the todos of the specified user

2. Add(add.sh)
- `add.sh add-user <user>` will add a user
- `add.sh add-todo <user> <todo>` will add a todo for the specified user

3. Delete(delete.sh)
- `delete.sh delete-todo <todo-id>` deletes the todo with the specified id
- `delete.sh delete-done` delete all todos marked as done

4. Mark(mark.sh)
- `mark.sh mark-todo <todo-id>` mark todo with the specified id
- `mark.sh unmark-todo <todo-id>` unmark todo with the specified id