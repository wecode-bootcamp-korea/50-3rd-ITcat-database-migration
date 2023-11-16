-- migrate:up
CREATE TABLE categories(
id integer not null auto_increment primary key,
name varchar(50) not null
);

-- migrate:down
DROP TABLE categories;
