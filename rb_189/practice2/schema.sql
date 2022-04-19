CREATE TABLE posts (
    id serial PRIMARY KEY,
    title text NOT NULL,
    content text NOT NULL
);

CREATE TABLE comments (
    id serial PRIMARY KEY,
    content text NOT NULL,
    post_id integer NOT NULL REFERENCES posts (id)
                                ON DELETE CASCADE
);