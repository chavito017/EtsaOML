-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: etsa5
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add agendamiento',7,'add_agendamiento'),(26,'Can change agendamiento',7,'change_agendamiento'),(27,'Can delete agendamiento',7,'delete_agendamiento'),(28,'Can view agendamiento',7,'view_agendamiento'),(29,'Can add categoria servicio',8,'add_categoriaservicio'),(30,'Can change categoria servicio',8,'change_categoriaservicio'),(31,'Can delete categoria servicio',8,'delete_categoriaservicio'),(32,'Can view categoria servicio',8,'view_categoriaservicio'),(33,'Can add categoria taller',9,'add_categoriataller'),(34,'Can change categoria taller',9,'change_categoriataller'),(35,'Can delete categoria taller',9,'delete_categoriataller'),(36,'Can view categoria taller',9,'view_categoriataller'),(37,'Can add contrato',10,'add_contrato'),(38,'Can change contrato',10,'change_contrato'),(39,'Can delete contrato',10,'delete_contrato'),(40,'Can view contrato',10,'view_contrato'),(41,'Can add departamento',11,'add_departamento'),(42,'Can change departamento',11,'change_departamento'),(43,'Can delete departamento',11,'delete_departamento'),(44,'Can view departamento',11,'view_departamento'),(45,'Can add municipio',12,'add_municipio'),(46,'Can change municipio',12,'change_municipio'),(47,'Can delete municipio',12,'delete_municipio'),(48,'Can view municipio',12,'view_municipio'),(49,'Can add t documento',13,'add_tdocumento'),(50,'Can change t documento',13,'change_tdocumento'),(51,'Can delete t documento',13,'delete_tdocumento'),(52,'Can view t documento',13,'view_tdocumento'),(53,'Can add tp empresario',14,'add_tpempresario'),(54,'Can change tp empresario',14,'change_tpempresario'),(55,'Can delete tp empresario',14,'delete_tpempresario'),(56,'Can view tp empresario',14,'view_tpempresario'),(57,'Can add usuario',15,'add_usuario'),(58,'Can change usuario',15,'change_usuario'),(59,'Can delete usuario',15,'delete_usuario'),(60,'Can view usuario',15,'view_usuario'),(61,'Can add servicio',16,'add_servicio'),(62,'Can change servicio',16,'change_servicio'),(63,'Can delete servicio',16,'delete_servicio'),(64,'Can view servicio',16,'view_servicio'),(65,'Can add pagos',17,'add_pagos'),(66,'Can change pagos',17,'change_pagos'),(67,'Can delete pagos',17,'delete_pagos'),(68,'Can view pagos',17,'view_pagos'),(69,'Can add fac cabeza',18,'add_faccabeza'),(70,'Can change fac cabeza',18,'change_faccabeza'),(71,'Can delete fac cabeza',18,'delete_faccabeza'),(72,'Can view fac cabeza',18,'view_faccabeza'),(73,'Can add empresa',19,'add_empresa'),(74,'Can change empresa',19,'change_empresa'),(75,'Can delete empresa',19,'delete_empresa'),(76,'Can view empresa',19,'view_empresa'),(77,'Can add cuerpo facrura',20,'add_cuerpofacrura'),(78,'Can change cuerpo facrura',20,'change_cuerpofacrura'),(79,'Can delete cuerpo facrura',20,'delete_cuerpofacrura'),(80,'Can view cuerpo facrura',20,'view_cuerpofacrura');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-28 15:42:32
