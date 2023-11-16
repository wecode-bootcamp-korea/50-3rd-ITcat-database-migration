-- migrate:up
CREATE TABLE seats(
id integer not null auto_increment primary key,
seat_row varchar(50) not null,
seat_col integer not null,
location_id integer not null,
is_booked tinyint not null default 0,
foreign key (location_id) references locations(id)
);

-- migrate:down
DROP TABLE seats;
