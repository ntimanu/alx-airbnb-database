-- Drop existing partitioned table if it exists
DROP TABLE IF EXISTS bookings_partitioned CASCADE;

-- Step 1: Create parent table
CREATE TABLE bookings_partitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (property_id) REFERENCES properties(property_id)
) PARTITION BY RANGE (start_date);

-- Step 2: Create child partitions
CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');
