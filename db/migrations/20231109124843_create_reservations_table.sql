-- migrate:up
create table reservations(
id integer not null auto_increment primary key,
user_id integer not null,
item_id integer not null,
location_seat_id integer not null,
item_options_id integer not null,
payment_method_id integer null,
status varchar(50) default 'pending',
total_amount decimal(10,2),
created_at timestamp default current_timestamp,
updated_at timestamp on update current_timestamp,
foreign key (user_id) references users(id),
foreign key (item_id) references items(id),
foreign key (location_seat_id) references locations_seats(id),
foreign key (item_options_id) references item_options(id),
foreign key (payment_method_id) references payment_method(id)
);

-- migrate:down
drop table reservations;
