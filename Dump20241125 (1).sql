-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: studentgig
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `bit`
--

DROP TABLE IF EXISTS `bit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bit` (
  `bit_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `bit_status_id` int DEFAULT NULL,
  PRIMARY KEY (`bit_id`),
  KEY `student_id` (`student_id`),
  KEY `project_id` (`project_id`),
  KEY `bit_status_id` (`bit_status_id`),
  CONSTRAINT `bit_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `bit_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  CONSTRAINT `bit_ibfk_3` FOREIGN KEY (`bit_status_id`) REFERENCES `bitstatuses` (`bit_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit`
--

LOCK TABLES `bit` WRITE;
/*!40000 ALTER TABLE `bit` DISABLE KEYS */;
INSERT INTO `bit` VALUES (3,2,1,'2024-05-22 13:27:06',1),(7,7,2,'2024-05-23 11:27:51',1),(8,7,5,'2024-05-23 11:32:49',1),(10,15,4,'2024-05-24 05:10:24',NULL),(11,2,1,'2024-05-24 10:37:26',1),(12,2,1,'2024-05-28 06:32:16',NULL);
/*!40000 ALTER TABLE `bit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitstatuses`
--

DROP TABLE IF EXISTS `bitstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitstatuses` (
  `bit_status_id` int NOT NULL AUTO_INCREMENT,
  `bit_status_name` varchar(255) NOT NULL,
  PRIMARY KEY (`bit_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitstatuses`
--

LOCK TABLES `bitstatuses` WRITE;
/*!40000 ALTER TABLE `bitstatuses` DISABLE KEYS */;
INSERT INTO `bitstatuses` VALUES (1,'approved'),(2,'denied');
/*!40000 ALTER TABLE `bitstatuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Aptitude'),(2,'Verbal'),(3,'Domain');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colleges`
--

DROP TABLE IF EXISTS `colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colleges` (
  `college_id` int NOT NULL AUTO_INCREMENT,
  `college_name` varchar(255) NOT NULL,
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colleges`
--

LOCK TABLES `colleges` WRITE;
/*!40000 ALTER TABLE `colleges` DISABLE KEYS */;
INSERT INTO `colleges` VALUES (1,'KGCAS'),(2,'KITE');
/*!40000 ALTER TABLE `colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `college_id` int DEFAULT NULL,
  `years` int DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `college_id` (`college_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`college_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'B.Sc Computer Science',1,3),(2,'BCA',1,3),(3,'B.TECH Artificial Intelligence And Data Science',2,4),(4,'B.Com Accouting and Finance',1,3),(5,'B.Sc Visual Communication',1,3),(6,'B.Sc Mathematics',1,3),(7,'B.Sc Information Technology',1,3),(8,'B.Sc Computer Technology',1,3),(9,'B.Sc Electronics and Communication System',1,3),(10,'B.Sc Bio Technology',1,3),(11,'BA English Literature',1,3),(12,'B.COM',1,3),(13,'B.COM Computer Application',1,3),(14,'B.COM Information Technology',1,3),(15,'B.COM Professional Accounting',1,3),(16,'BBA',1,3),(17,'BBA Computer Application',1,3),(18,'BE Computer Science and Engineering',2,4),(19,'BE Electronics & Communication Engineering',2,4),(20,'BE Mechanical Engineering',2,4),(21,'B.TECH Computer Science And Business Systems',2,4),(22,'B.TECH Information Technology',2,4),(23,'B.E CSE (Cyber Sceurity)',2,4),(24,'B.E CSE (AI & ML)',2,4);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `createtest`
--

DROP TABLE IF EXISTS `createtest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `createtest` (
  `createtest_id` int NOT NULL AUTO_INCREMENT,
  `quiz_name` varchar(255) NOT NULL,
  `quiz_des` text,
  `category_id` int NOT NULL,
  `total_no_of_question` int DEFAULT NULL,
  `difficulty_level_id` int DEFAULT NULL,
  `easy_pass_mark` int DEFAULT NULL,
  `medium_pass_mark` int DEFAULT NULL,
  PRIMARY KEY (`createtest_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `createtest_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `createtest`
--

LOCK TABLES `createtest` WRITE;
/*!40000 ALTER TABLE `createtest` DISABLE KEYS */;
INSERT INTO `createtest` VALUES (1,'Quiz 1','Technical',3,10,2,4,3),(2,'Aptitiude Test Jun ','An aptitude test is an exam used to determine an individual\'s skill or propensity to succeed in a given activity',1,NULL,1,4,NULL),(3,'Communication Test Jun','assesses how effectively verbal and written messages are conveyed and interpreted in English.',2,12,3,3,4);
/*!40000 ALTER TABLE `createtest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `difficultylevels`
--

DROP TABLE IF EXISTS `difficultylevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `difficultylevels` (
  `level_id` int NOT NULL AUTO_INCREMENT,
  `level_name` varchar(50) NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `difficultylevels`
--

LOCK TABLES `difficultylevels` WRITE;
/*!40000 ALTER TABLE `difficultylevels` DISABLE KEYS */;
INSERT INTO `difficultylevels` VALUES (1,'Easy'),(2,'Medium'),(3,'Hard');
/*!40000 ALTER TABLE `difficultylevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `description` text,
  `stack` varchar(255) DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expiry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Plant Leaf Identification','Based on the plant we need to provide the leaf\'s medical usage.','3',2,'2024-05-22 05:54:07','2024-05-30 23:59:00'),(2,'E-Commerce ','The primary goal of an e-commerce site is to sell goods online. This project deals with developing an e-commerce website for Online Product Sales. It provides the user with a catalog of different products available for purchase in the store.2','1',2,'2024-05-22 05:56:14','2024-05-31 23:59:00'),(3,'Online Auction System','An online auction involves buying and selling goods or services, often through bidding. An auction website usually provides sellers a platform where buyers can post products they sell as sellers post the item(s), with buyers placing bids; after an auction, the highest bidder wins','2',1,'2024-05-22 05:56:57','2024-05-28 23:59:00'),(4,'Billing App','A billing system, meaning the process of invoicing and billing customers by using billing software, includes automating payment collection, issuing invoices automatically along with payment reminders and tracking, and many other tasks that can streamline the invoicing and payment process.','4',1,'2024-05-23 04:22:02','2024-05-31 23:59:00'),(5,'Blog Application','A blog, short for weblog, is a frequently updated web page used for personal commentary or business content. Blogs are often interactive and include sections at the bottom of individual blog posts where readers can leave comments.','1',1,'2024-05-23 04:57:21','2024-06-12 23:59:00');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question_text` text NOT NULL,
  `correct_answer` varchar(255) NOT NULL,
  `options` json NOT NULL,
  `difficulty_level_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `sub_category_id` int DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `difficulty_level_id` (`difficulty_level_id`),
  KEY `category_id` (`category_id`),
  KEY `questions_ibfk3_idx` (`sub_category_id`),
  CONSTRAINT `questions_ibfk3` FOREIGN KEY (`sub_category_id`) REFERENCES `subcategory` (`sub_category_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`difficulty_level_id`) REFERENCES `difficultylevels` (`level_id`),
  CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'What is 2 + 2?','4','[\"1\", \"2\", \"3\", \"4\"]',1,1,NULL),(2,'What is the capital of France?','Paris','[\"Berlin\", \"Madrid\", \"Paris\", \"Rome\"]',1,3,NULL),(3,'What is the chemical symbol for water?','H2O','[\"H2O\", \"CO2\", \"O2\", \"N2\"]',1,2,NULL),(4,'Solve the equation: 2x + 3 = 7.','2','[\"1\", \"2\", \"3\", \"4\"]',1,1,NULL),(5,'What is the powerhouse of the cell?','Mitochondria','[\"Nucleus\", \"Mitochondria\", \"Ribosome\", \"Chloroplast\"]',1,2,NULL),(6,'Who was the first president of the United States?','George Washington','[\"Abraham Lincoln\", \"Thomas Jefferson\", \"George Washington\", \"John Adams\"]',1,3,NULL),(7,'What is the derivative of x^2?','2x','[\"x\", \"2x\", \"x^2\", \"2\"]',1,1,NULL),(8,'What is the formula for photosynthesis?','6CO2 + 6H2O -> C6H12O6 + 6O2','[\"6CO2 + 6H2O -> C6H12O6 + 6O2\", \"C6H12O6 + 6O2 -> 6CO2 + 6H2O\", \"6O2 + 6H2O -> C6H12O6 + 6CO2\", \"C6H12O6 + 6O2 -> 6H2O + 6CO2\"]',1,2,NULL),(9,'In which year did World War II end?','1945','[\"1940\", \"1942\", \"1945\", \"1950\"]',1,3,NULL),(10,'Which animal is known as the \'Ship of the Desert','Camel','[\"Camel\", \"Horse\", \"Scorpio\", \"Tiger\"]',1,1,NULL),(11,'Which of the following are called Key Industrial animals','Primary Consumers','[\"Producers\", \"Tertiary consumers\", \"Primary Consumers\", \"None of these\"]',2,2,NULL),(12,'Which of the given amendments made it compulsory for the president to consent to the constitutional Amendment bills','24th','[\"24th\", \"27th\", \"26th\", \"23th\"]',2,2,NULL),(13,'Which of the following Himalayan regions is called Shivalik\'s','Outer Himalayas','[\"Upper Himalayas\", \"Outer Himalayas\", \"Lower Himalayas\", \"Inner Himalayas\"]',2,2,NULL),(14,'Forming of Association in India is','Fundamental Right','[\"Legal Right\", \"Illegal Right\", \"Natural Right\", \"Fundamental Right\"]',2,2,NULL),(15,'Which of the given devices is used for counting blood cells','Hemocytometer','[\"Hmelethometer\", \"Spyscometer\", \"Hemocytometer\", \"Hamosytometer\"]',2,2,NULL),(16,'Which of the given compounds is used to make fireproof clothing','Aluminum Sulphate','[\"Aluminum Sulphate\", \"Aluminum chloride\", \"Magnesium Chloride\", \"Magnesium Sulphate\"]',2,2,NULL),(17,'Which of the given cities is located on the bank of river Ganga','Patna','[\"Patna\", \"Gwalior\", \"Bhopal\", \"Mathura\"]',2,2,NULL),(18,'The driving force of an ecosystem is ','Solar Energy','[\"Carbon Mono oxide\", \"Biogas\", \"Solar Energy\", \"Carbon dioxide\"]',2,2,NULL),(19,'Which of the given is a disease caused by protozoa','Malaria','[\"Cancer\", \"Typhoid\", \"Malaria\", \"Chicken Pox\"]',2,2,NULL),(20,'Digestion of food in human beings begins in which part of the alimentary canal','Mouth','[\"Liver\", \"Kidney\", \"Mouth\", \"Large intestine\"]',2,2,NULL),(21,'Which of the three banks will be merged with the other two to create India’s third-largest bank','Indian Bank','[\"Indian Bank\", \"Punjab National Bank\", \"Bank of Baroda\", \"Dena Bank\"]',1,3,NULL),(22,'What is the name of the weak zone of the earth’s crust','Seismic','[\"Seismic\", \"Cosmic\", \"Formic\", \"Anaemic\"]',1,3,NULL),(23,'Where was India’s first national Museum opened','Mumbai','[\"Delhi\", \"Mumbai\", \"Hyderabad\", \"Rajasthan\"]',1,3,NULL),(24,'In 2019, Which popular singer was awarded the Bharat Ratna award','Bhupen Hazarika','[\"Bhupen Hazarika\", \"Lata Mangeshkar\", \"Asha Bhosle\", \"Manna Dey\"]',1,3,NULL),(25,'The world’s nation 5G mobile network was launched by which country','South Korea','[\"South Korea\", \"Japan\", \"Asia\", \"Malaysia\"]',3,3,NULL),(26,' The green planet in the solar system is','Uranus','[\"Mars\", \"Uranus\", \"Venus\", \"Earth\"]',3,3,NULL),(27,'The largest public sector undertaking in the country is','Railways','[\"Railways\", \"Airways\", \"Roadways\", \"Iron and Steel Plants\"]',3,3,NULL),(28,'Why is the color of papaya yellow','Railways','[\"Lycopene\", \"Papain\", \"Carotene\", \"Caricaxanthin\"]',2,3,NULL),(29,'Press Council of India is a','The statutory quasi-judicial body','[\"Profitable organization\", \"The constitutional quasi-judicial body\", \"The statutory quasi-judicial body\", \"None of these.\"]',2,3,NULL),(30,'Musi is a tributary of which of the given rivers','Krishna','[\"Ganga\", \"Krishna\", \"Kaveri\", \"Chambal\"]',2,3,NULL),(31,'Which of the given Mughal emperors had introduced the Mansabdari system','Babar','[\"Shahjahan\", \"Babar\", \"Akbar\", \"Aurangzeb\"]',1,1,NULL),(37,'A person crosses a 600 m long street in 5 minutes. What is his speed in km per hour','7.2','[\"3.6\", \"7.2\", \"8.4\", \"10\"]',2,1,104);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizattempts`
--

DROP TABLE IF EXISTS `quizattempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizattempts` (
  `attempt_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `quiz_score` int NOT NULL,
  `quiz_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`attempt_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `quizattempts_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizattempts`
--

LOCK TABLES `quizattempts` WRITE;
/*!40000 ALTER TABLE `quizattempts` DISABLE KEYS */;
INSERT INTO `quizattempts` VALUES (1,1,7,'2024-05-25 10:00:00'),(2,2,8,'2024-05-25 11:00:00'),(3,17,0,'2024-05-27 18:49:48'),(4,17,5,'2024-05-27 18:54:31'),(5,18,4,'2024-05-27 19:02:19'),(6,18,1,'2024-05-28 10:02:52'),(7,18,4,'2024-05-28 11:02:18'),(8,18,3,'2024-05-28 11:05:56'),(9,2,9,'2024-05-28 11:11:10'),(10,17,7,'2024-05-28 11:12:08'),(11,2,9,'2024-05-28 11:18:55'),(12,19,3,'2024-05-28 11:20:58'),(13,2,0,'2024-05-28 15:54:48'),(14,17,0,'2024-05-28 16:11:02'),(15,17,9,'2024-05-28 16:22:31'),(16,19,8,'2024-05-28 16:23:54'),(17,17,3,'2024-05-29 10:06:54'),(18,2,10,'2024-05-29 11:28:42'),(19,2,10,'2024-05-29 15:13:32'),(20,2,4,'2024-05-29 15:14:13'),(21,2,3,'2024-05-29 15:41:17'),(22,2,1,'2024-05-29 15:44:26'),(23,2,10,'2024-05-29 16:01:50'),(24,17,4,'2024-05-29 16:36:27'),(25,17,10,'2024-05-29 16:59:31'),(26,17,3,'2024-05-29 18:32:22'),(27,17,2,'2024-05-29 19:06:19'),(28,17,1,'2024-05-29 19:21:13'),(29,17,9,'2024-05-31 10:14:58'),(30,17,8,'2024-05-31 12:14:20'),(31,17,1,'2024-05-31 12:57:02'),(32,17,6,'2024-05-31 15:54:02'),(33,17,7,'2024-05-31 15:58:56'),(34,17,7,'2024-05-31 16:07:47'),(35,17,7,'2024-05-31 16:11:50'),(36,17,7,'2024-05-31 16:15:53'),(37,17,7,'2024-05-31 16:18:17'),(38,17,7,'2024-05-31 16:21:21'),(39,17,7,'2024-05-31 16:24:16'),(40,17,7,'2024-05-31 16:26:30'),(41,17,0,'2024-05-31 16:32:47'),(42,17,0,'2024-05-31 16:38:50'),(43,17,0,'2024-05-31 16:40:45'),(44,17,7,'2024-05-31 16:42:36'),(45,17,7,'2024-05-31 16:43:44'),(46,17,7,'2024-05-31 16:46:50'),(47,17,7,'2024-05-31 16:55:56'),(48,17,1,'2024-05-31 17:04:59'),(49,18,7,'2024-05-31 17:34:13'),(50,18,7,'2024-05-31 17:39:41'),(51,18,1,'2024-05-31 18:03:04'),(52,18,7,'2024-05-31 18:12:36'),(53,18,7,'2024-05-31 18:13:54'),(54,17,0,'2024-06-03 13:08:19'),(55,17,6,'2024-06-03 13:09:13'),(56,17,0,'2024-06-03 13:19:51'),(57,17,6,'2024-06-03 13:19:58'),(58,17,6,'2024-06-03 13:23:47'),(59,17,0,'2024-06-03 13:42:18'),(60,17,6,'2024-06-03 13:54:46'),(61,17,6,'2024-06-03 13:59:14'),(62,17,6,'2024-06-03 14:01:36'),(63,17,6,'2024-06-03 14:11:39'),(64,2,6,'2024-06-03 15:17:38'),(65,2,6,'2024-06-03 15:34:43'),(66,2,2,'2024-06-03 16:25:37'),(67,2,8,'2024-06-03 16:31:11'),(68,2,8,'2024-06-05 16:43:33'),(69,2,4,'2024-06-05 16:47:35'),(70,2,0,'2024-06-05 16:51:43'),(71,2,5,'2024-06-06 13:43:44'),(72,2,3,'2024-06-06 16:20:22'),(73,2,8,'2024-06-06 18:17:23'),(74,3,0,'2024-06-11 13:30:17');
/*!40000 ALTER TABLE `quizattempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'student'),(2,'Admin'),(3,'superAdmin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skill_id` int NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(255) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'MERN'),(2,'MEAN'),(3,'PHP'),(4,'Android App Development'),(5,'Ios App Development'),(6,'Database');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'start'),(2,'assigned'),(3,'in progress'),(4,'completed');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_skills`
--

DROP TABLE IF EXISTS `student_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_skills` (
  `student_id` int NOT NULL,
  `skill_id` int NOT NULL,
  `skill_url` varchar(255) DEFAULT NULL,
  `skill_description` text,
  PRIMARY KEY (`student_id`,`skill_id`),
  KEY `skill_id` (`skill_id`),
  CONSTRAINT `student_skills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_skills`
--

LOCK TABLES `student_skills` WRITE;
/*!40000 ALTER TABLE `student_skills` DISABLE KEYS */;
INSERT INTO `student_skills` VALUES (2,3,'github.com/pandascrsuh','php'),(16,1,'https://github.com/pandascrush/Express_CRUD_REST-API','Express CRUD API');
/*!40000 ALTER TABLE `student_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentquestionattempts`
--

DROP TABLE IF EXISTS `studentquestionattempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentquestionattempts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `chosen_option` varchar(255) DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  `encounter_count` int DEFAULT '0',
  `attempt_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `question_id` (`question_id`),
  KEY `attempt_id` (`attempt_id`),
  CONSTRAINT `studentquestionattempts_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `studentquestionattempts_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`),
  CONSTRAINT `studentquestionattempts_ibfk_3` FOREIGN KEY (`attempt_id`) REFERENCES `quizattempts` (`attempt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=682 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentquestionattempts`
--

LOCK TABLES `studentquestionattempts` WRITE;
/*!40000 ALTER TABLE `studentquestionattempts` DISABLE KEYS */;
INSERT INTO `studentquestionattempts` VALUES (1,1,1,'4',1,1,1),(2,1,2,'Paris',1,1,1),(3,1,3,'H2O',1,1,1),(4,1,4,'3',0,1,1),(5,1,5,'Mitochondria',1,1,1),(6,1,6,'Thomas Jefferson',0,1,1),(7,1,7,'2x',1,1,1),(8,1,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,1),(9,1,9,'1945',1,1,1),(10,2,1,'4',1,1,2),(11,2,2,'Berlin',0,1,2),(12,2,3,'H2O',1,1,2),(13,2,4,'2',1,1,2),(14,2,5,'Mitochondria',1,1,2),(15,2,6,'George Washington',1,1,2),(16,2,7,'2x',1,1,2),(17,2,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,2),(18,2,9,'1945',1,1,2),(19,17,1,'1',0,1,3),(20,17,2,'Rome',0,1,3),(21,17,3,'N2',0,1,3),(22,17,4,'4',0,1,3),(23,17,5,'Chloroplast',0,1,3),(24,17,6,'John Adams',0,1,3),(25,17,7,'2',0,1,3),(26,17,8,'C6H12O6 + 6O2 -> 6H2O + 6CO2',0,1,3),(27,17,9,'1950',0,1,3),(28,17,1,'4',1,1,4),(29,17,2,'Paris',1,1,4),(30,17,3,'H2O',1,1,4),(31,17,4,'4',0,1,4),(32,17,5,'Mitochondria',1,1,4),(33,17,6,'George Washington',1,1,4),(34,17,7,'x^2',0,1,4),(35,17,8,'C6H12O6 + 6O2 -> 6H2O + 6CO2',0,1,4),(36,17,9,'1950',0,1,4),(37,18,1,'4',1,1,5),(38,18,2,'Paris',1,1,5),(39,18,3,'CO2',0,1,5),(40,18,4,'3',0,1,5),(41,18,5,'Nucleus',0,1,5),(42,18,6,'George Washington',1,1,5),(43,18,7,'2x',1,1,5),(44,18,8,'6O2 + 6H2O -> C6H12O6 + 6CO2',0,1,5),(45,18,9,'1940',0,1,5),(46,18,1,'2',0,1,6),(47,18,2,'Rome',0,1,6),(48,18,3,'N2',0,1,6),(49,18,4,'4',0,1,6),(50,18,5,'Chloroplast',0,1,6),(51,18,6,'John Adams',0,1,6),(52,18,7,'2',0,1,6),(53,18,8,'C6H12O6 + 6O2 -> 6H2O + 6CO2',0,1,6),(54,18,9,'1945',1,1,6),(55,18,1,'4',1,1,7),(56,18,2,'Madrid',0,1,7),(57,18,3,'O2',0,1,7),(58,18,4,'4',0,1,7),(59,18,5,'Mitochondria',1,1,7),(60,18,6,'George Washington',1,1,7),(61,18,7,'2x',1,1,7),(62,18,8,'C6H12O6 + 6O2 -> 6CO2 + 6H2O',0,1,7),(63,18,9,'1950',0,1,7),(64,18,1,'4',1,1,8),(65,18,2,'Rome',0,1,8),(66,18,3,'CO2',0,1,8),(67,18,4,'3',0,1,8),(68,18,5,'Ribosome',0,1,8),(69,18,6,'George Washington',1,1,8),(70,18,7,'2x',1,1,8),(71,18,8,'C6H12O6 + 6O2 -> 6CO2 + 6H2O',0,1,8),(72,18,9,NULL,0,1,8),(73,2,1,'4',1,1,9),(74,2,2,'Paris',1,1,9),(75,2,3,'H2O',1,1,9),(76,2,4,'2',1,1,9),(77,2,5,'Mitochondria',1,1,9),(78,2,6,'George Washington',1,1,9),(79,2,7,'2x',1,1,9),(80,2,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,9),(81,2,9,'1945',1,1,9),(82,17,1,'4',1,1,10),(83,17,2,'Paris',1,1,10),(84,17,3,'N2',0,1,10),(85,17,4,'2',1,1,10),(86,17,5,'Mitochondria',1,1,10),(87,17,6,'George Washington',1,1,10),(88,17,7,'2x',1,1,10),(89,17,8,'C6H12O6 + 6O2 -> 6H2O + 6CO2',0,1,10),(90,17,9,'1945',1,1,10),(91,2,1,'4',1,1,11),(92,2,2,'Paris',1,1,11),(93,2,3,'H2O',1,1,11),(94,2,4,'2',1,1,11),(95,2,5,'Mitochondria',1,1,11),(96,2,6,'George Washington',1,1,11),(97,2,7,'2x',1,1,11),(98,2,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,11),(99,2,9,'1945',1,1,11),(100,19,1,'4',1,1,12),(101,19,2,NULL,0,1,12),(102,19,3,'N2',0,1,12),(103,19,4,'4',0,1,12),(104,19,5,'Chloroplast',0,1,12),(105,19,6,'George Washington',1,1,12),(106,19,7,'2x',1,1,12),(107,19,8,'6O2 + 6H2O -> C6H12O6 + 6CO2',0,1,12),(108,19,9,'1950',0,1,12),(109,2,1,'Paris',0,1,13),(110,2,2,'H2O',0,1,13),(111,2,3,'2',0,1,13),(112,2,4,'Mitochondria',0,1,13),(113,2,5,'George Washington',0,1,13),(114,2,6,'2x',0,1,13),(115,2,7,'6CO2 + 6H2O -> C6H12O6 + 6O2',0,1,13),(116,2,8,'1945',0,1,13),(117,2,9,NULL,0,1,13),(118,17,1,'Paris',0,1,14),(119,17,2,'H2O',0,1,14),(120,17,3,NULL,0,1,14),(121,17,4,'Mitochondria',0,1,14),(122,17,5,'George Washington',0,1,14),(123,17,6,'2x',0,1,14),(124,17,7,'6CO2 + 6H2O -> C6H12O6 + 6O2',0,1,14),(125,17,8,'1945',0,1,14),(126,17,9,NULL,0,1,14),(127,17,1,'4',1,1,15),(128,17,2,'Paris',1,1,15),(129,17,3,'H2O',1,1,15),(130,17,4,'2',1,1,15),(131,17,5,'Mitochondria',1,1,15),(132,17,6,'George Washington',1,1,15),(133,17,7,'2x',1,1,15),(134,17,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,15),(135,17,9,'1945',1,1,15),(136,19,1,'4',1,1,16),(137,19,2,'Paris',1,1,16),(138,19,3,'H2O',1,1,16),(139,19,4,'2',1,1,16),(140,19,5,'Nucleus',0,1,16),(141,19,6,'George Washington',1,1,16),(142,19,7,'2x',1,1,16),(143,19,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,16),(144,19,9,'1945',1,1,16),(145,17,1,'4',1,1,17),(146,17,2,'Paris',1,1,17),(147,17,3,'H2O',1,1,17),(148,2,1,'4',1,1,18),(149,2,2,'Paris',1,1,18),(150,2,3,'H2O',1,1,18),(151,2,4,'2',1,1,18),(152,2,5,'Mitochondria',1,1,18),(153,2,6,'George Washington',1,1,18),(154,2,7,'2x',1,1,18),(155,2,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,18),(156,2,9,'1945',1,1,18),(157,2,10,'Camel',1,1,18),(158,2,10,'Camel',1,1,19),(159,2,4,'2',1,1,19),(160,2,2,'Paris',1,1,19),(161,2,1,'4',1,1,19),(162,2,9,'1945',1,1,19),(163,2,3,'H2O',1,1,19),(164,2,6,'George Washington',1,1,19),(165,2,5,'Mitochondria',1,1,19),(166,2,7,'2x',1,1,19),(167,2,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,19),(168,2,1,'4',1,1,20),(169,2,10,'Camel',1,1,20),(170,2,6,'George Washington',1,1,20),(171,2,3,'H2O',1,1,20),(172,2,11,NULL,0,1,21),(173,2,19,NULL,0,1,21),(174,2,13,NULL,0,1,21),(175,2,20,'Kidney',0,1,21),(176,2,15,'Spyscometer',0,1,21),(177,2,16,'Aluminum Sulphate',1,1,21),(178,2,17,'Gwalior',0,1,21),(179,2,12,'24th',1,1,21),(180,2,14,'Fundamental Right',1,1,21),(181,2,18,'Carbon Mono oxide',0,1,21),(182,2,20,NULL,0,1,22),(183,2,19,NULL,0,1,22),(184,2,14,NULL,0,1,22),(185,2,13,NULL,0,1,22),(186,2,12,NULL,0,1,22),(187,2,11,NULL,0,1,22),(188,2,16,NULL,0,1,22),(189,2,18,'Biogas',0,1,22),(190,2,17,'Patna',1,1,22),(191,2,15,'Hmelethometer',0,1,22),(192,2,1,'4',1,1,23),(193,2,5,'Mitochondria',1,1,23),(194,2,9,'1945',1,1,23),(195,2,6,'George Washington',1,1,23),(196,2,3,'H2O',1,1,23),(197,2,4,'2',1,1,23),(198,2,7,'2x',1,1,23),(199,2,2,'Paris',1,1,23),(200,2,10,'Camel',1,1,23),(201,2,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,23),(202,17,13,NULL,0,1,24),(203,17,19,NULL,0,1,24),(204,17,18,NULL,0,1,24),(205,17,11,NULL,0,1,24),(206,17,14,'Legal Right',0,1,24),(207,17,20,'Kidney',0,1,24),(208,17,17,'Patna',1,1,24),(209,17,12,'24th',1,1,24),(210,17,16,'Aluminum Sulphate',1,1,24),(211,17,15,'Hemocytometer',1,1,24),(212,17,2,'Paris',1,1,25),(213,17,1,'4',1,1,25),(214,17,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,25),(215,17,6,'George Washington',1,1,25),(216,17,5,'Mitochondria',1,1,25),(217,17,7,'2x',1,1,25),(218,17,9,'1945',1,1,25),(219,17,4,'2',1,1,25),(220,17,10,'Camel',1,1,25),(221,17,3,'H2O',1,1,25),(222,17,15,NULL,0,1,26),(223,17,18,NULL,0,1,26),(224,17,11,NULL,0,1,26),(225,17,19,NULL,0,1,26),(226,17,14,'Natural Right',0,1,26),(227,17,17,'Patna',1,1,26),(228,17,12,'24th',1,1,26),(229,17,20,'Liver',0,1,26),(230,17,16,'Aluminum Sulphate',1,1,26),(231,17,13,'Upper Himalayas',0,1,26),(232,17,12,NULL,0,1,27),(233,17,17,NULL,0,1,27),(234,17,18,NULL,0,1,27),(235,17,19,NULL,0,1,27),(236,17,11,'Producers',0,1,27),(237,17,14,'Legal Right',0,1,27),(238,17,15,'Hmelethometer',0,1,27),(239,17,16,'Aluminum chloride',0,1,27),(240,17,13,'Outer Himalayas',1,1,27),(241,17,20,'Mouth',1,1,27),(242,17,16,NULL,0,1,28),(243,17,19,NULL,0,1,28),(244,17,18,NULL,0,1,28),(245,17,12,NULL,0,1,28),(246,17,13,'Upper Himalayas',0,1,28),(247,17,11,'Producers',0,1,28),(248,17,15,'Hmelethometer',0,1,28),(249,17,17,'Patna',1,1,28),(250,17,20,'Liver',0,1,28),(251,17,14,'Legal Right',0,1,28),(252,17,6,'George Washington',1,1,29),(253,17,9,'1945',1,1,29),(254,17,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,29),(255,17,3,'H2O',1,1,29),(256,17,10,'Camel',1,1,29),(257,17,1,'1',0,1,29),(258,17,2,'Paris',1,1,29),(259,17,7,'2x',1,1,29),(260,17,5,'Mitochondria',1,1,29),(261,17,4,'2',1,1,29),(262,17,4,'2',1,1,30),(263,17,2,'Paris',1,1,30),(264,17,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,30),(265,17,1,'4',1,1,30),(266,17,4,'2',1,1,30),(267,17,7,'2x',1,1,30),(268,17,10,'Camel',1,1,30),(269,17,8,'6CO2 + 6H2O -> C6H12O6 + 6O2',1,1,30),(270,17,16,NULL,0,1,31),(271,17,15,NULL,0,1,31),(272,17,14,NULL,0,1,31),(273,17,18,NULL,0,1,31),(274,17,19,'Typhoid',0,1,31),(275,17,12,'27th',0,1,31),(276,17,17,'Bhopal',0,1,31),(277,17,13,'Upper Himalayas',0,1,31),(278,17,11,'Primary Consumers',1,1,31),(279,17,20,'Liver',0,1,31),(280,17,15,NULL,0,1,32),(281,17,19,NULL,0,1,32),(282,17,18,NULL,0,1,32),(283,17,11,'Primary Consumers',1,1,32),(284,17,20,'Mouth',1,1,32),(285,17,16,'Aluminum Sulphate',1,1,32),(286,17,13,'Outer Himalayas',1,1,32),(287,17,12,'24th',1,1,32),(288,17,14,'Fundamental Right',1,1,32),(289,17,17,'Mathura',0,1,32),(290,17,15,NULL,0,1,33),(291,17,11,NULL,0,1,33),(292,17,20,NULL,0,1,33),(293,17,18,'Solar Energy',1,1,33),(294,17,17,'Patna',1,1,33),(295,17,13,'Outer Himalayas',1,1,33),(296,17,12,'24th',1,1,33),(297,17,16,'Aluminum Sulphate',1,1,33),(298,17,19,'Malaria',1,1,33),(299,17,14,'Fundamental Right',1,1,33),(300,17,16,NULL,0,1,34),(301,17,20,NULL,0,1,34),(302,17,17,NULL,0,1,34),(303,17,11,'Primary Consumers',1,1,34),(304,17,18,'Solar Energy',1,1,34),(305,17,14,'Fundamental Right',1,1,34),(306,17,12,'24th',1,1,34),(307,17,13,'Outer Himalayas',1,1,34),(308,17,15,'Hemocytometer',1,1,34),(309,17,19,'Malaria',1,1,34),(310,17,14,NULL,0,1,35),(311,17,11,NULL,0,1,35),(312,17,18,NULL,0,1,35),(313,17,19,'Malaria',1,1,35),(314,17,15,'Hemocytometer',1,1,35),(315,17,13,'Outer Himalayas',1,1,35),(316,17,17,'Patna',1,1,35),(317,17,20,'Mouth',1,1,35),(318,17,12,'24th',1,1,35),(319,17,16,'Aluminum Sulphate',1,1,35),(320,17,20,NULL,0,1,36),(321,17,17,NULL,0,1,36),(322,17,15,NULL,0,1,36),(323,17,13,'Outer Himalayas',1,1,36),(324,17,11,'Primary Consumers',1,1,36),(325,17,19,'Malaria',1,1,36),(326,17,14,'Fundamental Right',1,1,36),(327,17,12,'24th',1,1,36),(328,17,16,'Aluminum Sulphate',1,1,36),(329,17,18,'Solar Energy',1,1,36),(330,17,18,NULL,0,1,37),(331,17,13,NULL,0,1,37),(332,17,14,NULL,0,1,37),(333,17,20,'Mouth',1,1,37),(334,17,15,'Hemocytometer',1,1,37),(335,17,19,'Malaria',1,1,37),(336,17,17,'Patna',1,1,37),(337,17,12,'24th',1,1,37),(338,17,11,'Primary Consumers',1,1,37),(339,17,16,'Aluminum Sulphate',1,1,37),(340,17,20,NULL,0,1,38),(341,17,14,NULL,0,1,38),(342,17,18,NULL,0,1,38),(343,17,17,'Patna',1,1,38),(344,17,19,'Malaria',1,1,38),(345,17,15,'Hemocytometer',1,1,38),(346,17,16,'Aluminum Sulphate',1,1,38),(347,17,11,'Primary Consumers',1,1,38),(348,17,13,'Outer Himalayas',1,1,38),(349,17,12,'24th',1,1,38),(350,17,16,NULL,0,1,39),(351,17,12,NULL,0,1,39),(352,17,19,NULL,0,1,39),(353,17,20,'Mouth',1,1,39),(354,17,17,'Patna',1,1,39),(355,17,18,'Solar Energy',1,1,39),(356,17,13,'Outer Himalayas',1,1,39),(357,17,14,'Fundamental Right',1,1,39),(358,17,11,'Primary Consumers',1,1,39),(359,17,15,'Hemocytometer',1,1,39),(360,17,20,NULL,0,1,40),(361,17,19,NULL,0,1,40),(362,17,18,NULL,0,1,40),(363,17,15,'Hemocytometer',1,1,40),(364,17,12,'24th',1,1,40),(365,17,11,'Primary Consumers',1,1,40),(366,17,17,'Patna',1,1,40),(367,17,14,'Fundamental Right',1,1,40),(368,17,13,'Outer Himalayas',1,1,40),(369,17,16,'Aluminum Sulphate',1,1,40),(370,17,13,NULL,0,1,41),(371,17,19,NULL,0,1,41),(372,17,15,NULL,0,1,41),(373,17,17,'Patna',1,1,41),(374,17,20,'Mouth',1,1,41),(375,17,11,'Primary Consumers',1,1,41),(376,17,18,'Solar Energy',1,1,41),(377,17,12,'24th',1,1,41),(378,17,14,'Fundamental Right',1,1,41),(379,17,16,'Aluminum Sulphate',1,1,41),(380,17,13,NULL,0,1,42),(381,17,12,NULL,0,1,42),(382,17,16,NULL,0,1,42),(383,17,11,NULL,0,1,42),(384,17,19,'Malaria',1,1,42),(385,17,18,'Solar Energy',1,1,42),(386,17,14,'Fundamental Right',1,1,42),(387,17,15,'Hemocytometer',1,1,42),(388,17,20,'Mouth',1,1,42),(389,17,17,'Patna',1,1,42),(390,17,13,NULL,0,1,43),(391,17,12,NULL,0,1,43),(392,17,14,NULL,0,1,43),(393,17,16,'Aluminum Sulphate',1,1,43),(394,17,19,'Malaria',1,1,43),(395,17,18,'Solar Energy',1,1,43),(396,17,11,'Primary Consumers',1,1,43),(397,17,17,'Patna',1,1,43),(398,17,15,'Hemocytometer',1,1,43),(399,17,20,'Mouth',1,1,43),(400,17,18,NULL,0,1,44),(401,17,19,NULL,0,1,44),(402,17,20,NULL,0,1,44),(403,17,13,'Outer Himalayas',1,1,44),(404,17,16,'Aluminum Sulphate',1,1,44),(405,17,12,'24th',1,1,44),(406,17,17,'Patna',1,1,44),(407,17,14,'Fundamental Right',1,1,44),(408,17,11,'Primary Consumers',1,1,44),(409,17,15,'Hemocytometer',1,1,44),(410,17,19,NULL,0,1,45),(411,17,12,NULL,0,1,45),(412,17,17,NULL,0,1,45),(413,17,11,'Primary Consumers',1,1,45),(414,17,18,'Solar Energy',1,1,45),(415,17,20,'Mouth',1,1,45),(416,17,13,'Outer Himalayas',1,1,45),(417,17,16,'Aluminum Sulphate',1,1,45),(418,17,15,'Hemocytometer',1,1,45),(419,17,14,'Fundamental Right',1,1,45),(420,17,16,NULL,0,1,46),(421,17,14,NULL,0,1,46),(422,17,12,NULL,0,1,46),(423,17,15,'Hemocytometer',1,1,46),(424,17,17,'Patna',1,1,46),(425,17,13,'Outer Himalayas',1,1,46),(426,17,19,'Malaria',1,1,46),(427,17,18,'Solar Energy',1,1,46),(428,17,11,'Primary Consumers',1,1,46),(429,17,20,'Mouth',1,1,46),(430,17,14,NULL,0,1,47),(431,17,11,NULL,0,1,47),(432,17,12,NULL,0,1,47),(433,17,16,'Aluminum Sulphate',1,1,47),(434,17,18,'Solar Energy',1,1,47),(435,17,20,'Mouth',1,1,47),(436,17,17,'Patna',1,1,47),(437,17,13,'Outer Himalayas',1,1,47),(438,17,15,'Hemocytometer',1,1,47),(439,17,19,'Malaria',1,1,47),(440,17,18,NULL,0,1,48),(441,17,11,NULL,0,1,48),(442,17,14,NULL,0,1,48),(443,17,17,NULL,0,1,48),(444,17,19,NULL,0,1,48),(445,17,13,NULL,0,1,48),(446,17,20,'Large intestine',0,1,48),(447,17,16,NULL,0,1,48),(448,17,15,NULL,0,1,48),(449,17,12,'24th',1,1,48),(450,18,12,NULL,0,1,49),(451,18,19,NULL,0,1,49),(452,18,11,NULL,0,1,49),(453,18,15,'Hemocytometer',1,1,49),(454,18,20,'Mouth',1,1,49),(455,18,17,'Patna',1,1,49),(456,18,14,'Fundamental Right',1,1,49),(457,18,16,'Aluminum Sulphate',1,1,49),(458,18,18,'Solar Energy',1,1,49),(459,18,13,'Outer Himalayas',1,1,49),(460,18,19,NULL,0,1,50),(461,18,18,NULL,0,1,50),(462,18,17,NULL,0,1,50),(463,18,16,'Aluminum Sulphate',1,1,50),(464,18,12,'24th',1,1,50),(465,18,13,'Outer Himalayas',1,1,50),(466,18,20,'Mouth',1,1,50),(467,18,14,'Fundamental Right',1,1,50),(468,18,11,'Primary Consumers',1,1,50),(469,18,15,'Hemocytometer',1,1,50),(470,18,17,NULL,0,1,51),(471,18,15,NULL,0,1,51),(472,18,19,NULL,0,1,51),(473,18,14,NULL,0,1,51),(474,18,12,NULL,0,1,51),(475,18,20,NULL,0,1,51),(476,18,16,NULL,0,1,51),(477,18,11,NULL,0,1,51),(478,18,18,NULL,0,1,51),(479,18,13,'Outer Himalayas',1,1,51),(480,18,16,NULL,0,1,52),(481,18,17,NULL,0,1,52),(482,18,18,NULL,0,1,52),(483,18,12,'24th',1,1,52),(484,18,13,'Outer Himalayas',1,1,52),(485,18,11,'Primary Consumers',1,1,52),(486,18,20,'Mouth',1,1,52),(487,18,14,'Fundamental Right',1,1,52),(488,18,19,'Malaria',1,1,52),(489,18,15,'Hemocytometer',1,1,52),(490,18,14,NULL,0,1,53),(491,18,12,NULL,0,1,53),(492,18,11,NULL,0,1,53),(493,18,20,'Mouth',1,1,53),(494,18,18,'Solar Energy',1,1,53),(495,18,17,'Patna',1,1,53),(496,18,15,'Hemocytometer',1,1,53),(497,18,19,'Malaria',1,1,53),(498,18,16,'Aluminum Sulphate',1,1,53),(499,18,13,'Outer Himalayas',1,1,53),(500,17,11,NULL,0,1,54),(501,17,12,NULL,0,1,54),(502,17,13,NULL,0,1,54),(503,17,11,NULL,0,1,55),(504,17,12,NULL,0,1,55),(505,17,13,NULL,0,1,55),(506,17,14,NULL,0,1,55),(507,17,15,'Hemocytometer',1,1,55),(508,17,16,'Aluminum Sulphate',1,1,55),(509,17,17,'Patna',1,1,55),(510,17,18,'Solar Energy',1,1,55),(511,17,19,'Malaria',1,1,55),(512,17,20,'Mouth',1,1,55),(513,17,11,NULL,0,1,56),(514,17,12,NULL,0,1,56),(515,17,13,NULL,0,1,56),(516,17,11,NULL,0,1,57),(517,17,12,NULL,0,1,57),(518,17,13,NULL,0,1,57),(519,17,14,NULL,0,1,57),(520,17,15,'Hemocytometer',1,1,57),(521,17,16,'Aluminum Sulphate',1,1,57),(522,17,17,'Patna',1,1,57),(523,17,18,'Solar Energy',1,1,57),(524,17,19,'Malaria',1,1,57),(525,17,20,'Mouth',1,1,57),(526,17,11,NULL,0,1,58),(527,17,12,NULL,0,1,58),(528,17,13,NULL,0,1,58),(529,17,14,NULL,0,1,58),(530,17,15,'Hemocytometer',1,1,58),(531,17,16,'Aluminum Sulphate',1,1,58),(532,17,17,'Patna',1,1,58),(533,17,18,'Solar Energy',1,1,58),(534,17,19,'Malaria',1,1,58),(535,17,20,'Mouth',1,1,58),(536,17,11,NULL,0,1,59),(537,17,12,NULL,0,1,59),(538,17,13,NULL,0,1,59),(539,17,11,NULL,0,1,60),(540,17,12,NULL,0,1,60),(541,17,13,NULL,0,1,60),(542,17,14,NULL,0,1,60),(543,17,15,'Hemocytometer',1,1,60),(544,17,16,'Aluminum Sulphate',1,1,60),(545,17,17,'Patna',1,1,60),(546,17,18,'Solar Energy',1,1,60),(547,17,19,'Malaria',1,1,60),(548,17,20,'Mouth',1,1,60),(549,17,11,NULL,0,1,61),(550,17,12,NULL,0,1,61),(551,17,13,NULL,0,1,61),(552,17,14,NULL,0,1,61),(553,17,15,'Hemocytometer',1,1,61),(554,17,16,'Aluminum Sulphate',1,1,61),(555,17,17,'Patna',1,1,61),(556,17,18,'Solar Energy',1,1,61),(557,17,19,'Malaria',1,1,61),(558,17,20,'Mouth',1,1,61),(559,17,11,NULL,0,1,62),(560,17,12,NULL,0,1,62),(561,17,13,NULL,0,1,62),(562,17,14,NULL,0,1,62),(563,17,15,'Hemocytometer',1,1,62),(564,17,16,'Aluminum Sulphate',1,1,62),(565,17,17,'Patna',1,1,62),(566,17,18,'Solar Energy',1,1,62),(567,17,19,'Malaria',1,1,62),(568,17,20,'Mouth',1,1,62),(569,17,11,NULL,0,1,63),(570,17,12,NULL,0,1,63),(571,17,13,NULL,0,1,63),(572,17,14,NULL,0,1,63),(573,17,15,'Hemocytometer',1,1,63),(574,17,16,'Aluminum Sulphate',1,1,63),(575,17,17,'Patna',1,1,63),(576,17,18,'Solar Energy',1,1,63),(577,17,19,'Malaria',1,1,63),(578,17,20,'Mouth',1,1,63),(579,2,11,NULL,0,1,64),(580,2,12,NULL,0,1,64),(581,2,13,NULL,0,1,64),(582,2,14,NULL,0,1,64),(583,2,15,'Hemocytometer',1,1,64),(584,2,16,'Aluminum Sulphate',1,1,64),(585,2,17,'Patna',1,1,64),(586,2,18,'Solar Energy',1,1,64),(587,2,19,'Malaria',1,1,64),(588,2,20,'Mouth',1,1,64),(589,2,11,NULL,0,1,65),(590,2,12,NULL,0,1,65),(591,2,13,NULL,0,1,65),(592,2,14,NULL,0,1,65),(593,2,15,'Hemocytometer',1,1,65),(594,2,16,'Aluminum Sulphate',1,1,65),(595,2,17,'Patna',1,1,65),(596,2,18,'Solar Energy',1,1,65),(597,2,19,'Malaria',1,1,65),(598,2,20,'Mouth',1,1,65),(599,2,21,NULL,0,1,66),(600,2,22,NULL,0,1,66),(601,2,23,NULL,0,1,66),(602,2,24,NULL,0,1,66),(603,2,25,NULL,0,1,66),(604,2,26,NULL,0,1,66),(605,2,27,NULL,0,1,66),(606,2,28,'Caricaxanthin',0,1,66),(607,2,29,'The statutory quasi-judicial body',1,1,66),(608,2,30,'Krishna',1,1,66),(609,2,21,NULL,0,1,67),(610,2,22,NULL,0,1,67),(611,2,23,NULL,0,1,67),(612,2,24,NULL,0,1,67),(613,2,25,NULL,0,1,67),(614,2,26,NULL,0,1,67),(615,2,27,NULL,0,1,67),(616,2,28,'Caricaxanthin',0,1,67),(617,2,29,'The statutory quasi-judicial body',1,1,67),(618,2,30,'Ganga',0,1,67),(619,2,21,NULL,0,1,68),(620,2,22,NULL,0,1,68),(621,2,23,NULL,0,1,68),(622,2,24,NULL,0,1,68),(623,2,25,NULL,0,1,68),(624,2,26,NULL,0,1,68),(625,2,27,NULL,0,1,68),(626,2,28,'Caricaxanthin',0,1,68),(627,2,29,'The statutory quasi-judicial body',1,1,68),(628,2,30,'Ganga',0,1,68),(629,2,11,NULL,0,1,69),(630,2,12,NULL,0,1,69),(631,2,13,NULL,0,1,69),(632,2,14,NULL,0,1,69),(633,2,15,NULL,0,1,69),(634,2,16,NULL,0,1,69),(635,2,17,NULL,0,1,69),(636,2,18,'Biogas',0,1,69),(637,2,19,'Cancer',0,1,69),(638,2,20,'Kidney',0,1,69),(639,2,37,'8.4',0,1,69),(640,2,1,'1',0,1,70),(641,2,2,'Berlin',0,1,70),(642,2,3,'O2',0,1,70),(643,2,4,'3',0,1,70),(644,2,5,'Chloroplast',0,1,70),(645,2,6,'Thomas Jefferson',0,1,70),(646,2,7,'x^2',0,1,70),(647,2,8,'6O2 + 6H2O -> C6H12O6 + 6CO2',0,1,70),(648,2,9,'1940',0,1,70),(649,2,10,'Horse',0,1,70),(650,2,31,'Aurangzeb',0,1,70),(651,2,1,'4',1,1,71),(652,2,4,'2',1,1,71),(653,2,7,'2x',1,1,71),(654,2,10,'Camel',1,1,71),(655,2,31,'Aurangzeb',0,1,71),(656,2,37,'7.2',1,1,71),(657,2,2,'Paris',1,1,72),(658,2,6,'George Washington',1,1,72),(659,2,9,'1945',1,1,72),(660,2,21,'Punjab National Bank',0,1,72),(661,2,22,'Formic',0,1,72),(662,2,23,'Delhi',0,1,72),(663,2,24,'Lata Mangeshkar',0,1,72),(664,2,25,'South Korea',1,1,72),(665,2,26,'Mars',0,1,72),(666,2,27,'Airways',0,1,72),(667,2,21,NULL,0,1,73),(668,2,22,NULL,0,1,73),(669,2,23,NULL,0,1,73),(670,2,24,NULL,0,1,73),(671,2,25,NULL,0,1,73),(672,2,26,NULL,0,1,73),(673,2,27,NULL,0,1,73),(674,2,28,'Carotene',0,1,73),(675,2,29,'The statutory quasi-judicial body',1,1,73),(676,2,30,'Ganga',0,1,73),(677,3,1,'4',1,1,74),(678,3,4,'2',1,1,74),(679,3,7,'2x',1,1,74),(680,3,10,'Camel',1,1,74),(681,3,31,'Babar',1,1,74);
/*!40000 ALTER TABLE `studentquestionattempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `github_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `resume_file` varchar(255) DEFAULT NULL,
  `degree` int DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `college_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `quiz_attempts` int DEFAULT '0',
  PRIMARY KEY (`student_id`),
  KEY `students_ibfk_3_idx` (`degree`),
  KEY `students_bfk_1_idx` (`college_id`),
  KEY `students_bfk_2_idx` (`role_id`),
  CONSTRAINT `student_bkf_3` FOREIGN KEY (`degree`) REFERENCES `course` (`course_id`),
  CONSTRAINT `students_bfk_1` FOREIGN KEY (`college_id`) REFERENCES `colleges` (`college_id`),
  CONSTRAINT `students_bfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'admin','admin@gmail.com','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,0),(2,'Aravind A','aravind@gmail.com','aravind','78284350_2407657879553094_4399092361410379776_n.jpg','https://github.com/pandascrush',NULL,'public\\images\\Siva.pdf',1,'3 Year','html,css,javascript,react',1,1,19),(3,'Pravin J','pravin@gmail.com','pravin',NULL,'',NULL,'public\\images\\6th sem marksheet.pdf',3,'3 Year','swift, objective-c',2,1,1),(4,'Siva','siva@gmail.com','siva',NULL,'https://github.com/pandascrush/Node_Express_Basics',NULL,'public\\images\\1st Sem Exam fees.pdf',3,'2 Year','React',2,1,0),(5,'devika','devika@gmail.com','devika',NULL,'gtihub.com/pandascrush',NULL,'public\\images\\Resume `a`.pdf',2,'2 Year','React, JavaScript',1,1,0),(6,'johnpaul','johnpaul08@gmail.com','johnpaul@123','91911534_2527959250856289_7513700248154275840_n.jpg','https://github.com/pandascrush?tab=overview&from=2024-05-01&to=2024-05-20',NULL,'public\\images\\IMG_20190124_100750.jpg',1,'3 Year','ReactJS',1,1,0),(7,'Surya','ssuryaprakash0406@gmail.com','surya','78284350_2407657879553094_4399092361410379776_n.jpg','github.com/pandascrush',NULL,'public\\images\\Siva.pdf',3,'2 Year','UI, UX',2,1,0),(8,'Siva Velayutham','velayuthamsiva55@gmail.com','860805',NULL,'https://github.com/pandascrush',NULL,'public\\images\\SivaResume.pdf',3,'3 Year','React, Node, Express, MySQL',2,1,0),(9,'Siva','velayuthamsiva55@gmail.com','12345',NULL,NULL,NULL,NULL,1,'1 Year','HTML, CSS',1,1,0),(10,'aravind','aravinda@gmail.com','aravind',NULL,NULL,NULL,NULL,3,'3 Year','ML',2,1,0),(11,'Sugu','sugu@gmail.com','sugu',NULL,'https://github.com/pandascrush/studentgig',NULL,'public\\images\\Siva_Resume.pdf',2,'2 Year','React',1,1,0),(12,'Shivani','shivanisivu239@gmail.com','shivani','IMG_20190124_100750.jpg','github.com/pandascrush/',NULL,'public\\images\\Siva_Resume.pdf',3,'3 Year','UI, UX, HTML',2,1,0),(13,'Pavithra','paviselvaraj95@gmail.com','pavi','14249714_1663136470671909_4689527407985083289_o.jpg','',NULL,'public\\images\\Siva_Resume.pdf',1,'2 Year','PHP',1,1,0),(14,'Aravind B','aravind.b@kgisl.microcollege.in','Aravindman',NULL,'github.com/pandascrush',NULL,'public\\images\\Siva_Resume.pdf',1,'3 Year','next js',1,1,0),(15,'Krishnapriya','krishnapriya.p@kggeniuslabs.com','kggl@123',NULL,'uat.kegeniuslabs.com',NULL,'public\\images\\Pitch Deck SAP.pdf',1,'1 Year','Web Design',1,1,0),(16,'Divya','siva.v@kggeniuslabs.com','divya',NULL,'https://github.com/pandascrush',NULL,NULL,2,'3 Year','HTML',1,1,0),(17,'Sneha','sneha@gmail.com','sneha','How it Works.jpg',NULL,NULL,NULL,1,'1 Year','html,css,javascript,react',1,1,56),(18,'jack','jack@gmail.com','jack@123',NULL,NULL,NULL,NULL,1,'3 Year','Reactjs',1,1,5),(19,'Deva','deva@gmail.com','deva',NULL,NULL,NULL,NULL,3,'4 Year','React, Node, Express',2,1,2);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `sub_category_id` int NOT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`sub_category_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (101,'Profit and Loss',1),(102,'Time and Work',1),(103,'Problems on Trains',1),(104,'Time and Distance',1),(201,'Spotting Errors',2),(202,'Synonyms',2),(203,'Spellings',2),(204,'Selecting Words',2),(301,'Program',3);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testassign`
--

DROP TABLE IF EXISTS `testassign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testassign` (
  `test_id` int NOT NULL AUTO_INCREMENT,
  `createtest_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `total_no_of_questions` int DEFAULT NULL,
  `difficulty_level_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `easy_pass_mark` int DEFAULT NULL,
  `medium_pass_mark` int DEFAULT NULL,
  PRIMARY KEY (`test_id`),
  KEY `createtest_id` (`createtest_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `testassign_ibfk_1` FOREIGN KEY (`createtest_id`) REFERENCES `createtest` (`createtest_id`),
  CONSTRAINT `testassign_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testassign`
--

LOCK TABLES `testassign` WRITE;
/*!40000 ALTER TABLE `testassign` DISABLE KEYS */;
INSERT INTO `testassign` VALUES (1,1,2,10,2,3,4,3),(2,2,3,11,1,1,4,NULL),(3,3,17,12,3,3,3,4);
/*!40000 ALTER TABLE `testassign` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-25 16:58:21
