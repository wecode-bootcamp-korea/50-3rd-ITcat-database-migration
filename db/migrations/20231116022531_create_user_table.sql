-- migrate:up
CREATE TABLE users(
id integer not null auto_increment primary key,
email varchar(300) not null,
password varchar(500),
kakao_id varchar(255) unique not null,
name varchar(60) not null,
birthday timestamp null,
phone_number varchar(60) null,
nickname varchar(60) null,
profile_image varchar(2000) null default "https://raw.githubusercontent.com/5yoonl/gitgithub/main/wecode_symbol_b%402x.png",
credit integer null,
created_at timestamp not null default now(),
updated_at timestamp null on update current_timestamp,
delete_status boolean not null default false,
is_admin tinyint not null default 0
);

-- migrate:down
DROP TABLE users;
