# overcooked_restaurant
Overcooked - The Restaurant Schema is a MySQL database project inspired by the popular game Overcooked. Designed to simulate the dynamic operations of a restaurant, this project streamlines order management, inventory control, and financial analysis. 

# Schema Overview
- 10 Tables: Manage orders, inventory, finances, and more. Includes tables for orders, menu items, food recipes, ingredients, inventory, cashier transactions, and procurement.
- 6 Stored Procedures: Ensure seamless interaction between database tables.
    Automate core restaurant operations:
    - Process Client Order
    - Generate Client Order Receipt
    - Cashier Process
    - Full-inventory Restore Order Placement
    - Process Procurement Order
    - Dish Recipe Search
- 2 Views:
    - Financial Overview: Summarizes total revenue, expenses, and profit. Facilitates financial analysis and decision-making.
    - Food & Inventory Details: Provides a comprehensive view of menu items and inventory levels. Enables efficient management of food supplies and ingredient stock.
- 2 Stored Functions:
    - Profit Querying: Determines overall profitability based on revenue and expenses. Supports strategic financial planning and performance evaluation.
    - Client Tips Querying: Evaluate customer satisfaction levels using transaction data. Offers insights into customer contentment
