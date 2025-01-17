CREATE DATABASE  IF NOT EXISTS `coder` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `coder`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: coder
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `busquedas_activas`
--

DROP TABLE IF EXISTS `busquedas_activas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `busquedas_activas` (
  `Cod_referencia` int NOT NULL,
  `Cod_busqueda` int NOT NULL,
  `Descripcion_puesto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Cod_busqueda`),
  KEY `Cod_referencia` (`Cod_referencia`),
  CONSTRAINT `busquedas_activas_ibfk_1` FOREIGN KEY (`Cod_referencia`) REFERENCES `programa_referidos` (`Cod_referencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busquedas_activas`
--

LOCK TABLES `busquedas_activas` WRITE;
/*!40000 ALTER TABLE `busquedas_activas` DISABLE KEYS */;
INSERT INTO `busquedas_activas` VALUES (1,1,'Analista'),(2,2,'Programador '),(3,3,'Analista'),(4,4,'Contador'),(5,5,'DBA');
/*!40000 ALTER TABLE `busquedas_activas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `cod_contrato` int NOT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_contrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,'Temporal'),(2,'Por Proyecto');
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `empleados_descripcion_contrato`
--

DROP TABLE IF EXISTS `empleados_descripcion_contrato`;
/*!50001 DROP VIEW IF EXISTS `empleados_descripcion_contrato`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empleados_descripcion_contrato` AS SELECT 
 1 AS `nombre`,
 1 AS `cod_contrato`,
 1 AS `descripcion`,
 1 AS `cod_empresa`,
 1 AS `tipo_contrato`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `empleados_empresas`
--

DROP TABLE IF EXISTS `empleados_empresas`;
/*!50001 DROP VIEW IF EXISTS `empleados_empresas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empleados_empresas` AS SELECT 
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `cod_empresa`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `empleados_puntuacion`
--

DROP TABLE IF EXISTS `empleados_puntuacion`;
/*!50001 DROP VIEW IF EXISTS `empleados_puntuacion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empleados_puntuacion` AS SELECT 
 1 AS `nombre`,
 1 AS `puntuacion_empleado`,
 1 AS `comentarios`,
 1 AS `legajo_empleado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `empleados_referencias`
--

DROP TABLE IF EXISTS `empleados_referencias`;
/*!50001 DROP VIEW IF EXISTS `empleados_referencias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empleados_referencias` AS SELECT 
 1 AS `nombre`,
 1 AS `referencias_echas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `empleados_rh`
--

DROP TABLE IF EXISTS `empleados_rh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados_rh` (
  `legajo_empleado` int NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `DNI` int NOT NULL,
  `cod_empresa` int NOT NULL,
  `tipo_contrato` int DEFAULT NULL,
  PRIMARY KEY (`legajo_empleado`),
  KEY `cod_empresa` (`cod_empresa`),
  KEY `tipo_contrato` (`tipo_contrato`),
  CONSTRAINT `empleados_rh_ibfk_1` FOREIGN KEY (`cod_empresa`) REFERENCES `empresa` (`cod_empresa`),
  CONSTRAINT `empleados_rh_ibfk_2` FOREIGN KEY (`tipo_contrato`) REFERENCES `contrato` (`cod_contrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados_rh`
--

LOCK TABLES `empleados_rh` WRITE;
/*!40000 ALTER TABLE `empleados_rh` DISABLE KEYS */;
INSERT INTO `empleados_rh` VALUES (1,'Juan Perez',54199385,1,1),(2,'Miguel Diaz',42159243,2,1),(3,'Juana Arco',22934155,3,2),(4,'Agustina Belen',29104293,4,1),(5,'Federico Agustin',42159256,5,1),(6,'Lucas Film',29104266,5,1),(7,'Michele Gomez',22934567,1,2),(8,'Rocio Perez',54099387,1,2),(9,'Agustina Ciccone',40104293,2,2),(10,'Ana Bessa',69104293,2,1),(11,'Laura Laterza',10104293,3,1);
/*!40000 ALTER TABLE `empleados_rh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `cod_empresa` int NOT NULL,
  `Dir` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'cale 345','Red Link'),(2,'calle 4567','Prisma MP'),(3,'calle 678','Visa'),(4,'calle falsa 123','Santander Rio'),(5,'otra calle 678','Mercado Libre');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `cod_empresa` int NOT NULL,
  `legajo_empleado` int NOT NULL,
  `Puntuacion_empleado` int DEFAULT NULL,
  `Comentarios` varchar(200) DEFAULT NULL,
  KEY `cod_empresa` (`cod_empresa`),
  KEY `legajo_empleado` (`legajo_empleado`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`cod_empresa`) REFERENCES `empresa` (`cod_empresa`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`legajo_empleado`) REFERENCES `empleados_rh` (`legajo_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,8,'mejorar habilidades blandas'),(2,2,8,'mejorar habilidades blandas'),(3,3,6,'mejorar habilidades duras'),(4,4,6,'mejorar habilidades blandas'),(5,5,5,'mejorar habilidades blandas'),(5,6,5,'mejorar habilidades blandas'),(1,7,7,'mejorar habilidades blandas'),(1,8,7,'mejorar habilidades blandas'),(2,9,7,'mejorar habilidades blandas'),(1,1,7,'mejorar habilidades blandas'),(2,2,7,'mejorar habilidades blandas'),(3,3,7,'mejorar habilidades duras'),(4,4,7,'mejorar habilidades blandas'),(5,5,7,'mejorar habilidades blandas'),(5,6,7,'mejorar habilidades blandas'),(1,7,7,'mejorar habilidades blandas'),(1,8,7,'mejorar habilidades blandas'),(2,9,7,'mejorar habilidades blandas'),(1,1,8,'mejorar habilidades blandas'),(2,2,7,'mejorar habilidades blandas'),(3,3,9,'mejorar habilidades duras'),(4,4,4,'mejorar habilidades blandas'),(5,5,7,'mejorar habilidades blandas'),(5,6,7,'mejorar habilidades blandas'),(1,7,7,'mejorar habilidades blandas'),(1,8,7,'mejorar habilidades blandas'),(2,9,7,'mejorar habilidades blandas'),(3,1,9,'muy buen empleado'),(3,1,9,'muy buen empleado'),(3,1,9,'muy buen empleado');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logsdb`
--

DROP TABLE IF EXISTS `logsdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logsdb` (
  `fecha_hora` datetime DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `tabla` varchar(200) DEFAULT NULL,
  `acion` varchar(200) DEFAULT NULL,
  `DB` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logsdb`
--

LOCK TABLES `logsdb` WRITE;
/*!40000 ALTER TABLE `logsdb` DISABLE KEYS */;
INSERT INTO `logsdb` VALUES ('2022-07-18 22:35:49','root@localhost','feedback','delete','coder'),('2022-07-18 22:35:49','root@localhost','feedback','delete','coder'),('2022-07-18 22:35:49','root@localhost','feedback','delete','coder'),('2022-07-18 22:48:23','root@localhost','feedback','delete','coder'),('2022-07-18 22:48:23','root@localhost','feedback','delete','coder'),('2022-07-18 22:48:23','root@localhost','feedback','delete','coder'),('2022-07-18 22:48:23','root@localhost','feedback','delete','coder'),('2022-07-18 22:48:23','root@localhost','feedback','delete','coder');
/*!40000 ALTER TABLE `logsdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa_referidos`
--

DROP TABLE IF EXISTS `programa_referidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programa_referidos` (
  `Cod_referencia` int NOT NULL,
  `legajo_empleado` int NOT NULL,
  PRIMARY KEY (`Cod_referencia`),
  KEY `legajo_empleado` (`legajo_empleado`),
  CONSTRAINT `programa_referidos_ibfk_1` FOREIGN KEY (`legajo_empleado`) REFERENCES `empleados_rh` (`legajo_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa_referidos`
--

LOCK TABLES `programa_referidos` WRITE;
/*!40000 ALTER TABLE `programa_referidos` DISABLE KEYS */;
INSERT INTO `programa_referidos` VALUES (1,1),(2,1),(3,1),(4,1),(5,2),(6,2),(7,2),(8,2),(9,3),(10,3),(11,3),(12,4),(13,4),(14,4),(15,5),(16,5),(17,5),(18,5);
/*!40000 ALTER TABLE `programa_referidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `puestos_para_referidos`
--

DROP TABLE IF EXISTS `puestos_para_referidos`;
/*!50001 DROP VIEW IF EXISTS `puestos_para_referidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `puestos_para_referidos` AS SELECT 
 1 AS `cod_busqueda`,
 1 AS `cod_referencia`,
 1 AS `descripcion_puesto`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `puntos_empleados`
--

DROP TABLE IF EXISTS `puntos_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puntos_empleados` (
  `legajo_empleado` int NOT NULL,
  `puntos_acumulados` int DEFAULT NULL,
  `fecha` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntos_empleados`
--

LOCK TABLES `puntos_empleados` WRITE;
/*!40000 ALTER TABLE `puntos_empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `puntos_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencias2022`
--

DROP TABLE IF EXISTS `referencias2022`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referencias2022` (
  `fecha` int DEFAULT NULL,
  `legajo_empleado` int NOT NULL,
  `cod_referencia` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencias2022`
--

LOCK TABLES `referencias2022` WRITE;
/*!40000 ALTER TABLE `referencias2022` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencias2022` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `empleados_descripcion_contrato`
--

/*!50001 DROP VIEW IF EXISTS `empleados_descripcion_contrato`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleados_descripcion_contrato` AS select `e`.`Nombre` AS `nombre`,`c`.`cod_contrato` AS `cod_contrato`,`c`.`Descripcion` AS `descripcion`,`e`.`cod_empresa` AS `cod_empresa`,`e`.`tipo_contrato` AS `tipo_contrato` from (`empleados_rh` `e` join `contrato` `c`) where (`e`.`tipo_contrato` = `c`.`cod_contrato`) group by `e`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `empleados_empresas`
--

/*!50001 DROP VIEW IF EXISTS `empleados_empresas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleados_empresas` AS select `e`.`Nombre` AS `nombre`,`em`.`Descripcion` AS `descripcion`,`e`.`cod_empresa` AS `cod_empresa` from (`empleados_rh` `e` join `empresa` `em`) where (`e`.`cod_empresa` = `em`.`cod_empresa`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `empleados_puntuacion`
--

/*!50001 DROP VIEW IF EXISTS `empleados_puntuacion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleados_puntuacion` AS select `e`.`Nombre` AS `nombre`,`f`.`Puntuacion_empleado` AS `puntuacion_empleado`,`f`.`Comentarios` AS `comentarios`,`e`.`legajo_empleado` AS `legajo_empleado` from (`empleados_rh` `e` join `feedback` `f`) where (`e`.`legajo_empleado` = `f`.`legajo_empleado`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `empleados_referencias`
--

/*!50001 DROP VIEW IF EXISTS `empleados_referencias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleados_referencias` AS select `e`.`Nombre` AS `nombre`,count(`p`.`legajo_empleado`) AS `referencias_echas` from (`empleados_rh` `e` join `programa_referidos` `p`) where (`p`.`legajo_empleado` = `e`.`legajo_empleado`) group by `e`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `puestos_para_referidos`
--

/*!50001 DROP VIEW IF EXISTS `puestos_para_referidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `puestos_para_referidos` AS select `b`.`Cod_busqueda` AS `cod_busqueda`,`b`.`Cod_referencia` AS `cod_referencia`,`b`.`Descripcion_puesto` AS `descripcion_puesto` from (`busquedas_activas` `b` join `programa_referidos` `p`) where (`b`.`Cod_referencia` = `p`.`Cod_referencia`) group by `b`.`Cod_busqueda` */;
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

-- Dump completed on 2022-08-01 22:48:05
