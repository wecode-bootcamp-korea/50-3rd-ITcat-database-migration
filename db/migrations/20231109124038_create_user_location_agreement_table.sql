-- migrate:up
create table user_location_agreement(
id integer not null auto_increment primary key,
agreement_status boolean not null default false,
user_id integer not null,
foreign key (user_id) references users(id)
);

-- migrate:down
drop table user_location_agreement;
