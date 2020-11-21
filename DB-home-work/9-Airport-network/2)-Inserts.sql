--  Заполнить получившиеся таблицы тестовыми данными 
-- (как минимум 3 аэропорта, 3 самолета и 10 рейсов).
INSERT INTO airports VALUES
    ('KZN', 'Kazan International Airport', 'Kazan', 49.28167, 55.60667, 'UTC+4'),
    ('DME', 'Moscow Domodedovo Airport', 'Moscow', 37.9037, 55.4052, 'UTC+3'),
    ('SVO', 'Sheremetyevo International Airport', 'Moscow', 37.414722, 55.972778, 'UTC+3'),
    ('VKO', 'Vnukovo International Airport', 'Moscow', 37.2672, 55.5910, 'UTC+3'),
    ('LED', 'Pulkovo International Airport', 'St Petersburg', 30.2575, 59.8002, 'UTC+3');


INSERT INTO aircrafts VALUES
    ('Boeing 777-300ER', 11 200),
    ('Boeing 737-800', 4 500),
    ('Airbus A350-900', 12 400),
    ('Airbus А321', 3800),
    ('Airbus A320', 4000),
    ('Sukhoi SuperJet 100', 2400);

INSERT INTO flights (flight_no, schedualed_departure, schedualed_arrival, departure_airport, arrival_airport, status, aircraft_code)
VALUES ('', , , '', '', '', ''),
('', , , '', '', '', ''),
('', , , '', '', '', ''),
('', , , '', '', '', ''),
('', , , '', '', '', '');

INSERT INTO flights (flight_no, schedualed_departure, schedualed_arrival, departure_airport, arrival_airport, status, aircraft_code, actual_departure, actual_arrival)
VALUES ('', , , '', '', '', '', , ),
('', , , '', '', '', '', , ),
('', , , '', '', '', '', , ),
('', , , '', '', '', '', , ),
('', , , '', '', '', '', , );