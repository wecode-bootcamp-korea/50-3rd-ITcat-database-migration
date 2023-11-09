-- migrate:up
create table payment_method(
id integer not null auto_increment primary key,
name varchar(50)
);

-- migrate:down
drop table payment_method;
