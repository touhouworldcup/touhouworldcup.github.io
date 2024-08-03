-- MariaDB dump 10.19-11.3.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: twc
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB

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
-- Table structure for table `Players`
--

DROP TABLE IF EXISTS `Players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Players` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `JapaneseName` varchar(45) DEFAULT NULL,
  `ChineseName` varchar(45) DEFAULT NULL,
  `Stream` varchar(255) DEFAULT NULL,
  `Social` varchar(255) DEFAULT NULL,
  `DisplayStream` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Players`
--

LOCK TABLES `Players` WRITE;
/*!40000 ALTER TABLE `Players` DISABLE KEYS */;
/*!40000 ALTER TABLE `Players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Results 2024`
--

DROP TABLE IF EXISTS `Results 2024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Results 2024` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Date__UTC_` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `P1_Shottype` varchar(45) DEFAULT NULL,
  `P1_TWCScore` decimal(10,3) DEFAULT 0.000,
  `P1_Result` varchar(45) DEFAULT NULL,
  `P2_Shottype` varchar(45) DEFAULT NULL,
  `P2_TWCScore` decimal(10,3) DEFAULT 0.000,
  `P2_Result` varchar(45) DEFAULT NULL,
  `P3_Shottype` varchar(45) DEFAULT NULL,
  `P3_TWCScore` decimal(10,3) DEFAULT 0.000,
  `P3_Result` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Results 2024`
--

LOCK TABLES `Results 2024` WRITE;
/*!40000 ALTER TABLE `Results 2024` DISABLE KEYS */;
/*!40000 ALTER TABLE `Results 2024` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Schedule 2024`
--

DROP TABLE IF EXISTS `Schedule 2024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Schedule 2024` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Date__UTC_` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Player_1` varchar(45) DEFAULT '-',
  `Player_2` varchar(45) DEFAULT '-',
  `Player_3` varchar(45) DEFAULT '-',
  `ResetTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Schedule 2024`
--

