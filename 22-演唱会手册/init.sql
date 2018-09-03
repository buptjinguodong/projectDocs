
create table songer_info (
	songer_id int(32) not null auto_increment,
	songer_name varchar(64) not null,
	create_time timestamp default current_timestamp,
	update_time timestamp default current_timestamp on update current_timestamp,
	primary key (songer_id)
);


create table song_info (
	song_id int(32) not null auto_increment,
	songer_id int(32) not null,
	song_word varchar(4096) not null,
	create_time timestamp default current_timestamp,
	update_time timestamp default current_timestamp on update current_timestamp,
	primary key (song_id)
);

create table user_info (
	user_id int(32) not null auto_increment,
	user_name varchar(64) not null,
	nick_name varchar(64) not null,
	avatar_url varchar(1024) not null,
	open_id varchar(256) not null comment '与app_id一同定位一个用户',
	session_key varchar(256) not null,
	app_id varchar(256) not null,
	union_id varchar(256),
	create_time timestamp default current_timestamp,
	update_time timestamp default current_timestamp on update current_timestamp,
	primary key (user_id)
)

user_id
user_name
nick_name
avatar_url
open_id
session_key
app_id
union_id
create_time
update_time