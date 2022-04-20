CREATE TABLE users (
    id serial PRIMARY KEY,
    username varchar(24) NOT NULL UNIQUE,
    password_digest text NOT NULL
);

CREATE TABLE posts (
    id serial PRIMARY KEY,
    title text NOT NULL,
    content text NOT NULL,
    user_id integer REFERENCES users (id) ON DELETE CASCADE
);

CREATE TABLE comments (
    id serial PRIMARY KEY,
    body text NOT NULL,
    post_id integer REFERENCES posts (id) ON DELETE CASCADE
);