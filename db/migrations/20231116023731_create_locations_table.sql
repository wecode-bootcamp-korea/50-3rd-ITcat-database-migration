-- migrate:up
CREATE TABLE locations(
id integer not null auto_increment primary key,
name varchar(300) not null,
coordinate_x decimal(18,7) not null,
coordinate_y decimal(18,7) not null
);

-- migrate:down
DROP TABLE locations;
