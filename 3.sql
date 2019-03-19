/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.62-community : Database - skweb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`skweb` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `modifyapply` */

DROP TABLE IF EXISTS `modifyapply`;

CREATE TABLE `modifyapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `Applicant` int(11) DEFAULT NULL,
  `passTime` date DEFAULT NULL,
  `passerId` int(11) DEFAULT NULL,
  `ifPass` int(11) DEFAULT NULL,
  `modifyProductId` varchar(50) DEFAULT NULL,
  `modifySpecifications` varchar(50) DEFAULT NULL,
  `modifyMaterial` varchar(50) DEFAULT NULL,
  `modifyNumber` int(11) DEFAULT NULL,
  `modify1` int(11) DEFAULT NULL,
  `modify2` int(11) DEFAULT NULL,
  `modify3` int(11) DEFAULT NULL,
  `modify4` int(11) DEFAULT NULL,
  `modify5` int(11) DEFAULT NULL,
  `modify6` int(11) DEFAULT NULL,
  `modify7` int(11) DEFAULT NULL,
  `modifyDate` date DEFAULT NULL,
  `ApplicantName` varchar(50) DEFAULT NULL,
  `productId` varchar(50) DEFAULT NULL,
  `modify8` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `modifyapply` */

insert  into `modifyapply`(`id`,`pid`,`Applicant`,`passTime`,`passerId`,`ifPass`,`modifyProductId`,`modifySpecifications`,`modifyMaterial`,`modifyNumber`,`modify1`,`modify2`,`modify3`,`modify4`,`modify5`,`modify6`,`modify7`,`modifyDate`,`ApplicantName`,`productId`,`modify8`) values (1,1,2,'2019-02-02',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,111,NULL,NULL,NULL,NULL,'2019-02-02','shaoke','AH01',NULL),(2,4,2,'2019-02-03',NULL,1,'4',NULL,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-03','shaoke','AK48',NULL),(3,7,2,'2019-02-03',NULL,0,NULL,'11','Cu',11,44,55,NULL,11,22,33,NULL,NULL,'shaoke','98K2',NULL);

/*Table structure for table `supplier_code_table` */

DROP TABLE IF EXISTS `supplier_code_table`;

CREATE TABLE `supplier_code_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `supplier_code_table` */

insert  into `supplier_code_table`(`id`,`SupplierName`) values (1,'刘厂'),(2,'张厂'),(3,'叶厂'),(4,'竺厂'),(5,'董厂'),(6,'陈云珍厂'),(7,'备用1'),(8,'备用2');

/*Table structure for table `t_jurisdiction` */

DROP TABLE IF EXISTS `t_jurisdiction`;

CREATE TABLE `t_jurisdiction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `accountNumber` varchar(50) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_1` (`userId`,`accountNumber`),
  KEY `FK_Reference_2` (`productId`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`userId`, `accountNumber`) REFERENCES `t_user` (`userId`, `accountNumber`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`productId`) REFERENCES `t_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_jurisdiction` */

insert  into `t_jurisdiction`(`id`,`userId`,`accountNumber`,`productId`) values (1,2,'empl',1),(2,2,'empl',6),(3,2,'empl',7),(4,2,'empl',8),(5,2,'empl',9);

/*Table structure for table `t_modifyapply` */

DROP TABLE IF EXISTS `t_modifyapply`;

CREATE TABLE `t_modifyapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `ProductId` varchar(50) DEFAULT NULL,
  `Applicant` int(11) DEFAULT NULL,
  `ApplicantName` varchar(50) DEFAULT NULL,
  `applyTime` datetime DEFAULT NULL,
  `passerId` int(11) DEFAULT NULL,
  `ifPass` int(11) DEFAULT NULL,
  `modifySpecifications` varchar(50) DEFAULT NULL,
  `modifyMaterial` varchar(50) DEFAULT NULL,
  `modifyNumber` int(11) DEFAULT NULL,
  `modify1` float DEFAULT NULL,
  `modify2` float DEFAULT NULL,
  `modify3` float DEFAULT NULL,
  `modify4` float DEFAULT NULL,
  `modify5` float DEFAULT NULL,
  `modify6` float DEFAULT NULL,
  `modify7` float DEFAULT NULL,
  `modify8` float DEFAULT NULL,
  `modifyDate` date DEFAULT NULL,
  `specifications` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `supplier1` float DEFAULT NULL,
  `supplier2` float DEFAULT NULL,
  `supplier3` float DEFAULT NULL,
  `supplier4` float DEFAULT NULL,
  `supplier5` float DEFAULT NULL,
  `supplier6` float DEFAULT NULL,
  `supplier7` float DEFAULT NULL,
  `supplier8` float DEFAULT NULL,
  `originalDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `t_modifyapply` */

