DROP DATABASE IF EXISTS adlister_db;
CREATE DATABASE adlister_db;

USE adlister_db;


CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    UNIQUE (username),
    PRIMARY KEY (id)

);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    image TEXT NOT NULL,
    price VARCHAR(200) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);


CREATE TABLE user_ads(
     ad_id INT UNSIGNED NOT NULL,
     user_id INT UNSIGNED NOT NULL,
     FOREIGN KEY (user_id) REFERENCES users(id),
     FOREIGN KEY (ad_id) REFERENCES ads(id)
);

CREATE TABLE cat_ads(
    category VARCHAR(255) NOT NULL,
    ad_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads(id)
);