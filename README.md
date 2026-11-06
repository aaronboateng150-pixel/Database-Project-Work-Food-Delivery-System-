# Database-Project-Work-Food-Delivery-System-


## 📌 Project Overview
This project applies structured systems analysis and relational database design principles to model a modern food delivery platform (similar to UberEats or DoorDash). The primary goal was to eliminate data redundancy, enforce Third Normal Form (3NF) data integrity, and optimize SQL queries to enhance transactional reporting speed and order processing accuracy.

---

## 🏗️ Database Schema & Architecture
The relational database consists of 5 core normalized tables:
1. **`Customers`**: Stores user profile and contact information.
2. **`Restaurants`**: Manages vendor details, menus, and operating locations.
3. **`DeliveryStaff`**: Tracks courier availability, contact info, and active statuses.
4. **`Orders`**: Handles transactional order headers linking customers, restaurants, and couriers.
5. **`OrderItems`**: Itemized breakdown of specific food items ordered per transaction.

---

## 🛠️ Tech Stack & Skills Demonstrated
* **Database Management System (DBMS):** PostgreSQL / MySQL
* **Design Principles:** Entity-Relationship (ER) Modeling, Schema Normalization (1NF, 2NF, 3NF).
* **Query Optimization:** Complex multi-table `JOIN` operations, aggregate functions, indexing, and transactional reporting views.

---

## 📂 Repository Structure
* `schema_setup.sql` – DDL statements for table creation, primary/foreign keys, and constraints.
* `seed_data.sql` – Sample dummy data simulating live production environments.
* `optimized_queries.sql` – Advanced SQL queries used for operational analytics and reporting.
