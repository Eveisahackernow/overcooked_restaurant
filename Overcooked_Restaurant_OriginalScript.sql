Create Database IF NOT EXISTS Overcooked_Restaurant;
Use Overcooked_Restaurant;

CREATE TABLE Orders (
  Order_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Order_Date DATE NOT NULL,
  Order_Time TIME NOT NULL
);

CREATE TABLE Cashier (
  Order_ID INT NOT NULL,
  Order_Total_Price DECIMAL(10, 2) NOT NULL,
  Order_Total_Paid DECIMAL(10, 2) NULL,
  FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID) ON DELETE CASCADE
);

CREATE TABLE Menu (
  Dish_ID INT NOT NULL PRIMARY KEY,
  Dish_Name VARCHAR(100) NOT NULL,
  Dish_Price DECIMAL(10, 2) NOT NULL,
  Dish_Image BLOB
);
INSERT INTO Menu (Dish_ID, Dish_Name, Dish_Price, Dish_Image) VALUES
	(1, 'Lettuce_salad', 3, LOAD_FILE('D:/Overcooked_Project/images/Lettuce_salad.png')),
	(2, 'Lettuce_and_tomato_salad', 5, LOAD_FILE('D:/Overcooked_Project/images/Lettuce_and_tomato_salad.png')),
	(3, 'Lettuce_tomato_and_cucumber_salad', 6, LOAD_FILE('D:/Overcooked_Project/images/Lettuce_tomato_and_cucumber_salad.png')),
	(4, 'Fish_sashimi', 8, LOAD_FILE('D:/Overcooked_Project/images/Fish_sashimi.png')),
	(5, 'Fish_sushi', 10, LOAD_FILE('D:/Overcooked_Project/images/Fish_sushi.png')),
	(6, 'Shrimp_sashimi', 10, LOAD_FILE('D:/Overcooked_Project/images/Shrimp_sashimi.png')),
	(7, 'Assorted_sushi', 13, LOAD_FILE('D:/Overcooked_Project/images/Assorted_sushi.png')),
	(8, 'Onion_potato_and_carrot_soup', 5, LOAD_FILE('D:/Overcooked_Project/images/Onion_potato_and_carrot_soup.png')),
	(9, 'Tomato_pasta', 8, LOAD_FILE('D:/Overcooked_Project/images/Tomato_pasta.png')),
	(10, 'Beef_pasta', 10, LOAD_FILE('D:/Overcooked_Project/images/Beef_pasta.png')),
	(11, 'Seafood_pasta', 12, LOAD_FILE('D:/Overcooked_Project/images/Seafood_pasta.png')),
	(12, 'Mushroom_pasta', 9, LOAD_FILE('D:/Overcooked_Project/images/Mushroom_pasta.png')),
	(13, 'Beef_dumplings', 8, LOAD_FILE('D:/Overcooked_Project/images/Beef_dumplings.png')),
	(14, 'Carrot_dumplings', 6, LOAD_FILE('D:/Overcooked_Project/images/Carrot_dumplings.png')),
	(15, 'Shrimp_dumplings', 9, LOAD_FILE('D:/Overcooked_Project/images/Shrimp_dumplings.png')),
	(16, 'Basic_burger', 7, LOAD_FILE('D:/Overcooked_Project/images/Basic_burger.png')),
	(17, 'Cheeseburger', 9, LOAD_FILE('D:/Overcooked_Project/images/Cheeseburger.png')),
	(18, 'Cheeseburger_with_lettuce', 10, LOAD_FILE('D:/Overcooked_Project/images/Cheeseburger_with_lettuce.png')),
	(19, 'Complete_burger', 10, LOAD_FILE('D:/Overcooked_Project/images/Complete_burger.png')),
	(20, 'Double_patty_with_pineapple_burger', 13, LOAD_FILE('D:/Overcooked_Project/images/Double_patty_with_pineapple_burger.png')),
	(21, 'Beef_burrito', 10, LOAD_FILE('D:/Overcooked_Project/images/Beef_burrito.png')),
	(22, 'Chicken_burrito', 10, LOAD_FILE('D:/Overcooked_Project/images/Chicken_burrito.png')),
	(23, 'Mushroom_burrito', 8, LOAD_FILE('D:/Overcooked_Project/images/Mushroom_burrito.png')),
	(24, 'Fries', 4, LOAD_FILE('D:/Overcooked_Project/images/Fries.png')),
	(25, 'Fried_chicken', 8, LOAD_FILE('D:/Overcooked_Project/images/Fried_chicken.png')),
	(26, 'Fried_chicken_with_fries', 10, LOAD_FILE('D:/Overcooked_Project/images/Fried_chicken_with_fries.png')),
	(27, 'Roasted_chicken_with_potato_and_carrot', 15, LOAD_FILE('D:/Overcooked_Project/images/Roasted_chicken_with_potato_and_carrot.png')),
	(28, 'Basic_pancake', 7, LOAD_FILE('D:/Overcooked_Project/images/Basic_pancake.png')),
	(29, 'Chocolate_pancake', 9, LOAD_FILE('D:/Overcooked_Project/images/Chocolate_pancake.png')),
	(30, 'Strawberry_pancake', 9, LOAD_FILE('D:/Overcooked_Project/images/Strawberry_pancake.png')),
	(31, 'Honey_donut', 6, LOAD_FILE('D:/Overcooked_Project/images/Honey_donut.png')),
	(32, 'Chocolate_donut', 7, LOAD_FILE('D:/Overcooked_Project/images/Chocolate_donut.png')),
	(33, 'Strawberry_smoothie', 4, LOAD_FILE('D:/Overcooked_Project/images/Strawberry_smoothie.png')),
	(34, 'Banana_smoothie', 4, LOAD_FILE('D:/Overcooked_Project/images/Banana_smoothie.png')),
	(35, 'Pineapple_and_banana_smoothie', 4, LOAD_FILE('D:/Overcooked_Project/images/Pineapple_and_banana_smoothie.png'));

