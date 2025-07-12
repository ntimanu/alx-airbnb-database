# Partitioning Performance Report

## Objective

To improve performance of queries filtering by start_date on a large `bookings` table using **range partitioning**.

---

## Implementation

The `bookings_partitioned` table was partitioned by `start_date` using PostgreSQL's `PARTITION BY RANGE`.

We created 3 partitions:

- `bookings_2023`: For values in 2023
- `bookings_2024`: For values in 2024
- `bookings_2025`: For values in 2025

---

## Performance Testing

### Query:

```sql
SELECT * FROM bookings WHERE start_date BETWEEN '2024-06-01' AND '2024-06-30';

```
