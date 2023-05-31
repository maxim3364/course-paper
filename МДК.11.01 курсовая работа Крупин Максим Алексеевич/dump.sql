-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: trcompany
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `weight` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Перевозка холодильников',320),(2,'Транспортировка машины ВАЗ-2106 «Жигули»',1465),(3,'Транспортировка мебели',6000),(4,'Доставка угля',9600000),(5,'Доставка грузовой машины ГАЗ-3301 «Газель»',7590),(6,'Доставка груза в «DG-metal»',10850525),(7,'Перевозка Шкафов',700),(8,'Доставка стогов сена',3200000),(9,'Перевозка металлоконструкций «ArbecoQ»',8750000),(10,'Транспортировка машины Audi «Q8»',2820),(11,'Перевозка груза «офисный переезд»',1200000),(12,'Транспортировка киоска  «mini»',5565),(13,'Перевозка снегохода Ski-Doo «Legend Touring V 800»',239),(14,'Доставка игровой системы Mouse Computer «LITTLEGEAR»',9),(15,'Доставка цементно-песчаной смеси',4250),(16,'Транспортировка машины LADA «Niva Legend»',1450);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courier`
--

DROP TABLE IF EXISTS `courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courier`
--

LOCK TABLES `courier` WRITE;
/*!40000 ALTER TABLE `courier` DISABLE KEYS */;
INSERT INTO `courier` VALUES (1,'Михаил','Ломоносов','88007000611'),(2,'Петр','Фильченко','89163467432'),(3,'Абдул','Муххамеди','89252354673');
/*!40000 ALTER TABLE `courier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `house` int DEFAULT NULL,
  `apartment` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Галина','Шевченко','89252252552','Тверь','Линейная',52,10),(2,'Максим','Миронов','89161073010','Саратов','Ульяновская',130,85),(3,'Яна','Губанова','89255674323','Тверь','пр. Победы',46,55),(4,'Степан','Сарайкин','84822200345','Тверь','Советская',27,NULL),(5,'Андрей','Игнатиев','89252456790','Москва','Тверская',2,89),(6,'Максим','Федоров','89255678943','Новосибирск','Грекова',20,NULL),(7,'Татьяна','Калинина','89252546783','Санкт-Петербург','Афанасьевская',38,2),(8,'Оксана','Шибалова','89253446790','Москва','Маршала Василевского',48,23),(9,'Дина','Потапова','84822200345','Тверь','Калинина',5,NULL),(10,'Андрей','Маланов','89608646543','Сочи','Пластунская',112,1),(11,'Пимен','Жиленков','89163456741','Воронеж','Хользунова',119,39),(12,'Вадим','Матвеев','89162648505','Тверь','Кима',8,NULL),(13,'Оксана','Захарович','84993463456','Москва','Говорова',14,22),(14,'Валерий','Литвин','84993456432','Москва','Тайнинская',12,31),(15,'Даниил','Кусков','89163456741','Тверь','Линейная',69,73),(16,'Светлана','Морович','89305673412','Воронеж','Стахова',12,1);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_list`
--

DROP TABLE IF EXISTS `delivery_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `courier_id` int NOT NULL,
  `transport_id` int NOT NULL,
  `delivery_point` varchar(255) DEFAULT NULL,
  `distance` int DEFAULT NULL,
  `date_arrived` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ЛистДоставки_Заказ1_idx` (`order_id`),
  KEY `fk_ЛистДоставки_Курьер1_idx` (`courier_id`),
  KEY `fk_ЛистДоставки_Транспорт1_idx` (`transport_id`),
  CONSTRAINT `fk_ЛистДоставки_Заказ1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `fk_ЛистДоставки_Курьер1` FOREIGN KEY (`courier_id`) REFERENCES `courier` (`id`),
  CONSTRAINT `fk_ЛистДоставки_Транспорт1` FOREIGN KEY (`transport_id`) REFERENCES `transport` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_list`
--

LOCK TABLES `delivery_list` WRITE;
/*!40000 ALTER TABLE `delivery_list` DISABLE KEYS */;
INSERT INTO `delivery_list` VALUES (1,1,1,7,'Тверь',19,'2023-02-20'),(2,2,1,2,'Самара',425,'2023-05-30'),(3,3,2,2,'Москва',180,'2023-05-11'),(4,4,1,3,'Тверь',25,'2023-02-22'),(5,5,3,1,'Рязань',204,'2022-02-13'),(6,6,2,5,'Омск',637,'2022-12-05'),(7,7,2,6,'Москва',708,'2021-12-17'),(8,8,3,5,'Брянск',393,'2023-03-12'),(9,9,2,5,'Тверь',8,'2022-07-25'),(10,10,2,1,'Москва',1627,'2022-04-20'),(11,11,2,3,'Воронеж',26,'2023-01-10'),(12,12,1,2,'Тверь',35,'2023-02-01'),(13,13,3,8,'Москва',42,'2022-10-28'),(14,14,3,7,'Санкт-Петербург',708,'2023-02-24'),(15,15,2,4,'Ржев',123,'2023-05-27'),(16,16,1,1,'Москва',180,'2023-01-15');
/*!40000 ALTER TABLE `delivery_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `income_for_30_days`
--

DROP TABLE IF EXISTS `income_for_30_days`;
/*!50001 DROP VIEW IF EXISTS `income_for_30_days`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `income_for_30_days` AS SELECT 
 1 AS `delivery_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `cargo_id` int NOT NULL,
  `date_get` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Заказ_Клиент1_idx` (`customer_id`),
  KEY `fk_orders_cargo1_idx` (`cargo_id`),
  CONSTRAINT `fk_orders_cargo1` FOREIGN KEY (`cargo_id`) REFERENCES `cargo` (`id`),
  CONSTRAINT `fk_Заказ_Клиент1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,2,'2023-02-05'),(2,2,1,'2023-05-15'),(3,3,3,'2023-05-01'),(4,4,4,'2023-02-15'),(5,5,5,'2022-01-23'),(6,6,6,'2022-11-04'),(7,7,7,'2021-12-04'),(8,8,8,'2023-02-18'),(9,9,9,'2022-07-12'),(10,10,10,'2022-03-21'),(11,11,11,'2023-01-05'),(12,12,12,'2023-01-24'),(13,13,13,'2022-10-13'),(14,14,14,'2023-02-10'),(15,15,15,'2023-05-11'),(16,9,16,'2022-12-26');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport` (
  `id` int NOT NULL AUTO_INCREMENT,
  `car_number` int DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `load_capacity` int DEFAULT NULL,
  `price_1km` int DEFAULT NULL,
  `start_price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport`
--

LOCK TABLES `transport` WRITE;
/*!40000 ALTER TABLE `transport` DISABLE KEYS */;
INSERT INTO `transport` VALUES (1,3302,'ГАЗель',1500000,115,300),(2,3045,'ГАЗель',3000000,100,300),(3,4189,'Foton',10060000,420,500),(4,1089,'Foton',5000,105,300),(5,2603,'Iveco',11000000,50,500),(6,3302,'ГАЗель',4950,25,300),(7,3221,'ГАЗель',645,20,300),(8,2705,'ГАЗель',1350,100,300);
/*!40000 ALTER TABLE `transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'trcompany'
--

--
-- Dumping routines for database 'trcompany'
--
/*!50003 DROP PROCEDURE IF EXISTS `create_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_customer`(
in eFirst_name varchar(255),
in eLast_name varchar(255),
in ePhone_number varchar(20),
in eCity varchar(255),
in eStreet varchar(255),
in eHouse int,
in eApartment int
)
BEGIN
insert into customers(
first_name,
last_name,
phone_number,
city,
street,
house,
apartment
)
values (
eFirst_name,
eLast_name,
ePhone_number,
eCity,
eStreet,
eHouse,
eApartment
);

select * from customers
order by id desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_new_delivery` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_new_delivery`(
in eIdСustomers int,
in eFirst_name varchar(255),
in eLast_name varchar(255),
in ePhone_number varchar(20),
in eCity varchar(255),
in eStreet varchar(255),
in eHouse int,
in eApartment int,
in eIdCargo int,
in eCargo_title varchar(255),
in eWeight int,
in eIdOrders int,
in eDate_get date,
in eCourier_id int,
in eTransport_id int,
in eDelivery_point varchar(255),
in eDistance int,
in eDate_arrived date
)
BEGIN
insert into customers(
id,
first_name,
last_name,
phone_number,
city,
street,
house,
apartment
)
values (
eIdСustomers,
eFirst_name,
eLast_name,
ePhone_number,
eCity,
eStreet,
eHouse,
eApartment
);

insert into cargo(
id,
title,
weight
)
values (
eIdCargo,
eCargo_title,
eWeight
);

insert into orders(
id,
customer_id,
cargo_id,
date_get
)
values (
eIdOrders,
eIdСustomers,
eIdCargo,
eDate_get
);

insert into delivery_list(
order_id,
courier_id,
transport_id,
delivery_point,
distance,
date_arrived
)
values (
eIdOrders,
eCourier_id,
eTransport_id,
eDelivery_point,
eDistance,
eDate_arrived
);

select
delivery_list.id,
customers.first_name as customer_name,
customers.last_name as customer_lastname,
customers.city as departure_city,
cargo.title as cargo,
cargo.weight,
orders.date_get,
courier.first_name as courier_name,
courier.last_name as courier_lastname,
transport.car_number,
delivery_point,
distance,
date_arrived
from delivery_list
inner join trcompany.transport
on delivery_list.transport_id = transport.id
inner join trcompany.orders
on delivery_list.order_id = orders.id
inner join trcompany.courier
on delivery_list.courier_id = courier.id
inner join trcompany.customers
on orders.customer_id = customers.id
inner join trcompany.cargo
on orders.cargo_id = cargo.id
order by id desc
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_transport_for_cargo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_transport_for_cargo`(in weight int)
BEGIN
select *
from transport
where 
load_capacity >= weight
order by load_capacity asc
limit 3; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `income_for_30_days`
--

/*!50001 DROP VIEW IF EXISTS `income_for_30_days`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `income_for_30_days` AS select sum(((`delivery_list`.`distance` * `transport`.`price_1km`) + `transport`.`start_price`)) AS `delivery_cost` from ((`delivery_list` join `transport` on((`delivery_list`.`transport_id` = `transport`.`id`))) join `orders` on((`delivery_list`.`order_id` = `orders`.`id`))) where (`orders`.`date_get` between (cast(curdate() as date) - 30) and cast(curdate() as date)) */;
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

-- Dump completed on 2023-05-27  3:53:55
