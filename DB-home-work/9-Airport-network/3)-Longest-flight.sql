CREATE VIEW length_of_flights 
AS SELECT flight_id, flight_no, schedualed_arrival - schedualed_departure AS length FROM flights;

CREATE VIEW max_length_of_flights
AS SELECT MAX (schedualed_arrival - schedualed_departure) AS max_length FROM flights;

-- при повторном вызове использовать только то, что после комментария.

SELECT length_of_flights.* FROM length_of_flights RIGHT JOIN max_length_of_flights ON length_of_flights.length = max_length_of_flights.max_length;
