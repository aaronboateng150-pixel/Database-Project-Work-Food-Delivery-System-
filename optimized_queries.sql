-- ==========================================================
-- OPERATIONAL REPORTING QUERIES
-- Used to boost speed and accuracy of order processing analytics
-- ==========================================================

-- Query 1: Comprehensive Order Summary (Multi-Table JOIN)
-- Retrieves complete customer, restaurant, and courier details for active orders
SELECT 
    o.order_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    r.restaurant_name,
    ds.first_name AS courier_name,
    o.order_status,
    o.total_amount,
    o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Restaurants r ON o.restaurant_id = r.restaurant_id
LEFT JOIN DeliveryStaff ds ON o.staff_id = ds.staff_id
ORDER BY o.order_date DESC;

-- Query 2: Restaurant Performance & Total Revenue
-- Aggregates transactional data to report total earnings per vendor
SELECT 
    r.restaurant_name,
    r.cuisine_type,
    COUNT(o.order_id) AS total_orders_fulfilled,
    SUM(o.total_amount) AS gross_revenue
FROM Restaurants r
LEFT JOIN Orders o ON r.restaurant_id = o.restaurant_id
WHERE o.order_status = 'Delivered'
GROUP BY r.restaurant_name, r.cuisine_type
ORDER BY gross_revenue DESC;

-- Query 3: Itemized Order Lookup
-- Pulls exact breakdown of items for a specific order ID to speed up fulfillment verification
SELECT 
    oi.order_id,
    oi.item_name,
    oi.quantity,
    oi.price,
    (oi.quantity * oi.price) AS total_item_cost
FROM OrderItems oi
WHERE oi.order_id = 1;
