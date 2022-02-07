

CREATE TABLE users (
    id SERIAL PRIMARY KEY NOT NULL,
    username varchar(25) UNIQUE NOT NULL,
    email varchar(50) NOT NULL,
    password varchar(50) NOT NULL
);

CREATE TABLE questions (
    id SERIAL PRIMARY KEY NOT NULL,
    content varchar(255) NOT NULL,
    topic_id integer NOT NULL REFERENCES topics(id),
    user_id integer NOT NULL REFERENCES users(id)
);

CREATE TABLE answers (
    id SERIAL PRIMARY KEY NOT NULL,
    content varchar(500) NOT NULL,
    question_id INTEGER NOT NULL REFERENCES questions(id),
    user_id INTEGER NOT NULL REFERENCES users(id)
);

CREATE TABLE topics (
    id SERIAL PRIMARY KEY NOT NULL,
    name varchar(50) NOT NULL
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY NOT NULL,
    content varchar(500) NOT NULL,
    answer_id INTEGER NOT NULL REFERENCES answers(id)
);