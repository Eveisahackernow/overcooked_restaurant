-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: overcooked_restaurant
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cashier`
--

DROP TABLE IF EXISTS `cashier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cashier` (
  `Order_ID` int NOT NULL,
  `Order_Total_Price` decimal(10,2) NOT NULL,
  `Order_Total_Paid` decimal(10,2) DEFAULT NULL,
  KEY `Order_ID` (`Order_ID`),
  CONSTRAINT `cashier_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashier`
--

LOCK TABLES `cashier` WRITE;
/*!40000 ALTER TABLE `cashier` DISABLE KEYS */;
INSERT INTO `cashier` VALUES (1,61.00,65.00),(2,111.00,150.50);
/*!40000 ALTER TABLE `cashier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_price`
--

DROP TABLE IF EXISTS `ingredient_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient_price` (
  `Ingredient_ID` int NOT NULL,
  `Ingredient_Price_p_Unit` decimal(10,2) NOT NULL,
  KEY `Ingredient_ID` (`Ingredient_ID`),
  CONSTRAINT `ingredient_price_ibfk_1` FOREIGN KEY (`Ingredient_ID`) REFERENCES `ingredient_unit` (`Ingredient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_price`
--

LOCK TABLES `ingredient_price` WRITE;
/*!40000 ALTER TABLE `ingredient_price` DISABLE KEYS */;
INSERT INTO `ingredient_price` VALUES (1,0.09),(2,0.23),(3,0.18),(4,1.50),(5,1.40),(6,0.40),(7,0.20),(8,0.10),(9,0.10),(10,0.10),(11,0.15),(12,1.00),(13,0.25),(14,0.35),(15,0.10),(16,0.30),(17,0.15),(18,0.05),(19,0.60),(20,0.60),(21,0.15),(22,0.20),(23,0.30),(24,0.15);
/*!40000 ALTER TABLE `ingredient_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_unit`
--

DROP TABLE IF EXISTS `ingredient_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient_unit` (
  `Ingredient_ID` int NOT NULL,
  `Ingredient_Name` varchar(45) NOT NULL,
  `Ingredient_Unit` varchar(45) NOT NULL,
  PRIMARY KEY (`Ingredient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_unit`
--

LOCK TABLES `ingredient_unit` WRITE;
/*!40000 ALTER TABLE `ingredient_unit` DISABLE KEYS */;
INSERT INTO `ingredient_unit` VALUES (1,'Lettuce','50g'),(2,'Tomato','100g'),(3,'Cucumber','100g'),(4,'Fish','100g'),(5,'Shrimp','100g'),(6,'Rice','300g'),(7,'Seaweed','1 sheet'),(8,'Onion','100g'),(9,'Carrot','100g'),(10,'Potato','100g'),(11,'Pasta','300g'),(12,'Beef','100g'),(13,'Mushroom','50g'),(14,'Flour','500g'),(15,'Bun','1 piece'),(16,'Cheese','50g'),(17,'Pineapple','100g'),(18,'Tortilla','1 sheet'),(19,'Chicken','100g'),(20,'Chocolate','100g'),(21,'Egg','1 piece'),(22,'Strawberry','50g'),(23,'Honey','50g'),(24,'Banana','50g');
/*!40000 ALTER TABLE `ingredient_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `Ingredient_ID` int NOT NULL,
  `Inventory_Portion` decimal(10,2) NOT NULL,
  KEY `Ingredient_ID` (`Ingredient_ID`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`Ingredient_ID`) REFERENCES `ingredient_unit` (`Ingredient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1000.00),(2,1000.00),(3,1000.00),(4,1000.00),(5,1000.00),(6,1000.00),(7,1000.00),(8,1000.00),(9,1000.00),(10,1000.00),(11,1000.00),(12,1000.00),(13,1000.00),(14,1000.00),(15,1000.00),(16,1000.00),(17,1000.00),(18,1000.00),(19,1000.00),(20,1000.00),(21,1000.00),(22,1000.00),(23,1000.00),(24,1000.00);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `Dish_ID` int NOT NULL,
  `Dish_Name` varchar(100) NOT NULL,
  `Dish_Price` decimal(10,2) NOT NULL,
  `Dish_Image` blob,
  PRIMARY KEY (`Dish_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Lettuce_salad',3.00,NULL),(2,'Lettuce_and_tomato_salad',5.00,NULL),(3,'Lettuce_tomato_and_cucumber_salad',6.00,NULL),(4,'Fish_sashimi',8.00,NULL),(5,'Fish_sushi',10.00,NULL),(6,'Shrimp_sashimi',10.00,NULL),(7,'Assorted_sushi',13.00,NULL),(8,'Onion_potato_and_carrot_soup',5.00,NULL),(9,'Tomato_pasta',8.00,NULL),(10,'Beef_pasta',10.00,NULL),(11,'Seafood_pasta',12.00,NULL),(12,'Mushroom_pasta',9.00,NULL),(13,'Beef_dumplings',8.00,NULL),(14,'Carrot_dumplings',6.00,NULL),(15,'Shrimp_dumplings',9.00,NULL),(16,'Basic_burger',7.00,NULL),(17,'Cheeseburger',9.00,NULL),(18,'Cheeseburger_with_lettuce',10.00,NULL),(19,'Complete_burger',10.00,NULL),(20,'Double_patty_with_pineapple_burger',13.00,NULL),(21,'Beef_burrito',10.00,NULL),(22,'Chicken_burrito',10.00,NULL),(23,'Mushroom_burrito',8.00,NULL),(24,'Fries',4.00,NULL),(25,'Fried_chicken',8.00,NULL),(26,'Fried_chicken_with_fries',10.00,NULL),(27,'Roasted_chicken_with_potato_and_carrot',15.00,NULL),(28,'Basic_pancake',7.00,NULL),(29,'Chocolate_pancake',9.00,NULL),(30,'Strawberry_pancake',9.00,NULL),(31,'Honey_donut',6.00,NULL),(32,'Chocolate_donut',7.00,NULL),(33,'Strawberry_smoothie',4.00,NULL),(34,'Banana_smoothie',4.00,NULL),(35,'Pineapple_and_banana_smoothie',4.00,NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_dish`
--

DROP TABLE IF EXISTS `order_dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_dish` (
  `Order_ID` int NOT NULL,
  `Dish_ID` int NOT NULL,
  `Order_Quantity` int NOT NULL,
  KEY `Order_ID` (`Order_ID`),
  CONSTRAINT `order_dish_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_dish`
--

LOCK TABLES `order_dish` WRITE;
/*!40000 ALTER TABLE `order_dish` DISABLE KEYS */;
INSERT INTO `order_dish` VALUES (1,15,2),(1,20,1),(1,22,3),(2,12,2),(2,15,3),(2,26,3),(2,30,4);
/*!40000 ALTER TABLE `order_dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `Order_Date` date NOT NULL,
  `Order_Time` time NOT NULL,
  PRIMARY KEY (`Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2024-03-30','21:47:30'),(2,'2024-03-31','03:36:20');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `oversharingmenu`
--

DROP TABLE IF EXISTS `oversharingmenu`;
/*!50001 DROP VIEW IF EXISTS `oversharingmenu`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `oversharingmenu` AS SELECT 
 1 AS `dish_id`,
 1 AS `dish_name`,
 1 AS `dish_price`,
 1 AS `dish_image`,
 1 AS `ingredient_name`,
 1 AS `recipe_portion`,
 1 AS `ingredient_unit`,
 1 AS `Ingredient_Price_p_Unit`,
 1 AS `inventory_portion`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `procurement`
--

DROP TABLE IF EXISTS `procurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procurement` (
  `Procurement_Order_ID` int NOT NULL AUTO_INCREMENT,
  `Procurement_Price` decimal(10,2) NOT NULL,
  `Procurement_Date` date NOT NULL,
  `Processed` bit(1) DEFAULT b'0',
  PRIMARY KEY (`Procurement_Order_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement`
--

LOCK TABLES `procurement` WRITE;
/*!40000 ALTER TABLE `procurement` DISABLE KEYS */;
INSERT INTO `procurement` VALUES (1,14.75,'2024-03-30',_binary ''),(5,18.91,'2024-03-31',_binary '');
/*!40000 ALTER TABLE `procurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procurement_order`
--

DROP TABLE IF EXISTS `procurement_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procurement_order` (
  `Procurement_Order_ID` int NOT NULL,
  `Ingredient_ID` int NOT NULL,
  `Procurement_Order_Portion` decimal(10,2) NOT NULL,
  KEY `Procurement_Order_ID` (`Procurement_Order_ID`),
  KEY `Ingredient_ID` (`Ingredient_ID`),
  CONSTRAINT `procurement_order_ibfk_1` FOREIGN KEY (`Procurement_Order_ID`) REFERENCES `procurement` (`Procurement_Order_ID`) ON DELETE CASCADE,
  CONSTRAINT `procurement_order_ibfk_2` FOREIGN KEY (`Ingredient_ID`) REFERENCES `ingredient_unit` (`Ingredient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement_order`
--

LOCK TABLES `procurement_order` WRITE;
/*!40000 ALTER TABLE `procurement_order` DISABLE KEYS */;
INSERT INTO `procurement_order` VALUES (1,5,4.00),(1,6,1.50),(1,12,6.00),(1,14,1.00),(1,15,1.00),(1,17,1.00),(1,18,3.00),(1,19,3.00),(5,5,6.00),(5,10,6.00),(5,11,2.00),(5,13,8.00),(5,14,2.30),(5,19,9.00),(5,21,4.00),(5,22,4.00);
/*!40000 ALTER TABLE `procurement_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `Recipe_ID` int NOT NULL,
  `Dish_ID` int NOT NULL,
  `Ingredient_ID` int NOT NULL,
  `Recipe_Portion` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Recipe_ID`),
  KEY `Dish_ID` (`Dish_ID`),
  CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`Dish_ID`) REFERENCES `menu` (`Dish_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,1,1,2.00),(2,2,1,1.00),(3,2,2,0.50),(4,3,1,1.00),(5,3,2,0.50),(6,3,3,0.50),(7,4,4,1.00),(8,5,4,1.00),(9,5,6,0.50),(10,5,7,1.00),(11,6,5,1.00),(12,7,4,0.50),(13,7,3,0.50),(14,7,6,0.50),(15,7,7,1.00),(16,8,8,2.00),(17,8,9,2.00),(18,8,10,2.00),(19,9,2,3.00),(20,9,11,1.00),(21,10,12,3.00),(22,10,11,1.00),(23,11,4,1.50),(24,11,5,1.50),(25,11,11,1.00),(26,12,13,4.00),(27,12,11,1.00),(28,13,12,2.00),(29,13,14,0.50),(30,14,9,2.00),(31,14,14,0.50),(32,15,5,2.00),(33,15,14,0.50),(34,16,12,3.00),(35,16,15,1.00),(36,17,12,3.00),(37,17,15,1.00),(38,17,16,0.50),(39,18,12,3.00),(40,18,15,1.00),(41,18,16,0.50),(42,18,1,0.20),(43,19,12,3.00),(44,19,15,1.00),(45,19,1,0.20),(46,19,2,0.20),(47,20,15,1.00),(48,20,12,6.00),(49,20,17,1.00),(50,21,6,0.50),(51,21,18,1.00),(52,21,12,1.00),(53,22,6,0.50),(54,22,18,1.00),(55,22,19,1.00),(56,23,6,0.50),(57,23,18,1.00),(58,23,13,2.00),(59,24,10,2.00),(60,25,19,3.00),(61,26,10,2.00),(62,26,19,3.00),(63,27,9,3.00),(64,27,10,3.00),(65,27,19,5.00),(66,28,14,0.20),(67,28,21,1.00),(68,29,14,0.20),(69,29,21,1.00),(70,29,20,0.20),(71,30,14,0.20),(72,30,21,1.00),(73,30,22,1.00),(74,31,14,0.20),(75,31,21,1.00),(76,31,23,0.50),(77,32,14,0.20),(78,32,21,1.00),(79,32,20,0.20),(80,33,22,6.00),(81,34,24,6.00),(82,35,17,2.00),(83,35,24,4.00);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `restaurantledger`
--

DROP TABLE IF EXISTS `restaurantledger`;
/*!50001 DROP VIEW IF EXISTS `restaurantledger`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `restaurantledger` AS SELECT 
 1 AS `Order_ID`,
 1 AS `Order_Date`,
 1 AS `Order_Time`,
 1 AS `Total_Due`,
 1 AS `Total_Paid`,
 1 AS `Tips`,
 1 AS `Capital_Spending`,
 1 AS `Profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'overcooked_restaurant'
--

--
-- Dumping routines for database 'overcooked_restaurant'
--
/*!50003 DROP FUNCTION IF EXISTS `CalculateDailyProfit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateDailyProfit`(Insert_Date DATE) RETURNS decimal(10,2)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CalculateDailyTips` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateDailyTips`(Insert_Date DATE) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
	DECLARE TotalTips DECIMAL(10, 2);
    SELECT SUM(c.order_total_paid - c.order_total_price) INTO TotalTips
    FROM orders o 
    NATURAL JOIN cashier c
    WHERE o.order_date = Insert_Date;
    
    RETURN TotalTips;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ClientPays` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ClientPays`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CreateFullInventoryRestorationOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateFullInventoryRestorationOrder`()
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GenerateClientReceipt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenerateClientReceipt`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProcessOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProcessOrder`(
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

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProcessProcurement` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProcessProcurement`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchRecipe` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchRecipe`(
	IN Insert_Dish_ID INT)
BEGIN 
	IF (SELECT count(*) FROM recipe r WHERE r.dish_id = Insert_Dish_ID)>0 THEN
		SELECT m.dish_name, m.dish_image, iu.ingredient_name, r.recipe_portion, iu.ingredient_unit 
		FROM recipe r NATURAL JOIN menu m NATURAL JOIN ingredient_unit iu
		WHERE r.dish_id = Insert_Dish_ID;
	 ELSE
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sorry! We do not have this dish!';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `oversharingmenu`
--

/*!50001 DROP VIEW IF EXISTS `oversharingmenu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `oversharingmenu` AS select `m`.`Dish_ID` AS `dish_id`,`m`.`Dish_Name` AS `dish_name`,`m`.`Dish_Price` AS `dish_price`,`m`.`Dish_Image` AS `dish_image`,`iu`.`Ingredient_Name` AS `ingredient_name`,`r`.`Recipe_Portion` AS `recipe_portion`,`iu`.`Ingredient_Unit` AS `ingredient_unit`,`ip`.`Ingredient_Price_p_Unit` AS `Ingredient_Price_p_Unit`,`i`.`Inventory_Portion` AS `inventory_portion` from ((((`menu` `m` join `recipe` `r` on((`m`.`Dish_ID` = `r`.`Dish_ID`))) join `ingredient_unit` `iu` on((`r`.`Ingredient_ID` = `iu`.`Ingredient_ID`))) join `ingredient_price` `ip` on((`r`.`Ingredient_ID` = `ip`.`Ingredient_ID`))) join `inventory` `i` on((`r`.`Ingredient_ID` = `i`.`Ingredient_ID`))) order by `m`.`Dish_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `restaurantledger`
--

/*!50001 DROP VIEW IF EXISTS `restaurantledger`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `restaurantledger` AS select `o`.`Order_ID` AS `Order_ID`,`o`.`Order_Date` AS `Order_Date`,`o`.`Order_Time` AS `Order_Time`,`c`.`Order_Total_Price` AS `Total_Due`,`c`.`Order_Total_Paid` AS `Total_Paid`,(`c`.`Order_Total_Paid` - `c`.`Order_Total_Price`) AS `Tips`,ifnull((select sum(((`r`.`Recipe_Portion` * `od`.`Order_Quantity`) * `ip`.`Ingredient_Price_p_Unit`)) from (((`menu` `m` join `order_dish` `od` on((`m`.`Dish_ID` = `od`.`Dish_ID`))) join `recipe` `r` on((`m`.`Dish_ID` = `r`.`Dish_ID`))) join `ingredient_price` `ip` on((`r`.`Ingredient_ID` = `ip`.`Ingredient_ID`))) where (`od`.`Order_ID` = `o`.`Order_ID`)),0) AS `Capital_Spending`,ifnull((`c`.`Order_Total_Paid` - (select sum(((`r`.`Recipe_Portion` * `od`.`Order_Quantity`) * `ip`.`Ingredient_Price_p_Unit`)) from (((`menu` `m` join `order_dish` `od` on((`m`.`Dish_ID` = `od`.`Dish_ID`))) join `recipe` `r` on((`m`.`Dish_ID` = `r`.`Dish_ID`))) join `ingredient_price` `ip` on((`r`.`Ingredient_ID` = `ip`.`Ingredient_ID`))) where (`od`.`Order_ID` = `o`.`Order_ID`))),0) AS `Profit` from (`orders` `o` left join `cashier` `c` on((`o`.`Order_ID` = `c`.`Order_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-31  4:30:49
