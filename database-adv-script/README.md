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

# Aggregations and Window Functions – ALX Airbnb Database

This module demonstrates:

### ✅ Total Bookings per User

- Uses `COUNT()` and `GROUP BY` to count how many bookings each user has made.

### ✅ Ranking Properties by Bookings

- Uses `RANK()` window function to rank properties based on total bookings received.
- Also supports alternative with `ROW_NUMBER()` if strict ordering is required.
