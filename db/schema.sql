DROP DATABASE IF EXISTS burgers_db;

CREATE DATABASE burgers_db;

USE burgers_db;
ALTER TABLE burgers MODIFY COLUMN createdAt TIMESTAMP NOT NULL DEFAULT current_timestamp;
ALTER TABLE burgers MODIFY COLUMN updatedAt TIMESTAMP NOT NULL DEFAULT current_timestamp;

CREATE TABLE burgers (
    id                  INT          NOT NULL AUTO_INCREMENT,
    burger_name         VARCHAR(50)  NOT NULL,
    devoured            BOOLEAN      NOT NULL DEFAULT false,
    PRIMARY KEY (id)
);