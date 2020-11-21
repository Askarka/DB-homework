CREATE TABLE users (
    user_id serial primary key,
    phone_number varchar(20) NOT NULL
);

CREATE TABLE profiles (
    profile_id serial primary key,
    user_id integer references users(user_id) on delete cascade on update cascade,
    profile_name varchar(20),
    email varchar(30),
    gender varchar(20),
    birthday timestamp
);

CREATE TABLE restaraunts (
    restaraunt_id serial primary key,
    restaraunt_name varchar(20) NOT NULL
);

CREATE TABLE foods (
    food_id serial primary key,
    restaraunt_id integer references restaraunts(restaraunt_id) on delete cascade on update cascade,
    food_name varchar(20) NOT NULL,
    price float NOT NULL,
    descriftion text
);

CREATE TABLE transports (
    transport_id serial primary key,
    type varchar(10) NOT NULL
);

CREATE TABLE couriers (
    courier_id serial primary key,
    transport_id integer references transports(transport_id) on delete restrict on update cascade,
    courier_name varchar(20) NOT NULL,
    phone_number varchar(20) NOT NULL
);

CREATE TABLE orders (
    order_id serial primary key,
    profile_id integer references profiles(profile_id) on delete restrict on update cascade,
    restaraunt_id integer references restaraunts(restaraunt_id) on delete restrict on update cascade,
    price float NOT NULL,
    address varchar(30) NOT NULL,
    status varchar(20) NOT NULL
);

CREATE TABLE courier_orders (
    order_id integer references orders(order_id) on delete restrict on update cascade,
    courier_id integer references couriers(courier_id) on delete restrict on update cascade,
    PRIMARY KEY (courier_id, order_id)
);
