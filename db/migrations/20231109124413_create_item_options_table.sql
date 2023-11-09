-- migrate:up
create table item_options(
id integer not null auto_increment primary key,
event_date date not null,
event_time time not null,
item_id integer not null,
foreign key (item_id) references items(id)
);

-- migrate:down
drop table item_options;
