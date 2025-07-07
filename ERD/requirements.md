# ER Diagram – Airbnb Clone Database

## ✅ Entities and Attributes

### 1. User

- `user_id`: UUID, Primary Key
- `first_name`, `last_name`: VARCHAR, NOT NULL
- `email`: VARCHAR, UNIQUE, NOT NULL
- `password_hash`: VARCHAR, NOT NULL
- `phone_number`: VARCHAR, NULL
- `role`: ENUM (guest, host, admin)
- `created_at`: TIMESTAMP

### 2. Property

- `property_id`: UUID, Primary Key
- `host_id`: FK to User(user_id)
- `name`, `description`, `location`: VARCHAR/TEXT
- `price_per_night`: DECIMAL
- `created_at`, `updated_at`: TIMESTAMP

### 3. Booking

- `booking_id`: UUID, Primary Key
- `user_id`: FK to User
- `property_id`: FK to Property
- `start_date`, `end_date`: DATE
- `total_price`: DECIMAL
- `status`: ENUM (pending, confirmed, canceled)
- `created_at`: TIMESTAMP

### 4. Review

- `review_id`: UUID, Primary Key
- `user_id`: FK to User
- `property_id`: FK to Property
- `rating`: INTEGER (1–5)
- `comment`: TEXT
- `created_at`: TIMESTAMP

### 5. Message

- `message_id`: UUID, Primary Key
- `sender_id`, `recipient_id`: FK to User
- `message_body`: TEXT
- `sent_at`: TIMESTAMP

### 6. Payment

- `payment_id`: UUID, Primary Key
- `booking_id`: FK to Booking
- `amount`: DECIMAL
- `payment_date`: TIMESTAMP
- `payment_method`: ENUM (credit_card, paypal, stripe)

## 🔁 Relationships

- **User –< Property**: A user (host) can own many properties.
- **User –< Booking**: A user (guest) can make many bookings.
- **User –< Review**: A user can write many reviews.
- **User – Message –> User**: Users can send messages to one another.
- **Property –< Booking**: A property can have many bookings.
- **Property –< Review**: A property can have many reviews.
- **Booking – Payment**: One booking has one payment.

---

✅ Diagram file: `erd.png`  
📁 Location: `ERD/alx-airbnb-database/ERD/`
