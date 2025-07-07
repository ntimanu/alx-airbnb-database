# Airbnb Clone – Database Schema

This directory contains the SQL script (`schema.sql`) used to define the database schema for the Airbnb project.  
It includes table definitions, constraints, foreign keys, and indexing to ensure referential integrity and performance.

## 📁 Files

- `schema.sql`: Contains all CREATE TABLE statements for:
  - User
  - Property
  - Booking
  - Review
  - Message
  - Payment

## 🧱 Tech Details

- UUIDs are used as primary keys.
- `ENUM` types are used for status fields.
- Timestamps use `DEFAULT CURRENT_TIMESTAMP`.
- Constraints ensure proper validation and relationships between entities.
