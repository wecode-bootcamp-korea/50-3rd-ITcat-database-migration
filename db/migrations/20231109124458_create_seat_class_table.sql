-- migrate:up
create table seat_class(
id integer not null auto_increment primary key,
name varchar(300) not null,
price decimal(10,2) not null
);

-- migrate:down
drop table seat_class;