CREATE TABLE Order_dish (
  Order_ID INT NOT NULL,
  Dish_ID INT NOT NULL,
  Order_Quantity INT NOT NULL,
  FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID) ON DELETE CASCADE
);

CREATE TABLE Recipe (
  Recipe_ID INT NOT NULL PRIMARY KEY,
  Dish_ID INT NOT NULL,
  Ingredient_ID INT NOT NULL,
  Recipe_Portion DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (Dish_ID) REFERENCES Menu(Dish_ID)
);
INSERT INTO Recipe (Recipe_ID, Dish_ID, Ingredient_ID, Recipe_Portion) VALUES
	(1, 1, 1, 2),
	(2, 2, 1, 1),
	(3, 2, 2, 0.5),
	(4, 3, 1, 1),
	(5, 3, 2, 0.5),
	(6, 3, 3, 0.5),
	(7, 4, 4, 1),
	(8, 5, 4, 1),
	(9, 5, 6, 0.5),
	(10, 5, 7, 1),
	(11, 6, 5, 1),
	(12, 7, 4, 0.5),
	(13, 7, 3, 0.5),
	(14, 7, 6, 0.5),
	(15, 7, 7, 1),
	(16, 8, 8, 2),
	(17, 8, 9, 2),
	(18, 8, 10, 2),
	(19, 9, 2, 3),
	(20, 9, 11, 1),
	(21, 10, 12, 3),
	(22, 10, 11, 1),
	(23, 11, 4, 1.5),
	(24, 11, 5, 1.5),
	(25, 11, 11, 1),
	(26, 12, 13, 4),
	(27, 12, 11, 1),
	(28, 13, 12, 2),
	(29, 13, 14, 0.5),
	(30, 14, 9, 2),
	(31, 14, 14, 0.5),
	(32, 15, 5, 2),
	(33, 15, 14, 0.5),
	(34, 16, 12, 3),
	(35, 16, 15, 1),
	(36, 17, 12, 3),
	(37, 17, 15, 1),
	(38, 17, 16, 0.5),
	(39, 18, 12, 3),
	(40, 18, 15, 1),
	(41, 18, 16, 0.5),
	(42, 18, 1, 0.2),
	(43, 19, 12, 3),
	(44, 19, 15, 1),
	(45, 19, 1, 0.2),
	(46, 19, 2, 0.2),
	(47, 20, 15, 1),
	(48, 20, 12, 6),
	(49, 20, 17, 1),
	(50, 21, 6, 0.5),
	(51, 21, 18, 1),
	(52, 21, 12, 1),
	(53, 22, 6, 0.5),
	(54, 22, 18, 1),
	(55, 22, 19, 1),
	(56, 23, 6, 0.5),
	(57, 23, 18, 1),
	(58, 23, 13, 2),
	(59, 24, 10, 2),
	(60, 25, 19, 3),
	(61, 26, 10, 2),
	(62, 26, 19, 3),
	(63, 27, 9, 3),
	(64, 27, 10, 3),
	(65, 27, 19, 5),
	(66, 28, 14, 0.2),
	(67, 28, 21, 1),
	(68, 29, 14, 0.2),
	(69, 29, 21, 1),
	(70, 29, 20, 0.2),
	(71, 30, 14, 0.2),
	(72, 30, 21, 1),
	(73, 30, 22, 1),
	(74, 31, 14, 0.2),
	(75, 31, 21, 1),
	(76, 31, 23, 0.5),
	(77, 32, 14, 0.2),
	(78, 32, 21, 1),
	(79, 32, 20, 0.2),
	(80, 33, 22, 6),
	(81, 34, 24, 6),
	(82, 35, 17, 2),
	(83, 35, 24, 4);

