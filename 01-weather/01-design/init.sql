create table weather_location(
	id	varchar(16),
	name	varchar(200),
	country	varchar(4),
	path	varchar(200),
	timezone	varchar(100),
	timezone_offset	varchar(20),
	multi_tenancy_id varchar(5),
	vno	Integer(32),
	tms	Timestamp,
	CONSTRAINT weather_location_pk PRIMARY KEY (id),
	CONSTRAINT weather_location_name_un UNIQUE (name)
);

create table weather_daily(
	id	varchar(16),
	date varchar(10),
	text_day	varchar(32),
	code_day	varchar(10),
	text_night	varchar(32),
	code_night	varchar(10),
	high	varchar(10),
	low	varchar(10),
	precip	varchar(20),
	wind_direction	varchar(20),
	wind_direction_degree	varchar(20),
	wind_speed	varchar(20),
	wind_scale	varchar(20),
	multi_tenancy_id varchar(5),
	vno	Integer(32),
	tms	Timestamp,
	CONSTRAINT weather_daily_pk PRIMARY KEY (id, date)
);