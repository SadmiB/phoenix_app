import Config

secret_key_base = System.fetch_env!("SECRET_KEY_BASE")
cool_text = System.fetch_env!("COOL_TEXT")
app_hostname = System.fetch_env!("APP_HOSTNAME")
application_port = System.fetch_env!("APP_PORT")
db_username = System.fetch_env!("DB_USERNAME")
db_password = System.fetch_env!("DB_PASSWORD")
db_hostname = System.fetch_env!("DB_HOSTNAME")






config :my_docker_app, MyDockerAppWeb.Endpoint,
    http: [:inet6, port: String.to_integer(application_port)],
    secret_key_base: secret_key_base

config :my_docker_app,
    application_port: application_port

config :my_docker_app,
    app_hostname: app_hostname


config :my_docker_app,
    cool_text: cool_text

config :my_docker_app, MyDockerApp.Repo,
    username: db_username,
    password: db_password,
    database: "my_docker_app_dev",
    hostname: db_hostname,
    pool_size: 10