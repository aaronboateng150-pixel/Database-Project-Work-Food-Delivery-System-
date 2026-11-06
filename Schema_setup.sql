-- Create Database
CREATE DATABASE food_delivery_db;
\c food_delivery_db;

-- 1. Customers Table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Restaurants Table
CREATE TABLE Restaurants (
    restaurant_id SERIAL PRIMARY KEY,
    restaurant_name VARCHAR(100) NOT NULL,
    cuisine_type VARCHAR(50),
    address VARCHAR(255) NOT NULL,
    rating DECIMAL(3,2)
);

-- 3. Delivery Staff Table
CREATE TABLE DeliveryStaff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20),
    is_available BOOLEAN DEFAULT TRUE
);

-- 4. Orders Table (Transactional Header)
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    restaurant_id INT REFERENCES Restaurants(restaurant_id),
    staff_id INT REFERENCES DeliveryStaff(staff_id),
    order_status VARCHAR(30) CHECK (order_status IN ('Pending', 'Preparing', 'Delivered', 'Cancelled')),
    total_amount DECIMAL(10,2) NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 5. Order Items Table (Itemized Details - 3NF Compliant)
CREATE TABLE OrderItems (
    item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES Orders(order_id) ON DELETE CASCADE,
    item_name VARCHAR(100) NOT NULL,
    quantity INT CHECK (quantity > 0),
    price DECIMAL(8,2) NOT NULL
);
