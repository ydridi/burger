USE burgers_db;
DELETE FROM burgers;
ALTER TABLE burgers MODIFY COLUMN createdAt TIMESTAMP NOT NULL DEFAULT current_timestamp;
ALTER TABLE burgers MODIFY COLUMN updatedAt TIMESTAMP NOT NULL DEFAULT current_timestamp;

INSERT INTO burgers(burger_name, devoured) VALUES ("Chicken Bacon Sandwich", false);
INSERT INTO burgers(burger_name, devoured) VALUES ("Bacon Cheese Burger", false);
INSERT INTO burgers(burger_name, devoured) VALUES ("Plain Hamburger", false);