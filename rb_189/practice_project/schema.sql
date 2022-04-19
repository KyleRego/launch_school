CREATE TABLE users (
    id serial PRIMARY KEY,
    username text NOT NULL UNIQUE,
    password_digest text NOT NULL
)