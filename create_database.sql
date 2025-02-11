DROP DATABASE IF EXISTS dnd;
CREATE DATABASE dnd;
USE dnd;

DROP TABLE IF EXISTS items;
CREATE TABLE items(
item_id int unsigned AUTO_INCREMENT primary key,
item_name varchar(255),
item_category varchar(255),
item_cost int unsigned,
item_weight smallint,
item_properties varchar(255),
item_description varchar(255),
is_currency boolean
);

DROP TABLE IF EXISTS player;
CREATE TABLE player(
player_id int unsigned AUTO_INCREMENT primary key,
player_name varchar(255),
player_carry_weight	smallint unsigned);


DROP TABLE IF EXISTS circulating_items;
CREATE TABLE circulating_items(
item_id int unsigned,
player_id int unsigned,
item_quantity int unsigned,
primary key(item_id, player_id),
FOREIGN KEY(player_id) REFERENCES player(player_id),
FOREIGN KEY(item_id) REFERENCES items(item_id)
);

