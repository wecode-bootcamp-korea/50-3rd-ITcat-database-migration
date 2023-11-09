-- migrate:up
create table categories(
id integer not null auto_increment primary key,
name varchar(50) not null
);

-- migrate:down
drop table categories;