-- Active: 1747418681259@@127.0.0.1@5432@ph@public

CREATE Table my_user(
    user_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT into my_user VALUES('mizba', 'mizba@gmail.com'), ('bikash', 'biaksh@gmail.com'),('shrabon', 'shrabon@gmail.com')

SELECT * from my_user

CREATE Table delete_users_audit(
    delete_user_name VARCHAR(50),
    deleteAt TIMESTAMP
)


select * from delete_users_audit


CREATE or REPLACE Function save_delete_user()
    RETURNS TRIGGER
    LANGUAGE PLPGSQL
    AS
    $$
    
        BEGIN
            INSERT INTO delete_users_audit VALUES(OLD.user_name, now());
            RAISE NOTICE 'Delete user auidit log created';
            RETURN OLD;
        END
    $$;


CREATE or REPLACE Trigger save_delete_user_trigger
    BEFORE DELETE
    ON my_user
    FOR EACH ROW
    EXECUTE FUNCTION save_delete_user()
    ;

DELETE FROM my_user WHERE user_name = 'bikash'