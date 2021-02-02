ALTER TABLE ONLY todo DROP CONSTRAINT IF EXISTS fk_user_id;
DROP TABLE IF EXISTS "user";
DROP TABLE IF EXISTS todo;

CREATE TABLE IF NOT EXISTS "user" (
    id serial UNIQUE,
    name VARCHAR(50) UNIQUE
);

CREATE TABLE IF NOT EXISTS todo (
    id serial,
    task VARCHAR(100),
    user_id int,
    done boolean DEFAULT FALSE
);

ALTER TABLE todo
ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES "user" (id);
