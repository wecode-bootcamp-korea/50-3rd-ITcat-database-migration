-- migrate:up
CREATE TABLE items(
id integer not null auto_increment primary key,
title varchar(300) not null,
image varchar(2000) not null,
running_time integer not null,
viewer_age varchar(300) not null,
price integer not null,
category_id integer not null,
item_notice varchar(2000),
foreign key (category_id) references categories(id)
);

-- migrate:down
DROP TABLE items;
