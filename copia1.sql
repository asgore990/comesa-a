-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: investigadores
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

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
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipos` (
  `IdEquipo` varchar(4) DEFAULT NULL,
  `IdFacultad` smallint(6) DEFAULT NULL,
  `Descripcion` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES ('H503',3,'Telemetro laser SICK'),('H235',3,'Multimetro digital FLUKE'),('M342',3,'Fuente de Voltaje TEKTRONIX'),('M234',3,'Cámara digital SONY'),('K231',3,'Lente para camara FUJINON-TV'),('C342',1,'Robot todo terreno Pioneer 2 AT'),('C344',1,'Robots PPRK'),('L234',4,'Estacion de trabajo Silicon Graphics'),('G323',4,'IBM Thinkpad'),('P342',4,'Puente de red inalambrico Proxim'),('P098',4,'Cámara ZOOMCAM USB'),('D234',2,'	Cargador para baterias Radioshack'),('H422',2,'Generador de Van Der Graff'),('G234',3,'Imanes Circulares'),('H324',3,'Maquina de Whimshurst'),('U422',4,'Haar Hygrometer');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultad`
--

DROP TABLE IF EXISTS `facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facultad` (
  `IdFacultad` smallint(6) DEFAULT NULL,
  `NomFacultad` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultad`
--

LOCK TABLES `facultad` WRITE;
/*!40000 ALTER TABLE `facultad` DISABLE KEYS */;
INSERT INTO `facultad` VALUES (1,'Ciencias Exactas'),(2,'Ciencias Naturales'),(3,'Ciencia y Tecnología'),(4,'Bioquímica y Ciencias Biológicas');
/*!40000 ALTER TABLE `facultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investigadores`
--

DROP TABLE IF EXISTS `investigadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `investigadores` (
  `DNI` varchar(10) DEFAULT NULL,
  `NomInvestigador` varchar(35) DEFAULT NULL,
  `ApellInvstigador` varchar(50) DEFAULT NULL,
  `IdFacultad` smallint(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigadores`
--

LOCK TABLES `investigadores` WRITE;
/*!40000 ALTER TABLE `investigadores` DISABLE KEYS */;
INSERT INTO `investigadores` VALUES ('38486831X','ESTEFANIA','LÓPEZ DE PABLO GARCIA UCEDA',1),('56234233K','QUERALT','ANGUERA VILAFRANCA',1),('23435343P','JOAN','BASTARDES SOTO',2),('X3543098R','RAQUEL','RAYA GAVILAN',3),('32544333I','ELIOT','BIDAULT CULLERÉS',4),('37879998D','LLUÍS','VISO GILABERT',4);
/*!40000 ALTER TABLE `investigadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservas` (
  `IdReserva` int(11) NOT NULL,
  `DNI` varchar(10) DEFAULT NULL,
  `IdEquipo` varchar(4) DEFAULT NULL,
  `FechaInicio` datetime(6) DEFAULT NULL,
  `FechaFin` datetime(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,'37879998D','H235','2005-09-09 00:00:00.000000','2005-09-23 00:00:00.000000'),(2,'38486831X','H324','2005-09-09 00:00:00.000000','2005-09-14 00:00:00.000000'),(3,'32544333I','C342','2005-09-13 00:00:00.000000','2005-09-21 00:00:00.000000'),(4,'38486831X','P342','2005-09-16 00:00:00.000000','2005-10-01 00:00:00.000000'),(5,'56234233K','K231','2005-09-20 00:00:00.000000','2005-09-25 00:00:00.000000'),(6,'X3543098R','M234','2005-09-21 00:00:00.000000','2005-09-29 00:00:00.000000'),(7,'56234233K','M234','2005-09-24 00:00:00.000000','2005-10-02 00:00:00.000000'),(8,'37879998D','L234','2005-09-27 00:00:00.000000','2005-10-11 00:00:00.000000'),(9,'56234233K','C342','2005-10-03 00:00:00.000000','2005-10-14 00:00:00.000000'),(10,'56234233K','U422','2005-10-06 00:00:00.000000','2005-10-10 00:00:00.000000'),(11,'37879998D','C344','2005-10-08 00:00:00.000000','2005-10-19 00:00:00.000000'),(12,'56234233K','H235','2005-10-12 00:00:00.000000','2005-10-23 00:00:00.000000'),(13,'37879998D','H324','2005-10-17 00:00:00.000000','2005-10-24 00:00:00.000000'),(14,'23435343P','H324','2005-10-18 00:00:00.000000','2005-10-25 00:00:00.000000'),(15,'38486831X','M342','2005-10-20 00:00:00.000000','2005-10-27 00:00:00.000000'),(16,'23435343P','U422','2005-10-23 00:00:00.000000','2005-10-26 00:00:00.000000'),(17,'37879998D','M342','2005-10-23 00:00:00.000000','2005-10-28 00:00:00.000000'),(18,'56234233K','U422','2005-10-31 00:00:00.000000','2005-11-07 00:00:00.000000'),(19,'38486831X','M234','2005-11-06 00:00:00.000000','2005-11-10 00:00:00.000000'),(20,'56234233K','C342','2005-11-15 00:00:00.000000','2005-11-24 00:00:00.000000'),(21,'56234233K','K231','2005-11-20 00:00:00.000000','2005-11-30 00:00:00.000000'),(22,'23435343P','H503','2005-11-23 00:00:00.000000','2005-12-07 00:00:00.000000'),(23,'32544333I','C344','2005-11-26 00:00:00.000000','2005-12-06 00:00:00.000000'),(24,'32544333I','P342','2005-11-28 00:00:00.000000','2005-12-05 00:00:00.000000'),(25,'38486831X','P342','2005-11-30 00:00:00.000000',NULL),(26,'23435343P','G234','2005-12-01 00:00:00.000000',NULL),(27,'X3543098R','P098','2005-12-04 00:00:00.000000',NULL),(28,'23435343P','M234','2005-12-09 00:00:00.000000',NULL),(29,'23435343P','H235','2005-12-13 00:00:00.000000',NULL),(30,'X3543098R','P342','2005-12-14 00:00:00.000000',NULL);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-21 12:15:54
