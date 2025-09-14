-- Split Products for a specific order
SELECT
    OrderID,
    CustomerName,
    TRIM(product) AS Product
FROM ProductDetail,
JSON_TABLE(
CONCAT('["', REPLACE(Products, ',', '"]'), "$[*]" COLUMNS (product)
VARCHAR (100) PATH "$")
AS prod;

-- Creating Orders table
SELECT DISTINCT OrderID, CustomerName
INTO Orders
FROM ProductDetails;

-- Creating OrderItems table
SELECT OrderID, Product, Quality
INTO OrderItems
FROM OrderDetails;

