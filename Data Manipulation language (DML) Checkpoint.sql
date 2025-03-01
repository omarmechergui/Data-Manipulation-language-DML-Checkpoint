INSERT INTO CUSTOMER (CustomerID, Name, Address, Phone)
VALUES
    (1, 'Alice Johnson', '123 Maple Street', '555-1234'),
    (2, 'Bob Smith', '456 Oak Avenue', '555-5678'),
    (3, 'Charlie Davis', '789 Pine Road', '555-9012');



INSERT INTO PRODUCT (ProductID, Name, Price, StockQuantity, Category)
VALUES
    (101, 'Laptop', 999.99, 50, 'Electronics'),
    (102, 'Smartphone', 499.99, 100, 'Electronics'),
    (103, 'Desk Chair', 89.99, 200, 'Furniture');



INSERT INTO ORDERS (OrderID, CustomerID, OrderDate)
VALUES
    (1001, 1, TO_DATE('2025-02-15', 'YYYY-MM-DD')),
    (1002, 2, TO_DATE('2025-02-16', 'YYYY-MM-DD')),
    (1003, 3, TO_DATE('2025-02-17', 'YYYY-MM-DD'));


INSERT INTO ORDER_DETAILS (OrderDetailID, OrderID, ProductID, Quantity)
VALUES
    (5001, 1001, 101, 1),
    (5002, 1002, 102, 2),
    (5003, 1003, 103, 1);
