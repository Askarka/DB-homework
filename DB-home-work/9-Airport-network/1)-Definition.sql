create table airports(
	airport_code char(3) primary key,
	airport_name varchar(30) not null,
	city varchar(30) not null,
	longitude float not null,
	latitude float not null,
	timezone varchar(30) not null
);

create table aircrafts(
	aircraft_id serial primary key,
	model varchar(30) not null,
	range integer not null
);

create table seats(
	aircraft_id integer references aircrafts(aircraft_id) on delete cascade on update cascade,
	seat_no varchar(4) not null,
	fare_conditions varchar(10) not null,
	primary key (aircraft_id, seat_no)
);

create table flights(
	flight_id serial primary key,
	flight_no char(6) not null,
	schedualed_departure timestamptz not null,
	schedualed_arrival timestamptz not null,
	departure_airport char(3) references airports(airport_code) on delete restrict on update cascade,
	arrival_airport char(3) references airports(airport_code) on delete restrict on update cascade,
	status varchar(20) not null,
	aircraft_id integer references aircrafts(aircraft_id) on delete cascade on update cascade,
	actual_departure timestamptz,
	actuel_arrival timestamptz
);

create table aircrews(
	aircrew_id serial primary key
);

create table employees(
	employee_id serial primary key,
	full_name text not null,
	role varchar(20) not null,
	phone_num varchar(30) not null,
	aircrew_id integer references aircrews(aircrew_id) on delete set null on update cascade
);

create table aircrew_flights(
	aircrew_id integer references aircrews(aircrew_id) on delete restrict on update cascade,
	flight_id integer references flights(flight_id) on delete restrict on update cascade
);

create table passengers(
	passenger_id serial primary key,
	phone_num varchar(30) not null,
	email varchar(30) not null,
	full_name text not null
);

create table bookings(
	book_id serial primary key,
	book_date timestamptz not null,
	total_amount float not null
);

create table tickets(
	ticket_no char(13) primary key,
	book_id integer references bookings(book_id) on delete cascade on update cascade,
	passenger_id integer references passengers(passenger_id) on delete cascade on update cascade
);

create table ticket_flights(
	ticket_no char(13) references tickets(ticket_no) on delete cascade on update cascade,
	flight_id integer references flights(flight_id) on delete cascade on update cascade,
	fare_conditions varchar(10) not null,
	amount float not null
);

create table boarding_passes(
	ticket_no char(13) references tickets(ticket_no) on delete cascade on update cascade,
	boarding_id serial primary key,
	seat_no varchar(4) not null
);