CREATE TABLE Ingredient_Unit (
  Ingredient_ID INT NOT NULL PRIMARY KEY,
  Ingredient_Name VARCHAR(45) NOT NULL,
  Ingredient_Unit VARCHAR(45) NOT NULL
);
INSERT INTO Ingredient_Unit (Ingredient_ID, Ingredient_Name, Ingredient_Unit) VALUES
	(1, 'Lettuce', '50g'),
	(2, 'Tomato', '100g'),
	(3, 'Cucumber', '100g'),
	(4, 'Fish', '100g'),
	(5, 'Shrimp', '100g'),
	(6, 'Rice', '300g'),
	(7, 'Seaweed', '1 sheet'),
	(8, 'Onion', '100g'),
	(9, 'Carrot', '100g'),
	(10, 'Potato', '100g'),
	(11, 'Pasta', '300g'),
	(12, 'Beef', '100g'),
	(13, 'Mushroom', '50g'),
	(14, 'Flour', '500g'),
	(15, 'Bun', '1 piece'),
	(16, 'Cheese', '50g'),
	(17, 'Pineapple', '100g'),
	(18, 'Tortilla', '1 sheet'),
	(19, 'Chicken', '100g'),
	(20, 'Chocolate', '100g'),
	(21, 'Egg', '1 piece'),
	(22, 'Strawberry', '50g'),
	(23, 'Honey', '50g'),
	(24, 'Banana', '50g');
    
CREATE TABLE Inventory (
  Ingredient_ID INT NOT NULL,
  Inventory_Portion DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (Ingredient_ID) REFERENCES Ingredient_Unit(Ingredient_ID)
);
INSERT INTO Inventory (Ingredient_ID, Inventory_Portion) VALUES
	(1, 1000),
	(2, 1000),
	(3, 1000),
	(4, 1000),
	(5, 1000),
	(6, 1000),
	(7, 1000),
	(8, 1000),
	(9, 1000),
	(10, 1000),
	(11, 1000),
	(12, 1000),
	(13, 1000),
	(14, 1000),
	(15, 1000),
	(16, 1000),
	(17, 1000),
	(18, 1000),
	(19, 1000),
	(20, 1000),
	(21, 1000),
	(22, 1000),
	(23, 1000),
	(24, 1000);

CREATE TABLE Procurement (
  Procurement_Order_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Procurement_Price DECIMAL(10, 2) NOT NULL,
  Procurement_Date DATE NOT NULL
);

CREATE TABLE Ingredient_Price (
  Ingredient_ID INT NOT NULL,
  Ingredient_Price_p_Unit DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (Ingredient_ID) REFERENCES Ingredient_Unit(Ingredient_ID)
);
INSERT INTO Ingredient_Price (Ingredient_ID, Ingredient_Price_p_Unit) VALUES
	(1, 0.09),
	(2, 0.23),
	(3, 0.18),
	(4, 1.5),
	(5, 1.4),
	(6, 0.4),
	(7, 0.2),
	(8, 0.1),
	(9, 0.1),
	(10, 0.1),
	(11, 0.15),
	(12, 1),
	(13, 0.25),
	(14, 0.35),
	(15, 0.1),
	(16, 0.3),
	(17, 0.15),
	(18, 0.05),
	(19, 0.6),
	(20, 0.6),
	(21, 0.15),
	(22, 0.2),
	(23, 0.3),
	(24, 0.15);

