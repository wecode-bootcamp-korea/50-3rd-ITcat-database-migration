-- migrate:up
CREATE TABLE item_options(
id integer not null auto_increment primary key,
event_date date not null,
event_time time not null,
item_id integer not null,
foreign key (item_id) references items(id)
);

-- migrate:down
DROP TABLE item_options;
