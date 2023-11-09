-- migrate:up
create table seats(
id integer not null auto_increment primary key,
seat_row varchar(50) not null,
seat_col integer not null,
seat_class_id integer not null,
foreign key (seat_class_id) references seat_class(id)
);

-- migrate:down
drop table seats;
