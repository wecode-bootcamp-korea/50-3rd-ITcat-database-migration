-- migrate:up
create table locations_seats(
id integer not null auto_increment primary key,
location_id integer not null,
seat_id integer not null,
is_booked boolean not null default false,
foreign key (location_id) references locations(id),
foreign key (seat_id) references seats(id)
);

-- migrate:down
drop table locations_seats;
