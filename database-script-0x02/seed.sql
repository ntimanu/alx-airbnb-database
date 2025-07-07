-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, role)
VALUES 
  ('uuid-1111', 'Alice', 'Ngabire', 'alice@example.com', 'hashed_pw_1', 'guest'),
  ('uuid-2222', 'Bob', 'Nshimiyimana', 'bob@example.com', 'hashed_pw_2', 'host');

-- Insert Property
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES 
  ('uuid-3333', 'uuid-2222', 'Kigali Apartment', 'Modern apartment in city center', 'Kigali', 50.00);

-- Insert Booking
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
  ('uuid-4444', 'uuid-3333', 'uuid-1111', '2025-08-01', '2025-08-05', 200.00, 'confirmed');

-- Insert Review
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES 
  ('uuid-5555', 'uuid-3333', 'uuid-1111', 5, 'Great place to stay!');

-- Insert Payment
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES 
  ('uuid-6666', 'uuid-4444', 200.00, 'credit_card');

-- Insert Message
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES 
  ('uuid-7777', 'uuid-1111', 'uuid-2222', 'Hi! Is the apartment available next week?');
