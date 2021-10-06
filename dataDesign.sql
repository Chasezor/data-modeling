CREATE TABLE users
( 
user_name VARCHAR(100),
email VARCHAR(50),
user_password VARCHAR(500),
phone NUMERIC,
experience NUMERIC, 
awards VARCHAR(500),
user_id SERIAL PRIMARY KEY
);


CREATE TABLE recipe
(
user_id INTEGER NOT NULL REFERENCES users(user_id),
recipe_id SERIAL PRIMARY KEY,
recipe_name VARCHAR(100),
instructions TEXT,
public_or_private BOOLEAN,
ingredient_id INTEGER NOT NULL REFERENCES ingredients(ingredients_id)
);

CREATE TABLE ingredients
(
ingredients_id  SERIAL PRIMARY KEY,
protein VARCHAR(500),
carbohydrates VARCHAR(500),
spices VARCHAR(500),
veggies VARCHAR(500)
);

CREATE TABLE occasions
(
recipe_name VARCHAR NOT NULL REFERENCES recipe(recipe_name),
user_name VARCHAR NOT NULL REFERENCES users(user_name),
Occasion VARCHAR(500),
time_of_event TIMESTAMP
);
