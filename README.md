# Data Manipulation Language (DML) Checkpoint

## Overview
This project involves performing Data Manipulation Language (DML) operations on a relational database. The objective is to insert data into the tables created in the previous Data Definition Language (DDL) checkpoint.

## Objectives
- Populate the database with initial data.
- Ensure data integrity by adhering to the relational model.
- Execute SQL commands for `INSERT` operations on all tables.

## Database Structure
The database consists of the following tables:

1. **CUSTOMER**
   - CustomerID (NUMBER(10), Primary Key)
   - Name (VARCHAR2(50), NOT NULL)
   - Address (VARCHAR2(100))
   - Phone (VARCHAR2(15))

2. **PRODUCT**
   - ProductID (NUMBER(10), Primary Key)
   - Name (VARCHAR2(50), NOT NULL)
   - Price (NUMBER(10,2))
   - StockQuantity (NUMBER(10))
   - Category (VARCHAR2(20))

3. **ORDERS**
   - OrderID (NUMBER(10), Primary Key)
   - CustomerID (NUMBER(10), Foreign Key references CUSTOMER(CustomerID))
   - OrderDate (DATE, Default: SYSDATE)

4. **ORDER_DETAILS**
   - OrderDetailID (NUMBER(10), Primary Key)
   - OrderID (NUMBER(10), Foreign Key references ORDERS(OrderID))
   - ProductID (NUMBER(10), Foreign Key references PRODUCT(ProductID))
   - Quantity (NUMBER(10))

## SQL Commands
### Inserting Data
```sql
-- Insert data into CUSTOMER table
INSERT INTO CUSTOMER (CustomerID, Name, Address, Phone)
VALUES
    (1, 'Alice Johnson', '123 Maple Street', '555-1234'),
    (2, 'Bob Smith', '456 Oak Avenue', '555-5678'),
    (3, 'Charlie Davis', '789 Pine Road', '555-9012');

-- Insert data into PRODUCT table
INSERT INTO PRODUCT (ProductID, Name, Price, StockQuantity, Category)
VALUES
    (101, 'Laptop', 999.99, 50, 'Electronics'),
    (102, 'Smartphone', 499.99, 100, 'Electronics'),
    (103, 'Desk Chair', 89.99, 200, 'Furniture');

-- Insert data into ORDERS table
INSERT INTO ORDERS (OrderID, CustomerID, OrderDate)
VALUES
    (1001, 1, TO_DATE('2025-02-15', 'YYYY-MM-DD')),
    (1002, 2, TO_DATE('2025-02-16', 'YYYY-MM-DD')),
    (1003, 3, TO_DATE('2025-02-17', 'YYYY-MM-DD'));

-- Insert data into ORDER_DETAILS table
INSERT INTO ORDER_DETAILS (OrderDetailID, OrderID, ProductID, Quantity)
VALUES
    (5001, 1001, 101, 1),
    (5002, 1002, 102, 2),
    (5003, 1003, 103, 1);
```

## Repository
You can find the full project on GitHub:
[Data-Manipulation-language-DML-Checkpoint](https://github.com/omarmechergui/Data-Manipulation-language-DML-Checkpoint.git)

## Requirements
- Database Management System (e.g., Oracle Database)
- SQL knowledge for inserting and manipulating data

## Installation
1. Clone the repository:

    ```bash
    git clone https://github.com/omarmechergui/Data-Manipulation-language-DML-Checkpoint.git
    cd Data-Manipulation-language-DML-Checkpoint
    ```

2. Execute the SQL script to insert the data:

    ```bash
    sqlplus username/password@database < insert_data.sql
    ```

## Usage
- Query the database to verify inserted records.
- Perform CRUD operations on CUSTOMER, PRODUCT, ORDERS, and ORDER_DETAILS tables.

## Contributing
Contributions are welcome! Feel free to submit a pull request with improvements or fixes.

## License
This project is licensed under the MIT License.

## Contact
For questions or support, reach out to(mailto:oo2377107@gmail.com).
