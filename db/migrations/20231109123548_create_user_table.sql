-- migrate:up
create table users(
id integer not null auto_increment primary key,
email varchar(300) not null,
password varchar(500),
kakao_id varchar(255) unique not null,
name varchar(100) not null,
birthday timestamp null,
phone_number varchar(100) null,
nickname varchar(100) null,
profile_image varchar(2000) null default "https://raw.githubusercontent.com/5yoonl/gitgithub/main/wecode_symbol_b%402x.png",
credit integer null,
created_at timestamp not null default now(),
updated_at timestamp null on update current_timestamp,
delete_status boolean not null default false,
is_admin boolean not null default false
);

-- migrate:down
drop table users;
