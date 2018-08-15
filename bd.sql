CREATE DATABASE  IF NOT EXISTS `ciber` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ciber`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ciber
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accespoint`
--

DROP TABLE IF EXISTS `accespoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accespoint` (
  `idAp` int(11) NOT NULL,
  `Antena` varchar(45) DEFAULT NULL,
  `Marca` varchar(45) DEFAULT NULL,
  `Ubicacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accespoint`
--

LOCK TABLES `accespoint` WRITE;
/*!40000 ALTER TABLE `accespoint` DISABLE KEYS */;
INSERT INTO `accespoint` VALUES (1,'Airgrid M2 20db',NULL,'C'),(2,'Rocket M2 ',NULL,'H'),(3,'LGH',NULL,'C'),(4,'BaseBox 2 ',NULL,'H');
/*!40000 ALTER TABLE `accespoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bypass`
--

DROP TABLE IF EXISTS `bypass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bypass` (
  `id` int(11) NOT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `metodo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bypass`
--

LOCK TABLES `bypass` WRITE;
/*!40000 ALTER TABLE `bypass` DISABLE KEYS */;
INSERT INTO `bypass` VALUES (1,'samsumg','grand prime','gt50','pin de sim');
/*!40000 ALTER TABLE `bypass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celulares`
--

DROP TABLE IF EXISTS `celulares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `celulares` (
  `idcelulares` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `download` varchar(45) DEFAULT NULL,
  `recovery` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcelulares`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celulares`
--

LOCK TABLES `celulares` WRITE;
/*!40000 ALTER TABLE `celulares` DISABLE KEYS */;
INSERT INTO `celulares` VALUES (1,'lg','e612f',NULL,'pwd + vol +','vol + vol -* conectar cable');
/*!40000 ALTER TABLE `celulares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idclientes` int(11) NOT NULL,
  `cliente` varchar(45) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idclientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'fernando','551222'),(2,'federico','5555');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientesantenas`
--

DROP TABLE IF EXISTS `clientesantenas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientesantenas` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(45) DEFAULT NULL,
  `ApellidoPaterno` varchar(45) DEFAULT NULL,
  `ApellidoMaterno` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `idAp` int(11) DEFAULT NULL,
  `idPaquete` int(11) DEFAULT NULL,
  `Antena` varchar(45) DEFAULT NULL,
  `AntenaMAC` varchar(45) DEFAULT NULL,
  `AntenaUser` varchar(45) DEFAULT NULL,
  `AntenaUserKey` varchar(45) DEFAULT NULL,
  `Router` varchar(45) DEFAULT NULL,
  `RouterMAC` varchar(45) DEFAULT NULL,
  `RouterUser` varchar(45) DEFAULT NULL,
  `RouterUserKey` varchar(45) DEFAULT NULL,
  `SSID` varchar(45) DEFAULT NULL,
  `WifiPwd` varchar(45) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientesantenas`
--

LOCK TABLES `clientesantenas` WRITE;
/*!40000 ALTER TABLE `clientesantenas` DISABLE KEYS */;
INSERT INTO `clientesantenas` VALUES (1,'Vocho',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Marco',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Lady',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Juan Carlos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `clientesantenas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desservicio`
--

DROP TABLE IF EXISTS `desservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desservicio` (
  `iddesServicio` int(11) NOT NULL,
  `equipo` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`iddesServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desservicio`
--

LOCK TABLES `desservicio` WRITE;
/*!40000 ALTER TABLE `desservicio` DISABLE KEYS */;
INSERT INTO `desservicio` VALUES (1,'lap','2530',3,'rayado');
/*!40000 ALTER TABLE `desservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internet`
--

DROP TABLE IF EXISTS `internet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internet` (
  `idcliente` int(11) NOT NULL,
  `Cliente` varchar(45) DEFAULT NULL,
  `idAP` int(11) DEFAULT NULL,
  `Telefono` varchar(25) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internet`
--

LOCK TABLES `internet` WRITE;
/*!40000 ALTER TABLE `internet` DISABLE KEYS */;
/*!40000 ALTER TABLE `internet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `idmarca` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmarca`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'samsumg'),(2,'nokia'),(3,'huawei'),(4,'LG'),(5,'SAMSUMG'),(6,'MOTOROLA'),(7,'LG');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos` (
  `idPagos` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) NOT NULL,
  `MesPago` varchar(15) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `importe` double DEFAULT NULL,
  PRIMARY KEY (`idPagos`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,3,'mayo','2017-05-02',NULL),(2,2,'Junio','2017-05-03',NULL);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquetes`
--

DROP TABLE IF EXISTS `paquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paquetes` (
  `idpaquetes` int(11) NOT NULL,
  `Paquete` varchar(45) DEFAULT NULL,
  `Velocidad` varchar(45) DEFAULT NULL,
  `Precio` int(4) DEFAULT NULL,
  PRIMARY KEY (`idpaquetes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquetes`
--

LOCK TABLES `paquetes` WRITE;
/*!40000 ALTER TABLE `paquetes` DISABLE KEYS */;
INSERT INTO `paquetes` VALUES (1,'Basico','3 MB',350),(2,'Medio','5 MB',500),(3,'Alto','8 MB',700);
/*!40000 ALTER TABLE `paquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio` (
  `idservicio` int(11) NOT NULL,
  `servicio` varchar(45) DEFAULT NULL,
  `Costo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idservicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Formateo','300'),(2,'Respaldo','400');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'fernando','fercho','123',NULL),(2,'miguel','mi','321',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-14 20:28:03
