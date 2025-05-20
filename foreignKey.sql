-- Active: 1747418681259@@127.0.0.1@5432@ph@public
-- Active: 1747418681259@@127.0.0.1@5432@ph@public-- Active: 1747418681259@@127.0.0.1@5432@ph
CREATE table "user3"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL
)


CREATE table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id  INTEGER REFERENCES  "user3"(id)
)

SELECT * FROM user3

INSERT INTO user3 (username) VALUES
    ('akash'),
    ('bakash'),
    ('halim'),
    ('tapos'),
    ('romon');

select * FROM user3


INSERT INTO post (title, user_id) VALUES
    ('this is a akash', 2),
    ('this is a batash', 1),
    ('this is a halim', 4),
    ('this is a tapos', 3),
    ('this is a romon', 5);
SELECT * FROM post;