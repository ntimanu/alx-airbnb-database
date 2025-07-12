# Join Queries – ALX Airbnb Database

This file includes SQL queries demonstrating different types of joins:

### ✅ INNER JOIN

Retrieves all bookings along with the users who made them.

### ✅ LEFT JOIN

Retrieves all properties along with any reviews they received. Properties with no reviews are still shown.

### ✅ FULL OUTER JOIN

Retrieves all users and all bookings, even if they are not linked.

These queries are based on the Airbnb ERD provided and focus on demonstrating relational data linking using SQL.

# Subqueries – ALX Airbnb Database

This file includes examples of:

### ✅ Non-Correlated Subquery

- Finds properties with an average rating above 4.0 by calculating the average from the `reviews` table.

### ✅ Correlated Subquery

- Identifies users who have made more than 3 bookings by evaluating booking count per user within the subquery.

# 📊 Aggregations and Window Functions – ALX Airbnb Database Project

## 🎯 Objective

The goal of this task is to use SQL **aggregation** and **window functions** to analyze Airbnb data, such as user booking activity and property performance.

---

## ✅ Queries Implemented

### 1️⃣ Total Number of Bookings per User

- **Description**: Retrieves how many bookings each user has made.
- **SQL Concepts**: `COUNT()`, `GROUP BY`, `JOIN`

```sql
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
```
