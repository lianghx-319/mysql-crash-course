DB_FOLDER="./db_data"
DB_PASSWORD_FILE="./db_password.txt"
DB_ROOT_PASSWORD_FILE="./db_root_password.txt"
INIT_PASSWORD="secretpassword"

if [ ! -d "$DB_FOLDER" ]; then
  mkdir -p $DB_FOLDER
fi

if [ ! -f "$DB_PASSWORD_FILE" ]; then
  touch "$DB_PASSWORD_FILE" && echo $INIT_PASSWORD > $DB_PASSWORD_FILE
fi

if [ ! -f "$DB_ROOT_PASSWORD_FILE" ]; then
  touch "$DB_ROOT_PASSWORD_FILE" && echo $INIT_PASSWORD > $DB_ROOT_PASSWORD_FILE
fi

echo "Init finish, you can run docker-compose up -d"