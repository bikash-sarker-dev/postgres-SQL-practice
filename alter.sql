-- Active: 1747418681259@@127.0.0.1@5432@ph
select * from "user";
ALTER Table "user"
    ADD COLUMN email VARCHAR(25) NOT NULL;

select * from "user";
-- INSERT INTO "user" VALUES(1, alom , "tomi", 25, "yes", "delete", "a", "e@gmail.com");

ALTER Table "user"
    DROP COLUMN email;
select * from "user";

ALTER Table "user"
    RENAME COLUMN age to user_age;

ALTER TABLE "user"
    alter COLUMN f_name type VARCHAR(100);


 ALTER Table "user"
    alter COLUMN user_age set NOT NULL;

ALTER Table "user"
    alter column user_age drop NOT NULL;
    

