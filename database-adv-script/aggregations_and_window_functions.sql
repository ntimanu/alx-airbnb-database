-- Query 1: Total number of bookings made by each user
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM
    users u
JOIN
    bookings b ON u.user_id = b.user_id
GROUP BY
    u.user_id, u.first_name, u.last_name
ORDER BY
    total_bookings DESC;

-- Query 2: Ranking properties using RANK()
SELECT
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS rank
FROM
    properties p
LEFT JOIN
    bookings b ON p.property_id = b.property_id
GROUP BY
    p.property_id, p.name
ORDER BY
    rank;

-- Query 3: Ranking properties using ROW_NUMBER()
SELECT
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS row_num
FROM
    properties p
LEFT JOIN
    bookings b ON p.property_id = b.property_id
GROUP BY
    p.property_id, p.name
ORDER BY
    row_num;