insert  into `t_modifyapply`(`id`,`pid`,`ProductId`,`Applicant`,`ApplicantName`,`applyTime`,`passerId`,`ifPass`,`modifySpecifications`,`modifyMaterial`,`modifyNumber`,`modify1`,`modify2`,`modify3`,`modify4`,`modify5`,`modify6`,`modify7`,`modify8`,`modifyDate`,`specifications`,`material`,`Number`,`supplier1`,`supplier2`,`supplier3`,`supplier4`,`supplier5`,`supplier6`,`supplier7`,`supplier8`,`originalDate`) values (1,11,'98K',1,'admin','2019-02-07 00:00:00',NULL,0,'12','Zn',123,12,NULL,11,NULL,NULL,33,NULL,NULL,NULL,'12','Zn',123,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,NULL),(2,10,'98K',1,'admin','2019-02-13 00:00:00',NULL,0,'12','He',11,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12','He',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,6,'98K',1,'admin','2019-02-16 00:00:00',NULL,0,'11cm','He',23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11cm','He',23,11,42,NULL,12,NULL,2,NULL,NULL,'2019-02-03'),(4,10,'98K',1,'admin','2019-02-16 00:00:00',NULL,0,'12','He',11,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12','He',11,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,6,'98K',1,'admin','2019-02-16 00:00:00',NULL,0,'11cm','He',23,11,42,NULL,12,NULL,2,1,NULL,NULL,'11cm','He',23,11,42,NULL,12,NULL,2,NULL,NULL,'2019-02-03'),(6,12,'98k',1,'admin','2019-02-16 00:00:00',NULL,0,'11a','Cu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11a','Cu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,12,'98k',1,'admin','2019-02-16 00:00:00',NULL,0,'11a','Cu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11a','Cu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,12,'98K',1,'admin','2019-02-16 00:00:00',NULL,0,'11a','Cu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11a','Cu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,12,'98KHQHJ92/G16',1,'admin','2019-02-17 00:00:00',NULL,0,'45','SIC/SIC/V',30,148,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11a','Cu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,6,'HQHJ92N/G16',1,'admin','2019-02-17 00:00:00',NULL,0,'40','SIC/SIC/V',30,134,175,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11cm','He',23,11,42,NULL,12,NULL,2,1,NULL,'2019-02-03'),(11,7,'GR-Z1',1,'admin','2019-02-17 00:00:00',NULL,0,'12','SIC/SIC/V',5,NULL,NULL,NULL,55,NULL,NULL,NULL,NULL,NULL,'11','Cu',11,44,55,NULL,11,22,33,NULL,NULL,'2019-02-01'),(12,12,'HQHJ92/G16',1,'admin','2019-02-17 00:00:00',NULL,0,'45','SIC/SIC/V',30,148,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'45','SIC/SIC/V',30,148,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,1,'GQ-Z1',1,'admin','2019-02-17 00:00:00',NULL,0,'16','SIC/SIC/V',5,NULL,NULL,NULL,65,NULL,NULL,NULL,NULL,NULL,'16cm','car',10,10,2,11,4,5,6,7,NULL,'2019-01-22'),(14,1,'GR-Z1',1,'admin','2019-02-17 00:00:00',NULL,0,'16','SIC/SIC/V',5,10,2,11,65,5,6,7,NULL,NULL,'16','SIC/SIC/V',5,10,2,11,65,5,6,7,NULL,'2019-01-22'),(15,4,'GR-Z1',1,'admin','2019-02-17 22:00:00',NULL,0,'12','SIC/SIC/NBR',300,NULL,NULL,NULL,45,NULL,NULL,NULL,NULL,NULL,'12','Cu',22,43,NULL,12,11,43,NULL,NULL,NULL,'2019-02-01'),(16,8,'GR-Z1',1,'admin','2019-02-17 06:00:00',NULL,0,'16','SIC/SIC/NBR',100,NULL,NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,'17CM','11',12,34,NULL,23,NULL,23,43,NULL,NULL,NULL),(17,9,'GR-Z2',1,'admin','2019-02-17 02:00:00',NULL,0,'22','SIC/SIC/V',5,NULL,NULL,NULL,85,NULL,NULL,NULL,NULL,NULL,'15CM','Li',32,53,63,36,45,22,35,NULL,NULL,'2019-02-03'),(18,5,'GR-Z',1,'admin','2019-02-17 00:02:00',NULL,0,'12','SIC/SIC/V',5,112,NULL,NULL,62,NULL,NULL,NULL,NULL,NULL,'15CM','Zn',11,22,NULL,44,NULL,NULL,22,NULL,NULL,'2019-02-03'),(19,53,'GR-G6',1,'admin','2019-02-17 01:00:00',NULL,0,'22','TC/TC/V',5,NULL,NULL,NULL,200,190,NULL,NULL,NULL,NULL,'22','TC/TC/V',5,NULL,NULL,NULL,NULL,190,NULL,NULL,NULL,'2019-02-17'),(20,25,'GR-G1',1,'admin','2019-02-17 22:20:25',NULL,0,'12cm','SIC/CAR/V',5,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,'12','SIC/CAR/V',5,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,'2019-02-17'),(21,25,'GR-G1',1,'admin','2019-02-17 22:20:42',NULL,0,'12','SIC/CAR/V',5,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,'12cm','SIC/CAR/V',5,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,'2019-02-17'),(22,25,'GR-G1',1,'admin','2019-02-17 22:24:47',NULL,0,'12cm','SIC/CAR/V',5,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,'2019-02-17','12','SIC/CAR/V',5,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,'2019-02-17'),(23,25,'GR-G1',1,'admin','2019-02-17 22:25:01',NULL,0,'12','SIC/CAR/V',5,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,'2019-02-17','12cm','SIC/CAR/V',5,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,'2019-02-17');

/*Table structure for table `t_product` */

DROP TABLE IF EXISTS `t_product`;

CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` varchar(50) DEFAULT NULL,
  `specifications` varchar(20) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `Supplier1` float DEFAULT NULL,
  `Supplier2` float DEFAULT NULL,
  `Supplier3` float DEFAULT NULL,
  `Supplier4` float DEFAULT NULL,
  `Supplier5` float DEFAULT NULL,
  `Supplier6` float DEFAULT NULL,
  `Supplier7` float DEFAULT NULL,
  `Supplier8` float DEFAULT NULL,
  `productDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

/*Data for the table `t_product` */

insert  into `t_product`(`id`,`productId`,`specifications`,`material`,`number`,`Supplier1`,`Supplier2`,`Supplier3`,`Supplier4`,`Supplier5`,`Supplier6`,`Supplier7`,`Supplier8`,`productDate`) values (1,'GR-Z1','16','SIC/SIC/V',5,10,2,11,65,5,6,7,NULL,'2019-01-22'),(4,'GR-Z1','12','SIC/SIC/NBR',300,43,NULL,12,45,43,NULL,NULL,NULL,'2019-02-01'),(5,'GR-Z','12','SIC/SIC/V',5,112,NULL,44,62,NULL,22,NULL,NULL,'2019-02-03'),(6,'HQHJ92N/G16','40','SIC/SIC/V',30,134,175,NULL,12,NULL,2,1,NULL,'2019-02-03'),(7,'GR-Z1','12','SIC/SIC/V',5,44,55,NULL,55,22,33,NULL,NULL,'2019-02-01'),(8,'GR-Z1','16','SIC/SIC/NBR',100,34,NULL,23,50,23,43,NULL,NULL,NULL),(9,'GR-Z2','22','SIC/SIC/V',5,53,63,36,85,22,35,NULL,NULL,'2019-02-03'),(12,'HQHJ92/G16','45','SIC/SIC/V',30,148,190,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'MG1/G60','40','SIC/SIC/V',10,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(14,'HQHJ92N/G16','60','SIC/SIC/V',40,248,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(15,'MG1/G4','30','SIC/SIC/V',10,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(16,'MG1/G4','40','SIC/SIC/V',10,57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(17,'GR-Z','14','SIC/SIC/V',3,140,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(18,'GR-Z','16','SIC/SIC/V',NULL,126,NULL,NULL,72,NULL,NULL,NULL,NULL,'2019-02-17'),(19,'GR-Z','22','SIC/SIC/V',5,280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(20,'GR-Z','32','SIC/SIC/V',2,500,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(21,'GR-Z4','12','SIC/SIC/V',5,NULL,NULL,NULL,80,NULL,NULL,NULL,NULL,'2019-02-17'),(22,'GR-Z4','16','SIC/SIC/V',5,NULL,NULL,NULL,100,NULL,NULL,NULL,NULL,'2019-02-17'),(23,'GR-Z4','22','SIC/SIC/V',5,NULL,NULL,NULL,150,NULL,NULL,NULL,NULL,'2019-02-17'),(24,'GR-G1','12','SIC/SIC/V',5,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,'2019-02-17'),(25,'GR-G1','12','SIC/CAR/V',5,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,'2019-02-17'),(26,'GR-G1','12','SIC/SIC/NBR',200,NULL,NULL,NULL,18,NULL,NULL,NULL,NULL,'2019-02-17'),(27,'GR-G3','12','SIC/SIC/V',5,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,'2019-02-17'),(28,'GR-G3','16','SIC/SIC/V',5,29,NULL,NULL,25,NULL,NULL,NULL,NULL,'2019-02-17'),(29,'GR-G3','16','SIC/SIC/NBR',5,NULL,NULL,NULL,21,NULL,NULL,NULL,NULL,'2019-02-17'),(30,'GR-G5','12','TC/SIC/V',5,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,'2019-02-17'),(31,'GR-G5','16','TC/SIC/V',10,NULL,NULL,NULL,40,NULL,NULL,NULL,NULL,'2019-02-17'),(32,'GR-G17','22','SIC/SIC/V',5,NULL,NULL,NULL,350,280,NULL,NULL,NULL,'2019-02-17'),(33,'GR-G17','32','SIC/SIC/V',5,NULL,NULL,NULL,450,370,NULL,NULL,NULL,'2019-02-17'),(34,'GR-G4','12','SIC/SIC/V',5,29,NULL,NULL,60,NULL,NULL,NULL,NULL,'2019-02-17'),(35,'GR-G4','16','SIC/SIC/V',5,35,NULL,NULL,70,NULL,NULL,NULL,NULL,'2019-02-17'),(36,'GR-G4','12','TC/TC/V',5,NULL,NULL,NULL,75,125,NULL,NULL,NULL,'2019-02-17'),(37,'GR-G4','16','TC/TC/V',5,NULL,NULL,NULL,85,NULL,NULL,NULL,NULL,'2019-02-17'),(38,'GR-G26','22','SIC/SIC/V',5,35,NULL,NULL,30,NULL,NULL,NULL,NULL,'2019-02-17'),(39,'GR-G11','12','SIC/SIC/NBR',200,NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(40,'GR-G11','12','SIC/SIC/V',10,41,NULL,NULL,55,NULL,NULL,NULL,NULL,'2019-02-17'),(41,'GR-G11','16','SIC/SIC/V',10,46,NULL,NULL,65,NULL,NULL,NULL,NULL,'2019-02-17'),(42,'GR-G11-E','12','SIC/SIC/V',10,41,NULL,NULL,65,NULL,NULL,NULL,NULL,'2019-02-17'),(43,'GR-G11-E','16','SIC/SIC/V',10,NULL,NULL,NULL,75,NULL,NULL,NULL,NULL,'2019-02-17'),(44,'LOW-05','20','SIC/SIC/NBR',10,NULL,NULL,NULL,90,NULL,NULL,NULL,NULL,'2019-02-17'),(45,'LOW-05','22','SIC/SIC/NBR',10,NULL,NULL,NULL,100,NULL,NULL,NULL,NULL,'2019-02-17'),(46,'LOW-05','25','SIC/SIC/NBR',5,NULL,NULL,NULL,115,NULL,NULL,NULL,NULL,'2019-02-17'),(47,'GR-Z5','12','SIC/SIC/V',5,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,'2019-02-17'),(48,'GR-Z5','12','SIC/SIC/V',5,NULL,NULL,NULL,60,NULL,NULL,NULL,NULL,'2019-02-17'),(49,'GR-Z5','16','SIC/SIC/V',5,NULL,NULL,NULL,70,NULL,NULL,NULL,NULL,'2019-02-17'),(50,'GR-Z6','22','SIC/SIC/V',5,NULL,NULL,NULL,110,NULL,NULL,NULL,NULL,'2019-02-17'),(51,'GR-Z2-3','22','SIC/SIC/V',5,NULL,NULL,NULL,140,NULL,NULL,NULL,NULL,'2019-02-17'),(52,'GR-Z2-3','22','CAR/SIC/V',5,NULL,NULL,NULL,140,NULL,NULL,NULL,NULL,'2019-02-17'),(53,'GR-G6','22','TC/TC/V',5,NULL,NULL,NULL,200,190,NULL,NULL,NULL,'2019-02-17'),(54,'GR-G6','22','SIC/SIC/V',5,200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(55,'HQ2','12','CAR/CER/NBR',5,17,18,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(56,'HQ2','14','CAR/CER/NBR',5,18,20,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(57,'HQ2','16','CAR/CER/NBR',5,18,22,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(58,'HQ2','18','CAR/CER/NBR',5,20,23,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(59,'HQ2','20','CAR/CER/NBR',5,22,25,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(60,'HQ2','22','CAR/CER/NBR',5,23,28,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(62,'HQ2','24','CAR/CER/NBR',5,27,30,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(63,'HQ2','25','CAR/CER/NBR',5,27,30,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(64,'HQ2','28','CAR/CER/NBR',5,28,33,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(65,'HQ2','28','CAR/CER/NBR',5,34,35,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(66,'HQ2','30','CAR/CER/NBR',5,34,35,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(67,'HQ2','32','CAR/CER/NBR',5,34,38,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(68,'HQ2','33','CAR/CER/NBR',5,38,38,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(69,'HQ2','35','CAR/CER/NBR',5,38,43,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(70,'HQ2','38','CAR/CER/NBR',5,43,48,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(71,'HQ2','40','CAR/CER/NBR',5,52,52,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(72,'HQ2','43','CAR/CER/NBR',5,58,55,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(73,'HQ2','45','CAR/CER/NBR',5,58,68,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(74,'HQ2','48','CAR/CER/NBR',5,63,75,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(75,'HQ2','50','CAR/CER/NBR',5,71,78,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(76,'HQ2','55','CAR/CER/NBR',5,89,91,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(77,'HQ2','60','CAR/CER/NBR',5,93,98,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(78,'HQ2','65','CAR/CER/NBR',5,118,110,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(79,'HQ2','70','CAR/CER/NBR',5,128,135,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(80,'HQ2','73','CAR/CER/NBR',5,146,150,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(81,'HQ2','75','CAR/CER/NBR',5,160,165,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(82,'HQT03D','12','SS/CAR/NBR',5,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(83,'HQT03D','16','SS/CAR/NBR',5,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(84,'HQT03D','25','SS/CAR/NBR',5,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17'),(85,'HQ502/BP','16','CAR/SIC/NBR',5,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-17');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `accountNumber` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`,`accountNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`userId`,`userName`,`position`,`accountNumber`,`password`) values (1,'admin','管理员','admin','123456'),(2,'shaoke','业务员','empl','111111');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
