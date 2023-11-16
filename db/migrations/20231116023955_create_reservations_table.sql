-- migrate:up
CREATE TABLE reservations(
id integer not null auto_increment primary key,
user_id integer not null,
item_id integer not null,
item_options_id integer not null,
seat_id integer not null,
status varchar(50) default 'pending',
amount decimal(6,2),
created_at timestamp default current_timestamp,
updated_at timestamp on update current_timestamp,
qrcode_url longtext,
foreign key (user_id) references users(id),
foreign key (item_id) references items(id),
foreign key (seat_id) references seats(id),
foreign key (item_options_id) references item_options(id)
);

-- migrate:down
DROP TABLE reservations;