LOCK TABLES `Schedule 2024` WRITE;
/*!40000 ALTER TABLE `Schedule 2024` DISABLE KEYS */;
/*!40000 ALTER TABLE `Schedule 2024` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Scoring Rubrics`
--

DROP TABLE IF EXISTS `Scoring Rubrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Scoring Rubrics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Game` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `Difficulty` varchar(45) DEFAULT NULL,
  `Shottype` varchar(45) DEFAULT NULL,
  `C` varchar(255) DEFAULT NULL,
  `B` varchar(255) DEFAULT NULL,
  `A` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Scoring Rubrics`
--

LOCK TABLES `Scoring Rubrics` WRITE;
/*!40000 ALTER TABLE `Scoring Rubrics` DISABLE KEYS */;
INSERT INTO `Scoring Rubrics` VALUES
(1,'th06',NULL,NULL,NULL,NULL,'Lunatic','ReimuA','2.8777','9.7425e-06','13.76'),
(2,'th06',NULL,NULL,NULL,NULL,'Lunatic','ReimuB','2.1811','0.0038547','4.0967'),
(3,'th06',NULL,NULL,NULL,NULL,'Lunatic','MarisaA','2.8777','1.2663e-05','13.76'),
(4,'th06',NULL,NULL,NULL,NULL,'Lunatic','MarisaB','2.8031','3.2468e-05','9.8963'),
(5,'th06',NULL,NULL,NULL,NULL,'Extra','ReimuA','2.5148','2.35e-07','19.9179'),
(6,'th06',NULL,NULL,NULL,NULL,'Extra','ReimuB','2.6586','2.531e-06','12.2179'),
(7,'th06',NULL,NULL,NULL,NULL,'Extra','MarisaA','2.5148','1.578e-06','14.2179'),
(8,'th06',NULL,NULL,NULL,NULL,'Extra','MarisaB','2.6586','2.18e-07','16.9179'),
(9,'th07',NULL,NULL,NULL,NULL,'Lunatic','ReimuA','2.453','0.0011488','1.4059'),
(10,'th07',NULL,NULL,NULL,NULL,'Lunatic','ReimuB','1.496','0.0028436','1.348'),
(11,'th07',NULL,NULL,NULL,NULL,'Lunatic','MarisaA','1.762','0.002234','1.3715'),
(12,'th07',NULL,NULL,NULL,NULL,'Lunatic','MarisaB','2.453','0.00097109','1.419'),
(13,'th07',NULL,NULL,NULL,NULL,'Lunatic','SakuyaA','2.453','0.0011488','1.4059'),
(14,'th07',NULL,NULL,NULL,NULL,'Lunatic','SakuyaB','0.595','0.01034','1.2811'),
(15,'th07',NULL,NULL,NULL,NULL,'Extra','ReimuA','0.014','6.4625e-08','4.3724'),
(16,'th07',NULL,NULL,NULL,NULL,'Extra','ReimuB','0.124','5.0488e-08','4.0716'),
(17,'th07',NULL,NULL,NULL,NULL,'Extra','MarisaA','0.0216','6.4011e-08','4.8365'),
(18,'th07',NULL,NULL,NULL,NULL,'Extra','MarisaB','0.0316','5.7672e-08','5.0565'),
(19,'th07',NULL,NULL,NULL,NULL,'Extra','SakuyaA','0.0216','6.1186e-08','4.7965'),
(20,'th07',NULL,NULL,NULL,NULL,'Extra','SakuyaB','0.0171','6.2765e-08','4.3376'),
(21,'th08',NULL,NULL,NULL,NULL,'Lunatic','ReimuYukari','0','0.00028','1.23'),
(22,'th08',NULL,NULL,NULL,NULL,'Lunatic','MarisaAlice','0','0.00032','1.2292'),
(23,'th08',NULL,NULL,NULL,NULL,'Lunatic','SakuyaRemilia','0','0.00036761','1.205'),
(24,'th08',NULL,NULL,NULL,NULL,'Lunatic','Youmu & Yuyuko','0','0.000359','1.2082'),
(25,'th08',NULL,NULL,NULL,NULL,'Lunatic','Reimu','1.1816','0.0010059','1.2182'),
(26,'th08',NULL,NULL,NULL,NULL,'Lunatic','Yukari','0.43702','0.0011464','1.207'),
(27,'th08',NULL,NULL,NULL,NULL,'Lunatic','Marisa','1.1816','0.0010059','1.2182'),
(28,'th08',NULL,NULL,NULL,NULL,'Lunatic','Alice','0','0.00036','1.2042'),
(29,'th08',NULL,NULL,NULL,NULL,'Lunatic','Sakuya','2.28193','1.2507e-05','1.4409'),
(30,'th08',NULL,NULL,NULL,NULL,'Lunatic','Remilia','2.28193','1.2507e-05','1.4409'),
(31,'th08',NULL,NULL,NULL,NULL,'Lunatic','Youmu','2.28193','6.024e-06','1.4409'),
(32,'th08',NULL,NULL,NULL,NULL,'Lunatic','Yuyuko','2.28193','1.2507e-05','1.4409'),
(33,'th08',NULL,NULL,NULL,NULL,'Extra','ReimuYukari','0','0.00029','1.48909532471811'),
(34,'th08',NULL,NULL,NULL,NULL,'Extra','MarisaAlice','0','0.000107','1.52438410566743'),
(35,'th08',NULL,NULL,NULL,NULL,'Extra','SakuyaRemilia','0','0.00029','1.48909532471811'),
(36,'th08',NULL,NULL,NULL,NULL,'Extra','YoumuYuyuko','0','5.47e-05','1.56508458007329'),
(37,'th08',NULL,NULL,NULL,NULL,'Extra','Reimu','0','1.33e-11','3.06439349308142'),
(38,'th08',NULL,NULL,NULL,NULL,'Extra','Yukari','0','6.72e-05','1.8505'),
(39,'th08',NULL,NULL,NULL,NULL,'Extra','Marisa','0','2.93e-20','6'),
(40,'th08',NULL,NULL,NULL,NULL,'Extra','Alice','0','7.62e-05','1.8505'),
(41,'th08',NULL,NULL,NULL,NULL,'Extra','Sakuya','0','2.29e-13','3.59602184827056'),
(42,'th08',NULL,NULL,NULL,NULL,'Extra','Remilia','0','4.6e-05','1.86'),
(43,'th08',NULL,NULL,NULL,NULL,'Extra','Youmu','0','3.5e-05','1.56508458007329'),
(44,'th08',NULL,NULL,NULL,NULL,'Extra','Yuyuko','0','3.63e-05','1.8505'),
(45,'th09',NULL,NULL,NULL,NULL,'Lunatic','Reimu','0.6','0.55','3.81'),
(46,'th09',NULL,NULL,NULL,NULL,'Lunatic','Marisa','2.2','1.16','1.89'),
(47,'th09',NULL,NULL,NULL,NULL,'Lunatic','Sakuya','2','0.47','5.11'),
(48,'th09',NULL,NULL,NULL,NULL,'Lunatic','Youmu','1','0.93','2.6'),
(49,'th09',NULL,NULL,NULL,NULL,'Lunatic','Reisen','4','0.61','1.94'),
(50,'th09',NULL,NULL,NULL,NULL,'Lunatic','Cirno','3','0.77','2.1'),
(51,'th09',NULL,NULL,NULL,NULL,'Lunatic','Lyrica','0.6','0.59','4.35'),
(52,'th09',NULL,NULL,NULL,NULL,'Lunatic','Mystia','0.6','0.65','3.37'),
(53,'th09',NULL,NULL,NULL,NULL,'Lunatic','Tewi','1.6','0.47','5.04'),
(54,'th09',NULL,NULL,NULL,NULL,'Lunatic','Yuuka','0.3','1.22','2.62'),
(55,'th09',NULL,NULL,NULL,NULL,'Lunatic','Komachi','0.3','0.52','3.85'),
(56,'th09',NULL,NULL,NULL,NULL,'Lunatic','Eiki','4.6','0.88','1.75'),
(57,'th09',NULL,NULL,NULL,NULL,'Extra','Reimu','-0.461957727579161','0.0436032802637062','48'),
(58,'th09',NULL,NULL,NULL,NULL,'Extra','Marisa','-0.469065217163925','0.225443395973293','7.69044468467105'),
(59,'th09',NULL,NULL,NULL,NULL,'Extra','Sakuya','-0.458803974485145','0.142189380281179','34.6789005244346'),
(60,'th09',NULL,NULL,NULL,NULL,'Extra','Youmu','-0.471437938140307','0.240836528422876','11.0650223281238'),
(61,'th09',NULL,NULL,NULL,NULL,'Extra','Reisen','-0.461799964994734','0.647123425682155','4.045097927'),
(62,'th09',NULL,NULL,NULL,NULL,'Extra','Cirno','-0.469065217163925','0.229786997647264','8.77222194102966'),
(63,'th09',NULL,NULL,NULL,NULL,'Extra','Lyrica','-0.456913236074124','0.0977962160014575','50.2923083528276'),
(64,'th09',NULL,NULL,NULL,NULL,'Extra','Mystia','-0.460380456753237','0.0157953881228543','122.974670771871'),
(65,'th09',NULL,NULL,NULL,NULL,'Extra','Tewi','-0.464798803740914','0.173114414311064','21.9579891944708'),
(66,'th09',NULL,NULL,NULL,NULL,'Extra','Aya','-0.469065217163925','0.0804431630385918','37.3120706984547'),
(67,'th09',NULL,NULL,NULL,NULL,'Extra','Medicine','-0.464167232436476','0.119450097929165','15.8015117610665'),
(68,'th09',NULL,NULL,NULL,NULL,'Extra','Yuuka','-0.4528205258248','0.391919486189334','8.44205513064428'),
(69,'th09',NULL,NULL,NULL,NULL,'Extra','Komachi','-0.463377945938883','0.16355920010312','23.2717907508334'),
(70,'th09',NULL,NULL,NULL,NULL,'Extra','Eiki','-0.462588856813691','0.274429128826066','6.36250684912494'),
(71,'th10',NULL,NULL,NULL,NULL,'Lunatic','ReimuA','2.9821','1.8019e-35','47.065'),
(72,'th10',NULL,NULL,NULL,NULL,'Lunatic','ReimuB','2.9783','7.6579e-36','47.01'),
(73,'th10',NULL,NULL,NULL,NULL,'Lunatic','ReimuC','2.9821','1.3298e-35','47.065'),
(74,'th10',NULL,NULL,NULL,NULL,'Lunatic','MarisaA','2.9821','1.0969e-35','47.065'),
(75,'th10',NULL,NULL,NULL,NULL,'Lunatic','MarisaB','2.9807','5.13E-36','47.044'),
(76,'th10',NULL,NULL,NULL,NULL,'Lunatic','MarisaC','2.9892','3.70E-36','47.166'),
(77,'th11',NULL,NULL,NULL,NULL,'Lunatic','ReimuA','2.745','3.09E-07','1.4759'),
(78,'th11',NULL,NULL,NULL,NULL,'Lunatic','ReimuB','2.012','0.0000053858','1.5188'),
(79,'th11',NULL,NULL,NULL,NULL,'Lunatic','ReimuC','2.41','0.00001128','1.4963'),
(80,'th11',NULL,NULL,NULL,NULL,'Lunatic','MarisaA','2.7094','0.0000011698','1.4744'),
(81,'th11',NULL,NULL,NULL,NULL,'Lunatic','MarisaB','2.7395','6.99E-07','1.4932'),
(82,'th11',NULL,NULL,NULL,NULL,'Lunatic','MarisaC','2.1086','0.000091685','1.4661'),
(83,'th11',NULL,NULL,NULL,NULL,'Extra','ReimuA','1.042','0.000062795','3.2592'),
(84,'th11',NULL,NULL,NULL,NULL,'Extra','ReimuB','1.121','0.00007282433333','3.2971'),
(85,'th11',NULL,NULL,NULL,NULL,'Extra','ReimuC','1.049','0.000080643','3.3491'),
(86,'th11',NULL,NULL,NULL,NULL,'Extra','MarisaA','1.031','0.00006743266667','3.2773'),
(87,'th11',NULL,NULL,NULL,NULL,'Extra','MarisaB','1.121','0.00007282433333','3.2971'),
(88,'th11',NULL,NULL,NULL,NULL,'Extra','MarisaC','1.055','0.000078899','3.3356'),
(89,'th12',NULL,NULL,NULL,NULL,'Lunatic','ReimuA','2','0.012422','1.33822'),
(90,'th12',NULL,NULL,NULL,NULL,'Lunatic','ReimuB','2','0.008142','1.367782'),
(91,'th12',NULL,NULL,NULL,NULL,'Lunatic','MarisaA','2','0.036195','1.255803'),
(92,'th12',NULL,NULL,NULL,NULL,'Lunatic','MarisaB','2','0.021237','1.291321'),
(93,'th12',NULL,NULL,NULL,NULL,'Lunatic','SanaeA','2','0.021385','1.298218'),
(94,'th12',NULL,NULL,NULL,NULL,'Lunatic','SanaeB','2','0.015232','1.284735'),
(95,'th128',NULL,NULL,NULL,NULL,'Lunatic','A1','3.2859','0.00029355','24900'),
(96,'th128',NULL,NULL,NULL,NULL,'Lunatic','A2','4.4993','0.00125754','4151'),
(97,'th128',NULL,NULL,NULL,NULL,'Lunatic','B1','3.2859','0.00035955','51162'),
(98,'th128',NULL,NULL,NULL,NULL,'Lunatic','B2','3.2859','0.00035955','51162'),
(99,'th128',NULL,NULL,NULL,NULL,'Lunatic','C1','0.4859','0.00017462','165048'),
(100,'th128',NULL,NULL,NULL,NULL,'Lunatic','C2','3.2859','0.00025355','48144'),
(101,'th128',NULL,NULL,NULL,NULL,'Extra',NULL,'1.2859','0.00029355','51044'),
(102,'th13',NULL,NULL,NULL,NULL,'Lunatic','Reimu','1.1816','0.000194189','1.484'),
(103,'th13',NULL,NULL,NULL,NULL,'Lunatic','Marisa','0.98072','1.9182e-05','1.5069'),
(104,'th13',NULL,NULL,NULL,NULL,'Lunatic','Sanae','0.98072','0.000141337','1.5069'),
(105,'th13',NULL,NULL,NULL,NULL,'Lunatic','Youmu','1.1816','8.0048e-06','1.484'),
(106,'th13',NULL,NULL,NULL,NULL,'Extra','Reimu','2.4292','1.2908e-20','5521.2'),
(107,'th13',NULL,NULL,NULL,NULL,'Extra','Marisa','2.4292','7.9374e-17','640.51'),
(108,'th13',NULL,NULL,NULL,NULL,'Extra','Sanae','2.4292','1.1127e-19','5521.2'),
(109,'th13',NULL,NULL,NULL,NULL,'Extra','Youmu','2.4292','5.7458e-17','640.51'),
(110,'th14',NULL,NULL,NULL,NULL,'Lunatic','ReimuA','3.75','1.97699e-06','2.77777778'),
(111,'th14',NULL,NULL,NULL,NULL,'Lunatic','ReimuB','3.75','8.98925e-07','4.30381476'),
(112,'th14',NULL,NULL,NULL,NULL,'Lunatic','MarisaA','3.75','0.000130366','2.77777778'),
(113,'th14',NULL,NULL,NULL,NULL,'Lunatic','MarisaB','3.75','9.78269e-10','3.58609569'),
(114,'th14',NULL,NULL,NULL,NULL,'Lunatic','SakuyaA','3.75','9.82062e-11','5.48903288'),
(115,'th14',NULL,NULL,NULL,NULL,'Lunatic','SakuyaB','3.75','9.70727e-08','2.34286851'),
(116,'th14',NULL,NULL,NULL,NULL,'Extra','ReimuA','0.80478','4.5e-15','89.6'),
(117,'th14',NULL,NULL,NULL,NULL,'Extra','ReimuB','0.85033','1.02e-17','284.1'),
(118,'th14',NULL,NULL,NULL,NULL,'Extra','MarisaA','0.85033','7.72e-18','284.1'),
(119,'th14',NULL,NULL,NULL,NULL,'Extra','MarisaB','0.875','1.58e-19','43.64'),
(120,'th14',NULL,NULL,NULL,NULL,'Extra','SakuyaA','0.85033','8.0e-19','284.1'),
(121,'th14',NULL,NULL,NULL,NULL,'Extra','SakuyaB','0.7913','5.76e-11','22.58'),
(122,'th15',NULL,NULL,NULL,NULL,'Lunatic','Reimu','2.25','0.0637789804','1.319'),
(123,'th15',NULL,NULL,NULL,NULL,'Lunatic','Marisa','2.25','0.1693433171','1.253'),
(124,'th15',NULL,NULL,NULL,NULL,'Lunatic','Sanae','1.25','0.005058067','1.347'),
(125,'th15',NULL,NULL,NULL,NULL,'Lunatic','Reisen','1','0.0178388679','1.276'),
(126,'th16',NULL,NULL,NULL,NULL,'Lunatic','ReimuSpring','-0.470499875559184','0.00719062583271618','1.22'),
(127,'th16',NULL,NULL,NULL,NULL,'Lunatic','CirnoSpring','-0.47049987595529','0.00719062583326554','1.22'),
(128,'th16',NULL,NULL,NULL,NULL,'Lunatic','AyaSpring','-0.47049987595529','0.000661376443755274','1.22'),
(129,'th16',NULL,NULL,NULL,NULL,'Lunatic','MarisaSpring','-0.47049987595529','0.00719062583326554','1.22'),
(130,'th16',NULL,NULL,NULL,NULL,'Lunatic','ReimuSummer','1.26649078330955','3.05472034881645e-05','1.42286777588978'),
(131,'th16',NULL,NULL,NULL,NULL,'Lunatic','CirnoSummer','-5.25357049715239','0.00558384409338167','1.24453394220788'),
(132,'th16',NULL,NULL,NULL,NULL,'Lunatic','AyaSummer','-5.25357049715239','0.00558384409338167','1.24453394220788'),
(133,'th16',NULL,NULL,NULL,NULL,'Lunatic','MarisaSummer','-0.223180479370064','0.000438088783555398','1.32586928421973'),
(134,'th16',NULL,NULL,NULL,NULL,'Lunatic','ReimuAutumn','-2.25065844599158','0.000484379922813486','1.1551568051731'),
(135,'th16',NULL,NULL,NULL,NULL,'Lunatic','CirnoAutumn','-2.25065844599158','0.000862481716601836','1.1551568051731'),
(136,'th16',NULL,NULL,NULL,NULL,'Lunatic','AyaAutumn','-5.24237193982116','0.00322476746447433','1.11561038847345'),
(137,'th16',NULL,NULL,NULL,NULL,'Lunatic','MarisaAutumn','-13.9765717601403','0.0216006895291076','1.09991575271283'),
(138,'th16',NULL,NULL,NULL,NULL,'Lunatic','ReimuWinter','-0.47049987595529','1.69689043778462e-06','1.34753404409379'),
(139,'th16',NULL,NULL,NULL,NULL,'Lunatic','CirnoWinter','-0.47049987595529','6.93480996108735e-07','1.34753404409379'),
(140,'th16',NULL,NULL,NULL,NULL,'Lunatic','AyaWinter','-0.47049987595529','6.93480996108735e-07','1.34753404409379'),
(141,'th16',NULL,NULL,NULL,NULL,'Lunatic','MarisaWinter','-0.47049987595529','1.69689043778462e-06','1.34753404409379'),
(142,'th17',NULL,NULL,NULL,NULL,'Lunatic','ReimuWolf','0.21973','5.1617e-06','1.229'),
(143,'th17',NULL,NULL,NULL,NULL,'Lunatic','ReimuOtter','1.3962','9.9981e-05','1.1304'),
(144,'th17',NULL,NULL,NULL,NULL,'Lunatic','ReimuEagle','0.21973','5.7223e-06','1.229'),
(145,'th17',NULL,NULL,NULL,NULL,'Lunatic','MarisaWolf','0.21973','4.2e-06','1.229'),
(146,'th17',NULL,NULL,NULL,NULL,'Lunatic','MarisaOtter','1.3962','6.1232e-05','1.1304'),
(147,'th17',NULL,NULL,NULL,NULL,'Lunatic','MarisaEagle','0.21973','4.2e-06','1.229'),
(148,'th17',NULL,NULL,NULL,NULL,'Lunatic','YoumuWolf','0.61581','1.3566e-06','1.2564'),
(149,'th17',NULL,NULL,NULL,NULL,'Lunatic','YoumuOtter','1.3962','9.4037e-05','1.1304'),
(150,'th17',NULL,NULL,NULL,NULL,'Lunatic','YoumuEagle','0.21973','4.2e-06','1.229'),
(151,'th18',NULL,NULL,NULL,NULL,'Lunatic','Reimu','2.03858101','0.00301013','1.09276838'),
(152,'th18',NULL,NULL,NULL,NULL,'Lunatic','Marisa','2.03858101','0.00301013','1.09276838'),
(179,'th18',NULL,NULL,NULL,NULL,'Lunatic','Sakuya','2.39031069','0.00073084','1.06957899'),
(180,'th18',NULL,NULL,NULL,NULL,'Lunatic','Sanae','2.03858101','0.00301013','1.09276838');
/*!40000 ALTER TABLE `Scoring Rubrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Survival Rubrics`
--

DROP TABLE IF EXISTS `Survival Rubrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Survival Rubrics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Game` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `Route` varchar(45) DEFAULT NULL,
  `Shottype` varchar(45) DEFAULT NULL,
  `GFW_A` varchar(255) DEFAULT NULL,
  `FullSpellBonus` bigint(20) DEFAULT NULL,
  `MaxScore` bigint(20) DEFAULT 0,
  `GFW_B` varchar(45) DEFAULT NULL,
  `GFW_C` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Survival Rubrics`
--

LOCK TABLES `Survival Rubrics` WRITE;
/*!40000 ALTER TABLE `Survival Rubrics` DISABLE KEYS */;
INSERT INTO `Survival Rubrics` VALUES
(1,'th06',NULL,NULL,NULL,NULL,NULL,'ReimuA',NULL,NULL,24,NULL,NULL),
(2,'th06',NULL,NULL,NULL,NULL,NULL,'ReimuB',NULL,NULL,20,NULL,NULL),
(3,'th06',NULL,NULL,NULL,NULL,NULL,'MarisaA',NULL,NULL,36,NULL,NULL),
(4,'th06',NULL,NULL,NULL,NULL,NULL,'MarisaB',NULL,NULL,24,NULL,NULL),
(5,'th07',NULL,NULL,NULL,NULL,NULL,'ReimuA',NULL,NULL,12,NULL,NULL),
(6,'th07',NULL,NULL,NULL,NULL,NULL,'ReimuB',NULL,NULL,8,NULL,NULL),
(7,'th07',NULL,NULL,NULL,NULL,NULL,'MarisaA',NULL,NULL,11,NULL,NULL),
(8,'th07',NULL,NULL,NULL,NULL,NULL,'MarisaB',NULL,NULL,14,NULL,NULL),
(9,'th07',NULL,NULL,NULL,NULL,NULL,'SakuyaA',NULL,NULL,13,NULL,NULL),
(10,'th07',NULL,NULL,NULL,NULL,NULL,'SakuyaB',NULL,NULL,8,NULL,NULL),
(11,'th08',NULL,NULL,NULL,NULL,'6A','ReimuYukari',NULL,NULL,20,NULL,NULL),
(12,'th08',NULL,NULL,NULL,NULL,'6A','MarisaAlice',NULL,NULL,23,NULL,NULL),
(13,'th08',NULL,NULL,NULL,NULL,'6A','SakuyaRemilia',NULL,NULL,24,NULL,NULL),
(14,'th08',NULL,NULL,NULL,NULL,'6A','YoumuYuyuko',NULL,NULL,21,NULL,NULL),
(15,'th08',NULL,NULL,NULL,NULL,'6A','Reimu',NULL,NULL,96,NULL,NULL),
(16,'th08',NULL,NULL,NULL,NULL,'6A','Yukari',NULL,NULL,21,NULL,NULL),
(17,'th08',NULL,NULL,NULL,NULL,'6A','Marisa',NULL,NULL,48,NULL,NULL),
(18,'th08',NULL,NULL,NULL,NULL,'6A','Alice',NULL,NULL,84,NULL,NULL),
(19,'th08',NULL,NULL,NULL,NULL,'6A','Remilia',NULL,NULL,24,NULL,NULL),
(20,'th08',NULL,NULL,NULL,NULL,'6A','Sakuya',NULL,NULL,150,NULL,NULL),
(21,'th08',NULL,NULL,NULL,NULL,'6A','Youmu',NULL,NULL,21,NULL,NULL),
(22,'th08',NULL,NULL,NULL,NULL,'6A','Yuyuko',NULL,NULL,46,NULL,NULL),
(23,'th08',NULL,NULL,NULL,NULL,'6B','ReimuYukari',NULL,NULL,20,NULL,NULL),
(24,'th08',NULL,NULL,NULL,NULL,'6B','MarisaAlice',NULL,NULL,23,NULL,NULL),
(25,'th08',NULL,NULL,NULL,NULL,'6B','SakuyaRemilia',NULL,NULL,24,NULL,NULL),
(26,'th08',NULL,NULL,NULL,NULL,'6B','YoumuYuyuko',NULL,NULL,21,NULL,NULL),
(27,'th08',NULL,NULL,NULL,NULL,'6B','Reimu',NULL,NULL,96,NULL,NULL),
(28,'th08',NULL,NULL,NULL,NULL,'6B','Yukari',NULL,NULL,21,NULL,NULL),
(29,'th08',NULL,NULL,NULL,NULL,'6B','Marisa',NULL,NULL,48,NULL,NULL),
(30,'th08',NULL,NULL,NULL,NULL,'6B','Alice',NULL,NULL,84,NULL,NULL),
(31,'th08',NULL,NULL,NULL,NULL,'6B','Sakuya',NULL,NULL,100,NULL,NULL),
(32,'th08',NULL,NULL,NULL,NULL,'6B','Remilia',NULL,NULL,24,NULL,NULL),
(33,'th08',NULL,NULL,NULL,NULL,'6B','Youmu',NULL,NULL,21,NULL,NULL),
(34,'th08',NULL,NULL,NULL,NULL,'6B','Yuyuko',NULL,NULL,42,NULL,NULL),
(35,'th10',NULL,NULL,NULL,NULL,NULL,'ReimuA',NULL,NULL,10,NULL,NULL),
(36,'th10',NULL,NULL,NULL,NULL,NULL,'ReimuB',NULL,NULL,9,NULL,NULL),
(37,'th10',NULL,NULL,NULL,NULL,NULL,'ReimuC',NULL,NULL,11,NULL,NULL),
(38,'th10',NULL,NULL,NULL,NULL,NULL,'MarisaA',NULL,NULL,20,NULL,NULL),
(39,'th10',NULL,NULL,NULL,NULL,NULL,'MarisaB',NULL,NULL,4,NULL,NULL),
(40,'th10',NULL,NULL,NULL,NULL,NULL,'MarisaC',NULL,NULL,10,NULL,NULL),
(41,'th11',NULL,NULL,NULL,NULL,NULL,'ReimuA',NULL,NULL,9,NULL,NULL),
(42,'th11',NULL,NULL,NULL,NULL,NULL,'ReimuB',NULL,NULL,11,NULL,NULL),
(43,'th11',NULL,NULL,NULL,NULL,NULL,'ReimuC',NULL,3,10,NULL,NULL),
(44,'th11',NULL,NULL,NULL,NULL,NULL,'MarisaA',NULL,1,12,NULL,NULL),
(45,'th11',NULL,NULL,NULL,NULL,NULL,'MarisaB',NULL,1,13,NULL,NULL),
(46,'th11',NULL,NULL,NULL,NULL,NULL,'MarisaC',NULL,2,26,NULL,NULL),
(47,'th12',NULL,NULL,NULL,NULL,NULL,'ReimuA',NULL,NULL,18,NULL,NULL),
(48,'th12',NULL,NULL,NULL,NULL,NULL,'ReimuB',NULL,NULL,26,NULL,NULL),
(49,'th12',NULL,NULL,NULL,NULL,NULL,'MarisaA',NULL,NULL,28,NULL,NULL),
(50,'th12',NULL,NULL,NULL,NULL,NULL,'MarisaB',NULL,NULL,36,NULL,NULL),
(51,'th12',NULL,NULL,NULL,NULL,NULL,'SanaeA',NULL,NULL,30,NULL,NULL),
(52,'th12',NULL,NULL,NULL,NULL,NULL,'SanaeB',NULL,NULL,24,NULL,NULL),
(53,'th128',NULL,NULL,NULL,NULL,NULL,'A1','1.818531169',NULL,NULL,'0.1606364392','4.839363561'),
(54,'th128',NULL,NULL,NULL,NULL,NULL,'A2','1.849225483',NULL,NULL,'1.121219729','5.178780271'),
(55,'th128',NULL,NULL,NULL,NULL,NULL,'B1','1.285037692',NULL,NULL,'7.673636005','1.326363995'),
(56,'th128',NULL,NULL,NULL,NULL,NULL,'B2','1.703243322',NULL,NULL,'0.945053238','6.054946762'),
(57,'th128',NULL,NULL,NULL,NULL,NULL,'C1','1.378394445',NULL,NULL,'13.24244019','-4.242440185'),
(58,'th128',NULL,NULL,NULL,NULL,NULL,'C2','2.152480008',NULL,NULL,'1.079825701','5.920174299'),
(59,'th13',NULL,NULL,NULL,NULL,NULL,'Reimu',NULL,3,9,NULL,NULL),
(60,'th13',NULL,NULL,NULL,NULL,NULL,'Marisa',NULL,5,18,NULL,NULL),
(61,'th13',NULL,NULL,NULL,NULL,NULL,'Sanae',NULL,20,25,NULL,NULL),
(62,'th13',NULL,NULL,NULL,NULL,NULL,'Youmu',NULL,2,8,NULL,NULL),
(63,'th14',NULL,NULL,NULL,NULL,NULL,'ReimuA',NULL,NULL,4,NULL,NULL),
(64,'th14',NULL,NULL,NULL,NULL,NULL,'ReimuB',NULL,NULL,50,NULL,NULL),
(65,'th14',NULL,NULL,NULL,NULL,NULL,'MarisaA',NULL,NULL,100,NULL,NULL),
(66,'th14',NULL,NULL,NULL,NULL,NULL,'MarisaB',NULL,NULL,30,NULL,NULL),
(67,'th14',NULL,NULL,NULL,NULL,NULL,'SakuyaA',NULL,NULL,4,NULL,NULL),
(68,'th14',NULL,NULL,NULL,NULL,NULL,'SakuyaB',NULL,NULL,100,NULL,NULL),
(69,'th15',NULL,NULL,NULL,NULL,NULL,'Reimu',NULL,NULL,32,NULL,NULL),
(70,'th15',NULL,NULL,NULL,NULL,NULL,'Marisa',NULL,NULL,88,NULL,NULL),
(71,'th15',NULL,NULL,NULL,NULL,NULL,'Sanae',NULL,NULL,64,NULL,NULL),
(72,'th15',NULL,NULL,NULL,NULL,NULL,'Reisen',NULL,NULL,80,NULL,NULL),
(73,'th16',NULL,NULL,NULL,NULL,NULL,'ReimuSpring',NULL,NULL,36,NULL,NULL),
(74,'th16',NULL,NULL,NULL,NULL,NULL,'CirnoSpring',NULL,NULL,40,NULL,NULL),
(75,'th16',NULL,NULL,NULL,NULL,NULL,'AyaSpring',NULL,NULL,50,NULL,NULL),
(76,'th16',NULL,NULL,NULL,NULL,NULL,'MarisaSpring',NULL,NULL,34,NULL,NULL),
(77,'th16',NULL,NULL,NULL,NULL,NULL,'ReimuSummer',NULL,NULL,36,NULL,NULL),
(78,'th16',NULL,NULL,NULL,NULL,NULL,'CirnoSummer',NULL,NULL,41,NULL,NULL),
(79,'th16',NULL,NULL,NULL,NULL,NULL,'AyaSummer',NULL,NULL,50,NULL,NULL),
(80,'th16',NULL,NULL,NULL,NULL,NULL,'MarisaSummer',NULL,NULL,34,NULL,NULL),
(81,'th16',NULL,NULL,NULL,NULL,NULL,'ReimuAutumn',NULL,NULL,10,NULL,NULL),
(82,'th16',NULL,NULL,NULL,NULL,NULL,'CirnoAutumn',NULL,NULL,13,NULL,NULL),
(83,'th16',NULL,NULL,NULL,NULL,NULL,'AyaAutumn',NULL,NULL,16,NULL,NULL),
(84,'th16',NULL,NULL,NULL,NULL,NULL,'MarisaAutumn',NULL,NULL,10,NULL,NULL),
(85,'th16',NULL,NULL,NULL,NULL,NULL,'ReimuWinter',NULL,NULL,11,NULL,NULL),
(86,'th16',NULL,NULL,NULL,NULL,NULL,'CirnoWinter',NULL,NULL,14,NULL,NULL),
(87,'th16',NULL,NULL,NULL,NULL,NULL,'AyaWinter',NULL,NULL,17,NULL,NULL),
(88,'th16',NULL,NULL,NULL,NULL,NULL,'MarisaWinter',NULL,NULL,12,NULL,NULL),
(89,'th17',NULL,NULL,NULL,NULL,NULL,'ReimuWolf',NULL,NULL,10,NULL,NULL),
(90,'th17',NULL,NULL,NULL,NULL,NULL,'ReimuOtter',NULL,NULL,26,NULL,NULL),
(91,'th17',NULL,NULL,NULL,NULL,NULL,'ReimuEagle',NULL,NULL,25,NULL,NULL),
(92,'th17',NULL,NULL,NULL,NULL,NULL,'MarisaWolf',NULL,NULL,7,NULL,NULL),
(93,'th17',NULL,NULL,NULL,NULL,NULL,'MarisaOtter',NULL,NULL,21,NULL,NULL),
(94,'th17',NULL,NULL,NULL,NULL,NULL,'MarisaEagle',NULL,NULL,11,NULL,NULL),
(95,'th17',NULL,NULL,NULL,NULL,NULL,'YoumuWolf',NULL,NULL,6,NULL,NULL),
(96,'th17',NULL,NULL,NULL,NULL,NULL,'YoumuOtter',NULL,NULL,6,NULL,NULL),
(97,'th17',NULL,NULL,NULL,NULL,NULL,'YoumuEagle',NULL,NULL,18,NULL,NULL),
(98,'th18',NULL,NULL,NULL,NULL,NULL,'Reimu',NULL,NULL,30,NULL,NULL),
(99,'th18',NULL,NULL,NULL,NULL,NULL,'Marisa',NULL,NULL,60,NULL,NULL),
(100,'th18',NULL,NULL,NULL,NULL,NULL,'Sakuya',NULL,NULL,18,NULL,NULL),
(101,'th18',NULL,NULL,NULL,NULL,NULL,'Sanae',NULL,NULL,24,NULL,NULL),
(103,'th19',NULL,NULL,NULL,NULL,NULL,'Reimu',NULL,NULL,0,NULL,NULL),
(104,'th19',NULL,NULL,NULL,NULL,NULL,'Marisa',NULL,NULL,4,NULL,NULL),
(105,'th19',NULL,NULL,NULL,NULL,NULL,'Sanae',NULL,NULL,3,NULL,NULL),
(106,'th19',NULL,NULL,NULL,NULL,NULL,'Ran',NULL,NULL,16,NULL,NULL),
(107,'th19',NULL,NULL,NULL,NULL,NULL,'Aunn',NULL,NULL,14,NULL,NULL),
(108,'th19',NULL,NULL,NULL,NULL,NULL,'Nazrin',NULL,NULL,12,NULL,NULL),
(109,'th19',NULL,NULL,NULL,NULL,NULL,'Seiran',NULL,NULL,2,NULL,NULL),
(110,'th19',NULL,NULL,NULL,NULL,NULL,'Rin',NULL,NULL,72,NULL,NULL),
(111,'th19',NULL,NULL,NULL,NULL,NULL,'Tsukasa',NULL,NULL,30,NULL,NULL),
(112,'th19',NULL,NULL,NULL,NULL,NULL,'Mamizou',NULL,NULL,40,NULL,NULL),
(113,'th19',NULL,NULL,NULL,NULL,NULL,'Yachie',NULL,NULL,18,NULL,NULL),
(114,'th19',NULL,NULL,NULL,NULL,NULL,'Saki',NULL,NULL,32,NULL,NULL),
(115,'th19',NULL,NULL,NULL,NULL,NULL,'Yuuma',NULL,NULL,16,NULL,NULL),
(116,'th19',NULL,NULL,NULL,NULL,NULL,'Suika',NULL,NULL,20,NULL,NULL),
(117,'th19',NULL,NULL,NULL,NULL,NULL,'Biten',NULL,NULL,3,NULL,NULL),
(118,'th19',NULL,NULL,NULL,NULL,NULL,'Enoko',NULL,NULL,2,NULL,NULL),
(119,'th19',NULL,NULL,NULL,NULL,NULL,'Chiyari',NULL,NULL,0,NULL,NULL),
(120,'th19',NULL,NULL,NULL,NULL,NULL,'Hisami',NULL,NULL,22,NULL,NULL),
(121,'th19',NULL,NULL,NULL,NULL,NULL,'Zanmu',NULL,NULL,21,NULL,NULL),
(124,'th09',NULL,NULL,NULL,NULL,NULL,'Reimu',NULL,39,21,NULL,NULL),
(125,'th09',NULL,NULL,NULL,NULL,NULL,'Marisa',NULL,66,14,NULL,NULL),
(126,'th09',NULL,NULL,NULL,NULL,NULL,'Sakuya',NULL,26,54,NULL,NULL),
(127,'th09',NULL,NULL,NULL,NULL,NULL,'Youmu',NULL,64,16,NULL,NULL),
(128,'th09',NULL,NULL,NULL,NULL,NULL,'Reisen',NULL,56,44,NULL,NULL),
(129,'th09',NULL,NULL,NULL,NULL,NULL,'Cirno',NULL,72,18,NULL,NULL),
(130,'th09',NULL,NULL,NULL,NULL,NULL,'Lyrica',NULL,74,26,NULL,NULL),
(131,'th09',NULL,NULL,NULL,NULL,NULL,'Mystia',NULL,78,22,NULL,NULL),
(132,'th09',NULL,NULL,NULL,NULL,NULL,'Tewi',NULL,44,46,NULL,NULL),
(133,'th09',NULL,NULL,NULL,NULL,NULL,'Aya',NULL,50,6,NULL,NULL),
(134,'th09',NULL,NULL,NULL,NULL,NULL,'Medicine',NULL,53,5,NULL,NULL),
(135,'th09',NULL,NULL,NULL,NULL,NULL,'Yuuka',NULL,56,34,NULL,NULL),
(136,'th09',NULL,NULL,NULL,NULL,NULL,'Komachi',NULL,80,20,NULL,NULL),
(137,'th09',NULL,NULL,NULL,NULL,NULL,'Eiki',NULL,48,12,NULL,NULL);
/*!40000 ALTER TABLE `Survival Rubrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teams 2024`
--

DROP TABLE IF EXISTS `Teams 2024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teams 2024` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `Icon` varchar(255) DEFAULT NULL,
  `Points` bigint(20) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teams 2024`
--

LOCK TABLES `Teams 2024` WRITE;
/*!40000 ALTER TABLE `Teams 2024` DISABLE KEYS */;
/*!40000 ALTER TABLE `Teams 2024` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-16 21:50:45
