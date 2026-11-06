-- Insert Sample Customers
INSERT INTO Customers (first_name, last_name, email, phone_number) VALUES
('Alice', 'Smith', 'alice.smith@email.com', '555-0101'),
('Bob', 'Johnson', 'bob.j@email.com', '555-0202');

-- Insert Sample Restaurants
INSERT INTO Restaurants (restaurant_name, cuisine_type, address, rating) VALUES
('Taco Fiesta', 'Mexican', '123 Main St, Vancouver', 4.5),
('Dragon Wok', 'Asian', '456 Market Ave, Burnaby', 4.7);

-- Insert Sample Delivery Staff
INSERT INTO DeliveryStaff (first_name, last_name, phone_number, is_available) VALUES
('Charlie', 'Brown', '555-9001', TRUE),
('Diana', 'Prince', '555-9002', FALSE);

-- Insert Sample Orders
INSERT INTO Orders (customer_id, restaurant_id, staff_id, order_status, total_amount, order_date) VALUES
(1, 1, 1, 'Delivered', 34.50, '2026-10-01 12:30:00'),
(2, 2, 2, 'Preparing', 42.00, '2026-10-01 13:15:00');

-- Insert Sample Order Items
INSERT INTO OrderItems (order_id, item_name, quantity, price) VALUES
(1, 'Carne Asada Tacos', 3, 9.50),
(1, 'Horchata', 2, 3.00),
(2, 'Chicken Fried Rice', 2, 16.00),
(2, 'Spring Rolls', 1, 10.00);
