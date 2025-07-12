# 🧠 Index Performance Analysis – ALX Airbnb Database

## 🎯 Objective

Improve the performance of frequently executed queries using indexes and measure their impact using EXPLAIN ANALYZE.

---

## 🔍 Identified Columns for Indexing

| Table        | Column        | Reason for Index                 |
| ------------ | ------------- | -------------------------------- |
| `users`      | `user_id`     | JOIN operations with bookings    |
| `bookings`   | `user_id`     | JOIN with users                  |
| `bookings`   | `property_id` | JOIN with properties             |
| `bookings`   | `created_at`  | Date-based filtering and sorting |
| `properties` | `property_id` | JOIN with bookings               |
| `reviews`    | `property_id` | Filtering by property            |

---

## 🛠️ Created Indexes

```sql
CREATE INDEX idx_users_user_id ON users(user_id);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_created_at ON bookings(created_at);
CREATE INDEX idx_properties_property_id ON properties(property_id);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
```
