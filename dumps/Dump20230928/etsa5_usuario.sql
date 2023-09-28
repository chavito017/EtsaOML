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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `telefono` int DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `foto` varchar(255) NOT NULL,
  `contrato_id` bigint NOT NULL,
  `municipio_id` bigint NOT NULL,
  `tdocumento_id` bigint NOT NULL,
  `tpempresario_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_contrato_id_55fc5e6b_fk_contrato_id` (`contrato_id`),
  KEY `usuario_municipio_id_c87e17a6_fk_principal_municipio_id` (`municipio_id`),
  KEY `usuario_tdocumento_id_37188514_fk_tdocumento_id` (`tdocumento_id`),
  KEY `usuario_tpempresario_id_2d8dcee6_fk_tpempresario_id` (`tpempresario_id`),
  CONSTRAINT `usuario_contrato_id_55fc5e6b_fk_contrato_id` FOREIGN KEY (`contrato_id`) REFERENCES `contrato` (`id`),
  CONSTRAINT `usuario_municipio_id_c87e17a6_fk_principal_municipio_id` FOREIGN KEY (`municipio_id`) REFERENCES `principal_municipio` (`id`),
  CONSTRAINT `usuario_tdocumento_id_37188514_fk_tdocumento_id` FOREIGN KEY (`tdocumento_id`) REFERENCES `tdocumento` (`id`),
  CONSTRAINT `usuario_tpempresario_id_2d8dcee6_fk_tpempresario_id` FOREIGN KEY (`tpempresario_id`) REFERENCES `tpempresario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-28 15:41:42
