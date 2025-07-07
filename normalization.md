# Database Normalization – Airbnb Clone Project

## 🎯 Objective

Ensure the database design follows normalization principles up to the **Third Normal Form (3NF)** to reduce redundancy and improve data integrity.

---

## ✅ First Normal Form (1NF)

**Rules:**

- Each table has a primary key.
- All columns contain atomic (indivisible) values.
- No repeating groups or arrays.

**Example:**

- The `User` table has atomic values like `email`, `role`, and `password_hash`.
- The `Message` table stores one message per row with sender and recipient IDs.

✅ Achieved

---

## ✅ Second Normal Form (2NF)

**Rules:**

- Must be in 1NF.
- All non-key attributes must be **fully dependent** on the primary key.
- No partial dependencies.

**Example:**

- All tables use single-column UUIDs as primary keys (no composite keys).
- In the `Booking` table, attributes like `start_date`, `end_date`, and `total_price` depend on the full `booking_id`.

✅ Achieved

---

## ✅ Third Normal Form (3NF)

**Rules:**

- Must be in 2NF.
- No transitive dependencies (non-key column depends on another non-key column).

**Example:**

- In the `Property` table, host information is stored via `host_id`, referencing the `User` table. Host details like email and role are not duplicated.
- In the `Payment` table, only `booking_id` is stored as a foreign key. User and property info are accessed indirectly through the `Booking` relationship.

✅ Achieved

---

## ✅ Conclusion

The current database schema is:

- **Properly normalized up to 3NF**
- Designed with clear foreign keys to reduce redundancy
- Structured to improve maintainability and data consistency

All relationships and attribute dependencies are logically organized and comply with best practices in relational database design.