CREATE TABLE Procurement_Order (
  Procurement_Order_ID INT NOT NULL,
  Ingredient_ID INT NOT NULL,
  Procurement_Order_Portion DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (Procurement_Order_ID) REFERENCES Procurement(Procurement_Order_ID) ON DELETE CASCADE,
  FOREIGN KEY (Ingredient_ID) REFERENCES Ingredient_Unit(Ingredient_ID)
);
ALTER TABLE Procurement ADD Processed BIT(1) DEFAULT 0;



-- Stored procedure - Process Order

DELIMITER //

CREATE PROCEDURE ProcessOrder(
    IN dishIDs VARCHAR(255),  -- Comma-separated list of dish IDs
    IN quantities VARCHAR(255)  -- Comma-separated list of quantities
)
BEGIN
    DECLARE OrderID INT;
    DECLARE ProcurementOrderID INT;
    
	-- Trim leading and trailing spaces from input strings
    SET dishIDs = TRIM(dishIDs);
    SET quantities = TRIM(quantities);
    
     -- Check if input parameters are not empty
    IF LENGTH(dishIDs) = 0 OR LENGTH(quantities) = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Hello? You Need to Order Something!';
    END IF;

    -- Step 1: Insert Order Details and Generate Order ID
    
    INSERT INTO Orders (Order_Date, Order_Time) VALUES (CURDATE(), CURTIME());
    SET @OrderID = LAST_INSERT_ID();

	-- Step 2: Insert Order Details into Order_dish
	-- Split the comma-separated strings into arrays
	SET @dishIDsArray = CONCAT('["', REPLACE(dishIDs, ',', '","'), '"]');
	SET @quantitiesArray = CONCAT('["', REPLACE(quantities, ',', '","'), '"]');

	-- Get the number of elements in the arrays
	SET @arrayLength = JSON_LENGTH(@dishIDsArray);

	-- Loop through the arrays and insert values into Order_dish table
	SET @i = 0;
	WHILE @i < @arrayLength DO
		SET @DishID = CAST(JSON_EXTRACT(@dishIDsArray, CONCAT('$[', @i, ']'))AS UNSIGNED);
		SET @Quantity = CAST(JSON_EXTRACT(@quantitiesArray, CONCAT('$[', @i, ']')) AS UNSIGNED);
		
		-- Insert into Order_dish table
		INSERT INTO Order_dish (Order_ID, Dish_ID, Order_Quantity)
		VALUES (@OrderID, @DishID, @Quantity);
		
		SET @i = @i + 1;
	END WHILE;

    -- Step 3: Calculate Total Price for the Order
    INSERT INTO Cashier (Order_ID, Order_Total_Price, Order_Total_Paid) 
    VALUES (@OrderID, 
            (SELECT SUM(m.Dish_Price * od.Order_Quantity) 
             FROM Menu m JOIN Order_dish od ON m.Dish_ID = od.Dish_ID 
             WHERE od.Order_ID = @OrderID), 
            NULL);

    -- Step 4: Update Inventory
    UPDATE Inventory i
    JOIN (
        SELECT r.Ingredient_ID, SUM(r.Recipe_Portion * od.Order_Quantity) AS UsedPortion
        FROM Recipe r
        JOIN Order_dish od ON r.Dish_ID = od.Dish_ID
        WHERE od.Order_ID = @OrderID
        GROUP BY r.Ingredient_ID
    ) AS UsedIngredients ON i.Ingredient_ID = UsedIngredients.Ingredient_ID
    SET i.Inventory_Portion = i.Inventory_Portion - UsedIngredients.UsedPortion;

    -- Step 5: Check Inventory and Generate Procurement Orders if Needed
		IF (SELECT COUNT(*) FROM Inventory WHERE Inventory_Portion < 100) > 0 THEN
	-- Calculate the total procurement price
        INSERT INTO Procurement (Procurement_Price, Procurement_Date)
        SELECT SUM(ip.Ingredient_Price_p_Unit * (1000 - i.Inventory_Portion)), CURDATE()
        FROM Inventory i
        JOIN Ingredient_Price ip ON i.Ingredient_ID = ip.Ingredient_ID
        WHERE i.Inventory_Portion < 100;

        SET @ProcurementOrderID = LAST_INSERT_ID();

        -- Insert into Procurement_Order table
        INSERT INTO Procurement_Order (Procurement_Order_ID, Ingredient_ID, Procurement_Order_Portion)
        SELECT @ProcurementOrderID, i.Ingredient_ID, (1000 - i.Inventory_Portion)
        FROM Inventory i
        WHERE i.Inventory_Portion < 100;
    END IF;

END //
DELIMITER ;



