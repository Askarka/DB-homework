INSERT INTO airports VALUES
    ('KZN', 'Kazan International Airport', 'Kazan', 49.28167, 55.60667, 'UTC+4'),
    ('DME', 'Moscow Domodedovo Airport', 'Moscow', 37.9037, 55.4052, 'UTC+3'),
    ('SVO', 'Sheremetyevo International Airport', 'Moscow', 37.414722, 55.972778, 'UTC+3'),
    ('VKO', 'Vnukovo International Airport', 'Moscow', 37.2672, 55.5910, 'UTC+3'),
    ('LED', 'Pulkovo International Airport', 'St Petersburg', 30.2575, 59.8002, 'UTC+3');


INSERT INTO aircrafts (model, range)
VALUES
    ('Boeing 777-300ER', 11200),
    ('Boeing 737-800', 4500),
    ('Airbus A350-900', 12400),
    ('Airbus А321', 3800),
    ('Airbus A320', 4000),
    ('Sukhoi SuperJet 100', 2400);

INSERT INTO flights (flight_no, schedualed_departure, schedualed_arrival, departure_airport, arrival_airport, status, aircraft_code)
VALUES 
('QWE001', '2020-11-22 1:00:00', '2020-11-22 2:00:00', 'KZN', 'DME', 'planned', '1'),
('QWE002', '2020-11-22 3:00:00', '2020-11-22 4:00:00', 'DME', 'LED', 'planned', '1'),
('QWE003', '2020-11-22 5:00:00', '2020-11-22 6:00:00', 'LED', 'KZN', 'planned', '1'),
('QWE004', '2020-11-22 7:00:00', '2020-11-22 8:00:00', 'SVO', 'LED', 'planned', '2'),
('QWE005', '2020-11-22 9:00:00', '2020-11-22 10:00:00', 'LED', 'SVO', 'planned', '2');

INSERT INTO flights (flight_no, schedualed_departure, schedualed_arrival, departure_airport, arrival_airport, status, aircraft_code, actual_departure, actual_arrival)
VALUES 
('QWE006', '2020-11-21 1:00:00', '2020-11-21 2:00:00', 'KZN', 'VKO', 'completed', '3', '2020-11-21 1:00:00', '2020-11-21 2:00:00'),
('QWE007', '2020-11-21 3:00:00', '2020-11-21 4:00:00', 'VKO', 'LED', 'completed', '3', '2020-11-21 3:00:00', '2020-11-21 4:00:00'),
('QWE008', '2020-11-21 5:00:00', '2020-11-21 6:00:00', 'LED', 'KZN', 'completed', '3', '2020-11-21 5:00:00', '2020-11-21 6:00:00'),
('QWE009', '2020-11-21 7:00:00', '2020-11-21 8:00:00', 'LED', 'KZN', 'completed', '4', '2020-11-21 7:00:00', '2020-11-21 8:00:00'),
('QWE010', '2020-11-21 9:00:00', '2020-11-21 10:00:00', 'KZN', 'LED', 'completed', '4', '2020-11-21 9:00:00', '2020-11-21 10:00:00');
