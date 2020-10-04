/*
SQLyog Community v12.5.1 (64 bit)
MySQL - 10.4.11-MariaDB : Database - db_happytraveling
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_happytraveling` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_happytraveling`;

/*Table structure for table `t_login` */

DROP TABLE IF EXISTS `t_login`;

CREATE TABLE `t_login` (
  `username` varchar(50) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_login` */

LOCK TABLES `t_login` WRITE;

UNLOCK TABLES;

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `roleid` int(11) DEFAULT NULL,
  `roledesc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_role` */

LOCK TABLES `t_role` WRITE;

insert  into `t_role`(`roleid`,`roledesc`) values (1,'Admin'),(2,'Non-admin');

UNLOCK TABLES;

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `username` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `t_user` */

LOCK TABLES `t_user` WRITE;

insert  into `t_user`(`username`,`pwd`,`roleid`) values ('bartol','bartol',1);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