-- Stored Procedure - Client Receipt

DELIMITER //

CREATE PROCEDURE GenerateClientReceipt(
    IN orderID INT
)
BEGIN
    -- Receipt headline
    SELECT 
        O.Order_ID,
        O.Order_Date,
        O.Order_Time,
        C.Order_Total_Price
    FROM 
        Orders O
    LEFT JOIN 
        Cashier C ON O.Order_ID = C.Order_ID
    WHERE
        O.Order_ID = orderID;

    -- Receipt detail
    SELECT 
        M.Dish_Name,
        M.Dish_Price,
        OD.Order_Quantity
    FROM 
        Order_dish OD
    INNER JOIN 
        Menu M ON OD.Dish_ID = M.Dish_ID
    WHERE
        OD.Order_ID = orderID;
END //

DELIMITER ;


-- Stored Procedure - Client make payment

DELIMITER //

CREATE PROCEDURE ClientPays(
	IN order_num INT,
	IN client_paid DECIMAL(10, 2))
BEGIN
    -- Check if the order ID exists in the Orders table
    IF (SELECT count(*) FROM Orders o WHERE o.Order_ID = order_num)>0 THEN
        -- Check if the order ID exists in the Cashier table
        IF (SELECT count(*) FROM Cashier c WHERE c.order_ID = order_num)>0 THEN
            -- Check if the client payment is sufficient
            IF client_paid >= (SELECT order_total_price FROM Cashier c WHERE c.order_ID = order_num) THEN
                -- Update the payment details in the Cashier table
                UPDATE Cashier c SET c.order_total_paid = client_paid WHERE c.order_ID = order_num;
            ELSE
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Please pay the full price, no discount in this restaurant!';
            END IF;
        ELSE
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Oops! Something wrong with the cashiering system..';
        END IF;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The Order ID does not exist anywhere.';
    END IF;
END //

DELIMITER ;



-- stored procedure - Process Procurement

DELIMITER //
CREATE PROCEDURE ProcessProcurement(
    IN Procurement_Order_Done INT)
BEGIN
    -- Check if the Procurement order ID exists
    IF (
        SELECT COUNT(*)
        FROM Procurement_order po
        WHERE po.Procurement_order_id = Procurement_Order_Done
    ) > 0 THEN
        -- Restore the inventory
        UPDATE Inventory i
        SET i.inventory_portion = 1000
        WHERE i.ingredient_id IN (
            SELECT po.ingredient_id
            FROM Procurement_order po
            WHERE po.Procurement_order_id = Procurement_Order_Done
        );
        -- Mark as processed on procurement]
        UPDATE Procurement p
        SET p.processed = 1
        WHERE p.Procurement_order_id = Procurement_Order_Done;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Procurement Order ID does not exist';
    END IF;
    SELECT * FROM inventory NATURAL JOIN ingredient_unit;
END //

DELIMITER ;

-- stored procedure - Manual order full inventory restore 

DELIMITER //

CREATE PROCEDURE CreateFullInventoryRestorationOrder()
BEGIN
    DECLARE TotalPrice DECIMAL(10, 2);
    DECLARE ProcurementOrderID INT;
    
    -- Calculate the total procurement price for restoring all ingredients to 1000 portions
    SET TotalPrice = (
        SELECT SUM(ip.Ingredient_Price_p_Unit * (1000 - i.Inventory_Portion))
        FROM Inventory i 
        JOIN Ingredient_Price ip ON i.Ingredient_ID = ip.Ingredient_ID
        WHERE i.Inventory_Portion < 1000
    );
    
    -- Insert into Procurement table
    INSERT INTO Procurement (Procurement_Price, Procurement_Date)
    VALUES (TotalPrice, CURDATE());
    
    SET @ProcurementOrderID = LAST_INSERT_ID();
    
    -- Insert into Procurement_Order table for all ingredients
    INSERT INTO Procurement_Order (Procurement_Order_ID, Ingredient_ID, Procurement_Order_Portion)
    SELECT @ProcurementOrderID, i.Ingredient_ID, (1000 - i.Inventory_Portion)
    FROM Inventory i
    WHERE Inventory_Portion < 1000;
    
    SELECT * FROM procurement p WHERE p.Procurement_order_id=@ProcurementOrderID;
    Select * FROM procurement_order po WHERE po.Procurement_order_id=@ProcurementOrderID;
END //

DELIMITER ;


-- stored procedure - search recipe
DELIMITER //

