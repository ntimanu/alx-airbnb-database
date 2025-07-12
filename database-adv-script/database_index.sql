-- Analyze performance BEFORE indexing
EXPLAIN ANALYZE
SELECT
    u.first_name,
    u.last_name,
    COUNT(b.booking_id)
FROM
    users u
JOIN
    bookings b ON u.user_id = b.user_id
GROUP BY
    u.user_id, u.first_name, u.last_name;

-- Create indexes
CREATE INDEX idx_users_user_id ON users(user_id);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_created_at ON bookings(created_at);
CREATE INDEX idx_properties_property_id ON properties(property_id);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Analyze performance AFTER indexing
EXPLAIN ANALYZE
SELECT
    u.first_name,
    u.last_name,
    COUNT(b.booking_id)
FROM
    users u
JOIN
    bookings b ON u.user_id = b.user_id
GROUP BY
    u.user_id, u.first_name, u.last_name;
