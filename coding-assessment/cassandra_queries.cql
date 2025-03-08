CREATE KEYSPACE IF NOT EXISTS user_management
WITH REPLICATION = {
    'class': 'SimpleStrategy',
    'replication_factor': 3
};

USE user_management;

CREATE TABLE IF NOT EXISTS users (
    user_id UUID PRIMARY KEY,
    name TEXT,
    email TEXT,
    age INT
);

INSERT INTO users (user_id, name, email, age)
VALUES (uuid(), 'Alice', 'alice@example.com', 30);

INSERT INTO users (user_id, name, email, age)
VALUES (uuid(), 'Bob', 'bob@example.com', 25);

SELECT * FROM users WHERE email = 'alice@example.com';

UPDATE users SET age = 31 WHERE email = 'alice@example.com';

DELETE FROM users WHERE email = 'alice@example.com';