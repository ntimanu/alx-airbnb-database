# Performance Monitoring and Refinement Report

## 🔍 Queries Analyzed

### 1. Total Bookings Per User

```sql
SELECT u.user_id, u.first_name, u.last_name,
       COUNT(b.booking_id) AS total_bookings
FROM users u
JOIN bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name, u.last_name
ORDER BY total_bookings DESC;
```
