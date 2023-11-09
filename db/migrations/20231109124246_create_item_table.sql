-- migrate:up
create table items(
id integer not null auto_increment primary key,
title varchar(300) not null,
image varchar(2000) not null,
description varchar(500) not null,
running_time integer not null,
viewer_age varchar(300) not null,
category_id integer not null,
foreign key (category_id) references categories(id)
);

-- migrate:down
drop table items;