CREATE PROCEDURE SearchRecipe(
	IN Insert_Dish_ID INT)
BEGIN 
	IF (SELECT count(*) FROM recipe r WHERE r.dish_id = Insert_Dish_ID)>0 THEN
		SELECT m.dish_name, m.dish_image, iu.ingredient_name, r.recipe_portion, iu.ingredient_unit 
		FROM recipe r NATURAL JOIN menu m NATURAL JOIN ingredient_unit iu
		WHERE r.dish_id = Insert_Dish_ID;
	 ELSE
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sorry! We do not have this dish!';
	END IF;
END //
DELIMITER ;

-- View - Store performance - Restaurant Ledger
CREATE VIEW RestaurantLedger AS
SELECT 
    O.Order_ID,
    O.Order_Date,
    O.Order_Time,
    C.Order_Total_Price AS Total_Due,
    C.Order_Total_Paid AS Total_Paid,
    (C.Order_Total_Paid - C.Order_Total_Price) AS Tips,
    IFNULL((
        SELECT (SUM(r.Recipe_Portion * od.Order_Quantity * ip.Ingredient_Price_p_Unit))
        FROM Menu m
        JOIN Order_dish od ON m.Dish_ID = od.Dish_ID
        JOIN Recipe r ON m.Dish_ID = r.Dish_ID
        JOIN Ingredient_Price ip ON r.Ingredient_ID = ip.Ingredient_ID
        WHERE od.Order_ID = O.Order_ID
    ), 0) AS Capital_Spending,
    IFNULL((
        C.Order_Total_Paid  - (
            SELECT (SUM(r.Recipe_Portion * od.Order_Quantity * ip.Ingredient_Price_p_Unit))
            FROM Menu m
            JOIN Order_dish od ON m.Dish_ID = od.Dish_ID
            JOIN Recipe r ON m.Dish_ID = r.Dish_ID
            JOIN Ingredient_Price ip ON r.Ingredient_ID = ip.Ingredient_ID
            WHERE od.Order_ID = O.Order_ID
        )
    ), 0) AS Profit
FROM 
    Orders O
LEFT JOIN 
    Cashier C ON O.Order_ID = C.Order_ID;


-- Stored Function - Calculate Daily Profit

DELIMITER //

CREATE FUNCTION CalculateDailyProfit(Insert_Date DATE)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_revenue DECIMAL(10, 2);
    DECLARE total_expenses DECIMAL(10, 2);
    DECLARE daily_profit DECIMAL(10, 2);

    -- Calculate total revenue
    SELECT SUM(Order_Total_Paid)
    INTO total_revenue
    FROM Cashier c 
    NATURAL JOIN orders o
    WHERE DATE(o.Order_Date) = Insert_Date;

    -- Calculate total expenses
    SELECT COALESCE(SUM(r.Recipe_Portion * od.Order_Quantity * ip.Ingredient_Price_p_Unit), 0)
    INTO total_expenses
    FROM Orders o
    LEFT JOIN Order_dish od ON o.Order_ID = od.Order_ID
    LEFT JOIN Recipe r ON od.Dish_ID = r.Dish_ID
    LEFT JOIN Ingredient_Price ip ON r.Ingredient_ID = ip.Ingredient_ID
    WHERE DATE(o.Order_Date) = Insert_Date;

    -- Calculate daily profit
    SET daily_profit = total_revenue - total_expenses;

    -- Return the result
    RETURN daily_profit;
END //

DELIMITER ;

-- Stored Function - Calculate Daily Tips

DELIMITER //

CREATE FUNCTION CalculateDailyTips(Insert_Date DATE)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
	DECLARE TotalTips DECIMAL(10, 2);
    SELECT SUM(c.order_total_paid - c.order_total_price) INTO TotalTips
    FROM orders o 
    NATURAL JOIN cashier c
    WHERE o.order_date = Insert_Date;
    
    RETURN TotalTips;
END //

DELIMITER ;


-- View - Everthing you can know about the dishes - Oversharing Menu
CREATE VIEW OversharingMenu AS
SELECT m.dish_id, m.dish_name, m.dish_price, m.dish_image, iu.ingredient_name, r.recipe_portion, iu.ingredient_unit, ip.Ingredient_Price_p_Unit, i.inventory_portion
FROM menu m NATURAL JOIN recipe r NATURAL JOIN ingredient_unit iu NATURAL JOIN ingredient_price ip NATURAL JOIN inventory i 
ORDER BY m.dish_id; 

