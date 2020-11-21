create view expensive_food 
	as select * from food
	where price >= 2000
with cascaded check option;

insert into restaurant (id, name)
values (1, 'Pashmir');

insert into expensive_food (id, restaurant_id, name, price, description)
values (1, 1, 'Peking duck', 6000, 'Peking duck is a dish from Beijing that has been prepared since the imperial era. The meat is characterized by its thin, crisp skin, with authentic versions of the dish serving mostly the skin and little meat, sliced in front of the diners by the cook.');

create view delivered_orders
	as select * from "order"
	where status = True
with local check option;

insert into "user" (id, phone_number)
values (1, '89014881337');

insert into profile (id, user_id, name, email, gender, birthday)
values (1, 1, 'Alice', 'alice@gmail.com', 'woman', '2001-10-3');

insert into delivered_orders (id, profile_id, restaurant_id, price, address, status)
values (1, 1, 1, 12000, 'Kremlin 35', True);