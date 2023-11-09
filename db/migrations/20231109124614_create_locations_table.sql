-- migrate:up
create table locations(
id integer not null auto_increment primary key,
name varchar(300) not null,
coordinate_x decimal(18,11) not null,
coordinate_y decimal(18,11) not null
);

-- migrate:down
drop table locations;
