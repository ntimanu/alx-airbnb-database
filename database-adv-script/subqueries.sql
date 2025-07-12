-- Query 1: Properties with average rating > 4.0 (non-correlated subquery)
SELECT
    p.property_id,
    p.name,
    p.location
FROM
    properties p
WHERE
    p.property_id IN (
        SELECT
            r.property_id
        FROM
            reviews r
        GROUP BY
            r.property_id
        HAVING
            AVG(r.rating) > 4.0
    );

-- Query 2: Users with more than 3 bookings (correlated subquery)
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM
    users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.user_id
) > 3;
