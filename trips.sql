CREATE TABLE user_data (
    user_id integer PRIMARY KEY,
    banned text,
    role text
);

CREATE TABLE trip (
    id integer PRIMARY KEY,
    client_id integer REFERENCES user_data(user_id),
    driver_id integer REFERENCES user_data(user_id),
    city_id integer,
    status text,
    request_at date
);

INSERT INTO user_data 
VALUES
(1, 'no', 'client'),
(2, 'yes', 'client'),
(3, 'no', 'client'),
(4, 'no', 'client'),
(5, 'no', 'client'),
(10, 'no', 'driver'),
(11, 'no', 'driver'),
(12, 'no', 'driver'),
(13, 'no', 'driver');

INSERT INTO trip
VALUES
(1, 1, 10, 1, 'completed', '2022-10-12'),
(2, 2, 11, 1, 'cancelled_by_driver', '2022-10-12'),
(3, 3, 12, 6, 'completed', '2022-10-12'),
(4, 4, 13, 6, 'cancelled_by_client', '2022-10-12'),
(5, 1, 10, 1, 'completed', '2022-10-12'),
(6, 2, 11, 6, 'completed', '2022-10-12'),
(7, 3, 12, 6, 'completed', '2022-10-13'),
(8, 2, 12, 12, 'completed', '2022-10-13'),
(9, 3, 10, 12, 'completed', '2022-10-13'),
(10, 4, 13, 12, 'cancelled_by_driver', '2022-10-13'),
(11, 1, 10, 1, 'completed', '2022-10-13');
