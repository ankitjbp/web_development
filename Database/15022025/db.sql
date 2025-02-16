-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: online_class
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `id` int(2) DEFAULT NULL,
  `time_of_class` varchar(50) DEFAULT NULL,
  `display` varchar(1) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `subject_id` int(2) DEFAULT NULL,
  `student_id` int(4) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

create table class
(
id integer(3), 
time_of_class varchar(40),
display varchar(1),
create_date datetime,
subject_id int(2),
student_id int(4)
);
insert into subject(id,name, sub_name,create_date) values (2,'Database','2025-01-22 08:15:00');
insert into class values (1,'7:30 AM','Y','2025-01-22 08:00:00''2','1'); 


--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'07:30 AM','Y','2025-02-11 08:17:43',2,1,40),(2,'07:30 AM','Y','2025-02-11 08:18:33',2,2,34),(3,'07:30 AM','Y','2025-02-11 08:18:46',2,3,43),(4,'07:30 AM','Y','2025-02-11 08:18:54',2,4,15),(5,'07:30 AM','Y','2025-02-11 08:19:04',2,5,15);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(3) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `stream` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

CREATE TABLE student (
 id int(3),
  name varchar(100),
  email varchar(100),
  age int(2),
  stream varchar(50),
  address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (id);

INSERT INTO student VALUES (1,'Dwarika',NULL,40,'professional',NULL),(2,'Rahul','rahul@gmail.com',34,'professional','civil line'),(3,'Naveen Pandey','naveen@gmail.com',43,'professional','Rampur'),(4,'Mohit','mohit@gmail.com',15,'student','South Civil Lines'),(5,'Anusha','anusha@test.com',15,'Student','Civil Lines');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;




--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Dwarika',NULL,40,'professional',NULL),(2,'Rahul','rahul@gmail.com',34,'professional','civil line'),(3,'Naveen Pandey','naveen@gmail.com',43,'professional','Rampur'),(4,'Mohit','mohit@gmail.com',15,'student','South Civil Lines'),(5,'Anusha','anusha@test.com',15,'Student','Civil Lines');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `id` int(3) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `display` varchar(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

CREATE TABLE subject (
  id int(3),
  name varchar(40),
  display varchar(1),
  create_date datetime,
  PRIMARY KEY (id));

INSERT INTO subject VALUES (1,'JavaScript','Y','2025-01-22 08:00:00'),(2,'Database',NULL,'2025-01-22 08:15:00'),(3,'jQuery','N',NULL);


--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'JavaScript','Y','2025-01-22 08:00:00'),(2,'Database',NULL,'2025-01-22 08:15:00'),(3,'jQuery','N',NULL);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-15  8:32:17
