-- MySQL dump 10.16  Distrib 10.1.24-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: votayhnf_db_votaciones
-- ------------------------------------------------------
-- Server version	10.1.24-MariaDB-cll-lve

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
-- Table structure for table `Bases`
--

DROP TABLE IF EXISTS `Bases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bases` (
  `ID_Base` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Logo` varchar(200) NOT NULL COMMENT 'Nombre base de la imagen ej: logo.png',
  `Estado` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID_Base`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bases`
--

LOCK TABLES `Bases` WRITE;
/*!40000 ALTER TABLE `Bases` DISABLE KEYS */;
INSERT INTO `Bases` (`ID_Base`, `Nombre`, `Logo`, `Estado`) VALUES (1,'Renova Spa','renova_spa.png',''),(2,'Scuba Caribe ','escuba_caribe.png',''),(3,'Isla Catalina <br> Casa de Campo','isca_catalina.png',''),(4,'Oficinas y Talleres','oficinas_y_talleres.png','');
/*!40000 ALTER TABLE `Bases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleados`
--

DROP TABLE IF EXISTS `Empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Empleados` (
  `ID_Empleado` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Base` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Estado` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID_Empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleados`
--

LOCK TABLES `Empleados` WRITE;
/*!40000 ALTER TABLE `Empleados` DISABLE KEYS */;
INSERT INTO `Empleados` (`ID_Empleado`, `ID_Base`, `Nombre`, `Apellidos`, `Estado`) VALUES (1,1,'Amadin','Segura Gonzalez',''),(2,1,'Ana Isa','Guerrero Reyes',''),(3,1,'Carla Lucia','Pérez De los Santos',''),(4,1,'Cristy Rosse','Acosta Mussonton',''),(5,1,'Dahiana Altagracia','Blanco',''),(6,1,'Daniela Moni','Caraballo',''),(7,1,'Daris Daniel','Hernandez Marte',''),(8,1,'Diolanda','Ruiz Ceballos',''),(9,1,'Diosmery','Fernandez Marte',''),(10,1,'Dulce Maria','Encarnacion Jimenez',''),(11,1,'Genesis','Torres Gil',''),(12,1,'Jenny','Melo Sánchez',''),(13,1,'Jihnna Yarissa','Zoriano Sosa',''),(14,1,'Jose Miguel','Cruz Baez',''),(15,1,'Katherine Stephanie','De los',''),(16,1,'Mildres','Mendoza Caraballo',''),(17,1,'Miledys','Morales Richardson',''),(18,1,'Mirianny Darleny','Guerrero',''),(19,1,'Navia','Guante Sena',''),(20,1,'Ornella Clarissa','Remy',''),(21,1,'Rinne Berenisse','Guerrero De los',''),(22,1,'Sahoni','Pache',''),(23,1,'Sirio Leonel','Matos Novas',''),(24,1,'Sujeidy Fatima','De La Rosa Mota',''),(25,1,'Yeris Maria','Batista Ramirez',''),(26,1,'Yohamirca','Sanchez Baez',''),(27,1,'Yuri Leidy','Nuñez Basora',''),(28,1,'Agustina','Reynoso Castro',''),(29,1,'Ana Barbara','Ruiz De La Paz',''),(30,1,'Ana Javier','Cayetano',''),(31,1,'Boni-Su','Rijo Rijo',''),(32,1,'Brian','Contreras Guerrero',''),(33,1,'Carina','Ramos Vilorio',''),(34,1,'Darihanna De Jesus','Perez',''),(35,1,'Deyanira','Montilla Mateo',''),(36,1,'Dominga','Castillo Abad',''),(37,1,'Elena','Martinez',''),(38,1,'Eronelis','Guerrero',''),(39,1,'Evelyn Carolina','Espinal Pion',''),(40,1,'Francisco','De los Santos',''),(41,1,'Franyeli','Arredondo Lantigua',''),(42,1,'Gladys Rosalia','Soto Rojas',''),(43,1,'Irma Jhovanny','Pion Rodriguez',''),(44,1,'Jandireya','Santana Castillo',''),(45,1,'Joanny','Scarlette Melo',''),(46,1,'Keila','Santana Reynoso',''),(47,1,'Martina','Mota Morales',''),(48,1,'Massiel','Rivera Susana',''),(49,1,'Polyeucte','Omer Previlon',''),(50,1,'Ruth Bethania','Beato Henriquez',''),(51,1,'Soribel','Coronado Franco',''),(52,1,'Tania','Henriquez Aybar',''),(53,1,'Yavianny Roset','Rosa Jimenez',''),(54,1,'Yokasta','Ortiz',''),(55,1,'Ysidra','Bautista Castro',''),(56,2,'Alberto Antonio','Mercedes Aybar',''),(57,2,'Berlin','Jimenez De Morla',''),(58,2,'Brahian','Cuevas',''),(59,2,'Cesar Julio','Ramirez Fernandez',''),(60,2,'Cynthia Michelle','Del Orbe',''),(61,2,'Dahiana','Santana',''),(62,2,'Felix Manuel','Abreu Garcia',''),(63,2,'Freddy Alejandro','Fredimon',''),(64,2,'Joselo','Puello',''),(65,2,'Juan Ricardo','Elias Tonton',''),(66,2,'Licelotte','Guzman',''),(67,2,'Lucia','Senli Bosque',''),(68,2,'Luis Miguel','Rincon',''),(69,2,'Maria Magdalena','Cruz Garcia',''),(70,2,'Miguel Antonio','Rijo',''),(71,2,'Narciso Andres','Rosario Rosario',''),(72,2,'Noe Castro','Jimenez',''),(73,2,'Pedro Luis','Hernandez Andujar',''),(74,2,'Ramon Emilio','Belen Santana',''),(75,2,'Soledad','Del Pino Ponte',''),(76,2,'Susanne','Schwarz',''),(77,2,'Carlos Manuel','Martinez',''),(78,2,'Felix','Chalas',''),(79,2,'Francisco Argelis','Frias Reyes',''),(80,2,'Genesis','Santana Zabala',''),(81,2,'Glendenis','Carrion Acosta',''),(82,2,'Juan Carlos','De León Espinales',''),(83,2,'Juan Carlos','Ignacio Martinez',''),(84,2,'Keila Vitalina','Portes Rijo',''),(85,2,'Lola','Brigit Kuntz',''),(86,2,'Miguel','Queten Dorcine',''),(87,2,'Rogelio','De Paula Guzman',''),(88,2,'Algeni','Hernandez Hernandez',''),(89,2,'Andre','Kull Aguillar',''),(90,2,'Cristobal','Cedeño Perez',''),(91,2,'Daniel','De la Rosa',''),(92,2,'Elias','Mateo Soler',''),(93,2,'Gorka','Lucas Nogues',''),(94,2,'Juan','Avelino  Pérez',''),(95,2,'Juan Carlos','Perez Febles',''),(96,2,'Julio César','Martinez',''),(97,2,'Julio Cesar','Zapata Tavarez',''),(98,2,'Julio Manuel','Nuñez De La Rosa',''),(99,2,'Kania Maxime','Matthleu Martin',''),(100,2,'Mark','Jordon Walenka',''),(101,2,'Martires','Mercedes Laureano',''),(102,2,'Matias','Vilorio De la Cruz',''),(103,2,'Mauricio','Hiraldo Silverio',''),(104,2,'Michael Miguel','Cueto Castillo',''),(105,2,'Miguelina','Henriquez',''),(106,2,'Natali','Marcelino',''),(107,2,'Octavi,o','Almonte Torres',''),(108,2,'Raiko','Santamarina Cuesta',''),(109,2,'Ramon','Martinez Martinez',''),(110,2,'Richar','Mejia',''),(111,2,'Victor Manuel','Salvador',''),(112,2,'Wastelkis','Bautista Sinelice',''),(113,2,'Wendy Alfonso','Robles Marcelo',''),(114,2,'Yeikel Andres','Ruiz',''),(115,2,'Zacarias','Mendoza Silverio',''),(116,2,'Jaime Andres','Gomez',''),(117,2,'Andres','Gil Carpio',''),(118,2,'Andres','Rodriguez',''),(119,2,'Bienvenido','Aponte',''),(120,2,'Genesis Isabel','Montero Custodio',''),(121,2,'Guillermo','Rondon',''),(122,2,'Juan Esteban','Marquez Paulino',''),(123,2,'Lucien','Jean Toussaint',''),(124,2,'Marilei','Kuns',''),(125,2,'Martires','Reyes Dominguez',''),(126,2,'Miguel Angel','Ozorio Reyes',''),(127,2,'Rafael','Enrique Santos',''),(128,2,'Ramon Alberto','De la Rosa',''),(129,2,'Toni','Asencio Santana',''),(130,2,'Uly Miguel','Marmolejos Ruiz',''),(131,2,'Wilson','Jean',''),(132,2,'Agata','Ludwika Rok',''),(133,2,'Benny','Williams',''),(134,2,'Beyker','Humphery Mañon',''),(135,2,'Dani','Marcelino',''),(136,2,'Daniel','Baez Reyna',''),(137,2,'Daniel','Morales Becerra',''),(138,2,'Darling Eliezer','Rosario Nuñez',''),(139,2,'Darly','Vizcaino',''),(140,2,'Felix Manuel','Silverio Damian',''),(141,2,'Francisco Franklin','Nuñez Duran',''),(142,2,'Geovanny Andres','Ferreira',''),(143,2,'Jenfis','Rodriguez Cedeño',''),(144,2,'Juan Antonio','Henriquez Polanco',''),(145,2,'Juan Martires','Carmona  Peguero',''),(146,2,'Luis Manuel','Garcia Martinez',''),(147,2,'Moises','Ortega Valdez',''),(148,2,'Nayelyn Anderson','Nuñez',''),(149,2,'Rafael Esteban','Gonzalez Artiles',''),(150,2,'Santo Saturnino','Veloz Ramirez',''),(151,2,'Victor','Mercado Rosa',''),(152,2,'Eliezer','Flores Torres',''),(153,2,'Frank','Wolfang',''),(154,2,'Gloria Maria','Urena Parra',''),(155,2,'Henry Antonio','Gonzalez Ozoria',''),(156,2,'Jelfrey','Vasquez',''),(157,2,'Jose Ramon','Cid Almonte',''),(158,2,'Kelvin','Pascual Tamares',''),(159,2,'Pedro','Polanco',''),(160,2,'Roddy','Alberto Pérez',''),(161,2,'Saul','Garcia Batista',''),(162,2,'Vianely','Rosario Placencia',''),(163,2,'Vicente','Guzman Richard',''),(164,2,'Alexandra','Ventura Rodriguez',''),(165,2,'Arcadio','Pichardo Brito',''),(166,2,'Belkys Maria','Eguren Balbuena',''),(167,2,'Carmen Yuliana','Severino',''),(168,2,'Clara','Castillo Ventura',''),(169,2,'Deyanira','Ureña Vasquez',''),(170,2,'Dominga','Acevedo',''),(171,2,'Julissa','Sanchez',''),(172,2,'Maria Taina','Ortega Cruz',''),(173,2,'Mileika','Reyes Gonzalez',''),(174,2,'Nathalie Yrrisarry','Rodriguez',''),(175,2,'Rosaury','Ventura Salvador',''),(176,2,'Saony Andreina','Vaquez Payams',''),(177,2,'Yngrid Julissa','Rodriguez Medina',''),(178,3,'Angel Antonio','Gabriel Francisca',''),(179,3,'Carmen Luisa','Guerrero  Tineo',''),(180,3,'Concepcion','Mercedes Laureano',''),(181,3,'Desiderio','De Leon Del Rosario',''),(182,3,'Emma Esther','Castro Valdez',''),(183,3,'Gamalier','Valdez Astacio',''),(184,3,'Jorge Humberto','Pérez Rijo',''),(185,3,'Osias Leandry','Lantigua Molina',''),(186,3,'Aderlin Mercedes','Rondon Mota',''),(187,3,'Carlos Andres','Nicolas Rosario',''),(188,3,'Emiliano Agustin','Garcia Feliu',''),(189,3,'Jean Carlos','De La Rosa Brito',''),(190,3,'Johan Manuel','Baez Zorrilla',''),(191,3,'Johanna Esther','Castillo Guerrero',''),(192,3,'Lesny Castiuska','Ramirez Ozorio',''),(193,3,'Miguel Angel','Guerrero Chireno',''),(194,3,'Misael','Santana Chireno',''),(195,3,'Williams','Rijo Fulgencio',''),(196,3,'Gloria Mercedes','Porino Castillo',''),(197,3,'Leticia Fanny','Jean Jacques',''),(224,4,'Cristino','Reyes Fornes',''),(225,4,'Eddy Alberto','Feliz',''),(226,4,'Joan','Guerrero',''),(227,4,'Jorge','De los santos',''),(228,4,'Jorge','Mercedes',''),(229,4,'Juan  Feliciano','Donato',''),(230,4,'Junior Antonio','Guerrero',''),(231,4,'Pedro Jose','Sanchez Perez',''),(232,4,'Ramon','Rijo',''),(233,4,'Stuar','De leon Abreu',''),(236,4,'Luz Marina','Rodriguez Sanchez',''),(237,4,'Zoila Luz','Nolasco Santana',''),(238,4,'Anibal Augusto','Santana Calvo',''),(239,4,'Alix Natacha Miguelina','Tavarez',''),(240,4,'Carlos Antonio','Ferrer Allendoerfer',''),(241,4,'Keidy Naty Castillo','Guzman',''),(242,4,'Mary Dania','CedeÃ±o CedeÃ±o',''),(243,4,'Mary Landry','Caraballo Castillo',''),(245,4,'Urys Estela','Miliano Pujols',''),(246,4,'Wanda Josefina','Ramirez Cedano',''),(247,4,'Wendy Fransheska','Del Rosario',''),(248,4,'Franklin Odalis','PÃ©rez',''),(249,4,'Lorenzo Angel','Corrales  Diego','');
/*!40000 ALTER TABLE `Empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Encuestas`
--

DROP TABLE IF EXISTS `Encuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Encuestas` (
  `ID_Encuesta` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Base` int(11) NOT NULL,
  `ID_Votante` int(11) NOT NULL,
  `ID_Seleccion` int(11) NOT NULL,
  `Fecha_Tiempo` datetime NOT NULL,
  PRIMARY KEY (`ID_Encuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Encuestas`
--

LOCK TABLES `Encuestas` WRITE;
/*!40000 ALTER TABLE `Encuestas` DISABLE KEYS */;
INSERT INTO `Encuestas` (`ID_Encuesta`, `ID_Base`, `ID_Votante`, `ID_Seleccion`, `Fecha_Tiempo`) VALUES (51,2,148,138,'2017-11-11 14:59:22'),(52,2,138,147,'2017-11-11 15:06:39'),(53,4,231,226,'2017-11-11 21:47:22'),(54,4,227,231,'2017-11-12 06:18:39'),(55,2,147,97,'2017-11-12 08:30:28'),(56,2,56,74,'2017-11-12 11:51:04'),(57,3,181,197,'2017-11-12 12:04:04'),(58,3,179,181,'2017-11-12 12:16:49'),(59,3,185,192,'2017-11-12 12:17:04'),(60,3,178,184,'2017-11-12 12:20:06'),(61,2,72,85,'2017-11-12 12:25:32'),(62,2,65,56,'2017-11-12 13:06:52'),(63,2,63,56,'2017-11-12 13:09:53'),(64,2,62,71,'2017-11-12 13:14:39'),(65,2,84,77,'2017-11-12 14:11:25'),(66,2,66,56,'2017-11-12 15:31:53'),(67,2,59,56,'2017-11-12 16:07:45'),(68,2,68,118,'2017-11-12 16:10:55'),(69,2,76,197,'2017-11-12 16:12:59'),(70,2,74,0,'2017-11-12 16:15:12'),(71,2,70,74,'2017-11-12 16:18:55'),(72,2,73,75,'2017-11-13 07:15:20'),(73,2,81,75,'2017-11-13 07:17:08'),(74,2,60,57,'2017-11-13 07:18:39'),(75,2,82,72,'2017-11-13 07:20:23'),(76,2,75,80,'2017-11-13 07:41:45'),(77,2,57,85,'2017-11-13 07:43:40'),(78,2,61,57,'2017-11-13 08:00:19'),(79,4,242,95,'2017-11-13 08:01:47'),(80,4,239,95,'2017-11-13 08:02:38'),(81,4,245,237,'2017-11-13 08:02:40'),(82,2,58,73,'2017-11-13 08:03:33'),(83,2,87,83,'2017-11-13 08:15:10'),(84,2,71,62,'2017-11-13 08:16:41'),(85,4,241,239,'2017-11-13 08:18:36'),(86,2,67,75,'2017-11-13 09:14:32'),(87,4,240,110,'2017-11-13 09:22:32'),(88,1,22,233,'2017-11-13 11:13:04'),(89,3,182,196,'2017-11-13 11:26:04'),(90,3,184,84,'2017-11-13 11:29:08'),(91,1,49,22,'2017-11-13 12:00:07'),(92,4,225,231,'2017-11-13 12:35:12'),(93,4,230,225,'2017-11-13 12:36:35'),(94,4,226,225,'2017-11-13 12:39:04'),(95,4,224,225,'2017-11-13 12:40:17'),(96,1,34,44,'2017-11-13 12:58:59'),(97,1,2,119,'2017-11-13 13:47:41'),(98,3,197,195,'2017-11-13 15:29:39'),(99,3,188,190,'2017-11-13 15:37:31'),(100,3,192,185,'2017-11-13 15:41:37'),(101,3,192,185,'2017-11-13 15:41:39'),(102,3,186,197,'2017-11-13 15:45:03'),(103,3,190,192,'2017-11-13 15:47:24'),(104,3,187,56,'2017-11-13 15:49:14'),(105,3,193,190,'2017-11-13 15:52:31'),(106,4,229,227,'2017-11-13 17:10:11'),(107,4,228,231,'2017-11-13 17:11:21'),(108,3,191,188,'2017-11-13 17:52:34'),(109,3,195,0,'2017-11-13 18:09:13'),(110,2,134,150,'2017-11-14 07:41:12'),(111,2,143,142,'2017-11-14 07:42:22'),(112,2,144,147,'2017-11-14 07:43:46'),(113,2,135,147,'2017-11-14 07:44:33'),(114,3,194,188,'2017-11-14 07:56:59'),(115,2,151,135,'2017-11-14 08:09:28'),(116,2,122,135,'2017-11-14 08:10:22'),(117,2,136,147,'2017-11-14 08:25:02'),(118,2,140,138,'2017-11-14 08:39:54'),(119,2,78,83,'2017-11-14 08:43:41'),(120,1,31,233,'2017-11-14 09:16:28'),(121,2,80,75,'2017-11-14 09:24:03'),(122,2,86,183,'2017-11-14 09:28:46'),(123,2,83,77,'2017-11-14 09:29:49'),(124,2,77,83,'2017-11-14 09:31:41'),(125,3,196,181,'2017-11-14 10:11:03'),(126,1,45,18,'2017-11-14 11:44:22'),(127,2,85,75,'2017-11-14 12:07:42'),(128,1,42,49,'2017-11-14 13:04:09'),(129,1,42,49,'2017-11-14 13:04:10'),(130,1,47,31,'2017-11-14 13:59:05'),(131,1,53,52,'2017-11-14 14:07:23'),(132,3,189,188,'2017-11-14 15:19:37'),(133,1,51,18,'2017-11-14 19:50:17'),(134,2,141,147,'2017-11-15 06:47:50'),(135,4,233,95,'2017-11-15 07:46:50'),(136,1,55,10,'2017-11-15 12:45:17'),(137,4,246,245,'2017-11-15 12:47:39'),(138,1,18,44,'2017-11-15 14:00:19'),(139,1,17,2,'2017-11-15 14:02:31'),(140,1,20,2,'2017-11-15 14:06:08'),(141,1,6,10,'2017-11-15 14:28:49'),(142,1,23,18,'2017-11-15 14:29:38'),(143,1,27,18,'2017-11-15 14:30:50'),(144,2,108,93,'2017-11-15 14:33:06'),(145,2,105,147,'2017-11-15 14:35:13'),(146,2,130,105,'2017-11-15 14:38:10'),(147,2,120,95,'2017-11-15 15:04:40'),(148,2,103,95,'2017-11-15 15:17:14'),(149,2,119,91,'2017-11-15 15:21:11'),(150,2,119,91,'2017-11-15 15:21:12'),(151,2,118,91,'2017-11-15 15:22:05'),(152,2,145,95,'2017-11-15 15:36:43'),(153,2,91,88,'2017-11-15 15:37:43'),(154,2,110,98,'2017-11-15 15:38:01'),(155,2,88,118,'2017-11-15 15:38:27'),(156,2,104,95,'2017-11-15 15:39:31'),(157,2,104,95,'2017-11-15 15:39:32'),(158,2,104,95,'2017-11-15 15:39:32'),(159,1,5,18,'2017-11-15 15:40:40'),(160,1,7,18,'2017-11-15 15:45:23'),(161,1,21,27,'2017-11-15 16:06:48'),(162,1,11,80,'2017-11-15 16:09:40'),(163,1,38,34,'2017-11-15 17:12:18'),(164,1,52,22,'2017-11-15 17:13:03'),(165,1,48,44,'2017-11-15 17:27:31'),(166,1,41,38,'2017-11-15 17:28:03'),(167,1,46,22,'2017-11-15 17:29:04'),(168,1,8,10,'2017-11-15 17:58:19'),(169,1,8,10,'2017-11-15 17:58:19'),(170,1,8,10,'2017-11-15 17:58:19'),(171,1,8,10,'2017-11-15 17:58:19'),(172,1,30,0,'2017-11-15 17:58:48'),(173,1,26,20,'2017-11-15 21:19:07'),(174,2,69,61,'2017-11-16 07:37:17'),(175,2,117,118,'2017-11-16 08:29:46'),(176,1,39,18,'2017-11-16 08:38:02'),(177,2,64,59,'2017-11-16 08:38:56'),(178,1,25,20,'2017-11-16 08:48:01'),(179,1,36,0,'2017-11-16 08:51:57'),(180,1,29,22,'2017-11-16 08:55:39'),(181,1,13,22,'2017-11-16 09:14:25'),(182,1,35,18,'2017-11-16 09:30:06'),(183,1,10,0,'2017-11-16 09:39:12'),(184,2,115,95,'2017-11-16 15:21:40'),(185,2,95,88,'2017-11-16 15:25:57'),(186,2,131,88,'2017-11-16 16:03:19'),(187,2,116,88,'2017-11-16 16:18:44');
/*!40000 ALTER TABLE `Encuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuarios` (
  `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(60) NOT NULL,
  `Clave` varchar(60) NOT NULL,
  PRIMARY KEY (`ID_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` (`ID_Usuario`, `Nombre`, `Clave`) VALUES (1,'admin','e698f2679be5ba5c9c0b0031cb5b057c');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'votayhnf_db_votaciones'
--

--
-- Dumping routines for database 'votayhnf_db_votaciones'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-16 16:22:55
