while ! pg_isready -q -h $DB_HOSTNAME -p 5432 -U $DB_USERNAME
do
  echo "$(date) - waiting for database to start"
  sleep 2
done

./prod/rel/my_docker_app/bin/my_docker_app eval MyDockerApp.Release.migrate

./prod/rel/my_docker_app/bin/my_docker_app start
