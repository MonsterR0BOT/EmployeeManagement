-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_demo
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `tbl_employee_attendance`
--

DROP TABLE IF EXISTS `tbl_employee_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_employee_attendance` (
  `TEA_attendance` int(11) NOT NULL AUTO_INCREMENT,
  `TEA_emp_id` int(11) NOT NULL,
  `TEA_intime` varchar(45) DEFAULT NULL,
  `TEA_outtime` varchar(45) DEFAULT NULL,
  `TEA_date` date DEFAULT NULL,
  PRIMARY KEY (`TEA_attendance`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employee_attendance`
--

LOCK TABLES `tbl_employee_attendance` WRITE;
/*!40000 ALTER TABLE `tbl_employee_attendance` DISABLE KEYS */;
INSERT INTO `tbl_employee_attendance` VALUES (1,6,'01:28:35am','02:31:09am','2020-08-11'),(15,6,'10:56:34am','10:56:57am','2020-08-12');
/*!40000 ALTER TABLE `tbl_employee_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_error_handling`
--

DROP TABLE IF EXISTS `tbl_error_handling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_error_handling` (
  `errorId` int(11) NOT NULL AUTO_INCREMENT,
  `sqlErrorCode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sqlErrorState` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sqlErrorMessage` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nlErrorCode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nlErrorMessage` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dbName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `eStatus` bit(1) DEFAULT b'1',
  `eCreatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`errorId`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_error_handling`
--

LOCK TABLES `tbl_error_handling` WRITE;
/*!40000 ALTER TABLE `tbl_error_handling` DISABLE KEYS */;
INSERT INTO `tbl_error_handling` VALUES (73,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'%\"south\"% limit 0,10\' at line 8','1064','You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'%\"south\"% limit 0,10\' at line 8','MYSQL',_binary '','2019-08-02 13:52:13'),(74,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'as tbl_cnt tbl_mstr.TSM_Country_Id=tbl_cnt.TCM_Country\n    where tbl_mstr.TSM_St\' at line 7','1064','You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'as tbl_cnt tbl_mstr.TSM_Country_Id=tbl_cnt.TCM_Country\n    where tbl_mstr.TSM_St\' at line 7','MYSQL',_binary '','2019-08-03 18:29:07'),(75,'1146','42S02','Table \'wcd_supply_system.tbl_country_str\' doesn\'t exist','1146','Table \'wcd_supply_system.tbl_country_str\' doesn\'t exist','MYSQL',_binary '','2019-08-03 18:30:31'),(76,'1054','42S22','Unknown column \'x\' in \'field list\'','1054','Unknown column \'x\' in \'field list\'','MYSQL',_binary '','2019-08-04 06:43:28'),(77,'1048','23000','Column \'TUT_UserType\' cannot be null','1048','Column \'TUT_UserType\' cannot be null','MYSQL',_binary '','2019-08-05 03:40:01'),(78,'1065','42000','Query was empty','1065','Query was empty','MYSQL',_binary '','2019-08-06 08:20:36'),(79,'1054','42S22','Unknown column \'rol001\' in \'field list\'','1054','Unknown column \'rol001\' in \'field list\'','MYSQL',_binary '','2019-08-06 08:51:56'),(80,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'rol001\'),(@p_userId,\'rol002\')\'\' at line 1','1064','You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'rol001\'),(@p_userId,\'rol002\')\'\' at line 1','MYSQL',_binary '','2019-08-06 09:05:07'),(81,'1048','23000','Column \'TURA_User\' cannot be null','1048','Column \'TURA_User\' cannot be null','MYSQL',_binary '','2019-08-11 16:02:29'),(82,'1264','22003','Out of range value for column \'TCCM_CC_Active\' at row 1','1264','Out of range value for column \'TCCM_CC_Active\' at row 1','MYSQL',_binary '','2019-08-15 16:28:05'),(83,'1062','23000','Duplicate entry \'x\' for key \'PRIMARY\'','1062','Duplicate entry \'x\' for key \'PRIMARY\'','MYSQL',_binary '','2019-08-15 16:31:10'),(88,'1267','HY000','Illegal mix of collations (utf8mb4_0900_ai_ci,IMPLICIT) and (utf8mb4_general_ci,IMPLICIT) for operation \'=\'','1267','Illegal mix of collations (utf8mb4_0900_ai_ci,IMPLICIT) and (utf8mb4_general_ci,IMPLICIT) for operation \'=\'','MYSQL',_binary '','2019-12-06 09:39:00'),(89,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'FROM tbl_email_mstr\n		WHERE TEM_Email=@p_emailId\' at line 9','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'FROM tbl_email_mstr\n		WHERE TEM_Email=@p_emailId\' at line 9','MYSQL',_binary '','2019-12-09 07:22:10'),(90,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE TEM_Email=@p_emailId\' at line 7','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'WHERE TEM_Email=@p_emailId\' at line 7','MYSQL',_binary '','2019-12-09 10:45:30'),(91,'1406','22001','Data too long for column \'TDM_Doc_Name\' at row 1','1406','Data too long for column \'TDM_Doc_Name\' at row 1','MYSQL',_binary '','2019-12-12 06:52:41'),(92,'1406','22001','Data too long for column \'TURM_URole_Status\' at row 1','1406','Data too long for column \'TURM_URole_Status\' at row 1','MYSQL',_binary '','2019-12-18 13:08:22'),(93,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'NULL\' at line 1','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'NULL\' at line 1','MYSQL',_binary '','2019-12-18 13:48:52'),(94,'1366','HY000','Incorrect integer value: \'\' for column \'TDM_Dept_Parent\' at row 1','1366','Incorrect integer value: \'\' for column \'TDM_Dept_Parent\' at row 1','MYSQL',_binary '','2019-12-19 07:44:54'),(95,'1054','42S22','Unknown column \'tum.TUM_User_State\' in \'field list\'','1054','Unknown column \'tum.TUM_User_State\' in \'field list\'','MYSQL',_binary '','2019-12-20 05:32:30'),(96,'1054','42S22','Unknown column \'TDM_Dept_DeleteFlag\' in \'where clause\'','1054','Unknown column \'TDM_Dept_DeleteFlag\' in \'where clause\'','MYSQL',_binary '','2019-12-20 06:24:00'),(97,'1146','42S02','Table \'opsc_automation.tbl_department_type_mstr\' doesn\'t exist','1146','Table \'opsc_automation.tbl_department_type_mstr\' doesn\'t exist','MYSQL',_binary '','2019-12-20 07:54:00'),(98,'1406','22001','Data too long for column \'TUM_User_Status\' at row 1','1406','Data too long for column \'TUM_User_Status\' at row 1','MYSQL',_binary '','2019-12-20 07:59:23'),(99,'1452','23000','Cannot add or update a child row: a foreign key constraint fails (`opsc_automation`.`tbl_user_mstr`, CONSTRAINT `TUT_UserType3` FOREIGN KEY (`TUM_User_Dept`) REFERENCES `tbl_user_type_mstr` (`TUT_UserType`))','1452','Cannot add or update a child row: a foreign key constraint fails (`opsc_automation`.`tbl_user_mstr`, CONSTRAINT `TUT_UserType3` FOREIGN KEY (`TUM_User_Dept`) REFERENCES `tbl_user_type_mstr` (`TUT_UserType`))','MYSQL',_binary '','2019-12-20 08:03:49'),(100,'1054','42S22','Unknown column \'TUM_User_PINno\' in \'NEW\'','1054','Unknown column \'TUM_User_PINno\' in \'NEW\'','MYSQL',_binary '','2019-12-20 08:07:25'),(101,'1146','42S02','Table \'opsc_automation.tbl_activity_mstr\' doesn\'t exist','1146','Table \'opsc_automation.tbl_activity_mstr\' doesn\'t exist','MYSQL',_binary '','2019-12-22 10:21:05'),(102,'1406','22001','Data too long for column \'TAM_Actvty_Status\' at row 1','1406','Data too long for column \'TAM_Actvty_Status\' at row 1','MYSQL',_binary '','2019-12-22 10:25:54'),(103,'1146','42S02','Table \'opsc_demo_current.tbl_acitivity_mstr\' doesn\'t exist','1146','Table \'opsc_demo_current.tbl_acitivity_mstr\' doesn\'t exist','MYSQL',_binary '','2019-12-23 11:00:55'),(104,'1452','23000','Cannot add or update a child row: a foreign key constraint fails (`opsc_demo_current`.`tbl_state_mstr`, CONSTRAINT `TCM_Country1` FOREIGN KEY (`TSM_Country_Id`) REFERENCES `tbl_country_mstr` (`TCM_Country`))','1452','Cannot add or update a child row: a foreign key constraint fails (`opsc_demo_current`.`tbl_state_mstr`, CONSTRAINT `TCM_Country1` FOREIGN KEY (`TSM_Country_Id`) REFERENCES `tbl_country_mstr` (`TCM_Country`))','MYSQL',_binary '','2019-12-25 11:18:26'),(105,'1054','42S22','Unknown column \'x\' in \'where clause\'','1054','Unknown column \'x\' in \'where clause\'','MYSQL',_binary '','2020-01-14 07:20:07'),(106,'1048','23000','Column \'TRM_Rules\' cannot be null','1048','Column \'TRM_Rules\' cannot be null','MYSQL',_binary '','2020-01-14 09:10:44'),(107,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\"%uni%\"\' at line 4','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\"%uni%\"\' at line 4','MYSQL',_binary '','2020-01-14 09:34:59'),(108,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\"%ops%\"\' at line 4','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\"%ops%\"\' at line 4','MYSQL',_binary '','2020-01-14 09:37:55'),(109,'1172','42000','Result consisted of more than one row','1172','Result consisted of more than one row','MYSQL',_binary '','2020-01-14 09:48:45'),(110,'1366','HY000','Incorrect integer value: \'\' for column \'TURM_URole_Status\' at row 1','1366','Incorrect integer value: \'\' for column \'TURM_URole_Status\' at row 1','MYSQL',_binary '','2020-01-14 09:50:36'),(111,'1366','HY000','Incorrect integer value: \'wing/2019-20/001\' for column \'TWM_Wing\' at row 1','1366','Incorrect integer value: \'wing/2019-20/001\' for column \'TWM_Wing\' at row 1','MYSQL',_binary '','2020-01-15 05:50:25'),(112,'1366','HY000','Incorrect integer value: \'status001\' for column \'TSM_Status\' at row 1','1366','Incorrect integer value: \'status001\' for column \'TSM_Status\' at row 1','MYSQL',_binary '','2020-01-15 07:16:07'),(113,'1062','23000','Duplicate entry \'x\' for key \'TWM_Wing_Name_UNIQUE\'','1062','Duplicate entry \'x\' for key \'TWM_Wing_Name_UNIQUE\'','MYSQL',_binary '','2020-01-15 09:56:31'),(114,'1366','HY000','Incorrect integer value: \'\' for column \'TDR_IsEnquiry_Conducted\' at row 1','1366','Incorrect integer value: \'\' for column \'TDR_IsEnquiry_Conducted\' at row 1','MYSQL',_binary '','2020-01-16 13:20:11'),(115,'1048','23000','Column \'TDD_DocumentName\' cannot be null','1048','Column \'TDD_DocumentName\' cannot be null','MYSQL',_binary '','2020-01-17 12:58:32'),(116,'1364','HY000','Field \'TDD_DocumentFor\' doesn\'t have a default value','1364','Field \'TDD_DocumentFor\' doesn\'t have a default value','MYSQL',_binary '','2020-01-17 13:00:21'),(117,'1366','HY000','Incorrect integer value: \'\' for column \'TRR_RelaxtnOcasion_Year\' at row 1','1366','Incorrect integer value: \'\' for column \'TRR_RelaxtnOcasion_Year\' at row 1','MYSQL',_binary '','2020-01-21 11:43:40'),(118,'1264','22003','Out of range value for column \'TRR_RelaxtnOcasion_LetterNo\' at row 1','1264','Out of range value for column \'TRR_RelaxtnOcasion_LetterNo\' at row 1','MYSQL',_binary '','2020-01-21 12:31:57'),(119,'1364','HY000','Field \'TRD_DocumentFor\' doesn\'t have a default value','1364','Field \'TRD_DocumentFor\' doesn\'t have a default value','MYSQL',_binary '','2020-02-03 10:06:06'),(120,'1366','HY000','Incorrect integer value: \'\' for column \'TRR_IsOfficerHold_Experience\' at row 1','1366','Incorrect integer value: \'\' for column \'TRR_IsOfficerHold_Experience\' at row 1','MYSQL',_binary '','2020-02-03 11:07:47'),(121,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \', \'), COALESCE(TUM_User_Lname + , \')\n        ))) FROM tbl_user_mstr WHERE TUM_Us\' at line 3','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \', \'), COALESCE(TUM_User_Lname + , \')\n        ))) FROM tbl_user_mstr WHERE TUM_Us\' at line 3','MYSQL',_binary '','2020-02-05 07:39:25'),(122,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\' at line 8','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\' at line 8','MYSQL',_binary '','2020-02-05 08:50:08'),(123,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \',TUM_User_Lname) as name FROM opsc_automation_current.tbl_user_mstr WHERE TUM_Us\' at line 3','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \',TUM_User_Lname) as name FROM opsc_automation_current.tbl_user_mstr WHERE TUM_Us\' at line 3','MYSQL',_binary '','2020-02-05 09:01:09'),(124,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \',TUM_User_Lname) as name FROM tbl_user_mstr WHERE TUM_User=TRAH_Approval_Created\' at line 3','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \',TUM_User_Lname) as name FROM tbl_user_mstr WHERE TUM_User=TRAH_Approval_Created\' at line 3','MYSQL',_binary '','2020-02-05 09:02:06'),(125,'1146','42S02','Table \'opsc_automation_current.tbl_page_mstr\' doesn\'t exist','1146','Table \'opsc_automation_current.tbl_page_mstr\' doesn\'t exist','MYSQL',_binary '','2020-02-05 09:29:24'),(126,'1146','42S02','Table \'opsc_automation_current.tbl_msglabel_mstr\' doesn\'t exist','1146','Table \'opsc_automation_current.tbl_msglabel_mstr\' doesn\'t exist','MYSQL',_binary '','2020-02-05 13:16:26'),(127,'1146','42S02','Table \'opsc_automation_current.tbl_type_promotion_mstr\' doesn\'t exist','1146','Table \'opsc_automation_current.tbl_type_promotion_mstr\' doesn\'t exist','MYSQL',_binary '','2020-02-11 05:09:13'),(128,'1048','23000','Column \'TPR_PromotionRequest\' cannot be null','1048','Column \'TPR_PromotionRequest\' cannot be null','MYSQL',_binary '','2020-02-11 05:16:05'),(129,'1305','42000','FUNCTION opsc_automation_current.FN_GET_OFFICERID does not exist','1305','FUNCTION opsc_automation_current.FN_GET_OFFICERID does not exist','MYSQL',_binary '','2020-02-11 05:44:44'),(130,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\' at line 7','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\' at line 7','MYSQL',_binary '','2020-02-14 06:29:34'),(131,'1366','HY000','Incorrect integer value: \'Msg1\' for column \'TMLP_MessageId\' at row 1','1366','Incorrect integer value: \'Msg1\' for column \'TMLP_MessageId\' at row 1','MYSQL',_binary '','2020-02-14 10:20:29'),(132,'1366','HY000','Incorrect integer value: \'app002\' for column \'TDAH_Approval_Action\' at row 1','1366','Incorrect integer value: \'app002\' for column \'TDAH_Approval_Action\' at row 1','MYSQL',_binary '','2020-02-15 08:17:47'),(133,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'TPR_ProposedVacancy_SC\n		TPR_ProposedVacancy_ST\n		TPR_ProposedVacancy_UR\n		TPR_R\' at line 44','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'TPR_ProposedVacancy_SC\n		TPR_ProposedVacancy_ST\n		TPR_ProposedVacancy_UR\n		TPR_R\' at line 44','MYSQL',_binary '','2020-02-18 05:02:31'),(134,'1366','HY000','Incorrect integer value: \'NA\' for column \'TPR_DPCVacancy_SC\' at row 1','1366','Incorrect integer value: \'NA\' for column \'TPR_DPCVacancy_SC\' at row 1','MYSQL',_binary '','2020-02-21 08:15:26'),(135,'1366','HY000','Incorrect integer value: \'NA\' for column \'TPR_EligibleOfficer_SC\' at row 1','1366','Incorrect integer value: \'NA\' for column \'TPR_EligibleOfficer_SC\' at row 1','MYSQL',_binary '','2020-02-21 08:54:40'),(136,'1292','22007','Truncated incorrect INTEGER value: \'NA\'','1292','Truncated incorrect INTEGER value: \'NA\'','MYSQL',_binary '','2020-02-21 09:04:42'),(137,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'TSM_Subcaste,\n        tcm.TCM_Caste_Name,\n        TSM_Subcaste_Name,\n		TSM_Subca\' at line 1','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'TSM_Subcaste,\n        tcm.TCM_Caste_Name,\n        TSM_Subcaste_Name,\n		TSM_Subca\' at line 1','MYSQL',_binary '','2020-02-28 05:09:31'),(138,'1146','42S02','Table \'wethefamily.tcm_contact_active\' doesn\'t exist','1146','Table \'wethefamily.tcm_contact_active\' doesn\'t exist','MYSQL',_binary '','2020-02-28 13:37:31'),(139,'1264','22003','Out of range value for column \'TMM_Member_DeletedFlag\' at row 1','1264','Out of range value for column \'TMM_Member_DeletedFlag\' at row 1','MYSQL',_binary '','2020-03-12 10:05:08'),(140,'1054','42S22','Unknown column \'tsm.TSM_Caste\' in \'on clause\'','1054','Unknown column \'tsm.TSM_Caste\' in \'on clause\'','MYSQL',_binary '','2020-03-13 12:52:26'),(141,'1054','42S22','Unknown column \'tmm.TOM_Occupation_Name\' in \'field list\'','1054','Unknown column \'tmm.TOM_Occupation_Name\' in \'field list\'','MYSQL',_binary '','2020-03-13 12:52:50'),(142,'1064','42000','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'MAM0001\' at line 1','1064','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'MAM0001\' at line 1','MYSQL',_binary '','2020-03-16 07:15:44'),(143,'1292','22007','Incorrect datetime value: \'\' for column \'TMM_Member_Dob\' at row 1','1292','Incorrect datetime value: \'\' for column \'TMM_Member_Dob\' at row 1','MYSQL',_binary '','2020-03-16 10:43:01'),(144,'1048','23000','Column \'TSM_Social\' cannot be null','1048','Column \'TSM_Social\' cannot be null','MYSQL',_binary '','2020-03-20 07:33:22'),(145,'1054','42S22','Unknown column \'TMM_Member_Location\' in \'field list\'','1054','Unknown column \'TMM_Member_Location\' in \'field list\'','MYSQL',_binary '','2020-04-13 07:30:49'),(146,'1146','42S02','Table \'wethefamily_demo.tbl_department_mstr\' doesn\'t exist','1146','Table \'wethefamily_demo.tbl_department_mstr\' doesn\'t exist','MYSQL',_binary '','2020-04-13 08:31:27'),(147,'1054','42S22','Unknown column \'tsm1.TSM_State_Name\' in \'field list\'','1054','Unknown column \'tsm1.TSM_State_Name\' in \'field list\'','MYSQL',_binary '','2020-04-13 12:17:23'),(148,'1054','42S22','Unknown column \'TMM_Matrimony_Image.TMM_Matrimony_Dob\' in \'field list\'','1054','Unknown column \'TMM_Matrimony_Image.TMM_Matrimony_Dob\' in \'field list\'','MYSQL',_binary '','2020-04-14 07:34:58'),(149,'1054','42S22','Unknown column \'TMM_Membe_prLocation\' in \'field list\'','1054','Unknown column \'TMM_Membe_prLocation\' in \'field list\'','MYSQL',_binary '','2020-04-15 11:33:53'),(150,'1054','42S22','Unknown column \'TMM_Membe_FatherName\' in \'field list\'','1054','Unknown column \'TMM_Membe_FatherName\' in \'field list\'','MYSQL',_binary '','2020-04-15 11:39:53'),(151,'1146','42S02','Table \'aquatic_demo.tbl_series_mstr\' doesn\'t exist','1146','Table \'aquatic_demo.tbl_series_mstr\' doesn\'t exist','MYSQL',_binary '','2020-05-18 02:50:50'),(152,'1364','HY000','Field \'TSM_series\' doesn\'t have a default value','1364','Field \'TSM_series\' doesn\'t have a default value','MYSQL',_binary '','2020-05-18 03:13:23'),(153,'1146','42S02','Table \'aquatic_demo.tbl_caste_mstr\' doesn\'t exist','1146','Table \'aquatic_demo.tbl_caste_mstr\' doesn\'t exist','MYSQL',_binary '','2020-05-18 04:53:58'),(154,'1406','22001','Data too long for column \'TTM_Password\' at row 1','1406','Data too long for column \'TTM_Password\' at row 1','MYSQL',_binary '','2020-08-11 05:33:01'),(155,'1292','22007','Incorrect datetime value: \'01:24:25am\' for column \'TEA_intime\' at row 1','1292','Incorrect datetime value: \'01:24:25am\' for column \'TEA_intime\' at row 1','MYSQL',_binary '','2020-08-11 19:54:25'),(156,'1292','22007','Incorrect time value: \'01:26:30am\' for column \'TEA_intime\' at row 1','1292','Incorrect time value: \'01:26:30am\' for column \'TEA_intime\' at row 1','MYSQL',_binary '','2020-08-11 19:56:30'),(157,'1364','HY000','Field \'TEA_attendance\' doesn\'t have a default value','1364','Field \'TEA_attendance\' doesn\'t have a default value','MYSQL',_binary '','2020-08-11 19:57:32');
/*!40000 ALTER TABLE `tbl_error_handling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member_mstr`
--

DROP TABLE IF EXISTS `tbl_member_mstr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_member_mstr` (
  `TMM_Member` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TMM_Member_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TMM_Member_Ocupation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TMM_Member_Userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TMM_Member_Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TMM_Member_Mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TMM_Member_Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TMM_Member_Qualification` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TMM_Member_Religion` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TMM_Member_Caste` varchar(100) DEFAULT NULL,
  `TMM_Member_Gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TMM_Member_Dob` datetime DEFAULT NULL,
  `TMM_Member_Image` varchar(255) DEFAULT NULL,
  `TMM_MemberType` varchar(100) DEFAULT NULL,
  `TMM_Member_Status` tinyint(4) DEFAULT '1',
  `TMM_IsFirstTime_Login` tinyint(4) DEFAULT '1',
  `TMM_Member_CreatedBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TMM_Member_UpdatedBy` varchar(20) DEFAULT NULL,
  `TMM_Member_CreatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TMM_Member_UpdatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TMM_Member_DeletedFlag` tinyint(4) DEFAULT '0',
  `TMM_Member_Approve` tinyint(4) DEFAULT '0',
  `TMM_Reset_OTP` varchar(20) DEFAULT NULL,
  `TMM_OTP_SentTime` timestamp NULL DEFAULT NULL,
  `TMM_Member_LoginAttempt` tinyint(4) DEFAULT '0',
  `TMM_RefernceBy` varchar(20) DEFAULT NULL,
  `TMM_Member_FatherName` varchar(100) DEFAULT NULL,
  `TMM_Member_MotherName` varchar(100) DEFAULT NULL,
  `TMM_Member_prHouseNo` varchar(45) DEFAULT NULL,
  `TMM_Member_prLocation` varchar(100) DEFAULT NULL,
  `TMM_Member_prCity` varchar(45) DEFAULT NULL,
  `TMM_Member_prDistrict` varchar(100) DEFAULT NULL,
  `TMM_Member_prState` varchar(100) DEFAULT NULL,
  `TMM_Member_prPin` varchar(45) DEFAULT NULL,
  `TMM_Member_peHouseNo` varchar(100) DEFAULT NULL,
  `TMM_Member_peLocation` varchar(100) DEFAULT NULL,
  `TMM_Member_peCity` varchar(100) DEFAULT NULL,
  `TMM_Member_peDistrict` varchar(100) DEFAULT NULL,
  `TMM_Member_peState` varchar(100) DEFAULT NULL,
  `TMM_Member_pePin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TMM_Member`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member_mstr`
--

LOCK TABLES `tbl_member_mstr` WRITE;
/*!40000 ALTER TABLE `tbl_member_mstr` DISABLE KEYS */;
INSERT INTO `tbl_member_mstr` VALUES ('MAM0001','sukanta kumar','OCPA001','sukanta','d3ad9315b7be5dd53b31a273b3b3aba5defe700808305aa16a3062b76658a791','987878787','sukanta@gmail.com','QLFC004','RELG0001','CAS001','1','1980-08-12 00:00:00','1586949634.png','1',1,1,NULL,'user001','2020-04-15 11:30:57','2020-04-17 04:24:41',0,1,NULL,NULL,0,NULL,'hasjasj','ajsajsja','sasas','asasas','asas','dist001','state001','223232','sadada','asdasda','asdasdsa','dist001','state001','23232'),('MAM0002','prakash kumar','OCPA003','prakash','d3ad9315b7be5dd53b31a273b3b3aba5defe700808305aa16a3062b76658a791','9348348344','prakash@gmail.com','QLFC004','RELG0001','CAS001','1','1976-05-12 00:00:00','1586950630.png','1',1,1,NULL,'user001','2020-04-15 15:39:30','2020-04-15 13:18:50',0,1,NULL,NULL,0,NULL,'father','mother','asdad','asdasd','asdadsa','dist001','state001','242432','dasda','asdasd','asdada','dist001','state001','534534');
/*!40000 ALTER TABLE `tbl_member_mstr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_password_policy_mstr`
--

DROP TABLE IF EXISTS `tbl_password_policy_mstr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_password_policy_mstr` (
  `TPPM_Password` int(11) NOT NULL AUTO_INCREMENT,
  `TPPM_Password_Length` int(11) DEFAULT NULL,
  `TPPM_Password_IsUppercase` tinyint(4) DEFAULT '1',
  `TPPM_Password_IsLowercase` tinyint(4) DEFAULT '1',
  `TPPM_Password_IsNumber` tinyint(4) DEFAULT '1',
  `TPPM_Password_IsSpecialChars` tinyint(4) DEFAULT '1',
  `TPPM_Password_Encryption` varchar(40) DEFAULT NULL,
  `TPPM_Password_Reuse` int(11) DEFAULT NULL,
  `TPPM_Password_Validity` int(11) DEFAULT NULL,
  `TPPM_Password_Active` tinyint(4) DEFAULT '1',
  `TPPM_Password_CreatedBy` varchar(45) DEFAULT NULL,
  `TPPM_Password_CreatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TPPM_Password_UpdatedBy` varchar(45) DEFAULT NULL,
  `TPPM_Password_UpdatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TPPM_Password_DeletedFlag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`TPPM_Password`),
  UNIQUE KEY `TPPM_Password_UNIQUE` (`TPPM_Password`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_password_policy_mstr`
--

LOCK TABLES `tbl_password_policy_mstr` WRITE;
/*!40000 ALTER TABLE `tbl_password_policy_mstr` DISABLE KEYS */;
INSERT INTO `tbl_password_policy_mstr` VALUES (1,8,1,1,1,1,'Hash',5,110,1,'user001','2020-01-26 15:06:32','user001','2020-02-04 10:38:55',0);
/*!40000 ALTER TABLE `tbl_password_policy_mstr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_password_policy_mstr_history`
--

DROP TABLE IF EXISTS `tbl_password_policy_mstr_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_password_policy_mstr_history` (
  `H_TPPM_Password` int(11) NOT NULL AUTO_INCREMENT,
  `H_TPPM_Password_Length` int(11) DEFAULT NULL,
  `H_TPPM_Password_IsUppercase` tinyint(4) DEFAULT '1',
  `H_TPPM_Password_IsLowercase` tinyint(4) DEFAULT '1',
  `H_TPPM_Password_IsNumber` tinyint(4) DEFAULT '1',
  `H_TPPM_Password_IsSpecialChars` tinyint(4) DEFAULT '1',
  `H_TPPM_Password_Encryption` varchar(40) DEFAULT NULL,
  `H_TPPM_Password_Reuse` int(11) DEFAULT NULL,
  `H_TPPM_Password_Validity` int(11) DEFAULT NULL,
  `H_TPPM_Password_Active` tinyint(4) DEFAULT '1',
  `H_TPPM_Password_CreatedBy` varchar(45) DEFAULT NULL,
  `H_TPPM_Password_CreatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `H_TPPM_Password_UpdatedBy` varchar(45) DEFAULT NULL,
  `H_TPPM_Password_UpdatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `H_TPPM_Password_DeletedFlag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`H_TPPM_Password`),
  UNIQUE KEY `H_TPPM_Password_UNIQUE` (`H_TPPM_Password`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_password_policy_mstr_history`
--

LOCK TABLES `tbl_password_policy_mstr_history` WRITE;
/*!40000 ALTER TABLE `tbl_password_policy_mstr_history` DISABLE KEYS */;
INSERT INTO `tbl_password_policy_mstr_history` VALUES (1,7,1,1,1,1,'Hash',3,90,1,'user001','2020-01-26 15:06:32','user001','2020-01-26 15:08:05',0),(2,8,1,1,1,1,'Hash',3,90,1,'user001','2020-01-26 15:06:32','user001','2020-01-27 08:38:09',0),(3,8,1,0,1,1,'Hash',3,90,1,'user001','2020-01-26 15:06:32','user001','2020-01-27 08:39:37',0),(4,8,1,1,1,1,'Hash',3,90,1,'user001','2020-01-26 15:06:32','user001','2020-01-27 08:40:18',0),(5,8,1,1,1,1,'Hash',3,120,1,'user001','2020-01-26 15:06:32','user001','2020-01-27 08:40:18',0),(6,8,1,1,1,1,'Hash',4,100,1,'user001','2020-01-26 15:06:32','user001','2020-01-28 11:37:13',0),(7,8,1,1,1,1,'Hash',5,110,1,'user001','2020-01-26 15:06:32','user001','2020-01-27 08:40:18',0),(8,8,1,1,1,1,'Hash',5,110,1,'user001','2020-01-26 15:06:32','user001','2020-02-04 10:35:32',0),(9,8,1,1,1,1,'Hash',5,110,1,'user001','2020-01-26 15:06:32','user001','2020-02-04 10:38:03',0);
/*!40000 ALTER TABLE `tbl_password_policy_mstr_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_prefix_mstr`
--

DROP TABLE IF EXISTS `tbl_prefix_mstr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_prefix_mstr` (
  `TPM_Prefix` int(11) NOT NULL AUTO_INCREMENT,
  `TPM_Prfx_tblName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TPM_Prfx_TypeName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TPM_Prfx_Code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TPM_Prfx_NumberLength` int(11) DEFAULT NULL,
  `TPM_Prfx_StartNo` int(11) DEFAULT NULL,
  `TPM_Prfx_FinYear_Status` bit(1) DEFAULT b'0' COMMENT 'for including financial year or not 0=>not ,1=>yes',
  `TPM_Prfx_isEditable` bit(1) DEFAULT b'0',
  `TPM_Prfx_Active` bit(1) DEFAULT b'0',
  `TPM_Prfx_CreatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TPM_Prfx_UpdatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TPM_Prfx_DeletedFlag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`TPM_Prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_prefix_mstr`
--

LOCK TABLES `tbl_prefix_mstr` WRITE;
/*!40000 ALTER TABLE `tbl_prefix_mstr` DISABLE KEYS */;
INSERT INTO `tbl_prefix_mstr` VALUES (1,'tbl_country_mstr','country','cntry',3,1,_binary '\0',_binary '\0',_binary '\0','2019-08-01 08:51:57','2019-08-01 08:51:57',_binary '\0'),(2,'tbl_state_mstr','state','state',3,1,_binary '\0',_binary '\0',_binary '\0','2019-08-03 15:34:41','2019-08-03 15:34:41',_binary '\0'),(3,'tbl_district_mstr','district','distr',3,1,_binary '\0',_binary '\0',_binary '\0','2019-08-03 15:35:51','2019-08-03 15:35:51',_binary '\0'),(4,'tbl_module_mstr','module','mod',3,1,_binary '\0',_binary '\0',_binary '\0','2019-08-04 10:14:05','2019-08-04 10:14:05',_binary '\0'),(5,'tbl_function_mstr','function','func',3,1,_binary '\0',_binary '\0',_binary '\0','2019-08-04 10:16:26','2019-08-04 10:16:26',_binary '\0'),(6,'tbl_activity_mstr','activity','actv',3,1,_binary '\0',_binary '\0',_binary '\0','2019-08-04 10:16:26','2019-08-04 10:16:26',_binary '\0'),(7,'tbl_user_type_mstr','User Type','usrtp',3,1,_binary '\0',_binary '\0',_binary '\0','2019-08-05 03:19:20','2019-08-05 03:19:20',_binary '\0'),(8,'tbl_userrole_mstr','userrolemstr','rol',3,1,_binary '\0',_binary '\0',_binary '\0','2019-08-05 03:24:33','2019-08-05 03:24:33',_binary '\0'),(9,'tbl_user_mstr','UserManagement','user',3,1,_binary '\0',_binary '\0',_binary '\0','2019-08-05 03:24:33','2019-08-05 03:24:33',_binary '\0'),(10,'tbl_userrole_assign','roleassign','roleasgn',3,1,_binary '\0',_binary '\0',_binary '\0','2019-08-05 03:26:26','2019-08-05 03:26:26',_binary '\0'),(11,'tbl_costcenter_mstr','costcenter','cc',3,1,_binary '\0',_binary '\0',_binary '\0','2019-08-15 15:10:35','2019-08-15 15:10:35',_binary '\0'),(12,'tbl_faq_mstr','faqMstr','faq',3,1,_binary '\0',_binary '\0',_binary '\0','2019-12-27 14:03:52','2019-12-27 14:03:52',_binary '\0'),(13,'tbl_approval_mstr','appMstr','app',3,1,_binary '\0',_binary '\0',_binary '\0','2020-01-09 11:53:24','2020-01-09 11:53:24',_binary '\0'),(14,'tbl_department_mstr','deptMstr','dept',3,1,_binary '\0',_binary '\0',_binary '\0','2020-01-09 11:54:26','2020-01-09 11:54:26',_binary '\0'),(15,'tbl_reference_no_mstr','refNumber','ref',3,1,_binary '\0',_binary '\0',_binary '\0','2020-01-09 11:55:17','2020-01-09 11:55:17',_binary '\0'),(16,'tbl_banner_mstr','banner','ban',3,1,_binary '\0',_binary '\0',_binary '\0','2020-01-09 11:55:54','2020-01-09 11:55:54',_binary '\0'),(17,'tbl_orders_mstr','orderMstr','ord',4,1,_binary '\0',_binary '\0',_binary '\0','2020-01-09 11:57:18','2020-01-09 11:57:18',_binary '\0'),(18,'tbl_designation_mstr','desigMstr','des',3,1,_binary '\0',_binary '\0',_binary '\0','2020-01-14 07:26:07','2020-01-14 07:26:07',_binary '\0'),(19,'tbl_post_mstr','postMstr','post',3,1,_binary '\0',_binary '\0',_binary '\0','2020-01-14 09:30:48','2020-01-14 09:30:48',_binary '\0'),(20,'tbl_rules_mstr','ruleMstr','rule',3,1,_binary '\0',_binary '\0',_binary '\0','2020-01-14 09:32:43','2020-01-14 09:32:43',_binary '\0'),(22,'tbl_wing_mstr','wingMstr','wing',3,1,_binary '\0',_binary '\0',_binary '\0','2020-01-15 05:25:25','2020-01-15 05:25:25',_binary '\0'),(23,'tbl_status_mstr','statusMstr','status',3,1,_binary '\0',_binary '\0',_binary '\0','2020-01-15 07:09:42','2020-01-15 07:09:42',_binary '\0'),(33,'tbl_religion_mstr','religion','RELG',4,1,_binary '\0',_binary '\0',_binary '\0','2020-02-26 10:36:43','2020-02-26 10:36:43',_binary '\0'),(34,'tbl_caste_mstr','caste','CAS',3,1,_binary '\0',_binary '\0',_binary '\0','2020-02-27 06:24:33','2020-02-27 06:24:33',_binary '\0'),(35,'tbl_qualification_mstr','qualification','QLFC',3,1,_binary '\0',_binary '\0',_binary '\0','2020-02-27 08:46:52','2020-02-27 08:46:52',_binary '\0'),(36,'tbl_occupation_mstr','occupation','OCPA',3,1,_binary '\0',_binary '\0',_binary '\0','2020-02-27 10:02:53','2020-02-27 10:02:53',_binary '\0'),(37,'tbl_language_mstr','language','LANG',3,1,_binary '\0',_binary '\0',_binary '\0','2020-02-27 11:28:00','2020-02-27 11:28:00',_binary '\0'),(38,'tbl_subcaste_mstr','subcaste','SCAS',3,1,_binary '\0',_binary '\0',_binary '\0','2020-02-27 13:33:24','2020-02-27 13:33:24',_binary '\0'),(39,'tbl_service_mstr','service','SERV',3,1,_binary '\0',_binary '\0',_binary '\0','2020-02-28 06:32:38','2020-02-28 06:32:38',_binary '\0'),(40,'tbl_category_mstr','category','CAT',3,1,_binary '\0',_binary '\0',_binary '\0','2020-02-28 11:45:28','2020-02-28 11:45:28',_binary '\0'),(41,'tbl_member_mstr','member','MAM',4,1,_binary '\0',_binary '\0',_binary '\0','2020-03-12 09:51:05','2020-03-12 09:51:05',_binary '\0'),(42,'tbl_matrimony_mstr','matrimony','MAT',4,1,_binary '\0',_binary '\0',_binary '\0','2020-03-17 06:05:40','2020-03-17 06:05:40',_binary '\0'),(43,'tbl_social_mstr','social','SOM',3,1,_binary '\0',_binary '\0',_binary '\0','2020-03-20 07:26:47','2020-03-20 07:26:47',_binary '\0'),(44,'tbl_refernce_mstr','refernce','REF',4,1,_binary '\0',_binary '\0',_binary '\0','2020-04-11 16:08:08','2020-04-11 16:08:08',_binary '\0'),(45,'tbl_city_mstr','city','city',3,1,_binary '\0',_binary '\0',_binary '\0','2020-04-12 05:01:01','2020-04-12 05:01:01',_binary '\0');
/*!40000 ALTER TABLE `tbl_prefix_mstr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_team_mstr`
--

DROP TABLE IF EXISTS `tbl_team_mstr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_team_mstr` (
  `TTM_Team` int(11) NOT NULL AUTO_INCREMENT,
  `TTM_TeamMemberName` varchar(100) DEFAULT NULL,
  `TTM_Member_mobile` varchar(20) DEFAULT NULL,
  `TTM_Member_Email` varchar(100) NOT NULL,
  `TTM_TeamMemberDesignation` varchar(200) DEFAULT NULL,
  `TTM_TeamMember_Image` varchar(255) DEFAULT NULL,
  `TTM_DOB` datetime DEFAULT NULL,
  `TTM_Member_Address` varchar(555) DEFAULT NULL,
  `TTM_createdBy` varchar(45) DEFAULT NULL,
  `TTM_createdOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TTM_updateBy` varchar(45) DEFAULT NULL,
  `TTM_updatedOn` timestamp NULL DEFAULT NULL,
  `TTM_Member_DeletedFlag` tinyint(4) DEFAULT '0',
  `TTM_Password` varchar(500) NOT NULL,
  PRIMARY KEY (`TTM_Team`),
  UNIQUE KEY `TTM_Member_Email_UNIQUE` (`TTM_Member_Email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_team_mstr`
--

LOCK TABLES `tbl_team_mstr` WRITE;
/*!40000 ALTER TABLE `tbl_team_mstr` DISABLE KEYS */;
INSERT INTO `tbl_team_mstr` VALUES (2,'Somu','8765676567','somua@gmail.com','worker','1589525063.jpg','1998-06-10 00:00:00','khurdha, odisha','','2020-05-15 06:44:23',NULL,NULL,0,'ad5561d2f2034f7a6b73ee5760cbc612cb04480866df0b322bc2af34e31bd3bc'),(4,'Shovan','9897898767','shovan@gmail.com','Developer','1597114414.jpeg','1999-01-11 00:00:00','puri','user001','2020-08-11 02:53:35',NULL,NULL,0,'ad5561d2f2034f7a6b73ee5760cbc612cb04480866df0b322bc2af34e31bd3bc'),(5,'Asish Ram','9876567987','asish@gmail.com','android deve;oper','1597123713.jpeg','1994-01-11 00:00:00','Tourism & Culture Department, khurdha, odisha','user001','2020-08-11 05:28:34',NULL,NULL,0,'ad5561d2f2034f7a6b73ee5760cbc612cb04480866df0b322bc2af34e31bd3bc'),(6,'Sukanta Sahoo','9876567877','sukanta@gmail.com','Designer','1597124074.jpeg','2020-08-14 00:00:00','khurdha, odisha','user001','2020-08-11 05:34:34',NULL,'2020-08-12 04:00:15',0,'ad5561d2f2034f7a6b73ee5760cbc612cb04480866df0b322bc2af34e31bd3bc');
/*!40000 ALTER TABLE `tbl_team_mstr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_login_history`
--

DROP TABLE IF EXISTS `tbl_user_login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_login_history` (
  `TULH_LoginHistory` int(11) NOT NULL AUTO_INCREMENT,
  `TULH_User` varchar(30) DEFAULT NULL,
  `TULH_LogHistory_IPAddress` varchar(100) DEFAULT NULL,
  `TULH_LogHistory_LoginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TULH_LogHistory_LogoutTime` timestamp NULL DEFAULT NULL,
  `TULH_LogHistory_Success` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`TULH_LoginHistory`),
  UNIQUE KEY `TULH_LoginHistory_UNIQUE` (`TULH_LoginHistory`)
) ENGINE=InnoDB AUTO_INCREMENT=467 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_login_history`
--

LOCK TABLES `tbl_user_login_history` WRITE;
/*!40000 ALTER TABLE `tbl_user_login_history` DISABLE KEYS */;
INSERT INTO `tbl_user_login_history` VALUES (1,NULL,'192.168.1.53','2020-01-27 10:06:03',NULL,0),(2,'user001','192.168.1.53','2020-01-27 10:23:55',NULL,0),(3,'user001','192.168.1.53','2020-01-27 10:27:12',NULL,0),(4,'user001','192.168.1.53','2020-01-27 10:28:03',NULL,0),(5,'user001','192.168.1.53','2020-01-27 10:28:33',NULL,0),(6,'user001','192.168.1.53','2020-01-27 10:31:26',NULL,1),(7,'user001','192.168.1.53','2020-01-27 10:35:59',NULL,1),(8,'user001','192.168.1.53','2020-01-27 10:39:21',NULL,1),(9,'user001','192.168.1.53','2020-01-27 13:10:52',NULL,1),(10,'user001','192.168.1.53','2020-01-30 12:46:34',NULL,1),(11,'user001','192.168.1.39','2020-02-01 06:26:25',NULL,1),(12,'user001','192.168.1.34','2020-02-03 06:13:34',NULL,1),(13,'user001','::1','2020-02-03 09:21:38','2020-02-03 10:18:53',1),(14,'user001','::1','2020-02-03 11:13:14','2020-02-03 11:53:28',1),(15,'user001','::1','2020-02-03 12:01:55','2020-02-03 12:01:56',1),(16,'user001','::1','2020-02-03 12:02:19','2020-02-03 12:02:20',1),(17,'user001','::1','2020-02-03 12:07:01','2020-02-03 12:27:33',1),(18,'user001','::1','2020-02-03 12:27:53','2020-02-03 12:38:01',1),(19,'user001','::1','2020-02-03 12:38:18','2020-02-03 13:12:58',1),(20,'user001','::1','2020-02-03 13:17:56','2020-02-03 15:03:16',1),(21,'user011','192.168.1.34','2020-02-03 13:38:52',NULL,1),(22,'user011','::1','2020-02-03 15:03:50','2020-02-03 15:04:08',1),(23,'user001','::1','2020-02-03 15:04:27','2020-02-03 15:16:08',1),(24,'user001','::1','2020-02-03 15:16:44',NULL,0),(25,'user001','::1','2020-02-03 15:17:11','2020-02-03 15:51:44',1),(26,'user001','::1','2020-02-03 15:56:55',NULL,0),(27,'user001','::1','2020-02-03 15:57:31',NULL,1),(28,'user011','192.168.1.34','2020-02-04 04:57:13','2020-02-04 06:36:24',1),(29,'user001','192.168.1.34','2020-02-04 06:36:46',NULL,0),(30,'user001','192.168.1.34','2020-02-04 06:37:10',NULL,0),(31,'user001','192.168.1.34','2020-02-04 06:37:59',NULL,0),(32,'user011','192.168.1.34','2020-02-04 06:51:12','2020-02-04 07:11:35',1),(33,'user001','192.168.1.34','2020-02-04 07:12:02',NULL,0),(34,'user001','192.168.1.34','2020-02-04 07:12:28','2020-02-04 07:28:00',1),(35,'user011','192.168.1.34','2020-02-04 07:28:29',NULL,0),(36,'user011','192.168.1.34','2020-02-04 07:29:19',NULL,1),(37,'user001','::1','2020-02-04 07:41:47',NULL,1),(38,'user001','192.168.1.34','2020-02-04 13:11:26',NULL,1),(39,'user001','::1','2020-02-04 17:36:53',NULL,1),(40,'user001','::1','2020-02-05 04:28:29',NULL,1),(41,'user011','192.168.1.34','2020-02-05 04:58:31',NULL,1),(42,'user001','192.168.1.34','2020-02-05 05:58:15',NULL,1),(43,'user011','192.168.1.48','2020-02-05 06:35:08','2020-02-05 06:43:07',1),(44,'user001','192.168.1.48','2020-02-05 06:42:11',NULL,0),(45,'user001','192.168.1.48','2020-02-05 06:42:53',NULL,0),(46,'user001','192.168.1.48','2020-02-05 06:43:41','2020-02-05 06:43:47',1),(47,'user001','192.168.1.48','2020-02-05 06:44:33',NULL,1),(48,'user011','192.168.1.48','2020-02-05 06:45:08','2020-02-05 12:26:19',1),(49,'user001','192.168.1.48','2020-02-05 07:15:06',NULL,0),(50,'user001','192.168.1.48','2020-02-05 07:15:59',NULL,1),(51,'user002','192.168.1.48','2020-02-05 12:26:53',NULL,1),(52,'user002','::1','2020-02-05 12:28:54','2020-02-05 12:30:59',1),(53,'user002','192.168.1.48','2020-02-05 12:32:07','2020-02-05 13:03:49',1),(54,'user003','::1','2020-02-05 13:01:24','2020-02-05 13:15:49',1),(55,'user011','192.168.1.48','2020-02-05 13:07:23','2020-02-05 13:45:47',1),(56,'user001','192.168.1.48','2020-02-05 13:07:54',NULL,1),(57,'user003','::1','2020-02-05 13:16:12','2020-02-05 13:37:53',1),(58,'user003','::1','2020-02-05 13:39:33',NULL,1),(59,'user002','::1','2020-02-05 13:41:16','2020-02-05 13:41:26',1),(60,'user003','::1','2020-02-05 13:41:50','2020-02-05 13:56:37',1),(61,'user003','::1','2020-02-05 13:56:56','2020-02-05 13:59:01',1),(62,'user003','::1','2020-02-05 14:02:10',NULL,1),(63,'user003','::1','2020-02-05 14:03:28',NULL,1),(64,'user003','::1','2020-02-05 14:04:28',NULL,1),(65,'user003','::1','2020-02-05 14:07:00','2020-02-05 15:12:09',1),(66,'user001','::1','2020-02-05 17:34:34',NULL,1),(67,'user001','192.168.1.48','2020-02-07 05:52:52',NULL,0),(68,'user001','192.168.1.48','2020-02-07 05:53:19',NULL,0),(69,'user001','192.168.1.48','2020-02-07 05:54:24',NULL,0),(70,'user001','192.168.1.48','2020-02-07 05:54:48',NULL,1),(71,'user001','::1','2020-02-07 12:07:43',NULL,1),(72,'user001','192.168.1.48','2020-02-07 12:29:09','2020-02-07 12:51:36',1),(73,'user011','::1','2020-02-08 16:24:47','2020-02-08 16:24:59',1),(74,'user006','::1','2020-02-08 16:25:23',NULL,1),(75,'user006','::1','2020-02-08 16:26:05','2020-02-08 16:41:24',1),(76,'user001','::1','2020-02-08 16:34:37',NULL,0),(77,'user001','::1','2020-02-09 09:30:35',NULL,0),(78,'user001','::1','2020-02-09 09:31:16',NULL,0),(79,'user001','::1','2020-02-09 10:08:35',NULL,0),(80,'user001','::1','2020-02-09 10:09:00',NULL,0),(81,'user001','::1','2020-02-09 10:10:23','2020-02-09 10:10:30',1),(82,'user001','::1','2020-02-09 10:12:52',NULL,0),(83,'user006','::1','2020-02-09 10:43:06',NULL,0),(84,'user006','::1','2020-02-09 10:44:19',NULL,0),(85,'user006','::1','2020-02-09 10:45:23',NULL,0),(86,'user006','::1','2020-02-09 10:45:58',NULL,0),(87,'user006','::1','2020-02-09 10:46:22',NULL,0),(88,'user006','::1','2020-02-09 10:46:38',NULL,0),(89,'user006','::1','2020-02-09 10:47:12',NULL,0),(90,'user006','::1','2020-02-09 10:47:32',NULL,0),(91,'user001','::1','2020-02-09 10:51:50','2020-02-09 10:59:20',1),(92,'user006','::1','2020-02-09 10:59:41',NULL,0),(93,'user006','::1','2020-02-09 11:00:22',NULL,0),(94,'user001','::1','2020-02-09 11:00:58','2020-02-09 11:11:20',1),(95,'user006','::1','2020-02-09 11:20:46',NULL,0),(96,'user006','::1','2020-02-09 11:21:18','2020-02-09 11:25:31',1),(97,'user006','::1','2020-02-09 11:26:09','2020-02-09 11:28:04',1),(98,'user001','::1','2020-02-09 11:28:34',NULL,1),(99,'user001','::1','2020-02-09 16:01:40',NULL,1),(100,'user001','192.168.1.37','2020-02-11 04:52:25','2020-02-11 04:57:27',1),(101,'user001','192.168.1.37','2020-02-11 04:57:49',NULL,1),(102,'user001','::1','2020-02-11 13:04:45',NULL,1),(103,'user011','::1','2020-02-12 04:45:54',NULL,0),(104,'user011','::1','2020-02-12 04:46:25','2020-02-12 05:45:25',1),(105,'user001','192.168.1.37','2020-02-12 05:02:30',NULL,1),(106,'user001','::1','2020-02-12 05:45:46',NULL,0),(107,'user011','::1','2020-02-12 06:15:35','2020-02-12 06:44:03',1),(108,'user001','::1','2020-02-12 06:46:43','2020-02-12 07:13:05',1),(109,'user011','::1','2020-02-12 07:13:41','2020-02-12 08:17:57',1),(110,'user001','::1','2020-02-12 08:18:15',NULL,0),(111,'user001','::1','2020-02-12 08:18:39',NULL,1),(112,'user011','::1','2020-02-13 08:35:19',NULL,1),(113,'user011','::1','2020-02-13 15:20:54',NULL,1),(114,'user011','::1','2020-02-14 04:28:58','2020-02-14 06:26:33',1),(115,'user001','192.168.1.37','2020-02-14 04:58:24',NULL,1),(116,'user001','192.168.1.37','2020-02-14 06:12:04','2020-02-14 06:12:32',1),(117,'user001','::1','2020-02-14 06:26:49',NULL,0),(118,'user001','::1','2020-02-14 06:27:42',NULL,1),(119,'user001','192.168.1.37','2020-02-14 06:27:43',NULL,1),(120,'user001','::1','2020-02-14 06:35:13','2020-02-14 06:44:08',1),(121,'user001','::1','2020-02-14 06:44:55','2020-02-14 08:47:03',1),(122,'user002','192.168.1.37','2020-02-14 08:47:33','2020-02-14 08:53:33',1),(123,'user001','192.168.1.37','2020-02-14 08:54:07','2020-02-14 09:44:40',1),(124,'user011','192.168.1.37','2020-02-14 08:59:25','2020-02-14 11:27:37',1),(125,'user001','192.168.1.37','2020-02-14 11:28:20',NULL,1),(126,'user001','192.168.1.37','2020-02-14 12:59:30','2020-02-14 13:07:54',1),(127,'user002','192.168.1.37','2020-02-14 13:08:23',NULL,1),(128,'user011','::1','2020-02-15 04:41:16',NULL,1),(129,'user002','192.168.1.37','2020-02-15 05:36:09','2020-02-15 08:29:44',1),(130,'user011','192.168.1.37','2020-02-15 08:30:08',NULL,1),(131,'user001','::1','2020-02-16 04:08:13','2020-02-16 04:41:19',1),(132,'user011','::1','2020-02-16 04:58:24',NULL,1),(133,'user011','::1','2020-02-16 09:24:57',NULL,1),(134,'user011','::1','2020-02-17 04:42:50','2020-02-17 05:25:01',1),(135,'user001','192.168.1.37','2020-02-17 05:18:39','2020-02-17 07:23:08',1),(136,'user011','::1','2020-02-17 05:25:48','2020-02-17 09:48:28',1),(137,'user002','192.168.1.37','2020-02-17 07:23:24','2020-02-17 07:28:03',1),(138,'user002','192.168.1.37','2020-02-17 07:29:06','2020-02-17 08:41:30',1),(139,'user001','192.168.1.37','2020-02-17 08:42:35',NULL,0),(140,'user001','192.168.1.37','2020-02-17 08:43:10','2020-02-17 08:45:04',1),(141,'user003','192.168.1.37','2020-02-17 08:45:25','2020-02-17 09:49:01',1),(142,'user003','::1','2020-02-17 09:49:03',NULL,0),(143,'user003','::1','2020-02-17 09:51:30',NULL,1),(144,'user003','192.168.1.37','2020-02-17 10:09:01','2020-02-17 11:27:57',1),(145,'user011','::1','2020-02-17 10:37:25',NULL,1),(146,'user011','192.168.1.37','2020-02-17 11:28:48',NULL,1),(147,'user011','::1','2020-02-17 13:51:01',NULL,1),(148,'user011','::1','2020-02-18 04:31:11','2020-02-18 04:49:46',1),(149,'user001','::1','2020-02-18 04:50:01',NULL,0),(150,'user001','::1','2020-02-18 04:50:24','2020-02-18 04:52:16',1),(151,'user011','::1','2020-02-18 04:52:30',NULL,1),(152,'user011','192.168.1.37','2020-02-18 05:02:22',NULL,1),(153,'user011','::1','2020-02-19 12:48:00',NULL,1),(154,'user011','::1','2020-02-20 04:44:47',NULL,1),(155,'user001','192.168.1.37','2020-02-20 08:41:25',NULL,1),(156,'user001','192.168.1.37','2020-02-20 10:11:03',NULL,1),(157,'user011','::1','2020-02-20 10:55:52',NULL,1),(158,'user011','::1','2020-02-21 06:19:13',NULL,1),(159,'user011','::1','2020-02-22 10:49:03',NULL,1),(160,'user011','::1','2020-02-23 11:06:06','2020-02-23 13:16:32',1),(161,'user011','::1','2020-02-23 13:16:59',NULL,1),(162,'user001','::1','2020-02-23 13:18:15',NULL,0),(163,'user001','::1','2020-02-23 13:18:35',NULL,1),(164,'user001','::1','2020-02-23 15:59:13',NULL,0),(165,'user001','::1','2020-02-23 15:59:37',NULL,1),(166,'user011','::1','2020-02-23 16:08:07',NULL,1),(167,'user011','::1','2020-02-24 05:41:53',NULL,1),(168,'user001','192.168.1.36','2020-02-24 07:14:13',NULL,0),(169,'user001','192.168.1.36','2020-02-24 07:14:37',NULL,1),(170,'user001','::1','2020-02-24 08:39:36',NULL,0),(171,'user001','::1','2020-02-24 08:39:37',NULL,0),(172,'user001','::1','2020-02-24 08:40:38',NULL,0),(173,'user001','::1','2020-02-24 08:41:43',NULL,1),(174,'user011','::1','2020-02-24 16:00:54',NULL,1),(175,'user011','::1','2020-02-25 03:19:38','2020-02-25 04:55:17',1),(176,'user011','::1','2020-02-25 04:55:35','2020-02-25 05:02:45',1),(177,'user001','192.168.1.38','2020-02-25 05:31:49',NULL,1),(178,'user011','::1','2020-02-25 05:32:25',NULL,1),(179,'user001','192.168.1.38','2020-02-25 06:15:49','2020-02-25 07:04:35',1),(180,NULL,'192.168.1.38','2020-02-25 07:05:03',NULL,0),(181,NULL,'192.168.1.38','2020-02-25 07:05:42',NULL,0),(182,'user002','192.168.1.38','2020-02-25 07:06:51','2020-02-25 07:09:07',1),(183,'user011','192.168.1.38','2020-02-25 07:10:31',NULL,1),(184,'user001','192.168.1.38','2020-02-25 07:27:36',NULL,1),(185,'user011','192.168.1.56','2020-02-25 09:09:39',NULL,1),(186,'user001','192.168.1.39','2020-02-25 11:10:47',NULL,1),(187,'user001','192.168.1.39','2020-02-25 11:20:28',NULL,1),(188,'user001','192.168.1.39','2020-02-25 11:30:58',NULL,1),(189,'user001','192.168.1.35','2020-02-25 12:52:49',NULL,1),(190,'user001','192.168.1.35','2020-02-26 05:35:23',NULL,1),(191,'user001','192.168.1.44','2020-02-26 05:52:24',NULL,1),(192,'user001','192.168.1.44','2020-02-26 08:36:26',NULL,1),(193,'user001','192.168.1.44','2020-02-27 04:58:25',NULL,1),(194,'user001','192.168.1.44','2020-02-28 04:49:38',NULL,1),(195,'user001','192.168.29.73','2020-03-02 05:02:21',NULL,1),(196,'user001','192.168.29.73','2020-03-02 06:32:51',NULL,1),(197,'user011','::1','2020-03-03 10:05:01','2020-03-03 10:05:15',1),(198,'user001','::1','2020-03-03 10:05:37','2020-03-03 10:16:24',1),(199,'user001','::1','2020-03-03 10:23:57','2020-03-03 10:35:14',1),(200,'user001','::1','2020-03-03 10:36:22',NULL,1),(201,'user001','::1','2020-03-04 04:53:04',NULL,1),(202,'user001','::1','2020-03-04 07:24:35',NULL,1),(203,'user001','::1','2020-03-04 12:42:05',NULL,1),(204,'user001','::1','2020-03-05 05:06:19',NULL,1),(205,'user001','::1','2020-03-06 04:59:02','2020-03-06 11:31:44',1),(206,'user001','::1','2020-03-06 11:32:16','2020-03-06 11:42:03',1),(207,'user001','::1','2020-03-06 11:44:07','2020-03-06 12:44:46',1),(208,'user001','::1','2020-03-06 14:24:03',NULL,1),(209,'user001','::1','2020-03-06 14:28:15',NULL,0),(210,'user001','::1','2020-03-06 14:28:38','2020-03-06 14:30:37',1),(211,'user001','::1','2020-03-09 09:24:54',NULL,1),(212,'user001','::1','2020-03-09 10:35:03',NULL,1),(213,'user001','::1','2020-03-12 05:51:22',NULL,1),(214,'user001','::1','2020-03-12 10:47:06',NULL,1),(215,'user001','::1','2020-03-13 04:50:42',NULL,1),(216,NULL,'::1','2020-03-13 06:53:27',NULL,0),(217,NULL,'::1','2020-03-13 06:54:24',NULL,0),(218,NULL,'::1','2020-03-13 06:58:13',NULL,0),(219,NULL,'::1','2020-03-13 07:01:56',NULL,0),(220,NULL,'::1','2020-03-13 07:04:48',NULL,0),(221,NULL,'::1','2020-03-13 07:11:17',NULL,0),(222,NULL,'::1','2020-03-13 07:11:57',NULL,0),(223,'MAM0002','::1','2020-03-13 07:25:08',NULL,0),(224,'MAM0003','::1','2020-03-13 08:32:49',NULL,0),(225,NULL,'::1','2020-03-13 08:37:16',NULL,0),(226,'MAM0004','::1','2020-03-13 08:47:01',NULL,0),(227,'MAM0004','::1','2020-03-13 08:59:36',NULL,0),(228,'MAM0004','::1','2020-03-13 09:02:05',NULL,0),(229,NULL,'::1','2020-03-13 09:02:51',NULL,0),(230,'MAM0004','::1','2020-03-13 09:04:09',NULL,0),(231,'MAM0004','::1','2020-03-13 09:12:52',NULL,0),(232,NULL,'::1','2020-03-13 09:13:39',NULL,0),(233,NULL,'::1','2020-03-13 09:14:03',NULL,0),(234,NULL,'::1','2020-03-13 09:14:49',NULL,0),(235,NULL,'::1','2020-03-13 09:16:50',NULL,0),(236,NULL,'::1','2020-03-13 09:47:49',NULL,0),(237,'MAM0004','::1','2020-03-13 09:55:45',NULL,0),(238,'MAM0004','::1','2020-03-13 09:57:16',NULL,0),(239,'MAM0004','::1','2020-03-13 09:59:40',NULL,0),(240,'MAM0004','::1','2020-03-13 10:00:02',NULL,0),(241,'MAM0004','::1','2020-03-13 10:09:13','2020-03-13 10:09:14',1),(242,NULL,'::1','2020-03-13 10:09:43',NULL,0),(243,'MAM0004','::1','2020-03-13 10:10:15','2020-03-13 10:10:16',1),(244,'MAM0004','::1','2020-03-13 10:11:05',NULL,0),(245,'MAM0004','::1','2020-03-13 10:12:13',NULL,1),(246,NULL,'::1','2020-03-13 10:13:41',NULL,0),(247,NULL,'::1','2020-03-13 10:15:22',NULL,0),(248,NULL,'::1','2020-03-13 10:17:00',NULL,0),(249,NULL,'::1','2020-03-13 10:18:23',NULL,0),(250,NULL,'::1','2020-03-13 10:20:31',NULL,0),(251,NULL,'::1','2020-03-13 10:20:58',NULL,0),(252,'MAM0004','::1','2020-03-13 10:21:10',NULL,0),(253,'MAM0004','::1','2020-03-13 10:21:31',NULL,1),(254,'MAM0003','::1','2020-03-13 10:25:50',NULL,0),(255,'MAM0004','::1','2020-03-13 10:42:07',NULL,1),(256,'MAM0004','::1','2020-03-13 10:47:54',NULL,1),(257,'MAM0004','::1','2020-03-13 11:37:50','2020-03-13 12:59:33',1),(258,'user001','::1','2020-03-13 13:00:05',NULL,1),(259,'MAM0004','::1','2020-03-13 13:02:18',NULL,1),(260,'MAM0001','::1','2020-03-13 13:21:41',NULL,0),(261,'MAM0001','::1','2020-03-13 13:22:13',NULL,0),(262,'MAM0001','::1','2020-03-13 13:22:20',NULL,0),(263,'MAM0001','::1','2020-03-13 13:22:42',NULL,0),(264,'MAM0004','::1','2020-03-13 13:26:32',NULL,0),(265,'MAM0004','::1','2020-03-13 13:27:05',NULL,1),(266,'MAM0001','::1','2020-03-16 05:07:31',NULL,1),(267,'MAM0001','::1','2020-03-16 05:18:36',NULL,1),(268,'MAM0001','::1','2020-03-16 05:33:49',NULL,1),(269,'user001','::1','2020-03-16 05:46:09',NULL,1),(270,'MAM0001','::1','2020-03-16 05:59:26',NULL,1),(271,'user001','::1','2020-03-16 06:16:58',NULL,1),(272,'MAM0001','::1','2020-03-16 06:30:43',NULL,1),(273,'MAM0001','::1','2020-03-16 06:35:13',NULL,1),(274,'MAM0001','::1','2020-03-16 06:40:30',NULL,1),(275,'MAM0001','::1','2020-03-16 06:47:59',NULL,1),(276,'MAM0001','::1','2020-03-16 06:52:23',NULL,1),(277,'MAM0001','::1','2020-03-16 07:00:10',NULL,1),(278,'user001','::1','2020-03-16 08:59:08',NULL,1),(279,'MAM0001','::1','2020-03-16 09:05:37',NULL,0),(280,'MAM0001','::1','2020-03-16 09:05:45',NULL,0),(281,'MAM0001','::1','2020-03-16 09:06:05',NULL,1),(282,'MAM0001','::1','2020-03-16 09:49:55',NULL,1),(283,'MAM0004','::1','2020-03-16 10:21:27',NULL,0),(284,'MAM0004','::1','2020-03-16 10:21:55',NULL,0),(285,'MAM0004','::1','2020-03-16 10:22:36',NULL,0),(286,'MAM0004','::1','2020-03-16 10:22:47',NULL,0),(287,'MAM0006','::1','2020-03-16 10:24:27',NULL,1),(288,'MAM0006','::1','2020-03-16 10:25:16',NULL,1),(289,'MAM0006','::1','2020-03-16 10:26:30',NULL,1),(290,'MAM0001','::1','2020-03-16 10:32:01',NULL,1),(291,'MAM0001','::1','2020-03-16 10:44:42',NULL,0),(292,'MAM0001','::1','2020-03-16 10:44:58',NULL,0),(293,'MAM0001','::1','2020-03-16 10:45:04',NULL,0),(294,'MAM0006','::1','2020-03-16 10:46:38',NULL,1),(295,'MAM0006','::1','2020-03-16 10:47:40',NULL,1),(296,'MAM0001','::1','2020-03-16 10:49:51',NULL,0),(297,'MAM0006','::1','2020-03-16 10:50:07',NULL,1),(298,'MAM0006','::1','2020-03-16 10:53:44',NULL,1),(299,'MAM0006','::1','2020-03-16 10:58:02',NULL,0),(300,'MAM0006','::1','2020-03-16 11:16:58',NULL,1),(301,'MAM0006','::1','2020-03-16 11:18:58',NULL,1),(302,'MAM0006','::1','2020-03-16 11:24:27',NULL,1),(303,'MAM0006','::1','2020-03-16 11:24:27',NULL,1),(304,'MAM0006','::1','2020-03-16 11:29:26',NULL,1),(305,'MAM0006','::1','2020-03-16 11:30:56',NULL,0),(306,'MAM0006','::1','2020-03-16 11:31:12',NULL,0),(307,'MAM0006','::1','2020-03-16 11:31:29',NULL,1),(308,NULL,'::1','2020-03-16 11:32:13',NULL,0),(309,'MAM0006','::1','2020-03-16 11:32:27',NULL,1),(310,'MAM0006','::1','2020-03-16 11:36:00',NULL,1),(311,'MAM0006','::1','2020-03-16 11:39:06',NULL,1),(312,'MAM0006','::1','2020-03-16 11:43:24',NULL,1),(313,'user001','::1','2020-03-16 11:44:39',NULL,1),(314,'MAM0006','::1','2020-03-17 05:11:11',NULL,1),(315,'user001','::1','2020-03-17 05:18:42',NULL,1),(316,'MAM0006','::1','2020-03-17 05:25:46',NULL,1),(317,'user001','::1','2020-03-17 06:48:12',NULL,0),(318,'user001','::1','2020-03-17 06:49:05',NULL,1),(319,'MAM0006','::1','2020-03-17 09:22:18',NULL,1),(320,'user001','::1','2020-03-17 09:34:58',NULL,0),(321,'user001','::1','2020-03-17 09:35:24',NULL,1),(322,'MAM0006','::1','2020-03-17 09:39:17',NULL,1),(323,'MAM0006','::1','2020-03-17 10:17:30',NULL,1),(324,'MAM0007','::1','2020-03-17 10:59:04',NULL,0),(325,'user001','::1','2020-03-17 10:59:41',NULL,1),(326,'MAM0006','::1','2020-03-17 11:01:46',NULL,1),(327,'MAM0007','::1','2020-03-17 11:02:56',NULL,1),(328,'user001','::1','2020-03-17 11:15:00',NULL,1),(329,'MAM0007','::1','2020-03-17 11:33:38',NULL,1),(330,'MAM0006','::1','2020-03-17 12:39:57',NULL,1),(331,'user001','::1','2020-03-17 12:45:26',NULL,0),(332,'user001','::1','2020-03-17 12:45:58',NULL,1),(333,'MAM0006','::1','2020-03-17 13:03:50',NULL,1),(334,'user001','::1','2020-03-18 05:02:30',NULL,1),(335,'MAM0006','::1','2020-03-18 05:26:07',NULL,1),(336,'MAM0006','::1','2020-03-18 05:55:39',NULL,1),(337,'MAM0007','::1','2020-03-18 06:09:36',NULL,1),(338,'user001','::1','2020-03-18 06:13:08',NULL,1),(339,'MAM0006','::1','2020-03-18 07:00:43',NULL,1),(340,'user001','::1','2020-03-18 07:29:56',NULL,1),(341,'MAM0006','::1','2020-03-18 08:57:06',NULL,1),(342,'MAM0006','::1','2020-03-18 09:30:45',NULL,1),(343,'user001','::1','2020-03-18 09:45:15',NULL,1),(344,'MAM0006','::1','2020-03-18 09:55:12',NULL,1),(345,'user001','::1','2020-03-18 10:12:45',NULL,1),(346,'MAM0006','::1','2020-03-18 11:39:22',NULL,1),(347,'user001','::1','2020-03-18 11:50:19',NULL,1),(348,'MAM0006','::1','2020-03-18 13:22:18',NULL,1),(349,'MAM0006','::1','2020-03-18 13:27:48',NULL,1),(350,'MAM0006','::1','2020-03-18 13:30:07',NULL,1),(351,'MAM0006','::1','2020-03-18 13:31:59',NULL,1),(352,'MAM0007','::1','2020-03-18 13:33:46',NULL,1),(353,'MAM0006','::1','2020-03-18 13:34:26',NULL,1),(354,'MAM0006','::1','2020-03-19 04:52:05',NULL,1),(355,'MAM0006','::1','2020-03-19 05:13:53',NULL,1),(356,'user001','::1','2020-03-19 05:17:07',NULL,1),(357,'MAM0006','::1','2020-03-19 05:18:56',NULL,1),(358,'MAM0006','::1','2020-03-19 05:19:54',NULL,1),(359,'user001','::1','2020-03-19 05:28:23',NULL,1),(360,'MAM0006','::1','2020-03-19 06:28:31',NULL,1),(361,'user001','::1','2020-03-19 07:04:53',NULL,1),(362,'MAM0008','::1','2020-03-19 09:59:57',NULL,1),(363,'user001','::1','2020-03-19 10:27:23',NULL,1),(364,'MAM0006','::1','2020-03-19 11:55:59',NULL,0),(365,'MAM0006','::1','2020-03-19 11:56:17',NULL,1),(366,'user001','::1','2020-03-19 12:44:06',NULL,1),(367,'MAM0006','::1','2020-03-19 13:05:57',NULL,1),(368,'user001','::1','2020-03-20 04:54:41',NULL,1),(369,'MAM0006','::1','2020-03-20 04:55:34',NULL,1),(370,'MAM0006','::1','2020-03-20 04:58:40',NULL,1),(371,'user001','::1','2020-03-20 05:01:49',NULL,1),(372,'MAM0006','::1','2020-03-20 05:17:51',NULL,1),(373,'user001','::1','2020-03-20 06:06:23',NULL,1),(374,'MAM0006','::1','2020-03-20 08:57:20',NULL,1),(375,'MAM0006','::1','2020-03-20 09:21:34',NULL,1),(376,'MAM0006','::1','2020-03-20 09:22:03',NULL,1),(377,NULL,'::1','2020-03-20 09:22:35',NULL,0),(378,'MAM0006','::1','2020-03-20 09:22:51',NULL,0),(379,'MAM0006','::1','2020-03-20 09:23:09',NULL,1),(380,'MAM0006','::1','2020-03-20 10:05:26',NULL,1),(381,'user001','::1','2020-03-20 10:38:04',NULL,1),(382,'MAM0006','::1','2020-03-20 10:44:50','2020-03-20 10:51:42',1),(383,'MAM0006','::1','2020-03-20 10:52:38',NULL,1),(384,'user001','::1','2020-03-20 10:55:18',NULL,1),(385,'MAM0006','::1','2020-03-20 13:35:42',NULL,0),(386,'MAM0006','::1','2020-03-20 13:35:54',NULL,1),(387,'MAM0006','::1','2020-03-25 06:43:00',NULL,1),(388,'MAM0006','::1','2020-03-25 07:06:13',NULL,1),(389,'MAM0006','::1','2020-03-25 07:08:12',NULL,0),(390,'MAM0006','::1','2020-03-25 07:08:30',NULL,1),(391,'MAM0006','::1','2020-04-02 06:38:22',NULL,1),(392,'MAM0006','::1','2020-04-03 07:00:02',NULL,1),(393,'MAM0006','::1','2020-04-03 07:01:00',NULL,1),(394,'user001','::1','2020-04-04 05:11:30',NULL,1),(395,'MAM0008','::1','2020-04-07 17:55:50',NULL,0),(396,'MAM0008','::1','2020-04-07 17:57:45',NULL,0),(397,'MAM0008','::1','2020-04-07 17:58:02',NULL,0),(398,'MAM0010','::1','2020-04-07 20:37:31',NULL,0),(399,'MAM0010','::1','2020-04-07 20:41:52',NULL,1),(400,'user001','::1','2020-04-08 05:03:24','2020-04-08 05:11:30',1),(401,'user001','::1','2020-04-08 05:12:15','2020-04-08 05:14:17',1),(402,'user001','::1','2020-04-08 05:18:22','2020-04-08 05:25:35',1),(403,'user001','::1','2020-04-08 06:26:23','2020-04-08 06:29:02',1),(404,'MAM0011','::1','2020-04-10 04:29:19',NULL,0),(405,'user001','::1','2020-04-10 04:30:56','2020-04-10 04:32:14',1),(406,'user001','::1','2020-04-10 04:56:53',NULL,1),(407,'MAM0011','::1','2020-04-10 05:00:40','2020-04-10 05:01:44',1),(408,'user001','::1','2020-04-10 05:14:50','2020-04-10 05:15:02',1),(409,'user001','::1','2020-04-10 06:00:08','2020-04-10 06:24:33',1),(410,'user001','::1','2020-04-10 06:47:55','2020-04-10 06:52:19',1),(411,'user001','::1','2020-04-10 07:11:21','2020-04-10 08:25:08',1),(412,'MAM0011','::1','2020-04-10 08:25:20','2020-04-10 08:50:43',1),(413,'user001','::1','2020-04-10 09:46:19',NULL,1),(414,'user001','127.0.0.1','2020-04-11 04:22:55',NULL,1),(415,'user001','::1','2020-04-11 13:02:31',NULL,1),(416,'user001','::1','2020-04-11 14:28:32',NULL,1),(417,'user001','::1','2020-04-12 04:29:55',NULL,1),(418,'MAM0001','::1','2020-04-13 07:21:33',NULL,0),(419,'user001','::1','2020-04-13 07:30:41',NULL,1),(420,'MAM0001','::1','2020-04-13 07:55:02','2020-04-13 07:58:21',1),(421,'user001','::1','2020-04-14 04:40:46',NULL,1),(422,'MAM0001','::1','2020-04-14 10:07:37',NULL,1),(423,'MAM0001','::1','2020-04-15 10:26:37','2020-04-15 10:27:20',1),(424,'MAM0001','::1','2020-04-15 10:27:36',NULL,1),(425,'MAM0001','::1','2020-04-15 10:34:50','2020-04-15 10:51:46',1),(426,'user001','::1','2020-04-15 11:33:46',NULL,1),(427,'MAM0001','::1','2020-04-15 11:46:19','2020-04-15 12:13:13',1),(428,'MAM0001','::1','2020-04-15 12:14:13','2020-04-15 13:18:30',1),(429,'MAM0002','::1','2020-04-15 13:18:51',NULL,1),(430,'MAM0001','::1','2020-04-16 05:26:45','2020-04-16 05:31:17',1),(431,'MAM0001','::1','2020-04-16 05:32:10','2020-04-16 05:40:17',1),(432,'user001','::1','2020-04-16 05:44:12','2020-04-16 06:52:33',1),(433,'user001','::1','2020-04-16 07:10:27',NULL,1),(434,'MAM0001','::1','2020-04-16 07:43:26','2020-04-16 10:45:55',1),(435,'MAM0001','::1','2020-04-17 04:24:41',NULL,1),(436,'user001','::1','2020-05-11 23:15:48','2020-05-11 23:16:18',1),(437,NULL,'::1','2020-05-11 23:17:05',NULL,0),(438,'user001','::1','2020-05-11 23:22:08','2020-05-11 23:36:23',1),(439,'user001','::1','2020-05-11 23:37:00','2020-05-11 23:42:34',1),(440,'user001','::1','2020-05-12 03:12:57','2020-05-12 05:04:06',1),(441,'user001','::1','2020-05-14 13:49:03',NULL,1),(442,'user001','::1','2020-05-14 19:43:27',NULL,1),(443,'user001','::1','2020-05-15 01:08:56',NULL,1),(444,'user001','::1','2020-05-15 07:32:21',NULL,1),(445,'user001','::1','2020-05-16 09:32:11',NULL,1),(446,'user001','::1','2020-05-16 13:20:51','2020-05-16 13:23:26',1),(447,'user001','::1','2020-05-16 17:59:03',NULL,1),(448,'user001','::1','2020-05-18 03:11:42',NULL,1),(449,'user001','::1','2020-05-19 09:17:02',NULL,1),(450,'user001','::1','2020-06-08 11:50:39',NULL,1),(451,'user001','::1','2020-08-10 22:05:51',NULL,1),(452,'user001','::1','2020-08-11 02:41:58','2020-08-11 02:54:30',1),(453,'user001','::1','2020-08-11 03:05:02',NULL,1),(454,'user001','::1','2020-08-11 05:26:50','2020-08-11 05:59:54',1),(455,'user001','::1','2020-08-11 06:00:15',NULL,0),(456,'user001','::1','2020-08-11 06:20:03',NULL,1),(457,NULL,'::1','2020-08-11 06:29:35',NULL,0),(458,'user001','::1','2020-08-11 08:06:44','2020-08-11 08:10:23',1),(459,'user001','::1','2020-08-11 08:34:44','2020-08-11 08:35:36',1),(460,'user001','::1','2020-08-11 08:37:39','2020-08-11 08:46:06',1),(461,'user001','::1','2020-08-11 08:47:41','2020-08-11 08:53:37',1),(462,'user001','::1','2020-08-11 21:11:34','2020-08-11 21:18:39',1),(463,'user001','::1','2020-08-12 00:46:27','2020-08-12 04:58:59',1),(464,'user001','::1','2020-08-12 05:09:38','2020-08-12 05:09:58',1),(465,'user001','::1','2020-08-12 05:18:43','2020-08-12 05:19:10',1),(466,'user001','::1','2020-08-12 05:27:20',NULL,1);
/*!40000 ALTER TABLE `tbl_user_login_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_login_setting`
--

DROP TABLE IF EXISTS `tbl_user_login_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_login_setting` (
  `TULS_User` int(11) NOT NULL AUTO_INCREMENT,
  `TULS_Login_Attempt` int(11) DEFAULT NULL,
  `TULS_Login_Block_Dur` int(11) DEFAULT NULL,
  `TULS_Reset_OTP_Time` int(11) DEFAULT NULL,
  `TULS_Max_FileSize` int(11) DEFAULT NULL,
  `TULS_Login_ExpireTime` int(11) DEFAULT NULL,
  `TULS_User_Active` tinyint(4) DEFAULT '1',
  `TULS_User_CreatedBy` varchar(45) DEFAULT NULL,
  `TULS_User_CreatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TULS_User_UpdatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TULS_User_DeletedFlag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`TULS_User`),
  UNIQUE KEY `TULS_User_UNIQUE` (`TULS_User`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_login_setting`
--

LOCK TABLES `tbl_user_login_setting` WRITE;
/*!40000 ALTER TABLE `tbl_user_login_setting` DISABLE KEYS */;
INSERT INTO `tbl_user_login_setting` VALUES (1,5,1800,1800,5,300,1,'user123','2020-01-06 11:30:30','2020-02-04 11:16:08',0);
/*!40000 ALTER TABLE `tbl_user_login_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_mstr`
--

DROP TABLE IF EXISTS `tbl_user_mstr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_mstr` (
  `TUM_User` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TUM_User_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TUM_User_Lname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TUM_User_Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TUM_User_Mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TUM_User_Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TUM_User_UserType` varchar(45) DEFAULT '3',
  `TUM_User_Desig` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TUM_User_Dept` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TUM_User_AltEmail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TUM_User_AltMobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TUM_User_Image` varchar(255) DEFAULT NULL,
  `TUM_User_Status` tinyint(4) DEFAULT '1',
  `TUM_IsFirstTime_Login` tinyint(4) DEFAULT '1',
  `TUM_User_CreatedBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TUM_User_UpdatedBy` varchar(20) DEFAULT NULL,
  `TUM_User_CreatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TUM_User_UpdatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TUM_User_DeletedFlag` tinyint(4) DEFAULT '0',
  `TUM_Reset_OTP` varchar(20) DEFAULT NULL,
  `TUM_OTP_SentTime` timestamp NULL DEFAULT NULL,
  `TUM_User_LoginAttempt` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`TUM_User`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_mstr`
--

LOCK TABLES `tbl_user_mstr` WRITE;
/*!40000 ALTER TABLE `tbl_user_mstr` DISABLE KEYS */;
INSERT INTO `tbl_user_mstr` VALUES ('user001','Shovan','Mishra','ff96673205dc722320598ebf8f88325b2ac56922d5a2164b5765868274bc0d73','9898989898','demo@demo.com','1','des007','dept001','altdemo@demo.com','9765645345','profile_images/qtKFMiynI7EHTZwzvPYilgv5O5VeWzYtJ5cljXFV.jpeg',1,0,'','user001','2019-08-08 12:47:02','2020-08-12 05:27:20',0,NULL,NULL,0),('user002','Dhananjaya','Lenka','d3ad9315b7be5dd53b31a273b3b3aba5defe700808305aa16a3062b76658a791','6756456778','dhanjaya@demo.com','3','','','hhh@gmail.com','987788888',NULL,1,0,'','user001','2019-08-08 12:53:34','2020-04-14 10:16:04',0,NULL,NULL,0);
/*!40000 ALTER TABLE `tbl_user_mstr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_password_history`
--

DROP TABLE IF EXISTS `tbl_user_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_password_history` (
  `TUPH_PasswordHistory` int(11) NOT NULL AUTO_INCREMENT,
  `TUPH_User` varchar(30) DEFAULT NULL,
  `TUPH_User_Password` varchar(255) DEFAULT NULL,
  `TUPH_PwdHistory_CreatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TUPH_PwdHistory_Encryption` varchar(40) DEFAULT NULL,
  `TUPH_PwdHistory_IPAddress` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`TUPH_PasswordHistory`),
  UNIQUE KEY `TUPH_PasswordHistory_UNIQUE` (`TUPH_PasswordHistory`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_password_history`
--

LOCK TABLES `tbl_user_password_history` WRITE;
/*!40000 ALTER TABLE `tbl_user_password_history` DISABLE KEYS */;
INSERT INTO `tbl_user_password_history` VALUES (1,'user001','ff96673205dc722320598ebf8f88325b2ac56922d5a2164b5765868274bc0d73','2020-02-03 15:14:56','Hash','::1'),(2,'user001','ff96673205dc722320598ebf8f88325b2ac56922d5a2164b5765868274bc0d73','2020-02-03 15:50:05','Hash','::1'),(3,'user006','ff96673205dc722320598ebf8f88325b2ac56922d5a2164b5765868274bc0d73','2020-02-09 11:20:00','Hash','::1'),(4,'user006','ff96673205dc722320598ebf8f88325b2ac56922d5a2164b5765868274bc0d73','2020-02-09 11:21:58','Hash','::1'),(5,'user003','323005ffd3f68151dc15a26249dc69bded21628cfc4864d5b14f6e2f5650e45b','2020-02-17 08:55:57','Hash','192.168.1.37');
/*!40000 ALTER TABLE `tbl_user_password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_type_mstr`
--

DROP TABLE IF EXISTS `tbl_user_type_mstr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_type_mstr` (
  `TUT_UserType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TUT_UserTypeName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TUT_UserType_Descrptn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `TUT_UserType_Active` bit(1) DEFAULT b'1',
  `TUT_UserType_CreatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TUT_UserType_CreatedBy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TUT_UserType_UpdatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TUT_UserType_DeletedFlag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`TUT_UserType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_type_mstr`
--

LOCK TABLES `tbl_user_type_mstr` WRITE;
/*!40000 ALTER TABLE `tbl_user_type_mstr` DISABLE KEYS */;
INSERT INTO `tbl_user_type_mstr` VALUES ('1','Super Admin','super admin',_binary '','2019-08-05 03:52:09','','2019-08-05 03:52:09',_binary '\0'),('2','Sub Admin','all authorized users of super admin',_binary '','2019-08-05 05:04:48','','2019-08-05 05:04:48',_binary '\0'),('3','General User','all  authorized general users',_binary '','2019-08-05 05:57:17','','2019-08-05 05:57:17',_binary '\0');
/*!40000 ALTER TABLE `tbl_user_type_mstr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_userrole_assign`
--

DROP TABLE IF EXISTS `tbl_userrole_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_userrole_assign` (
  `TURA_User` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TURA_UserRole` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TURA_UserRole_Active` tinyint(4) DEFAULT '1',
  `TURA_URolAsgn_CreatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TURA_URolAsgn_UpdatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TURA_User`,`TURA_UserRole`),
  KEY `TURM_UserRole1_idx` (`TURA_UserRole`),
  CONSTRAINT `TUM_User12` FOREIGN KEY (`TURA_User`) REFERENCES `tbl_user_mstr` (`TUM_User`),
  CONSTRAINT `TURM_UserRole1` FOREIGN KEY (`TURA_UserRole`) REFERENCES `tbl_userrole_mstr` (`TURM_UserRole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_userrole_assign`
--

LOCK TABLES `tbl_userrole_assign` WRITE;
/*!40000 ALTER TABLE `tbl_userrole_assign` DISABLE KEYS */;
INSERT INTO `tbl_userrole_assign` VALUES ('user001','rol001',1,'2019-08-11 16:08:08','2019-08-11 16:08:08');
/*!40000 ALTER TABLE `tbl_userrole_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_userrole_mstr`
--

DROP TABLE IF EXISTS `tbl_userrole_mstr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_userrole_mstr` (
  `TURM_UserRole` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TURM_URole_Name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TURM_CostCenter` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TURM_URole_Dashboard` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TURM_URole_Description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `TURM_ParentUserRole` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT 'it stores the ParentRole ID.It Tracks who are the children of a Admin',
  `TURM_URole_Status` tinyint(4) DEFAULT '1',
  `TURM_URole_CreatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TURM_URole_CreatedBy` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TURM_URole_UpdatedOn` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TURM_URole_DeletedFlag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`TURM_UserRole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_userrole_mstr`
--

LOCK TABLES `tbl_userrole_mstr` WRITE;
/*!40000 ALTER TABLE `tbl_userrole_mstr` DISABLE KEYS */;
INSERT INTO `tbl_userrole_mstr` VALUES ('rol001','SuperAdmin','','/url/','description','rol001',1,'2019-08-05 11:24:43',NULL,'2019-08-05 11:24:43',0),('rol003','General User','',NULL,'adasd adad','rol002',1,'2019-08-13 12:04:56','','2019-08-13 12:04:56',0);
/*!40000 ALTER TABLE `tbl_userrole_mstr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'employee_demo'
--

--
-- Dumping routines for database 'employee_demo'
--
/*!50003 DROP FUNCTION IF EXISTS `FN_GET_OFFICERID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_GET_OFFICERID`(`P_PROMOTIONID` char(50),`P_HRMSID` char(50) ) RETURNS char(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	SET @p_OfficerId = '';
    SET @p_PromotionId = P_PROMOTIONID;
    SET @p_hrmsId = P_HRMSID;
	
	SELECT TPO_PromotionOfficer INTO @p_OfficerId FROM tbl_promotion_officer WHERE TPO_PromotionRequest =@p_PromotionId AND TPO_HRMSID=@p_hrmsId;
    
	RETURN @p_OfficerId;
  

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_GET_PREFIX` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FN_GET_PREFIX`(`P_TABLENAME` CHAR(40), `P_LAST_INSERTED_ID` CHAR(25), `P_TABLE_TYPE` CHAR(30), `P_FINCIAL_YEAR` CHAR(30)) RETURNS char(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
		        
        SET @P_PREFIX_CODE = '';
        SET @LAST_INSERTED_ID = '';
        SET @P_SQL = '';
        SET @P_CURRENT_FINCIAL_YEAR = '';
        
        IF(P_TABLENAME != '' AND P_TABLE_TYPE != '') THEN
        
			#Get the Prefix Related data from prefix table
			SELECT TPM_Prfx_Code,TPM_Prfx_NumberLength,TPM_Prfx_StartNo,TPM_Prfx_FinYear_Status INTO  @P_PREFIX_CODE,@P_NUMBER_LENGTH,@P_PRFX_STARTNO,@P_PRFX_FINYEAR_STATUS FROM tbl_prefix_mstr WHERE TPM_Prfx_tblName = P_TABLENAME AND TPM_Prfx_TypeName = P_TABLE_TYPE AND TPM_Prfx_DeletedFlag = false;
            
            #Generate New Inserted number
            IF(P_LAST_INSERTED_ID != '') THEN
				
                SET @P_SERIAL_NO = SUBSTRING(P_LAST_INSERTED_ID,concat('-',@P_NUMBER_LENGTH)); 
                SET @P_SERIAL_NO = LPAD(@P_SERIAL_NO + 1, @P_NUMBER_LENGTH, 0);
			ELSE
            
				SET @P_SERIAL_NO = LPAD(1, @P_NUMBER_LENGTH, 0); 
            
            END IF;
            
            #Generate the Fincial Year if @P_PRFX_FINYEAR_STATUS is enabled
            IF(@P_PRFX_FINYEAR_STATUS and P_FINCIAL_YEAR != '') THEN
				
                SET @P_CURRENT_FINCIAL_YEAR = CONCAT('/',P_FINCIAL_YEAR,'/');
                
            ELSEIF(@P_PRFX_FINYEAR_STATUS and P_FINCIAL_YEAR = '') THEN
				#If current month is less than March
                IF(Month(CURDATE()) <= 3) THEN
					
                    SET @P_FIRST_YEAR = YEAR(CURDATE()) - 1;
                    SET @P_SECOND_YEAR = RIGHT(YEAR(CURDATE()) , 2);
					SET @P_CURRENT_FINCIAL_YEAR = CONCAT('/',@P_FIRST_YEAR,'-',@P_SECOND_YEAR,'/');
                
                ELSE
					
                    SET @P_FIRST_YEAR = YEAR(CURDATE());
                    SET @P_SECOND_YEAR = RIGHT(YEAR(CURDATE()) + 1 , 2);
					SET @P_CURRENT_FINCIAL_YEAR = CONCAT('/',@P_FIRST_YEAR,'-',@P_SECOND_YEAR,'/');
                    
                END IF;
                
			ELSE
            
				SET @P_CURRENT_FINCIAL_YEAR = '';
                
            END IF;
           
           RETURN CONCAT(@P_PREFIX_CODE,@P_CURRENT_FINCIAL_YEAR,@P_SERIAL_NO);
        
        ELSE
        
			RETURN '';
            
        END IF;
        
        
        
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `error_errorHandling` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `error_errorHandling`(IN `actionType` VARCHAR(20), IN `actionValue` TEXT)
BEGIN

IF(actionType='dbServer') THEN

SET @vsql = actionValue;
prepare prastmt from @vsql;
execute prastmt;

SELECT 
errorId,
nlErrorCode,
nlErrorMessage
FROM tbl_error_handling 
WHERE errorId=@p_code AND eStatus=TRUE;
 
END IF;
 
##########################################################################
   
IF(actionType='javaServer') THEN

SET @vsql = actionValue;
prepare prastmt from @vsql;
execute prastmt;

SET @eId = '';
SELECT errorId into @eId FROM tbl_error_handling WHERE sqlErrorMessage=@p_message AND dbName=@p_dbName AND eStatus=TRUE;

	IF (@eId != '') THEN
		SELECT errorId,nlErrorCode,nlErrorMessage  FROM tbl_error_handling WHERE errorId=@eId AND eStatus=TRUE;
		
	ELSE 
		INSERT INTO tbl_error_handling(sqlErrorCode ,sqlErrorState ,sqlErrorMessage , nlErrorCode, nlErrorMessage, dbName , eStatus)
		VALUE(@p_code,@p_state,@p_message,@p_code,@p_message,@p_dbName,true);
		SELECT 1 as errorId, 'java' as nlErrorCode,@p_message as nlErrorMessage;
		
	END IF;

END IF;

##########################################################################

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `master_memberRoutines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `master_memberRoutines`(IN `actionType` VARCHAR(40), IN `actionValue` TEXT)
BEGIN

#############################################
DECLARE EXIT handler for sqlexception
  BEGIN
    -- ERROR
  
  GET DIAGNOSTICS CONDITION 1
		@state = RETURNED_SQLSTATE, 
        @message = MESSAGE_TEXT,
        @contraint = CONSTRAINT_NAME, 
        @errorno = MYSQL_ERRNO;
		
        
        ROLLBACK;
        
        IF ((SELECT LOCATE('Duplicate', @message) > 0) or (SELECT LOCATE('Unknown', @message) > 0)) THEN
        
			SELECT SUBSTRING_INDEX(@message,"'",2) into @a;
			SELECT SUBSTRING_INDEX(@a,"'",-1) into @b;
			SELECT REPLACE(@message,@b,'x') into @c;
			
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @c, @errorno, @c, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			END IF; 
            
        ELSE    
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @message, @errorno, @message, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			END IF;
        END IF;
        
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=@eId;
END;

SET @state='', @message='', @contraint='', @errorno='',@eId='', @a='', @b='', @c='';

###############################################################################################################################
IF(actionType='viewQual') THEN

	SELECT TQM_Qualification ,TQM_Qualification_Name  FROM tbl_qualification_mstr where TQM_Qualification_DeletedFlag=false;


 END IF;

###############################################################################################################################
IF(actionType='viewOccp') THEN

	SELECT TOM_Occupation ,TOM_Occupation_Name  FROM tbl_occupation_mstr where TOM_Occupation_DeletedFlag=false;


 END IF;

###############################################################################################################################
IF(actionType='viewReligion') THEN

	SELECT TRM_Religion ,TRM_Religion_Name  FROM tbl_religion_mstr where TRM_Religion_DeletedFlag=false;


 END IF;

###############################################################################################################################
IF(actionType='viewState') THEN

	SELECT TSM_State ,TSM_State_Name  FROM tbl_state_mstr where TSM_State_DeleteFlag=false;


 END IF;

###############################################################################################################################
IF(actionType='viewCaste') THEN

SELECT TCM_Caste ,TCM_Caste_Name FROM tbl_caste_mstr where TCM_Caste_DeletedFlag=false;


END IF;

###############################################################################################################################
IF(actionType='viewCity') THEN

SELECT TDM_city ,TDM_city_Name FROM tbl_city_mstr where TDM_city_DeletedFlag=false;


END IF;
IF(actionType='viewDistrict') THEN

SELECT TDM_District ,TDM_Dist_Name FROM tbl_district_mstr where TDM_Dist_DeletedFlag=false;


END IF;

###############################################################################################################################
IF(actionType='addMember') THEN

	START TRANSACTION;

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	# Primary key value started

	SET @P_LAST_INSERTED_ID = '';
	SELECT MAX(TMM_Member) into @P_LAST_INSERTED_ID FROM tbl_member_mstr;
	SELECT FN_GET_PREFIX('tbl_member_mstr',@P_LAST_INSERTED_ID,'member','') into @p_memberId;


	#select lpad(conv(floor(rand()*pow(36,10)), 10, 36), 8, 0) into @prefix;
	#SET @p_districtId = concat('TBL_',@prefix);
	INSERT INTO tbl_member_mstr(TMM_Member,TMM_Member_Name,TMM_Member_Ocupation,TMM_Member_Userid,TMM_Member_Password,TMM_Member_Mobile,TMM_Member_Email,TMM_Member_Qualification,TMM_Member_Religion,TMM_Member_Caste,TMM_Member_Gender,TMM_Member_Dob,TMM_Member_Image,TMM_MemberType,TMM_Member_FatherName,TMM_Member_MotherName,TMM_Member_prHouseNo,TMM_Member_prLocation,TMM_Member_prCity,TMM_Member_prDistrict,TMM_Member_prState,TMM_Member_prPin,TMM_Member_peHouseNo,TMM_Member_peLocation,TMM_Member_peCity,TMM_Member_peDistrict,TMM_Member_peState,TMM_Member_pePin,TMM_Member_CreatedOn)
	VALUE (@p_memberId, @p_Name, @p_ocupation,@p_userid,@p_password,@p_no, @p_email, @p_qualification,@p_religion,@p_caste,@p_gender,@p_dob,@p_memberImage,@p_MemberType,@p_fathername,@p_mothername,@p_prHouseNo,@p_prLocation,@p_prCity,@p_prDistrict,@p_prState,@p_prPin,@p_peHouseNo,@p_peCity,@p_peLocation,@p_peDistrict,@p_peState,@p_pePin,now());

	SET @P_LAST_INSERTED_ID = '';
	SELECT MAX(TRM_Refernce) into @P_LAST_INSERTED_ID FROM tbl_refernce_mstr;
	SELECT FN_GET_PREFIX('tbl_refernce_mstr',@P_LAST_INSERTED_ID,'refernce','') into @p_refernceId;

	INSERT INTO tbl_refernce_mstr(TRM_Refernce,TRM_RefernceBy,TRM_Name,TRM_Father_Name,TRM_Mother_Name,TRM_email,TRM_Mobile,TRM_DOB,TRM_Qualification,TRM_Ocupation,TRM_Religion,TRM_caste,TRM_MemberType,TRM_CreatedOn)
	VALUE (@p_refernceId,@p_memberId,@p_rNameOne,@p_rFatherOne,@p_rMotherOne,@p_rMailOne,@p_rMobileOne,@p_rDobOne,@p_rQualificationOne,@p_rOcupationOne,@p_rReligionOne,@p_rCasteOne,@p_rMemberTypeOne,now() );

	SET @P_LAST_INSERTED_ID = '';
	SELECT MAX(TRM_Refernce) into @P_LAST_INSERTED_ID FROM tbl_refernce_mstr;
	SELECT FN_GET_PREFIX('tbl_refernce_mstr',@P_LAST_INSERTED_ID,'refernce','') into @p_refernceId;

	INSERT INTO tbl_refernce_mstr(TRM_Refernce,TRM_RefernceBy,TRM_Name,TRM_Father_Name,TRM_Mother_Name,TRM_email,TRM_Mobile,TRM_DOB,TRM_Qualification,TRM_Ocupation,TRM_Religion,TRM_caste,TRM_MemberType,TRM_CreatedOn)
	VALUE (@p_refernceId,@p_memberId,@p_rNameTwo,@p_rFatherTwo,@p_rMotherTwo,@p_rMailTwo,@p_rMobileTwo,@p_rDobTwo,@p_rQualificationTwo,@p_rOcupationTwo,@p_rReligionTwo,@p_rCasteTwo,@p_rMemberTypeTwo,now() );

	COMMIT;

END IF;
#######################################################################
IF(actionType='viewMember') THEN

	SELECT 
	TMM_Member,
    TMM_Member_Image,
    TMM_Member_Name,
    TMM_Member_Dob,
    year(curdate())-year(TMM_Member_Dob) as memberAge,
    TMM_Member_Mobile,
    TMM_Member_Email,
    tom.TOM_Occupation_Name
	FROM tbl_member_mstr as tmm
    INNER JOIN tbl_occupation_mstr as tom ON tom.TOM_Occupation=tmm.TMM_Member_Ocupation
	where TMM_Member_DeletedFlag=false and TMM_Member_Approve =true;

	
	END IF;
	########################################################################################
	IF(actionType='editMember') THEN

		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;
		SELECT
		TMM_Member,
		TMM_Member_Name,
		TMM_Member_Ocupation,
		TMM_Member_Mobile,
		TMM_Member_Email,
		TMM_Member_Qualification,
		TMM_Member_Religion,
		TMM_Member_Caste,
		TMM_Member_Gender,
		TMM_Member_Dob,
		TMM_Member_Image,
		TMM_MemberType,
		TMM_Member_FatherName,
		TMM_Member_MotherName,
		TMM_Member_prHouseNo,
		TMM_Member_prLocation,
		TMM_Member_prCity,
		TMM_Member_prDistrict,
		TMM_Member_prState,
		TMM_Member_prPin,
		TMM_Member_peHouseNo,
		TMM_Member_peLocation,
		TMM_Member_peCity,
		TMM_Member_peDistrict,
		TMM_Member_peState,
		TMM_Member_pePin,
		TMM_Member_CreatedOn
		FROM tbl_member_mstr
		WHERE TMM_Member_DeletedFlag=0 AND TMM_Member=@p_memberId;

		#PREPARE STMT FROM @P_SQL;
		#EXECUTE STMT;
	END IF;
    IF(actionType='modifyMemberWithImg') THEN

		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;

		START TRANSACTION;

		UPDATE tbl_member_mstr SET
		TMM_Member_Name=@p_Name,
		TMM_Member_FatherName=@p_fathername,
		TMM_Member_MotherName=@p_mothername,
		TMM_Member_Ocupation=@p_ocupation,
		TMM_Member_Mobile=@p_no,
		TMM_Member_Email=@p_email,
		TMM_Member_Qualification=@p_qualification,
		TMM_Member_Religion=@p_religion,
		TMM_Member_Caste=@p_caste,
		TMM_Member_Gender=@p_gender,
		TMM_Member_Dob=@p_dob,
		TMM_Member_Image=@p_memberImage,
		TMM_MemberType=@p_MemberType,
		TMM_Member_prHouseNo=@p_prHouseNo,
		TMM_Member_prLocation=@p_prLocation,
		TMM_Member_prCity=@p_prCity,
		TMM_Member_prDistrict=@p_prDistrict,
		TMM_Member_prState=@p_prState,
		TMM_Member_prPin=@p_prPin,
		TMM_Member_peHouseNo=@p_peHouseNo,
		TMM_Member_peLocation=@p_peLocation,
		TMM_Member_peCity=@p_peCity,
		TMM_Member_peDistrict=@p_peDistrict,
		TMM_Member_peState=@p_peState,
		TMM_Member_pePin=@p_pePin,
		TMM_Member_CreatedOn=@p_currentTime
		WHERE TMM_Member=@p_memberId;
		COMMIT;

	END IF;
    
    IF(actionType='modifyMemberWOImg') THEN
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;

		START TRANSACTION;

		UPDATE tbl_member_mstr SET
		TMM_Member_Name=@p_Name,
		TMM_Member_FatherName=@p_fathername,
		TMM_Member_MotherName=@p_mothername,
		TMM_Member_Ocupation=@p_ocupation,
		TMM_Member_Mobile=@p_no,
		TMM_Member_Email=@p_email,
		TMM_Member_Qualification=@p_qualification,
		TMM_Member_Religion=@p_religion,
		TMM_Member_Caste=@p_caste,
		TMM_Member_Gender=@p_gender,
		TMM_Member_Dob=@p_dob,
		TMM_MemberType=@p_MemberType,
		TMM_Member_prHouseNo=@p_prHouseNo,
		TMM_Member_prLocation=@p_prLocation,
		TMM_Member_prCity=@p_prCity,
		TMM_Member_prDistrict=@p_prDistrict,
		TMM_Member_prState=@p_prState,
		TMM_Member_prPin=@p_prPin,
		TMM_Member_peHouseNo=@p_peHouseNo,
		TMM_Member_peLocation=@p_peLocation,
		TMM_Member_peCity=@p_peCity,
		TMM_Member_peDistrict=@p_peDistrict,
		TMM_Member_peState=@p_peState,
		TMM_Member_pePin=@p_pePin,
		TMM_Member_CreatedOn=@p_currentTime
		WHERE TMM_Member=@p_memberId;
		COMMIT;

	END IF;
	##########################################################################
   

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `master_teamRoutines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `master_teamRoutines`(IN `actionType` VARCHAR(40), IN `actionValue` TEXT)
BEGIN

#############################################
DECLARE EXIT handler for sqlexception
  BEGIN
    -- ERROR
  
  GET DIAGNOSTICS CONDITION 1
		@state = RETURNED_SQLSTATE, 
        @message = MESSAGE_TEXT,
        @contraint = CONSTRAINT_NAME, 
        @errorno = MYSQL_ERRNO;
		
        
        ROLLBACK;
        
        IF ((SELECT LOCATE('Duplicate', @message) > 0) or (SELECT LOCATE('Unknown', @message) > 0)) THEN
        
			SELECT SUBSTRING_INDEX(@message,"'",2) into @a;
			SELECT SUBSTRING_INDEX(@a,"'",-1) into @b;
			SELECT REPLACE(@message,@b,'x') into @c;
			
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @c, @errorno, @c, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			END IF; 
            
        ELSE    
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @message, @errorno, @message, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			END IF;
        END IF;
        
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=@eId;
END;

SET @state='', @message='', @contraint='', @errorno='',@eId='', @a='', @b='', @c='';

###############################################################################################################################
	
	
	IF(actionType='addTeamMember') THEN
		START TRANSACTION;
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;
		# Primary key value started

		INSERT INTO tbl_team_mstr(TTM_TeamMemberName,TTM_Member_mobile,TTM_Member_Email,TTM_Password,TTM_TeamMemberDesignation,TTM_TeamMember_Image,TTM_DOB,TTM_Member_Address,TTM_createdBy,TTM_createdOn)
		VALUE (@p_Name, @p_mobile,@p_email,@p_password, @p_designation,@p_memberImage,@p_dob,@p_address, @p_memberId,now());

		COMMIT;

	END IF;
	#######################################################################
	IF(actionType='viewAllTeam') THEN
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;
        SET @total = 0;
		SET @P_total = '
		SELECT
		COUNT(*) into @total
		FROM tbl_team_mstr
		WHERE TTM_Member_DeletedFlag=false';
        IF(@p_param1 IS NOT NULL AND @p_param1 != '') THEN
			SET @P_total = CONCAT(@P_total,' AND TTM_TeamMemberName LIKE "%',@p_param1,'%"');
		END IF;
        PREPARE STMT FROM @P_total;
		EXECUTE STMT;
        
        SET @P_TABLE = '
		SELECT 
		TTM_Team,
		TTM_TeamMemberName,
		TTM_Member_mobile,
		TTM_Member_Email,
		TTM_TeamMemberDesignation,
		TTM_TeamMember_Image,
		TTM_DOB,
		TTM_Member_Address,
		TTM_createdBy,
        @total as total
		FROM tbl_team_mstr 
		where TTM_Member_DeletedFlag=false' ;
        
        IF(@p_param1 != '') THEN
			SET @P_TABLE = CONCAT(@P_TABLE,' AND TTM_TeamMemberName LIKE "%',@p_param1,'%"');
		END IF;

		SET @P_TABLE = CONCAT(@P_TABLE,' LIMIT ',@p_start,',',@p_length, ' ');
		PREPARE STMT FROM @P_TABLE;
		EXECUTE STMT;
	END IF;

	IF(actionType='viewEditMember') THEN
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;

		SELECT
		TTM_Team,
		TTM_TeamMemberName,
		TTM_Member_mobile,
		TTM_Member_Email,
		TTM_TeamMemberDesignation,
		TTM_TeamMember_Image,
		TTM_DOB,
        TTM_Member_Address,
		TTM_Password
		FROM tbl_team_mstr
		where TTM_Team=@p_userId ;

	END IF; 

	IF(actionType='saveEditTeam') THEN

		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;

		START TRANSACTION;

		UPDATE tbl_team_mstr SET
		TTM_TeamMemberName=@p_Name,
		TTM_Member_mobile=@p_mobile,
		TTM_Member_Email=@p_email,
		TTM_TeamMemberDesignation=@p_designation,
        TTM_TeamMember_Image=@p_memberImage,
        TTM_DOB=@p_dob,
        TTM_Member_Address=@p_address,
        TTM_updatedOn=now()
		WHERE TTM_Team=@p_memberId;
		COMMIT;

	END IF;

    # DELETE MATRIMONY
	IF(actionType='deleteMember') THEN
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;
		DELETE FROM tbl_team_mstr WHERE TTM_Team=@p_userId;
	END IF;
    
    IF(actionType='addAttendance') THEN
		START TRANSACTION;
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;
		# Primary key value started

		INSERT INTO tbl_employee_attendance(TEA_emp_id,TEA_intime,TEA_date)
		VALUE (@p_userId, @p_intime,@p_date);

		COMMIT;

	END IF;
    
    
    IF(actionType='fetchAttendance') THEN
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;

		SELECT
		TEA_intime,
		TEA_outtime
		FROM tbl_employee_attendance 
		where TEA_emp_id=@p_userId and TEA_date=@p_date ;

	END IF; 
    
	IF(actionType='outAttendance') THEN
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;

		START TRANSACTION;

		UPDATE tbl_employee_attendance SET  TEA_outtime=@p_outTime 
		WHERE TEA_emp_id=@p_userId and TEA_date=@p_date ;
		COMMIT;

	END IF;
   IF(actionType='fetchOneAttendance') THEN
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;

		SELECT *
		FROM tbl_employee_attendance 
		where TEA_emp_id=@p_userId ;

	END IF; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pass_PolicyRoutines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pass_PolicyRoutines`(IN `actionType` VARCHAR(100), IN `actionValue` TEXT)
BEGIN

DECLARE EXIT handler for sqlexception
 BEGIN
    -- ERROR
  
  GET DIAGNOSTICS CONDITION 1
		@state = RETURNED_SQLSTATE, 
        @message = MESSAGE_TEXT,
        @contraint = CONSTRAINT_NAME, 
        @errorno = MYSQL_ERRNO;
		
        
        ROLLBACK;
        
        IF ((SELECT LOCATE('Duplicate', @message) > 0) or (SELECT LOCATE('Unknown', @message) > 0)) THEN
        
			SELECT SUBSTRING_INDEX(@message,"'",2) into @a;
			SELECT SUBSTRING_INDEX(@a,"'",-1) into @b;
			SELECT REPLACE(@message,@b,'x') into @c;
			
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @c, @errorno, @c, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			END IF; 
            
        ELSE    
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @message, @errorno, @message, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			END IF;
        END IF;
        
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=@eId;
END;

SET @state='', @message='', @contraint='', @errorno='',@eId='', @a='', @b='', @c=''; 
 
/********************************************EDIT Pass Policy***********************************************************/ 
IF(actionType='edtPassPol') THEN

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt; 
	SET @P_DEPT = 'SELECT 
	TPPM_Password,
    TPPM_Password_Length,
    TPPM_Password_IsUppercase, 
    TPPM_Password_IsLowercase,
    TPPM_Password_IsNumber,
    TPPM_Password_IsSpecialChars, 
    TPPM_Password_Encryption,
    TPPM_Password_Reuse,
    TPPM_Password_Validity,
    TPPM_Password_Active
	FROM tbl_password_policy_mstr  WHERE TPPM_Password=1';

	PREPARE STMT FROM @P_DEPT;
	EXECUTE STMT;

END IF;
/********************************************MODIFY Contents******************************************************/
IF(actionType='modPassPol') THEN

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	START TRANSACTION;
    
     UPDATE tbl_password_policy_mstr SET 
    TPPM_Password_Length=@p_passLength,
    TPPM_Password_IsUppercase=@p_isUpperCase,
    TPPM_Password_IsLowercase=@p_isLowerCase,
	TPPM_Password_IsNumber=@p_isNumber,
    TPPM_Password_IsSpecialChars=@p_isSpecCase,
    TPPM_Password_Encryption=@p_encryType,
    TPPM_Password_Reuse=@p_passReuse,
    TPPM_Password_Validity=@p_passValidity,
    TPPM_Password_UpdatedBy =@p_userId,
    TPPM_Password_UpdatedOn=now() 
    WHERE TPPM_Password=1; 
	COMMIT; 
 END IF; 
  
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_categoryRoutines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_categoryRoutines`(IN `actionType` VARCHAR(20), IN `actionValue` TEXT)
BEGIN

DECLARE EXIT handler for sqlexception
  BEGIN
    -- ERROR
  
  GET DIAGNOSTICS CONDITION 1
		@state = RETURNED_SQLSTATE, 
        @message = MESSAGE_TEXT,
        @contraint = CONSTRAINT_NAME, 
        @errorno = MYSQL_ERRNO;
		
        
        ROLLBACK;
        
        IF ((SELECT LOCATE('Duplicate', @message) > 0) or (SELECT LOCATE('Unknown', @message) > 0)) THEN
        
			SELECT SUBSTRING_INDEX(@message,"'",2) into @a;
			SELECT SUBSTRING_INDEX(@a,"'",-1) into @b;
			SELECT REPLACE(@message,@b,'x') into @c;
			
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @c, @errorno, @c, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			END IF; 
            
        ELSE    
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @message, @errorno, @message, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			END IF;
        END IF;
        
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=@eId;
END;

SET @state='', @message='', @contraint='', @errorno='',@eId='', @a='', @b='', @c='';

##########################################################################################
IF(actionType='addCategory') THEN

	START TRANSACTION;

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	  # Primary key value started
	
    SET @P_LAST_INSERTED_ID = '';
	SELECT MAX(TCM_Category) into @P_LAST_INSERTED_ID FROM tbl_category_mstr;
	SELECT FN_GET_PREFIX('tbl_category_mstr',@P_LAST_INSERTED_ID,'category','') into  @p_categoryId;

    
    #select lpad(conv(floor(rand()*pow(36,10)), 10, 36), 8, 0) into  @prefix;
    #SET @p_districtId = concat('TBL_',@prefix);
    INSERT INTO tbl_category_mstr (TCM_Category,TCM_Category_Name,TCM_Category_Status,TCM_Category_CreatedOn,TCM_Category_CreatedBy) 
     VALUE (@p_categoryId, @p_categoryName, @p_categoryActive, now(),@p_createdBy);
 
	COMMIT;

END IF;

IF(actionType='viewCategory') THEN

	# set @p_param1 = '' , @p_param2 = '';

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	SET @total = 0;
	SET @P_total = '
	 SELECT
	COUNT(*) into @total
	FROM tbl_category_mstr
    WHERE TCM_Category_DeletedFlag=false';

	IF(@p_param1 IS NOT NULL AND @p_param1 != '') THEN
		SET @P_total = CONCAT(@P_total,' and TCM_Category_Name LIKE "%',@p_param1,'%"');
	END IF;

	PREPARE STMT FROM @P_total;
	EXECUTE STMT;
	#SELECT @P_total;

	SET @P_TABLE = '
	SELECT 
        TCM_Category,
        TCM_Category_Name,
		TCM_Category_Status,
		@total as total
		FROM tbl_category_mstr 
		WHERE TCM_Category_DeletedFlag=false';

	IF(@p_param1 != '') THEN
		SET @P_TABLE = CONCAT(@P_TABLE,' AND TCM_Category_Name LIKE "%',@p_param1,'%"');
	END IF;


	SET @P_TABLE = CONCAT(@P_TABLE,' limit ',@p_start,',',@p_length, ' ');


	PREPARE STMT FROM @P_TABLE;
	EXECUTE STMT;
	#SELECT @P_THEME;

END IF;
#################################
#Delete Test
############################
IF(actionType='deleteCategory') THEN


	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	SET @P_TABLE = 'UPDATE tbl_category_mstr SET TCM_Category_DeletedFlag=true,TCM_Category_CreatedBy=@p_createdBy WHERE TCM_Category=@p_categoryId';

	PREPARE STMT FROM @P_TABLE;
	EXECUTE STMT;

END IF;
#View Edit Test
################################

IF(actionType='viewEditCat') THEN

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	SET @P_TABLE = 'SELECT 
     TCM_Category,
	 TCM_Category_Name,
	 TCM_Category_Status
	 FROM tbl_category_mstr
     WHERE TCM_Category=@p_categoryId';

	PREPARE STMT FROM @P_TABLE;
	EXECUTE STMT;

END IF;
#Modify Test
#################################

IF(actionType='modifyCategory') THEN

set @vsql = actionValue;
prepare prastmt from @vsql;
execute prastmt;

START TRANSACTION;

SET @P_TABLE = 'UPDATE tbl_category_mstr SET
	TCM_Category_Name=@p_categoryName,
    TCM_Category_Status=@p_categoryActive
    WHERE TCM_Category=@p_categoryId';
PREPARE STMT FROM @P_TABLE;
EXECUTE STMT;

COMMIT;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_LoginSettingRoutines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_LoginSettingRoutines`(IN `actionType` VARCHAR(100), IN `actionValue` TEXT)
BEGIN

DECLARE EXIT handler for sqlexception
 BEGIN
    -- ERROR
  
  GET DIAGNOSTICS CONDITION 1
		@state = RETURNED_SQLSTATE, 
        @message = MESSAGE_TEXT,
        @contraint = CONSTRAINT_NAME, 
        @errorno = MYSQL_ERRNO;
		
        
        ROLLBACK;
        
        IF ((SELECT LOCATE('Duplicate', @message) > 0) or (SELECT LOCATE('Unknown', @message) > 0)) THEN
        
			SELECT SUBSTRING_INDEX(@message,"'",2) into @a;
			SELECT SUBSTRING_INDEX(@a,"'",-1) into @b;
			SELECT REPLACE(@message,@b,'x') into @c;
			
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @c, @errorno, @c, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			END IF; 
            
        ELSE    
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @message, @errorno, @message, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			END IF;
        END IF;
        
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=@eId;
END;

SET @state='', @message='', @contraint='', @errorno='',@eId='', @a='', @b='', @c=''; 
 
/********************************************EDIT Pass Policy***********************************************************/ 
IF(actionType='edtUserSet') THEN

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt; 
	SET @P_DEPT = 'SELECT 
	TULS_User,
    TULS_Login_Attempt,
    TULS_Login_Block_Dur, 
    TULS_User_Active,
    TULS_Reset_OTP_Time,
    TULS_Max_FileSize,
    TULS_Login_ExpireTime
	FROM tbl_user_login_setting  WHERE TULS_User=1';

	PREPARE STMT FROM @P_DEPT;
	EXECUTE STMT;

END IF;
/********************************************MODIFY Contents******************************************************/
IF(actionType='modUsrLogSet') THEN

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	START TRANSACTION;
    
		UPDATE tbl_user_login_setting SET 
		TULS_Login_Attempt=@p_logAttempt,
		TULS_Login_Block_Dur=@p_lBlockDur, 
		TULS_Reset_OTP_Time=@p_RestOTPTime,
		TULS_Max_FileSize=@p_maxFileSize,
		TULS_Login_ExpireTime=@p_loginExpireTime,
		TULS_User_UpdatedOn=now() 
		WHERE TULS_User=1; 
	COMMIT; 
 END IF; 
  
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_ManageRoutines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_ManageRoutines`(IN `actionType` VARCHAR(100), IN `actionValue` TEXT)
BEGIN

DECLARE EXIT handler for sqlexception
  BEGIN
    -- ERROR
  
  GET DIAGNOSTICS CONDITION 1
		@state = RETURNED_SQLSTATE, 
        @message = MESSAGE_TEXT,
        @contraint = CONSTRAINT_NAME, 
        @errorno = MYSQL_ERRNO;
		
        
        ROLLBACK;
        
        IF ((SELECT LOCATE('Duplicate', @message) > 0) or (SELECT LOCATE('Unknown', @message) > 0)) THEN
        
			SELECT SUBSTRING_INDEX(@message,"'",2) into @a;
			SELECT SUBSTRING_INDEX(@a,"'",-1) into @b;
			SELECT REPLACE(@message,@b,'x') into @c;
            SELECT  @message into @c;
			
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @c, @errorno, @c, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			END IF; 
            
        ELSE    
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @message, @errorno, @message, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			END IF;
        END IF;
        
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=@eId;
END;

SET @state='', @message='', @contraint='', @errorno='',@eId='', @a='', @b='', @c='';

###############################################################################################################################
	
	# INSERT USER AND 
	IF(actionType='saveAddUser') THEN
		START TRANSACTION;
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;
        
        #check for duplicate email exists
        SET @recordCount =( SELECT count(*) FROM tbl_user_mstr Where TUM_User_Email = @p_userEmail);
		IF (@recordCount = 0) THEN
        
			SET @P_LAST_INSERTED_ID = '';
			SELECT MAX(TUM_User) into @P_LAST_INSERTED_ID FROM tbl_user_mstr;
			SELECT FN_GET_PREFIX('tbl_user_mstr',@P_LAST_INSERTED_ID,'UserManagement','') into  @p_userId;
			
			INSERT INTO tbl_user_mstr (TUM_User,TUM_User_Name,TUM_User_Lname,TUM_User_Password,TUM_User_Mobile,
				TUM_User_Email,TUM_User_Desig,TUM_User_Dept,TUM_User_AltEmail,TUM_User_AltMobile,
				TUM_User_Status,TUM_User_CreatedBy,TUM_User_CreatedOn) 
			VALUE (@p_userId,@p_userName,@p_userLastName,@p_userPassword,@p_userMobile,@p_userEmail,@p_userDesignation,@p_userDepartment,
				@p_userAltEmail,@p_userAltMobile,@p_userStatus,@p_createdBy,now());
			
			SET @P_SQL = concat('INSERT INTO tbl_userrole_assign (TURA_User,TURA_UserRole) VALUE ',@p_userRole);
			PREPARE STMT FROM @P_SQL;
			#SELECT @P_SQL;
			EXECUTE STMT;	
            SELECT @recordCount as recordCount;
		ELSE
			SELECT @recordCount as recordCount;
        END IF;
        
		COMMIT;
	END IF;
     
	# VIEW USER LIST
	IF(actionType='viewAllUserList') THEN
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;

		SET @total = 0;
		SET @P_total = '
		SELECT 
			COUNT(*) INTO @total
			FROM tbl_user_mstr 
			WHERE TUM_User_DeletedFlag = false AND TUM_User!="user001" ';

			IF(@p_param1 IS NOT NULL AND @p_param1 != '') THEN
				SET @P_total = CONCAT(@P_total,' and TUM_User_Name LIKE "%',@p_param1,'%"');
			END IF;
            
            IF(@p_param2 IS NOT NULL AND @p_param2 != '') THEN
				SET @P_total = CONCAT(@P_total,' and TUM_User_Mobile="',@p_param2,'"');
			END IF;
            
            IF(@p_param3 IS NOT NULL AND @p_param3 != '') THEN
				SET @P_total = CONCAT(@P_total,' and TUM_User_Email="',@p_param3,'"');
			END IF;
			   

			PREPARE STMT FROM @P_total;
			EXECUTE STMT;

			SET @P_USER = '
			SELECT 
            TUM_User,
			TUM_User_Name,
			TUM_User_Lname,
			TUM_User_Mobile,
			TUM_User_Email,
            TUM_User_Status,
			TUM_User_LoginAttempt,
            (SELECT group_concat(RM.TURM_URole_Name) FROM tbl_userrole_assign RA
				INNER JOIN tbl_userrole_mstr RM ON RA.TURA_UserRole = RM.TURM_UserRole
				where RA.TURA_User = tum.TUM_User GROUP BY RA.TURA_User) as userrole,
			@total as total
			FROM tbl_user_mstr as tum
			WHERE tum.TUM_User_DeletedFlag = false AND tum.TUM_User!="user001" ';
            
            
            #(SELECT CONCAT(TUM_User_Name , " " , TUM_User_Lname)  FROM tbl_user_mstr tum) AS FullName,

			IF(@p_param1 != '') THEN
				SET @P_USER = CONCAT(@P_USER,' and TUM_User_Name LIKE "%',@p_param1,'%"');
			END IF;
            
            IF(@p_param2 != '') THEN
				SET @P_USER = CONCAT(@P_USER,' and TUM_User_Mobile="',@p_param2,'"');
			END IF;
            
            IF(@p_param3 != '') THEN
				SET @P_USER = CONCAT(@P_USER,' and TUM_User_Email="',@p_param3,'"');
			END IF;
			   

				SET @P_USER = CONCAT(@P_USER,' limit ',@p_start,',',@p_length, ' ');


			PREPARE STMT FROM @P_USER;
			EXECUTE STMT;

		END IF;
     
      # EDIT USER

	IF(actionType='editUserData') THEN

		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;
		SELECT 
        TUM_User,
		TUM_User_Name,
		TUM_User_Lname,
		TUM_User_Mobile,
		TUM_User_Email,
		TUM_User_Desig,
		TUM_User_Dept,
		TUM_User_AltEmail,
		TUM_User_AltMobile,
		TUM_User_Status,
		TUM_User_Image,
        TUM_User_CreatedOn,
        (SELECT group_concat(trm.TURM_UserRole) FROM tbl_userrole_assign as tua 
        LEFT JOIN tbl_userrole_mstr as trm ON trm.TURM_UserRole=tua.TURA_UserRole 
        where tua.TURA_User = @p_user GROUP BY tua.TURA_User) AS TURA_UserRole
		FROM tbl_user_mstr as tum
		WHERE tum.TUM_User_DeletedFlag=0 AND tum.TUM_User=@p_user;
        
		#PREPARE STMT FROM @P_SQL;
		#EXECUTE STMT;
	END IF;
    #modifyUser
    IF(actionType='modifyUser') THEN
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;
        
		START TRANSACTION;
			UPDATE tbl_user_mstr SET 
				TUM_User_Name=@p_userName,
				TUM_User_Lname=@p_userLastName,
				TUM_User_Mobile=@p_userMobile,
				TUM_User_Email=@p_userEmail,
				TUM_User_AltEmail=@p_userAltEmail,
				TUM_User_AltMobile=@p_userAltMobile,
                TUM_User_UpdatedBy = @p_createdBy,
				TUM_User_UpdatedOn=now() 
			WHERE TUM_User=@p_userId; 
	   COMMIT; 
		
	 END IF;  
     IF(actionType='saveUserProfileImage') THEN
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;
        
		START TRANSACTION;
			UPDATE tbl_user_mstr SET 
			TUM_User_Image=@p_userImage,
			TUM_User_UpdatedOn=now() 
			WHERE TUM_User=@p_userId; 
	   COMMIT; 
		
	 END IF;  
    
	# DELETE USER
	IF(actionType='deleteUserData') THEN
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;
		UPDATE tbl_user_mstr SET TUM_User_DeletedFlag=true, TUM_User_UpdatedBy=@p_createdBy,TUM_User_UpdatedOn=now() WHERE TUM_User=@p_user;
	END IF;
    
    # UNBLOCK USER
	IF(actionType='unblockUserData') THEN
		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;
		UPDATE tbl_user_mstr SET TUM_User_LoginAttempt=0, TUM_User_UpdatedBy=@p_createdBy,TUM_User_UpdatedOn=now() WHERE TUM_User=@p_user;
	END IF;
    
    # UPDATE USER
	IF(actionType='updateUserData') THEN

		set @vsql = actionValue;
		prepare prastmt from @vsql;
		execute prastmt;
        
		SET @p_userId = @p_user;
		START TRANSACTION;

		UPDATE tbl_user_mstr SET TUM_User_Name=@p_userName,TUM_User_Lname=@p_userLastName,
        TUM_User_Mobile=@p_userMobile,TUM_User_Email=@p_userEmail,TUM_User_Desig=@p_userDesignation,
        TUM_User_Dept=@p_userDepartment,TUM_User_Status=@p_userStatus,TUM_User_AltEmail=@p_userAltEmail,
        TUM_User_AltMobile=@p_userAltMobile,TUM_User_UpdatedBy=@p_createdBy, TUM_User_UpdatedOn=now() WHERE TUM_User=@p_user;

		#Deleting record from the tbl_userrole_assign related to the above user
		DELETE FROM tbl_userrole_assign WHERE TURA_User = @p_user;

		#iNSERT RECORDS TO tbl_userrole_assign against the above user
		SET @P_SQL = concat('INSERT INTO tbl_userrole_assign (TURA_User,TURA_UserRole) VALUE ',@p_userRole);

		PREPARE STMT FROM @P_SQL;
		EXECUTE STMT;
		COMMIT;
	END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_typeRoutines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_typeRoutines`(IN `actionType` VARCHAR(20), IN `actionValue` TEXT)
BEGIN
DECLARE EXIT handler for sqlexception
  BEGIN
    -- ERROR
  
  GET DIAGNOSTICS CONDITION 1
		@state = RETURNED_SQLSTATE, 
        @message = MESSAGE_TEXT,
        @contraint = CONSTRAINT_NAME, 
        @errorno = MYSQL_ERRNO;
		
        
        ROLLBACK;
        
        IF ((SELECT LOCATE('Duplicate', @message) > 0) or (SELECT LOCATE('Unknown', @message) > 0)) THEN
        
			SELECT SUBSTRING_INDEX(@message,"'",2) into @a;
			SELECT SUBSTRING_INDEX(@a,"'",-1) into @b;
			SELECT REPLACE(@message,@b,'x') into @c;
			
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @c, @errorno, @c, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			END IF; 
            
        ELSE    
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @message, @errorno, @message, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			END IF;
        END IF;
        
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=@eId;
END;

SET @state='', @message='', @contraint='', @errorno='',@eId='', @a='', @b='', @c='';
################# add property master
IF(actionType='addUserType') THEN

	START TRANSACTION;

	set @vsql = actionValue;

	prepare prastmt from @vsql;
	execute prastmt;
	##
	SET @P_LAST_INSERTED_ID = '';

	SELECT MAX(TUT_UserType) into @P_LAST_INSERTED_ID FROM tbl_user_type_mstr;

	SELECT FN_GET_PREFIX('tbl_user_type_mstr',@P_LAST_INSERTED_ID,'User Type','') into @p_userType;

	##
	#select lpad(conv(floor(rand()*pow(36,10)),10,36),8,0)into @p_userType;
	INSERT INTO tbl_user_type_mstr ( TUT_UserType, TUT_UserTypeName, TUT_UserType_Descrptn, TUT_UserType_Active, TUT_UserType_CreatedOn,TUT_UserType_CreatedBy) 

	VALUE (@p_userType,@p_userTypeName,@p_userTypeDescrptn,@p_userTypeActive,now(),@p_createdBy);


	COMMIT;

END IF;
 
##view property floor
IF(actionType='viewAlluserType') THEN

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	SET @total = 0;
	SET @P_total = '
	SELECT 
	count(*) into @total
	FROM tbl_user_type_mstr 
	where TUT_UserType_DeletedFlag=false ';


	IF(@p_param1 IS NOT NULL AND @p_param1 != '') THEN
		SET @P_total = CONCAT(@P_total,' and TUT_UserTypeName LIKE "%',@p_param1,'%"');
	END IF;

	  

	PREPARE STMT FROM @P_total;
	EXECUTE STMT;
	#SELECT @P_total;

	SET @P_USER = '
	SELECT 
	TUT_UserType,
    TUT_UserTypeName,
    TUT_UserType_Descrptn, 
    TUT_UserType_Active,
	@total as total
	FROM tbl_user_type_mstr  
	where TUT_UserType_DeletedFlag=false';

	IF(@p_param1 != '') THEN
		SET @P_USER = CONCAT(@P_USER,' and TUT_UserTypeName LIKE "%',@p_param1,'%"');
	END IF;

	SET @P_USER = CONCAT(@P_USER,' limit ',@p_start,',',@p_length, ' ');


	PREPARE STMT FROM @P_USER;
	EXECUTE STMT;
	#SELECT @P_USER;

END IF;
####delete property booking
IF(actionType='deleteUserType') THEN


	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	SET @P_USER = 'UPDATE tbl_user_type_mstr SET TUT_UserType_DeletedFlag =true, TUT_UserType_CreatedBy=@p_createdBy WHERE  TUT_UserType=@p_userType ';

	PREPARE STMT FROM @P_USER;
	EXECUTE STMT;

END IF;
######edit property floor
IF(actionType='editUserType') THEN

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	SET @P_USER = 'SELECT 
	TUT_UserType,
    TUT_UserTypeName,
    TUT_UserType_Descrptn, 
    TUT_UserType_Active
	FROM tbl_user_type_mstr  WHERE TUT_UserType=@p_userType';

	PREPARE STMT FROM @P_USER;
	EXECUTE STMT;

END IF;

##################################################################
##modify property floor
IF(actionType='modifyUserType') THEN

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	START TRANSACTION;

	SET @P_USERROLE = 'UPDATE tbl_user_type_mstr SET TUT_UserTypeName=@p_userTypeName,
    TUT_UserType_Descrptn=@p_userTypeDescrptn,
    TUT_UserType_Active=@p_userTypeActive,
    TUT_UserType_CreatedBy=@p_createdBy
    WHERE TUT_UserType=@p_userType ';

	PREPARE STMT FROM @P_USERROLE;
	EXECUTE STMT;

	COMMIT;

 END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_userroleRoutines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_userroleRoutines`(IN `actionType` VARCHAR(20), IN `actionValue` TEXT)
BEGIN

DECLARE EXIT handler for sqlexception
  BEGIN
    -- ERROR
  
  GET DIAGNOSTICS CONDITION 1
		@state = RETURNED_SQLSTATE, 
        @message = MESSAGE_TEXT,
        @contraint = CONSTRAINT_NAME, 
        @errorno = MYSQL_ERRNO;
		
        
        ROLLBACK;
        
        IF ((SELECT LOCATE('Duplicate', @message) > 0) or (SELECT LOCATE('Unknown', @message) > 0)) THEN
        
			SELECT SUBSTRING_INDEX(@message,"'",2) into @a;
			SELECT SUBSTRING_INDEX(@a,"'",-1) into @b;
			SELECT REPLACE(@message,@b,'x') into @c;
			
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @c, @errorno, @c, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			END IF; 
            
        ELSE    
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @message, @errorno, @message, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			END IF;
        END IF;
        
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=@eId;
END;

SET @state='', @message='', @contraint='', @errorno='',@eId='', @a='', @b='', @c='';

###############################################################################################################################


IF(actionType='getFunctionDetails') THEN

Select 
        tblfunction.TFM_Function,
        tblfunction.TFM_Module as parentIdForFunction ,
        tblfunction.TFM_Functn_Name as functionName
        FROM tbl_function_mstr as tblfunction 
        where TFM_Functn_DeletedFlag=false ;
      

	#SELECT distinct dtm.TDM_State ,tbl_mstr.TSM_State_Name  FROM tbl_district_mstr as dtm  
  #JOIN tbl_state_mstr as tbl_mstr on dtm.TDM_State=tbl_mstr.TSM_State where TCCM_CC_DeletedFlag=false;

 END IF;
 #####################################
 IF(actionType='getActivityDetails') THEN
   
   Select 
		tblactivity.TAM_Activity as activityId,
        tblactivity.TAM_Module as ActivityModuleId,
        tblactivity.TAM_Function as parentIdForActitvity,
		tblactivity.TAM_Actvty_Name as activityName
        FROM tbl_activity_mstr as tblactivity 
        where TAM_Actvty_DeletedFlag=false;

#SELECT distinct dtm.TDM_State ,tbl_mstr.TSM_State_Name  FROM tbl_district_mstr as dtm  
  #JOIN tbl_state_mstr as tbl_mstr on dtm.TDM_State=tbl_mstr.TSM_State where TCCM_CC_DeletedFlag=false;

 END IF;
 #####################################
IF(actionType='getCostCenterName') THEN

	SELECT TCCM_CostCenter ,TCCM_CC_Name  FROM tbl_costcenter_mstr where TCCM_CC_DeletedFlag=false;
#SELECT distinct dtm.TDM_State ,tbl_mstr.TSM_State_Name  FROM tbl_district_mstr as dtm  
  #JOIN tbl_state_mstr as tbl_mstr on dtm.TDM_State=tbl_mstr.TSM_State where TCCM_CC_DeletedFlag=false;

 END IF;
 
  
 #####################################
 IF(actionType='getModuleDetails') THEN
   		SELECT 
		TMM_Module,
		TMM_Modl_Name 
        FROM tbl_module_mstr as tblmodule 
		INNER JOIN tbl_activity_mstr as tblactivity on tblmodule.TMM_Module=tblactivity.TAM_Module
        where TMM_Modl_DeletedFlag=false  && TAM_Actvty_DeletedFlag=false group by tblactivity.TAM_Module;

 END IF;
 
 ######################################
  IF(actionType='getModuleCheckDtls') THEN
		
		SELECT
		tblmodule.TMM_Module,
		tblmodule.TMM_Modl_Name 
        FROM tbl_module_mstr as tblmodule 
		INNER JOIN tbl_activity_mstr as tblactivity on tblmodule.TMM_Module=tblactivity.TAM_Module
        INNER JOIN tbl_roleactivity_assign as roleact on roleact.TRAM_Module=tblmodule.TMM_Module
        where roleact.TRAM_UserRole=@p_userroleId group by tblmodule.TMM_Module;
        
 END IF;
 
  ######################################
  IF(actionType='getFunctionCheckDtls') THEN
  
  Select 
		tblfunction.TFM_Function,
		tblfunction.TFM_Functn_Name 
        FROM tbl_function_mstr as tblfunction 
		INNER JOIN tbl_activity_mstr as tblactivity on tblfunction.TFM_Function=tblactivity.TAM_Function
        INNER JOIN tbl_roleactivity_assign as roleact on roleact.TRAM_Function=tblfunction.TFM_Function
        where roleact.TRAM_UserRole=@p_userroleId group by tblfunction.TFM_Function;
		
  
        
 END IF;
 
 
 ######################################
  IF(actionType='getActivityCheckDtls') THEN
  
   Select 
		tblactivity.TAM_Activity,
		tblactivity.TAM_Actvty_Name 
        FROM tbl_activity_mstr as tblactivity 
		INNER JOIN tbl_roleactivity_assign as roleact on roleact.TRAM_Activity=tblactivity.TAM_Activity
		where roleact.TRAM_UserRole=@p_userroleId group by tblactivity.TAM_Activity;
       
 END IF;
 
 #####################################
 IF(actionType='getModuleName') THEN

Select 
		tblmodule.TMM_Module,
        tblmodule.TMM_Modl_Name as moduleName,
        tblfunction.TFM_Function,
        tblfunction.TFM_Module as parentIdForFunction ,
        tblfunction.TFM_Functn_Name as functionName,
        tblactivity.TAM_Activity ,
        tblactivity.TAM_Module,
        tblactivity.TAM_Function as parentIdForActitvity,
		tblactivity.TAM_Actvty_Name as activityName
        FROM tbl_module_mstr as tblmodule 
        INNER JOIN tbl_function_mstr as tblfunction on tblmodule.TMM_Module=tblfunction.TFM_Module
        INNER JOIN tbl_activity_mstr as tblactivity on tblfunction.TFM_Module=tblactivity.TAM_Module
        where TMM_Modl_DeletedFlag=false && TFM_Functn_DeletedFlag=false && TAM_Actvty_DeletedFlag=false;
      #  SELECT TMM_Module ,TMM_Modl_Name  FROM tbl_module_mstr where TMM_Modl_DeletedFlag=false;
#SELECT distinct dtm.TDM_State ,tbl_mstr.TSM_State_Name  FROM tbl_district_mstr as dtm  
  #JOIN tbl_state_mstr as tbl_mstr on dtm.TDM_State=tbl_mstr.TSM_State where TCCM_CC_DeletedFlag=false;

 END IF;
 
 #####################################
 
 IF(actionType='getParentName') THEN

	SELECT TURM_UserRole ,TURM_URole_Name  FROM tbl_userrole_mstr   where TURM_URole_DeletedFlag=false;
#SELECT distinct dtm.TDM_State ,tbl_mstr.TSM_State_Name  FROM tbl_district_mstr as dtm  
  #JOIN tbl_state_mstr as tbl_mstr on dtm.TDM_State=tbl_mstr.TSM_State where TCCM_CC_DeletedFlag=false;

 END IF;
 
 #####################################
 
 
 IF(actionType='addUserRole') THEN

	START TRANSACTION;

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	# Primary key value started
	
    SET @P_LAST_INSERTED_ID = '';
	SELECT MAX(TURM_UserRole) into @P_LAST_INSERTED_ID FROM tbl_userrole_mstr;
	SELECT FN_GET_PREFIX('tbl_userrole_mstr',@P_LAST_INSERTED_ID,'userrolemstr','') into  @p_roleMasterId;
    
    
    #SET @p_roleMasterId 	= (select lpad(conv(floor(rand()*pow(36,10)), 10, 36), 5, 0));
	#End of primary Key value
    
    INSERT INTO tbl_userrole_mstr (TURM_UserRole,TURM_URole_Name,TURM_CostCenter,  TURM_URole_Description, TURM_ParentUserRole,  TURM_URole_Status, TURM_URole_CreatedOn,TURM_URole_CreatedBy) 
    VALUE (@p_roleMasterId, @p_userRoleName,  @p_userCostCenter, @p_userDescription, @p_userParentUserRole, @p_userRoleStatus,  now(),@p_createdBy);
 
  SET @P_SQL = 'INSERT INTO tbl_roleactivity_assign (TRAM_UserRole,TRAM_Module,TRAM_Function,TRAM_Activity) VALUES ';
  SET @P_SQL=CONCAT(@P_SQL,@p_childSubquery);
   
  PREPARE prastmt FROM @P_SQL;
  EXECUTE prastmt;
   
  COMMIT;

END IF;
############################



 
IF(actionType='viewUserData') THEN

	# set @p_param1 = '' , @p_param2 = '';

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	SET @total = 0;
	SET @P_total = 'SELECT
	count(*) into @total
	FROM tbl_userrole_mstr 
    where TURM_URole_DeletedFlag=false';
    
 
    
	IF(@p_param1 IS NOT NULL AND @p_param1 != '') THEN
		SET @P_total = CONCAT(@P_total,' and TURM_URole_Name="',@p_param1,'"');
	END IF;
    
	PREPARE STMT FROM @P_total;
	EXECUTE STMT;
	#SELECT @P_total;

	SET @P_TABLE = '
		SELECT 
		TURM_UserRole,
        TURM_URole_Name,
        (SELECT TURM_URole_Name FROM tbl_userrole_mstr WHERE TURM_UserRole =  tbl_mstr.TURM_ParentUserRole) as 		parentUserRoleName,
        TURM_CostCenter,
		TURM_URole_Status,
		@total as total
		FROM tbl_userrole_mstr as tbl_mstr 
		where  TURM_URole_DeletedFlag=false';

	IF(@p_param1 != '') THEN
		SET @P_TABLE = CONCAT(@P_TABLE,' and TURM_URole_Name="',@p_param1,'"');
	END IF;
    
	SET @P_TABLE = CONCAT(@P_TABLE,' limit ',@p_start,',',@p_length, ' ');


	PREPARE STMT FROM @P_TABLE;
	EXECUTE STMT;
	#SELECT @P_THEME;

END IF;


################################

IF(actionType='deleteUserRole') THEN


	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	SET @P_TABLE = 'UPDATE tbl_userrole_mstr SET TURM_URole_DeletedFlag=true, TURM_URole_CreatedBy=@p_createdBy WHERE  TURM_UserRole=@p_userroleId';

	PREPARE STMT FROM @P_TABLE;
	EXECUTE STMT;

END IF;


################################

IF(actionType='viewEditUserRole') THEN

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	SET @P_TABLE = 'SELECT 
		tbl_mstr.TURM_UserRole,
        tbl_mstr.TURM_URole_Name,
        tbl_mstr.TURM_CostCenter,
        tbl_mstr.TURM_URole_Description,
		tbl_mstr.TURM_ParentUserRole,
		tbl_mstr.TURM_URole_Status
	    FROM tbl_userrole_mstr as tbl_mstr 
		where tbl_mstr.TURM_UserRole=@p_userroleId';

	PREPARE STMT FROM @P_TABLE;
	EXECUTE STMT;

END IF;

#################################

IF(actionType='ModelView') THEN

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

SET @P_TABLE = '
	SELECT 
		tbl_mstr.TURM_UserRole,
        tbl_mstr.TURM_URole_Name,
        tbl_mstr.TURM_URole_Description,
		(SELECT TURM_URole_Name FROM tbl_userrole_mstr WHERE TURM_UserRole =  tbl_mstr.TURM_ParentUserRole) as parentUserRoleName,
		tbl_mstr.TURM_URole_Status,
		@total 
		FROM tbl_userrole_mstr as tbl_mstr 
		where tbl_mstr.TURM_UserRole=@p_userroleId';
	PREPARE STMT FROM @P_TABLE;
	EXECUTE STMT;

END IF;

#######modifyUserRole

IF(actionType='modifyUserRole') THEN

	set @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;

	START TRANSACTION;
	SET @P_TABLE = 'UPDATE tbl_userrole_mstr SET
		TURM_URole_Name=@p_userRoleName, 
		TURM_URole_Description=@p_userDescription, 
		TURM_ParentUserRole=@p_userParentUserRole,
		TURM_URole_Status=@p_userRoleStatus
		 WHERE  TURM_UserRole=@p_userroleId';
	PREPARE STMT FROM @P_TABLE;
	EXECUTE STMT;
	SET @p_roleMasterId = @p_userroleId;

	DELETE FROM tbl_roleactivity_assign WHERE TRAM_UserRole =@p_userroleId;

	SET @P_SQL = 'INSERT INTO tbl_roleactivity_assign (TRAM_UserRole,TRAM_Module,TRAM_Function,TRAM_Activity) VALUES ';
	SET @P_SQL=CONCAT(@P_SQL,@p_childSubquery);
	   
	PREPARE prastmt FROM @P_SQL;
	EXECUTE prastmt;


	COMMIT;
END IF;
####################################

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_userRoutines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_userRoutines`(IN `actionType` VARCHAR(40), IN `actionValue` TEXT)
BEGIN

#############################################
DECLARE EXIT handler for sqlexception
  BEGIN
    -- ERROR
  
  GET DIAGNOSTICS CONDITION 1
		@state = RETURNED_SQLSTATE, 
        @message = MESSAGE_TEXT,
        @contraint = CONSTRAINT_NAME, 
        @errorno = MYSQL_ERRNO;
		
        
        ROLLBACK;
        
        IF ((SELECT LOCATE('Duplicate', @message) > 0) or (SELECT LOCATE('Unknown', @message) > 0)) THEN
        
			SELECT SUBSTRING_INDEX(@message,"'",2) into @a;
			SELECT SUBSTRING_INDEX(@a,"'",-1) into @b;
			SELECT REPLACE(@message,@b,'x') into @c;
			
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @c, @errorno, @c, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@c;
			END IF; 
            
        ELSE    
			SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			
			IF (@eId = '') THEN
				INSERT INTO tbl_error_handling (`sqlErrorCode`, `sqlErrorState`, `sqlErrorMessage`, `nlErrorCode`,`nlErrorMessage`,`dbName`, `eStatus`) VALUES (@errorno, @state, @message, @errorno, @message, 'MYSQL' ,true);
				SELECT errorId INTO @eId FROM tbl_error_handling where sqlErrorCode=@errorno and sqlErrorMessage=@message;
			END IF;
        END IF;
        
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT=@eId;
END;

SET @state='', @message='', @contraint='', @errorno='',@eId='', @a='', @b='', @c='';

###############################################################################################################################

IF (actionType='getByName') THEN

	SET @vsql = actionValue;
	prepare prastmt from @vsql;
	execute prastmt;
    
	SET @U_ID='';
    SET @U_NAME='';
    SET @U_PASS='';
    
	SELECT TUM_User INTO @U_ID  FROM tbl_user_mstr WHERE TUM_User_Name=@p_userName AND TUM_User_Status=TRUE;

	IF (@U_ID !='') THEN
		SET @ROLES = '';
        SELECT GROUP_CONCAT(TURA_UserRole) INTO @ROLES FROM tbl_userrole_assign AS TURA 
        INNER JOIN tbl_userrole_mstr AS TURM ON TURA.TURA_UserRole=TURM.TURM_UserRole 
        WHERE TURA.TURA_User=@U_ID AND TURA.TURA_UserRole_Active=TRUE;
        
        SELECT TURM_URole_Dashboard into @userDashboad FROM tbl_userrole_mstr WHERE TURM_UserRole = (SELECT TURA_UserRole FROM tbl_userrole_assign WHERE TURA_User = @U_ID limit 1);
        
    END IF;
    
    SELECT TUM_User, TUM_User_Name, TUM_User_Password, TUM_User_Mobile, TUM_User_Email, TUM_User_Status, @ROLES,@userDashboad FROM tbl_user_mstr WHERE TUM_User_Name=@p_userName AND TUM_User_Status=TRUE;
    
END IF;

###############################################################################################################################


IF (actionType='getUserMenu') THEN
    
    SET @val = actionValue;
    SET  @vsql= concat('
    select
    M.TMM_Modl_Name,
    M.TMM_Module_Logo,
	F.TFM_Functn_Name,
    A.TAM_Actvty_Name,
    A.TAM_Actvty_URL,
    A.TAM_Actvty_SidebarVisible
	FROM tbl_roleactivity_assign as role
    inner join tbl_module_mstr as M on M.TMM_Module=role.TRAM_Module
    inner join tbl_function_mstr as F on F.TFM_Function=role.TRAM_Function
    inner join tbl_acitivity_mstr as A on A.TAM_Activity=role.TRAM_Activity
    where role.TRAM_UserRole in (',@val,') AND A.TAM_Actvty_DeletedFlag=false ORDER BY M.TMM_Module,F.TFM_Function, A.TAM_Activity ');

	
	prepare prastmt from @vsql;
	execute prastmt;
    #select @vsql;

END IF;

###############################################################################################################################


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-12 11:07:57
