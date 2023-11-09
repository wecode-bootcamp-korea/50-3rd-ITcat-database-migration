-- migrate:up
create table locations_items(
id integer not null auto_increment primary key,
location_id integer not null,
item_id integer not null,
foreign key (location_id) references locations(id),
foreign key (item_id) references items(id)
);

-- migrate:down
drop table locations_items;
