-- migrate:up
CREATE TABLE actors(
id integer not null auto_increment primary key,
name varchar(300) not null,
item_id integer not null,
foreign key (item_id) references items(id)
);

-- migrate:down
DROP TABLE actors;
