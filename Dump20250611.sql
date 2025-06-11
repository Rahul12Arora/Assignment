CREATE DATABASE  IF NOT EXISTS `assignment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `assignment`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `customerdetails`
--

DROP TABLE IF EXISTS `customerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerdetails` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hashedPass` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerdetails`
--

LOCK TABLES `customerdetails` WRITE;
/*!40000 ALTER TABLE `customerdetails` DISABLE KEYS */;
INSERT INTO `customerdetails` VALUES (1,'Rahul Arora','rahul@gmail.com','0000000001','2025-06-06 21:40:26','$2b$10$u0.SZImVn6E9WD1weU1AMePs10fY2/ri4X/a/g73HbcI2v4auGSnW'),(2,'Aarav Sharma','aarav.sharma1@example.com','9000000001','2025-06-09 15:21:59','$2b$10$ja.6h/ftnrx69E7n5FNgpehhTTLezory6IHQzrXoFYqbt5dhaoTWe'),(3,'Priya Verma','priya.verma2@example.com','9000000002','2025-06-09 15:21:59','$2b$10$GE5TAmA5KMpRGEBWhtBcyOV5UjGRUhWIH85ODnvfRGc/n8qDbZDXS'),(4,'Rohan Gupta','rohan.gupta3@example.com','9000000003','2025-06-09 15:21:59','$2b$10$Q/.z.Sg4hlUsjsmJCr4QceF9BgLQj6vsCEbWFYdpDU1U/YA8WWd0.'),(5,'Sneha Patel','sneha.patel4@example.com','9000000004','2025-06-09 15:21:59','$2b$10$S41UdV11G9JNFGxaFBvboOMHSmTG4D8P04D5.3wwwi1mtbUkM2slO'),(6,'Vikram Singh','vikram.singh5@example.com','9000000005','2025-06-09 15:21:59','$2b$10$z5hzb3o/obp3HpPqSnlqieuAAKyOMOfRftMOySmh4yOrwhdPVlMce'),(7,'Kavya Mehra','kavya.mehra6@example.com','9000000006','2025-06-09 15:21:59','$2b$10$JzagRfSwtkVhLIkng7k9S.27TXJr/ofEgwSZtR.SZhB9NKaZlHR1G'),(8,'Vivaan Jain','vivaan.jain7@example.com','9000000007','2025-06-09 15:21:59','$2b$10$eBuOl8mgY3m5ZGqd4hOTq./zBdfBlYcpY3izWLCmN0qTzTRxYnSxu'),(9,'Ananya Agarwal','ananya.agarwal8@example.com','9000000008','2025-06-09 15:21:59','$2b$10$teGQfp.yrEZ.fMMx5.e99uKT2q6N1e3XDSOJ3csegW2vlg08p/Tlq'),(10,'Sai Reddy','sai.reddy9@example.com','9000000009','2025-06-09 15:21:59','$2b$10$C1oeUt1zV0LqIdfAs6U0Ye0nRMo.VCqYFhjLxKJBFdZXTWXqJnaEa'),(11,'Reyansh Nair','reyansh.nair10@example.com','9000000010','2025-06-09 15:21:59','$2b$10$s9uv19CeqiSoGl6SPt09RuUAnXIRcBjggFurScez00kHYUDoYRUnm'),(12,'Aditi Chopra','aditi.chopra11@example.com','9000000011','2025-06-09 15:21:59','$2b$10$az6m9QhMp1TXX41.dE9WYO74ZMfzAUfcsje1MVLD2J5uLA8nlCYIW'),(13,'Krishna Joshi','krishna.joshi12@example.com','9000000012','2025-06-09 15:21:59','$2b$10$v0GgoghvkdJS8rTonyuFIe5huemeBJfGnA18FoEtfuAwnx7ndaWum'),(14,'Isha Kapoor','isha.kapoor13@example.com','9000000013','2025-06-09 15:21:59','$2b$10$UsbXRZS.9ZePXXE4P73WyOEHCaqBDTTaMFmCSUyG5nryJKBm0GhlO'),(15,'Riya Bansal','riya.bansal14@example.com','9000000014','2025-06-09 15:21:59','$2b$10$hM/uIWf17BticPsPKt/RPuVmCKW6HiuQvPKYvpLxJzQGYej49NVyu'),(16,'Pooja Malhotra','pooja.malhotra15@example.com','9000000015','2025-06-09 15:21:59','$2b$10$hQmqg8oEwAXfOc.yweBT.Owe9Xec2aT2uLIPKmkA2mn0gslgE3dem'),(17,'Kavya Desai','kavya.desai16@example.com','9000000016','2025-06-09 15:21:59','$2b$10$dCoBkfViF4C8HXoa/7ThDOraTu/ys9s9uc/WjflGsxfHPxauTQUJe'),(18,'Saanvi Yadav','saanvi.yadav17@example.com','9000000017','2025-06-09 15:21:59','$2b$10$3Ee9tV8PBiZm2F7QqMqcbOMnsrpjUipUHVKmxPZ3dbF/tluVTVWOm'),(19,'Diya Saxena','diya.saxena18@example.com','9000000018','2025-06-09 15:21:59','$2b$10$s4o9nzyUL2zXK5K7HdV1Dudp6yF9QVtd0I1GGvtoL9pUDlYSyM4Im'),(20,'Ishaan Dubey','ishaan.dubey19@example.com','9000000019','2025-06-09 15:21:59','$2b$10$7BpKflfQnY2kAan4O0guDeXRlKsiM683BMEZ6HkNARZufpRxc1GSa'),(21,'Arjun Mehra','arjun.mehra20@example.com','9000000020','2025-06-09 15:21:59','$2b$10$WbBLRWc/D0TUtx5XZ1zNEuhKT4gyGnVORdBaxotgJ.UQ9VoSaPJYG'),(22,'Vivaan Kapoor','vivaan.kapoor21@example.com','9000000021','2025-06-09 15:21:59','$2b$10$HDjwDwnw11jxs2fctxo35u0dAHp7yjROd0K6UX9rL1PSf4.XVAAo.'),(23,'Ananya Jain','ananya.jain22@example.com','9000000022','2025-06-09 15:21:59','$2b$10$wtE1tqSl3/krHIMeLDK9Su3wthei6LQDnPcMiT3SrFcXsFH0qK1GG'),(24,'Sai Agarwal','sai.agarwal23@example.com','9000000023','2025-06-09 15:21:59','$2b$10$FDkKiDfeklkbeKfna76bO..xBBQgGH/3GQkxwr6OL0WxmXxLZ3EJW'),(25,'Reyansh Reddy','reyansh.reddy24@example.com','9000000024','2025-06-09 15:21:59','$2b$10$4U.GgvzCt8jKex6ZOhO1XumohtqI3CwrM.RjvWNrRJTEB17vGdvA.'),(26,'Aditi Nair','aditi.nair25@example.com','9000000025','2025-06-09 15:21:59','$2b$10$Sfhs1sUP9hqhuW5Vlu414uixtEi6IodWzdQsmcmlHRgEUj6771AH.'),(27,'Krishna Chopra','krishna.chopra26@example.com','9000000026','2025-06-09 15:21:59','$2b$10$uyKm8FX7GR8YvhGC3Wx54uqa/1FS.5nGNRvtmXHdxXcV5oVpqPDa2'),(28,'Isha Joshi','isha.joshi27@example.com','9000000027','2025-06-09 15:21:59','$2b$10$JNeOc.dJwqUIjQAzdLAive.ctbPKwwQZpb.5O3b3k/XWqV/f7uMxy'),(29,'Riya Kapoor','riya.kapoor28@example.com','9000000028','2025-06-09 15:21:59','$2b$10$nqUH9qvTwVTDiSZCvwq7TuWy4WfxIrk2Ld309xFVnjhC/r4mWjDXu'),(30,'Pooja Bansal','pooja.bansal29@example.com','9000000029','2025-06-09 15:21:59','$2b$10$PLrbewMpzsuwJRF1rTeFtOoMYfFycCQ.h7.a97YfxOOX75YH27nue'),(31,'Kavya Malhotra','kavya.malhotra30@example.com','9000000030','2025-06-09 15:21:59','$2b$10$yCc29itFLWx82P/ZQQagV./a2AZXdIAmpOQ9B.KkrK4RWlfDJ.COS'),(32,'Saanvi Desai','saanvi.desai31@example.com','9000000031','2025-06-09 15:21:59','$2b$10$xFlBZc65crwj0AM8awXp7OK5zMrR1aMbji/T4B2K7ytdeEwZ8so5q'),(33,'Diya Yadav','diya.yadav32@example.com','9000000032','2025-06-09 15:21:59','$2b$10$JP0i9k0sKtl3gWsOWaaN5e7w8EXV2f9PWzCPjZQ60I8BehQPOuwWy'),(34,'Ishaan Saxena','ishaan.saxena33@example.com','9000000033','2025-06-09 15:21:59','$2b$10$qCxuJHckqE.ONa5R1xJhFeF3kluSZQy0WfYbKHMiAgiuGjGSxkKmq'),(35,'Arjun Dubey','arjun.dubey34@example.com','9000000034','2025-06-09 15:21:59','$2b$10$44wo/oB6ORaJXRBDf0y/neVpdSB3GSK6q3ik.2/2XVe04OVVoxYcW'),(36,'Aarav Verma','aarav.verma35@example.com','9000000035','2025-06-09 15:21:59','$2b$10$l1oq2j/CHZmc3jMUPcMlkezwy8KT2p7ImzsG3QrbQTehbN3DDrfUW'),(37,'Priya Gupta','priya.gupta36@example.com','9000000036','2025-06-09 15:21:59','$2b$10$JnnVhHOqiJmphQnxHkA30OGHZcnF8JrxRUwicWyrBy0Lu0E/3JOMi'),(38,'Rohan Patel','rohan.patel37@example.com','9000000037','2025-06-09 15:21:59','$2b$10$4WmfgBiDTrqCn0nGulPwHOQjmoqMLW5BkqhUlgUy9oHpLXxWJ8qRq'),(39,'Sneha Singh','sneha.singh38@example.com','9000000038','2025-06-09 15:21:59','$2b$10$Ubip81wm9CRbwQgjfnSWe.E/qKY92cZGorbD1dgkFtzWoUgamq1r.'),(40,'Vikram Mehra','vikram.mehra39@example.com','9000000039','2025-06-09 15:21:59','$2b$10$tmFCfv1k.TNSLtNUrzsZ7uhYX7Xjr1apZFGWBa91lmsZS1cmi9Hn.'),(41,'Kavya Jain','kavya.jain40@example.com','9000000040','2025-06-09 15:21:59','$2b$10$H2Oic/RJfdxOb3t.Vjlb1edUAqcwsFgiOj/pMmfhjbnTMZMqzTK0e'),(42,'Vivaan Agarwal','vivaan.agarwal41@example.com','9000000041','2025-06-09 15:21:59','$2b$10$97SR1CKTytOsOZN5BDC9puXbO5rrZ/w64ymJ.KmrBk/lGJhAfahO.'),(43,'Ananya Reddy','ananya.reddy42@example.com','9000000042','2025-06-09 15:21:59','$2b$10$UKmvT9qBEou.YaUWPHABtOMbxVwiVes0YBH3/Re9Ntl8N3S9yvqDS'),(44,'Sai Nair','sai.nair43@example.com','9000000043','2025-06-09 15:21:59','$2b$10$aUxCD/lCD6vVREGPyC3T6.HrbiNbx5GChNPKFKtgfLdRViZTxQCpi'),(45,'Reyansh Chopra','reyansh.chopra44@example.com','9000000044','2025-06-09 15:21:59','$2b$10$.A40qmiC3RRQbNHFswiZBuK7VTittJlB9AhMneSMNUXAlnHzlAm52'),(46,'Aditi Joshi','aditi.joshi45@example.com','9000000045','2025-06-09 15:21:59','$2b$10$NhhIYM7Y37LUPuJEw1xyxeDFVMpgP6xgWObhhPYtm9ac0QBgkqH0.'),(47,'Krishna Kapoor','krishna.kapoor46@example.com','9000000046','2025-06-09 15:21:59','$2b$10$jQ8hD0/IPCYfr.h36eUA5u0OAtBZHq3/pDQcB2TjPfE.8b4qCMk82'),(48,'Isha Bansal','isha.bansal47@example.com','9000000047','2025-06-09 15:21:59','$2b$10$ytAgwvoS/ucB7JJanKcvsurXfdDQ97vBLewGGlx1pw.UIFzP.oTMu'),(49,'Riya Malhotra','riya.malhotra48@example.com','9000000048','2025-06-09 15:21:59','$2b$10$XBRPSfJF47NhzNc8sjg2qelmTTtzksuwFhO4yyYZf67yCqCAlZbJu'),(50,'Pooja Desai','pooja.desai49@example.com','9000000049','2025-06-09 15:21:59','$2b$10$QcbfM1Es1vm1vqczOhtO5.sK2J2GW3h9Kfp8V4L9tFpnOq7p4jWLa'),(51,'Kavya Yadav','kavya.yadav50@example.com','9000000050','2025-06-09 15:21:59','$2b$10$ykePNE.M12GysIcDU8LF..xBJIgQTKhoQhvxS9Z/tK783wJWfHNoK'),(52,'Saanvi Saxena','saanvi.saxena51@example.com','9000000051','2025-06-09 15:21:59','$2b$10$XEs51gFdIZNJbT/dcX4Up.lgy67dghWONyHPAKqgmRiCCIEz/3w8m'),(53,'Diya Dubey','diya.dubey52@example.com','9000000052','2025-06-09 15:21:59','$2b$10$HWN2Jx8Y1h8N67RkFwhGduu/lR3V65DwVoYkYkvUgb2Q.ys.IYzQS'),(54,'Ishaan Mehra','ishaan.mehra53@example.com','9000000053','2025-06-09 15:21:59','$2b$10$5glpo2I/QlGrZPxzEarmQelm8Es98PQ2rg1Bo129gN8wmR1A/36s2'),(55,'Arjun Jain','arjun.jain54@example.com','9000000054','2025-06-09 15:21:59','$2b$10$szTwH.GkRX90pSDEhK6jPeZqAC6wJlzONq0jxte1.MnC0HDa1QsnS'),(56,'Aarav Agarwal','aarav.agarwal55@example.com','9000000055','2025-06-09 15:21:59','$2b$10$jhlQZL1/33tuU.R8uOiFQeiMCoJD76KE5DmUxoqzC2koK4wQ7EU2y'),(57,'Priya Reddy','priya.reddy56@example.com','9000000056','2025-06-09 15:21:59','$2b$10$LjEkE4bHff5AHntb.pdi5ubLds6KjSHLHp9R7KBMgCcH7pedNlhEW'),(58,'Rohan Nair','rohan.nair57@example.com','9000000057','2025-06-09 15:21:59','$2b$10$NsZoIEoau1GWSUh1Q9XkiOTuRo3bO.lcn1grlxMyZnBRg5HiMNo/O'),(59,'Sneha Chopra','sneha.chopra58@example.com','9000000058','2025-06-09 15:21:59','$2b$10$XmokHG67Kcpb5Ez8M7wa8eMlV66Mya4r37y.N7wqzK1cfu9CPCeNy'),(60,'Vikram Joshi','vikram.joshi59@example.com','9000000059','2025-06-09 15:21:59','$2b$10$DFnCVjXQjgT3Jl7uwAqZY.5FcrOpFWAvlokJfg7Zbi1Ve1XkwEXdq'),(61,'Kavya Kapoor','kavya.kapoor60@example.com','9000000060','2025-06-09 15:21:59','$2b$10$uyjjkLsP1a9NqNdG30UaI.kRwYkh9UmexcRGDP7xOMb.cLLIc.WMu'),(62,'Vivaan Bansal','vivaan.bansal61@example.com','9000000061','2025-06-09 15:21:59','$2b$10$qTGe0fwpPVXCwfISumm9a.HEzeOV2itsE.Kgb5d5PiqHHprn/e8n2'),(63,'Ananya Malhotra','ananya.malhotra62@example.com','9000000062','2025-06-09 15:21:59','$2b$10$EZMACoi/BPDc3Cvhci9IQepsWqtN4/DXTw8aLs.9gTcY93CSNHkRS'),(64,'Sai Desai','sai.desai63@example.com','9000000063','2025-06-09 15:21:59','$2b$10$x2ZEcLuduFu2uW4Tiii6uuZ/bxXwEymY17jZGto8.Y2JbeVaNNepS'),(65,'Reyansh Yadav','reyansh.yadav64@example.com','9000000064','2025-06-09 15:21:59','$2b$10$JZJx5rJvVLqkk/QlgRiAqungpOiuYjqpgWwJhE21FtKRYIkfFvl.q'),(66,'Aditi Saxena','aditi.saxena65@example.com','9000000065','2025-06-09 15:21:59','$2b$10$qpDjuad7jbvAT9hf4wcte.B8foXl5DbOHNjOVWknffaQzHgm3QmFO'),(67,'Krishna Dubey','krishna.dubey66@example.com','9000000066','2025-06-09 15:21:59','$2b$10$bLqJM8Vdw7LeM4x6dq1Ss.WAKHsdRaqoi6aa0aT/RMAAnvzgD/YAC'),(68,'Isha Mehra','isha.mehra67@example.com','9000000067','2025-06-09 15:21:59','$2b$10$Bm3glotLyZSjKhmHtcsWqe0vTGBWn7DShgGIGKBwwhgEcN.4IFNte'),(69,'Riya Jain','riya.jain68@example.com','9000000068','2025-06-09 15:21:59','$2b$10$V/9HNxi07IFkOE7uIv5g5OIJuiLu3VdZ0WPf22TcObUiXW2vUgRam'),(70,'Pooja Agarwal','pooja.agarwal69@example.com','9000000069','2025-06-09 15:21:59','$2b$10$UIVe.RyRMo9o/YOKiqo2Ge7pBhbA1A53b.lhLXvo9MXoSN73z.G96'),(71,'Kavya Reddy','kavya.reddy70@example.com','9000000070','2025-06-09 15:21:59','$2b$10$HlkDz1ChoItrXopnLT6PBuZOm9qExKbB02FmpZ9IVi34fHJyacIPy'),(72,'Saanvi Nair','saanvi.nair71@example.com','9000000071','2025-06-09 15:21:59','$2b$10$yAafpAWS8WE0DdZ6aB8D1OmhZ4PqIimaYBgU0REIZ3ntZznY0b56q'),(73,'Diya Chopra','diya.chopra72@example.com','9000000072','2025-06-09 15:21:59','$2b$10$csWJILZkNcQ4gXkcQi/QSepyHtabJ98pbigOdoVFbg7UvgbaQpiZu'),(74,'Ishaan Joshi','ishaan.joshi73@example.com','9000000073','2025-06-09 15:21:59','$2b$10$Vi5JpPnri1YdXF3RM8K4f.IoiZpsWRMWgd.edhUNQEfH0QU.5OTia'),(75,'Arjun Kapoor','arjun.kapoor74@example.com','9000000074','2025-06-09 15:21:59','$2b$10$1h/a7Pl83MgycSokizmvp.rLETWk.GjZ8lVvZ7zfjaCApTIoT6oJ.'),(76,'Aarav Bansal','aarav.bansal75@example.com','9000000075','2025-06-09 15:21:59','$2b$10$EtZQnrcMXWf/G1HuOCsOQeqQT81/fHY1KB8FFSfkLGuWOTfnK8DX6'),(77,'Priya Malhotra','priya.malhotra76@example.com','9000000076','2025-06-09 15:21:59','$2b$10$xS3z/z0Izu6X8eHBt1uuou5Ve6qDhaRy82XdPWkCw03YjyjmiMBge'),(78,'Rohan Desai','rohan.desai77@example.com','9000000077','2025-06-09 15:21:59','$2b$10$tgRHsOGIZQcfx2v35n4EXeEPF9hRQGvfblqtKUhcJWynaQypQsuwy'),(79,'Sneha Yadav','sneha.yadav78@example.com','9000000078','2025-06-09 15:21:59','$2b$10$hKbf6GPrERKsIl3eG.tb5et9TTxwzuOvlcKn.zS8eGftU2K2wVTS6'),(80,'Vikram Saxena','vikram.saxena79@example.com','9000000079','2025-06-09 15:21:59','$2b$10$PB.RjNBgRjb3ZYFGjVpnJOoZq8wg9KlLy1B./FwvdORwJR3b2BsfC'),(81,'Kavya Dubey','kavya.dubey80@example.com','9000000080','2025-06-09 15:21:59','$2b$10$K.m5UJURTgG5pWv0f8vJPOljZzDH3c4tbRZVRd5rj6LPvTPNVI7Cm'),(82,'Vivaan Mehra','vivaan.mehra81@example.com','9000000081','2025-06-09 15:21:59','$2b$10$KgxVdmJyf6Arod897aRhh.32J6E8ePve/hupYd4scD1FZc1retA02'),(83,'Ananya Jain','ananya.jain82@example.com','9000000082','2025-06-09 15:21:59','$2b$10$GKGDq3KwDhhzk236RvBRM..BjSuslUTjAZ7m80pQEQpWKcsrWqB4i'),(84,'Sai Agarwal','sai.agarwal83@example.com','9000000083','2025-06-09 15:21:59','$2b$10$EcWr9fXM12YwPozK4zeEqe0XCt9JedbRPpWoYfvpClLvP8kbXKRAi'),(85,'Reyansh Reddy','reyansh.reddy84@example.com','9000000084','2025-06-09 15:21:59','$2b$10$hLRuqG1w5smkQGTLLKBLsOS1JvKu0yYT3WWIhLRqCKfxt/dw8Tyya'),(86,'Aditi Nair','aditi.nair85@example.com','9000000085','2025-06-09 15:21:59','$2b$10$zSF5lRxQgfwbhRNh628lqe8Ix9LWAsrxr/65LC64bqTJa2aBVWUYe'),(87,'Krishna Chopra','krishna.chopra86@example.com','9000000086','2025-06-09 15:21:59','$2b$10$PcAV7cxCNrCn.m25lGodR.CaY8MK.DwltLWXvv5kJBMgr.wctakYW'),(88,'Isha Joshi','isha.joshi87@example.com','9000000087','2025-06-09 15:21:59','$2b$10$yJHA8fWYzWnx2.bsRwmiyO/v6zlN.7NoUcX5FlNYNYQQ/t7wwptA2'),(89,'Riya Kapoor','riya.kapoor88@example.com','9000000088','2025-06-09 15:21:59','$2b$10$F50qEpzfN2Qnv5U25IVlNesVV4ZLQq9QQ2Vv03.evHX8ba0pa5l0G'),(90,'Pooja Bansal','pooja.bansal89@example.com','9000000089','2025-06-09 15:21:59','$2b$10$FenA6aaHiQguAbJ8ado5ge.5H/t.0ir2HDBpZEP2NliTWK/mI/f0O'),(91,'Kavya Malhotra','kavya.malhotra90@example.com','9000000090','2025-06-09 15:21:59','$2b$10$VzvtCw.AaIAihZC8WIBJh.KBLB5vTAju3X4Y2cNkIxKbgHB67iioa'),(92,'Saanvi Desai','saanvi.desai91@example.com','9000000091','2025-06-09 15:21:59','$2b$10$n6FaDwBKcayboSRnjfDMkO0aNTMd..uf.LhCdbG2iE7w/FWTTlyvO'),(93,'Diya Yadav','diya.yadav92@example.com','9000000092','2025-06-09 15:21:59','$2b$10$IPHzxEnaJSHxo/JTk8EZ3uOxkeG2EBWOJUtg7WfjCnu9PHsaTvV.y'),(94,'Ishaan Saxena','ishaan.saxena93@example.com','9000000093','2025-06-09 15:21:59','$2b$10$TF8OWk7sMyrfVy9G9vP4AORFbxfllHJy2iE2cbAvLdy3XJsybANli'),(95,'Arjun Dubey','arjun.dubey94@example.com','9000000094','2025-06-09 15:21:59','$2b$10$0Z3vyfz399j9VJ2na4nfVu7c4BGAEY8J0WJUOLUmEExBsnzNJaAfK'),(96,'Aarav Verma','aarav.verma95@example.com','9000000095','2025-06-09 15:21:59','$2b$10$tUOIzVkPCGjX/BNBpZlQC.Ph1QV0FDcEiav98e4kz0XpBbYpuAMBK'),(97,'Priya Gupta','priya.gupta96@example.com','9000000096','2025-06-09 15:21:59','$2b$10$mzGIC1Juz.OypM9o7/TElumpPU8ONWLaYa/ZISWMCokU4SYlJ7tCe'),(98,'Rohan Patel','rohan.patel97@example.com','9000000097','2025-06-09 15:21:59','$2b$10$fGmQTRJyBt9alHLISnt7Q.RNJGMLkyJxUkEaG9k.CGjMWbYV2mZAK'),(99,'Sneha Singh','sneha.singh98@example.com','9000000098','2025-06-09 15:21:59',NULL),(100,'Vikram Mehra','vikram.mehra99@example.com','9000000099','2025-06-09 15:21:59','$2b$10$lmagcZZ8ZygFO12/Dm9Kg.XaArqSGGt5brJmw3K22jD1sV/HFlu7O'),(101,'Kavya Jain','kavya.jain100@example.com','9000000100','2025-06-09 15:21:59','$2b$10$yhma1eX40c.Ess.FfrFoAurqUrc.jNg6pUlDyCA3PSvoPG6EllJaS'),(103,'test','test@gmail.com','0000000002','2025-06-10 20:21:32','$2b$10$wA7KDywowyepFgo6gXz0ruBCTo43zq8hEQ/.xULiI1G888uy4c2X2');
/*!40000 ALTER TABLE `customerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `make`
--

DROP TABLE IF EXISTS `make`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `make` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `make` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make`
--

LOCK TABLES `make` WRITE;
/*!40000 ALTER TABLE `make` DISABLE KEYS */;
INSERT INTO `make` VALUES (1,'Toyota','2025-06-09 15:43:42'),(2,'Honda','2025-06-09 15:43:42'),(3,'Ford','2025-06-09 15:43:42'),(4,'Chevrolet','2025-06-09 15:43:42'),(5,'Nissan','2025-06-09 15:43:42'),(6,'Hyundai','2025-06-09 15:43:42'),(7,'Kia','2025-06-09 15:43:42'),(8,'Volkswagen','2025-06-09 15:43:42'),(9,'BMW','2025-06-09 15:43:42'),(10,'Mercedes-Benz','2025-06-09 15:43:42'),(11,'Audi','2025-06-09 15:43:42'),(12,'Mazda','2025-06-09 15:43:42'),(13,'Subaru','2025-06-09 15:43:42'),(14,'Jeep','2025-06-09 15:43:42'),(15,'Lexus','2025-06-09 15:43:42'),(16,'Dodge','2025-06-09 15:43:42'),(17,'Ram','2025-06-09 15:43:42'),(18,'GMC','2025-06-09 15:43:42'),(19,'Tesla','2025-06-09 15:43:42'),(20,'Volvo','2025-06-09 15:43:42'),(21,'Jaguar','2025-06-09 15:43:42'),(22,'Land Rover','2025-06-09 15:43:42'),(23,'Porsche','2025-06-09 15:43:42'),(24,'Mini','2025-06-09 15:43:42'),(25,'Fiat','2025-06-09 15:43:42'),(26,'Mitsubishi','2025-06-09 15:43:42'),(27,'Acura','2025-06-09 15:43:42'),(28,'Infiniti','2025-06-09 15:43:42'),(29,'Lincoln','2025-06-09 15:43:42'),(30,'Buick','2025-06-09 15:43:42'),(31,'Cadillac','2025-06-09 15:43:42'),(32,'Chrysler','2025-06-09 15:43:42'),(33,'Genesis','2025-06-09 15:43:42'),(34,'Alfa Romeo','2025-06-09 15:43:42'),(35,'Suzuki','2025-06-09 15:43:42'),(36,'Peugeot','2025-06-09 15:43:42'),(37,'Renault','2025-06-09 15:43:42'),(38,'Skoda','2025-06-09 15:43:42'),(39,'Seat','2025-06-09 15:43:42'),(40,'Saab','2025-06-09 15:43:42'),(41,'Isuzu','2025-06-09 15:43:42'),(42,'Hummer','2025-06-09 15:43:42'),(43,'Pontiac','2025-06-09 15:43:42'),(44,'Saturn','2025-06-09 15:43:42'),(45,'Scion','2025-06-09 15:43:42'),(46,'Smart','2025-06-09 15:43:42'),(47,'Oldsmobile','2025-06-09 15:43:42'),(48,'Geo','2025-06-09 15:43:42'),(49,'Daewoo','2025-06-09 15:43:42'),(50,'Opel','2025-06-09 15:43:42'),(51,'car test brand','2025-06-10 21:53:43'),(52,'car test brand 2','2025-06-10 22:56:42');
/*!40000 ALTER TABLE `make` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `model` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'Corolla','2025-06-09 15:45:35'),(2,'Civic','2025-06-09 15:45:35'),(3,'F-150','2025-06-09 15:45:35'),(4,'Silverado','2025-06-09 15:45:35'),(5,'Altima','2025-06-09 15:45:35'),(6,'Elantra','2025-06-09 15:45:35'),(7,'Soul','2025-06-09 15:45:35'),(8,'Jetta','2025-06-09 15:45:35'),(9,'3 Series','2025-06-09 15:45:35'),(10,'C-Class','2025-06-09 15:45:35'),(11,'A4','2025-06-09 15:45:35'),(12,'CX-5','2025-06-09 15:45:35'),(13,'Outback','2025-06-09 15:45:35'),(14,'Wrangler','2025-06-09 15:45:35'),(15,'RX 350','2025-06-09 15:45:35'),(16,'Charger','2025-06-09 15:45:35'),(17,'1500','2025-06-09 15:45:35'),(18,'Sierra','2025-06-09 15:45:35'),(19,'Model 3','2025-06-09 15:45:35'),(20,'XC60','2025-06-09 15:45:35'),(21,'XE','2025-06-09 15:45:35'),(22,'Discovery','2025-06-09 15:45:35'),(23,'911','2025-06-09 15:45:35'),(24,'Cooper','2025-06-09 15:45:35'),(25,'500','2025-06-09 15:45:35'),(26,'Outlander','2025-06-09 15:45:35'),(27,'TLX','2025-06-09 15:45:35'),(28,'Q50','2025-06-09 15:45:35'),(29,'Navigator','2025-06-09 15:45:35'),(30,'Encore','2025-06-09 15:45:35'),(31,'Escalade','2025-06-09 15:45:35'),(32,'Pacifica','2025-06-09 15:45:35'),(33,'G80','2025-06-09 15:45:35'),(34,'Giulia','2025-06-09 15:45:35'),(35,'Swift','2025-06-09 15:45:35'),(36,'208','2025-06-09 15:45:35'),(37,'Clio','2025-06-09 15:45:35'),(38,'Octavia','2025-06-09 15:45:35'),(39,'Ibiza','2025-06-09 15:45:35'),(40,'9-3','2025-06-09 15:45:35'),(41,'D-Max','2025-06-09 15:45:35'),(42,'H2','2025-06-09 15:45:35'),(43,'G6','2025-06-09 15:45:35'),(44,'Aura','2025-06-09 15:45:35'),(45,'tC','2025-06-09 15:45:35'),(46,'Fortwo','2025-06-09 15:45:35'),(47,'Alero','2025-06-09 15:45:35'),(48,'Prizm','2025-06-09 15:45:35'),(49,'Lanos','2025-06-09 15:45:35'),(50,'Astra','2025-06-09 15:45:35'),(51,'car test model','2025-06-10 21:53:43'),(52,'car test model 2','2025-06-10 22:56:42');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicemanagement`
--

DROP TABLE IF EXISTS `servicemanagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicemanagement` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `customerDetails_id` int NOT NULL,
  `staffDetails_id` int NOT NULL,
  `vehicle_id` int NOT NULL,
  `serviceStatus_id` int NOT NULL,
  `timeEstimate` int DEFAULT NULL,
  `serviceType` varchar(200) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `serviceDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `customerDetails_id` (`customerDetails_id`),
  KEY `staffDetails_id` (`staffDetails_id`),
  KEY `vehicle_id` (`vehicle_id`),
  KEY `serviceStatus_id` (`serviceStatus_id`),
  CONSTRAINT `servicemanagement_ibfk_1` FOREIGN KEY (`customerDetails_id`) REFERENCES `customerdetails` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `servicemanagement_ibfk_2` FOREIGN KEY (`staffDetails_id`) REFERENCES `staffdetails` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `servicemanagement_ibfk_3` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `servicemanagement_ibfk_4` FOREIGN KEY (`serviceStatus_id`) REFERENCES `servicestatus` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicemanagement`
--

LOCK TABLES `servicemanagement` WRITE;
/*!40000 ALTER TABLE `servicemanagement` DISABLE KEYS */;
INSERT INTO `servicemanagement` VALUES (1,'2025-06-09 19:18:23',1,21,1,1,120,NULL,NULL,NULL),(2,'2025-06-09 19:18:23',2,22,2,2,90,NULL,NULL,NULL),(3,'2025-06-09 19:18:23',3,23,3,3,60,NULL,NULL,NULL),(4,'2025-06-09 19:18:23',4,24,4,4,180,NULL,NULL,NULL),(5,'2025-06-09 19:18:23',5,25,5,1,150,NULL,NULL,NULL),(6,'2025-06-09 19:18:23',6,21,6,2,110,NULL,NULL,NULL),(7,'2025-06-09 19:18:23',7,22,7,3,75,NULL,NULL,NULL),(8,'2025-06-09 19:18:23',8,23,8,4,200,NULL,NULL,NULL),(9,'2025-06-09 19:18:23',9,24,9,1,130,NULL,NULL,NULL),(10,'2025-06-09 19:18:23',10,25,10,2,95,NULL,NULL,NULL),(11,'2025-06-09 19:18:23',11,21,11,3,85,NULL,NULL,NULL),(12,'2025-06-09 19:18:23',12,22,12,4,170,NULL,NULL,NULL),(13,'2025-06-09 19:18:23',13,23,13,1,140,NULL,NULL,NULL),(14,'2025-06-09 19:18:23',14,24,14,2,100,NULL,NULL,NULL),(15,'2025-06-09 19:18:23',15,25,15,3,80,NULL,NULL,NULL),(16,'2025-06-09 19:18:23',16,21,16,4,160,NULL,NULL,NULL),(17,'2025-06-09 19:18:23',17,22,17,1,125,NULL,NULL,NULL),(18,'2025-06-09 19:18:23',18,23,18,2,105,NULL,NULL,NULL),(19,'2025-06-09 19:18:23',19,24,19,3,70,NULL,NULL,NULL),(20,'2025-06-09 19:18:23',20,25,20,4,190,NULL,NULL,NULL),(21,'2025-06-09 19:18:23',21,21,21,1,115,NULL,NULL,NULL),(22,'2025-06-09 19:18:23',22,22,22,2,135,NULL,NULL,NULL),(23,'2025-06-09 19:18:23',23,23,23,3,155,NULL,NULL,NULL),(24,'2025-06-09 19:18:23',24,24,24,4,145,NULL,NULL,NULL),(25,'2025-06-09 19:18:23',25,25,25,1,165,NULL,NULL,NULL),(26,'2025-06-09 19:18:23',26,21,26,2,185,NULL,NULL,NULL),(27,'2025-06-09 19:18:23',27,22,27,3,195,NULL,NULL,NULL),(28,'2025-06-09 19:18:23',28,23,28,4,175,NULL,NULL,NULL),(29,'2025-06-09 19:18:23',29,24,29,1,155,NULL,NULL,NULL),(30,'2025-06-09 19:18:23',30,25,30,2,135,NULL,NULL,NULL),(31,'2025-06-09 19:18:23',31,21,31,3,115,NULL,NULL,NULL),(32,'2025-06-09 19:18:23',32,22,32,4,95,NULL,NULL,NULL),(33,'2025-06-09 19:18:23',33,23,33,1,75,NULL,NULL,NULL),(34,'2025-06-09 19:18:23',34,24,34,2,65,NULL,NULL,NULL),(35,'2025-06-09 19:18:23',35,25,35,3,85,NULL,NULL,NULL),(36,'2025-06-09 19:18:23',36,21,36,4,105,NULL,NULL,NULL),(37,'2025-06-09 19:18:23',37,22,37,1,125,NULL,NULL,NULL),(38,'2025-06-09 19:18:23',38,23,38,2,145,NULL,NULL,NULL),(39,'2025-06-09 19:18:23',39,24,39,3,165,NULL,NULL,NULL),(40,'2025-06-09 19:18:23',40,25,40,4,185,NULL,NULL,NULL),(41,'2025-06-09 19:18:23',41,21,41,1,205,NULL,NULL,NULL),(42,'2025-06-09 19:18:23',42,22,42,2,225,NULL,NULL,NULL),(43,'2025-06-09 19:18:23',43,23,43,3,245,NULL,NULL,NULL),(44,'2025-06-09 19:18:23',44,24,44,4,265,NULL,NULL,NULL),(45,'2025-06-09 19:18:23',45,25,45,1,285,NULL,NULL,NULL),(46,'2025-06-09 19:18:23',46,21,46,2,305,NULL,NULL,NULL),(47,'2025-06-09 19:18:23',47,22,47,3,325,NULL,NULL,NULL),(48,'2025-06-09 19:18:23',48,23,48,4,345,NULL,NULL,NULL),(49,'2025-06-09 19:18:23',49,24,49,1,365,NULL,NULL,NULL),(50,'2025-06-09 19:18:23',50,25,50,2,385,NULL,NULL,NULL),(51,'2025-06-09 19:18:23',51,21,51,3,405,NULL,NULL,NULL),(52,'2025-06-09 19:18:23',52,22,52,4,425,NULL,NULL,NULL),(53,'2025-06-09 19:18:23',53,23,53,1,445,NULL,NULL,NULL),(54,'2025-06-09 19:18:23',54,24,54,2,465,NULL,NULL,NULL),(55,'2025-06-09 19:18:23',55,25,55,3,485,NULL,NULL,NULL),(56,'2025-06-09 19:18:23',56,21,56,4,505,NULL,NULL,NULL),(57,'2025-06-09 19:18:23',57,22,57,1,525,NULL,NULL,NULL),(58,'2025-06-09 19:18:23',58,23,58,2,545,NULL,NULL,NULL),(59,'2025-06-09 19:18:23',59,24,59,3,565,NULL,NULL,NULL),(60,'2025-06-09 19:18:23',60,25,60,4,585,NULL,NULL,NULL),(61,'2025-06-09 19:18:23',61,21,61,1,605,NULL,NULL,NULL),(62,'2025-06-09 19:18:23',62,22,62,2,625,NULL,NULL,NULL),(63,'2025-06-09 19:18:23',63,23,63,3,645,NULL,NULL,NULL),(64,'2025-06-09 19:18:23',64,24,64,4,665,NULL,NULL,NULL),(65,'2025-06-09 19:18:23',65,25,65,1,685,NULL,NULL,NULL),(66,'2025-06-09 19:18:23',66,21,66,2,705,NULL,NULL,NULL),(67,'2025-06-09 19:18:23',67,22,67,3,725,NULL,NULL,NULL),(68,'2025-06-09 19:18:23',68,23,68,4,745,NULL,NULL,NULL),(69,'2025-06-09 19:18:23',69,24,69,1,765,NULL,NULL,NULL),(70,'2025-06-09 19:18:23',70,25,70,2,785,NULL,NULL,NULL),(71,'2025-06-09 19:18:23',71,21,71,3,805,NULL,NULL,NULL),(72,'2025-06-09 19:18:23',72,22,72,4,825,NULL,NULL,NULL),(73,'2025-06-09 19:18:23',73,23,73,1,845,NULL,NULL,NULL),(74,'2025-06-09 19:18:23',74,24,74,2,865,NULL,NULL,NULL),(75,'2025-06-09 19:18:23',75,25,75,3,885,NULL,NULL,NULL),(76,'2025-06-09 19:18:23',76,21,76,4,905,NULL,NULL,NULL),(77,'2025-06-09 19:18:23',77,22,77,1,925,NULL,NULL,NULL),(78,'2025-06-09 19:18:23',78,23,78,2,945,NULL,NULL,NULL),(79,'2025-06-09 19:18:23',79,24,79,3,965,NULL,NULL,NULL),(80,'2025-06-09 19:18:23',80,25,80,4,985,NULL,NULL,NULL),(81,'2025-06-09 19:18:23',81,21,81,1,1005,NULL,NULL,NULL),(82,'2025-06-09 19:18:23',82,22,82,2,1025,NULL,NULL,NULL),(83,'2025-06-09 19:18:23',83,23,83,3,1045,NULL,NULL,NULL),(84,'2025-06-09 19:18:23',84,24,84,4,1065,NULL,NULL,NULL),(85,'2025-06-09 19:18:23',85,25,85,1,1085,NULL,NULL,NULL),(86,'2025-06-09 19:18:23',86,21,86,2,1105,NULL,NULL,NULL),(87,'2025-06-09 19:18:23',87,22,87,3,1125,NULL,NULL,NULL),(88,'2025-06-09 19:18:23',88,23,88,4,1145,NULL,NULL,NULL),(89,'2025-06-09 19:18:23',89,24,89,1,1165,NULL,NULL,NULL),(90,'2025-06-09 19:18:23',90,25,90,2,1185,NULL,NULL,NULL),(91,'2025-06-09 19:18:23',91,21,91,3,1205,NULL,NULL,NULL),(92,'2025-06-09 19:18:23',92,22,92,4,1225,NULL,NULL,NULL),(93,'2025-06-09 19:18:23',93,23,93,1,1245,NULL,NULL,NULL),(94,'2025-06-09 19:18:23',94,24,94,2,1265,NULL,NULL,NULL),(95,'2025-06-09 19:18:23',95,25,95,3,1285,NULL,NULL,NULL),(96,'2025-06-09 19:18:23',96,21,96,4,1305,NULL,NULL,NULL),(97,'2025-06-09 19:18:23',97,22,97,1,1325,NULL,NULL,NULL),(98,'2025-06-09 19:18:23',98,23,98,2,1345,NULL,NULL,NULL),(99,'2025-06-09 19:18:23',99,24,99,3,1365,NULL,NULL,NULL),(100,'2025-06-09 19:18:23',100,25,100,4,1385,NULL,NULL,NULL),(101,'2025-06-11 00:43:32',1,13,103,1,NULL,'Oil Change','Customer requested synthetic oil','2025-06-11 14:30:00');
/*!40000 ALTER TABLE `servicemanagement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicestatus`
--

DROP TABLE IF EXISTS `servicestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicestatus` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` enum('SCHEDULED','IN_PROGRESS','COMPLETED','CANCELLED') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicestatus`
--

LOCK TABLES `servicestatus` WRITE;
/*!40000 ALTER TABLE `servicestatus` DISABLE KEYS */;
INSERT INTO `servicestatus` VALUES (1,'SCHEDULED','2025-06-09 15:31:06'),(2,'IN_PROGRESS','2025-06-09 15:31:06'),(3,'COMPLETED','2025-06-09 15:31:06'),(4,'CANCELLED','2025-06-09 15:31:06');
/*!40000 ALTER TABLE `servicestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffdetails`
--

DROP TABLE IF EXISTS `staffdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffdetails` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `staffType_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) DEFAULT NULL,
  `hashedPass` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `staffType_id` (`staffType_id`),
  CONSTRAINT `staffdetails_ibfk_1` FOREIGN KEY (`staffType_id`) REFERENCES `stafftype` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffdetails`
--

LOCK TABLES `staffdetails` WRITE;
/*!40000 ALTER TABLE `staffdetails` DISABLE KEYS */;
INSERT INTO `staffdetails` VALUES (1,'Amit Sharma',1,'2025-06-09 16:16:35','amit.sharma@company.com','$2b$10$0NclPbpDPyFF7Q/0dEmkIe3WEWpRI1vTQRGLiKcpY06nAHvuYfiz6'),(2,'Priya Singh',1,'2025-06-09 16:16:35','priya.singh@company.com','$2b$10$BCqcEsgKg3dj0ZAN8NJ3UO6bcRRxoaaVb6UwJF6dcVX2oY8.BDe.S'),(3,'Rohit Verma',1,'2025-06-09 16:16:35','rohit.verma@company.com','$2b$10$x8Zt3Q5oWkBmrv5wXlCt0.HxF/rRmsvxvRSwb.dXsrwli5LUe1MSW'),(4,'Sneha Patel',1,'2025-06-09 16:16:35','sneha.patel@company.com','$2b$10$bAqWagSZSfZvKLUqupkx0uGuSNPEi3xI0Hy4E95DnB5itx1que0i2'),(5,'Vikram Gupta',1,'2025-06-09 16:16:35','vikram.gupta@company.com','$2b$10$Z256M5dl0vfgd7ASOtp1OOit/Gt33A0HZHdH6xoTP3BoLS4BOcdGu'),(6,'Kavya Mehra',1,'2025-06-09 16:16:35','kavya.mehra@company.com','$2b$10$/g0m8UO5xkYj0K1wo1q1KePNCec38qYN9EM0Xcr232B26kuAjJrFS'),(7,'Anil Kumar',1,'2025-06-09 16:16:35','anil.kumar@company.com','$2b$10$TQvyyaFwSUgM5jYvHCb5AOxXmgloZfur3etL57/rVhTD/Ra24krMy'),(8,'Sunita Joshi',1,'2025-06-09 16:16:35','sunita.joshi@company.com','$2b$10$5RhipKx4mCsJ8UHX8zEmreuqIP0CWhOY56rgiUKgOSywdhn106LRK'),(9,'Deepak Yadav',1,'2025-06-09 16:16:35','deepak.yadav@company.com','$2b$10$aoHHP19YnQPbCl/Vgx1YTO4siVhcovRMqHyVB/2FHNe7V271fo65K'),(10,'Meena Reddy',1,'2025-06-09 16:16:35','meena.reddy@company.com','$2b$10$lBdqvMHFab4wFlxwHuIr4eA.Ho4XhN.TAttqj7iAFr1AutjPoklDe'),(11,'Suresh Nair',1,'2025-06-09 16:16:35','suresh.nair@company.com','$2b$10$CdNZy2VRVFeFqCJEWOdkKekQsZiiLYDwLVjLERXJn7N2s0d.O8K1O'),(12,'Pooja Bansal',1,'2025-06-09 16:16:35','pooja.bansal@company.com','$2b$10$VrCEalDWPraBJlOx59.61O3irpfw1ctOliWGY0mZ5/4.TAfRMmf9C'),(13,'Rajesh Kapoor',1,'2025-06-09 16:16:35','rajesh.kapoor@company.com','$2b$10$i4MQSTyVnDY7lFUqhWrJnO7duDbPjGPftkHZhmhiW5fMBQIiF520i'),(14,'Neha Malhotra',1,'2025-06-09 16:16:35','neha.malhotra@company.com','$2b$10$LAhnFTysWdhzq3FUMnWIAOIkkfkODvJ.xtVf0kpqQqPE/z1SNj4o.'),(15,'Arjun Desai',1,'2025-06-09 16:16:35','arjun.desai@company.com','$2b$10$ALfzq9Q8ytlvcKxzfIaLx.XcCPE0ijTKzHYBi9YyFrF1lvMQfp7de'),(16,'Divya Saxena',1,'2025-06-09 16:16:35','divya.saxena@company.com','$2b$10$Fh4dmOsZdywYBhd7jKVZtOErdZUFAHcBt4ozsMSrRowZiIQoAD6/a'),(17,'Manish Dubey',1,'2025-06-09 16:16:35','manish.dubey@company.com','$2b$10$fA5zouLwzIMxIvdTRZReZ.c/6are5WWFNvzYRX9nlDGGDpikCl/sW'),(18,'Shweta Jain',1,'2025-06-09 16:16:35','shweta.jain@company.com','$2b$10$35IgAyUF92ow7o.Tjaquo.E9zMkEp3atTxcw8iJpUpCctRfDkku8a'),(19,'Nitin Agarwal',1,'2025-06-09 16:16:35','nitin.agarwal@company.com','$2b$10$WGkn69f5N1PpKXwreLVkvORnFeO38xk0.rEKGMliSA3eS6N6MtXZq'),(20,'Ritu Chawla',1,'2025-06-09 16:16:35','ritu.chawla@company.com','$2b$10$JfXB7Akl9jCLOBqqXIh1m.OvZpgmFtmtJY7AaRbqUpqXjw9HA4EIi'),(21,'Sanjay Sinha',2,'2025-06-09 16:16:35','sanjay.sinha@company.com','$2b$10$mJhKfOpAmxCfRf72gPlL8udeN3Hgd.kd7GQO/OwEtv1hG/P.PDJNW'),(22,'Asha Pillai',2,'2025-06-09 16:16:35','asha.pillai@company.com','$2b$10$zQkIWdvnkOX4lCEqAbUdRuutksA3yZ5UTJaFuO3Xt2qX8Zd8mHhOq'),(23,'Harish Rao',2,'2025-06-09 16:16:35','harish.rao@company.com','$2b$10$4g3qNYifUbxa0D67TmES0eG33WhzLmqgtapNgW4gADuTKoydyA76O'),(24,'Geeta Menon',2,'2025-06-09 16:16:35','geeta.menon@company.com','$2b$10$5CfrtHm6cBA3AG/JKUQmouEgdikz1C1Jh1FeaS.aF20oE9k9/N2NS'),(25,'Tarun Bhatt',2,'2025-06-09 16:16:35','tarun.bhatt@company.com','$2b$10$MOn3m.sr3iKn3fsDHH8u6ei9TuDQtDCV/xRg3fiU2vvb4wU7zE906');
/*!40000 ALTER TABLE `staffdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stafftype`
--

DROP TABLE IF EXISTS `stafftype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stafftype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` enum('MANAGER','MECHANIC') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stafftype`
--

LOCK TABLES `stafftype` WRITE;
/*!40000 ALTER TABLE `stafftype` DISABLE KEYS */;
INSERT INTO `stafftype` VALUES (1,'MANAGER','2025-06-09 15:27:16'),(2,'MECHANIC','2025-06-09 15:27:16');
/*!40000 ALTER TABLE `stafftype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `year` year NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `model_id` int NOT NULL,
  `make_id` int NOT NULL,
  `customerDetails_id` int NOT NULL,
  `VIN` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `VIN` (`VIN`),
  KEY `model_id` (`model_id`),
  KEY `make_id` (`make_id`),
  KEY `customerDetails_id` (`customerDetails_id`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`model_id`) REFERENCES `model` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`make_id`) REFERENCES `make` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vehicle_ibfk_3` FOREIGN KEY (`customerDetails_id`) REFERENCES `customerdetails` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,2018,'2025-06-09 18:47:19',1,1,1,'OZ3Q1ZL1P4'),(2,2019,'2025-06-09 18:47:19',2,2,2,'RV1K5HW5Z4'),(3,2020,'2025-06-09 18:47:19',3,3,3,'CE5I9QJ9O0'),(4,2017,'2025-06-09 18:47:19',4,4,4,'LD2B4CC1N1'),(5,2021,'2025-06-09 18:47:19',5,5,5,'CA8G6PY9W4'),(6,2016,'2025-06-09 18:47:19',6,6,6,'TK7K9JC3K0'),(7,2018,'2025-06-09 18:47:19',7,7,7,'EO2T8YG3G0'),(8,2019,'2025-06-09 18:47:19',8,8,8,'LB0W3YU1H1'),(9,2020,'2025-06-09 18:47:19',9,9,9,'RZ8K3TR0C4'),(10,2017,'2025-06-09 18:47:19',10,10,10,'DE4R9ZZ9Z9'),(11,2021,'2025-06-09 18:47:19',11,11,11,'ZX5H5CS3M4'),(12,2016,'2025-06-09 18:47:19',12,12,12,'XC7H3AZ8J1'),(13,2018,'2025-06-09 18:47:19',13,13,13,'VR7Y3VC0U9'),(14,2019,'2025-06-09 18:47:19',14,14,14,'IV0X3ER8B8'),(15,2020,'2025-06-09 18:47:19',15,15,15,'BT6W5WV5K2'),(16,2017,'2025-06-09 18:47:19',16,16,16,'WU2Y9TA7Y3'),(17,2021,'2025-06-09 18:47:19',17,17,17,'XO9G3XO0P7'),(18,2016,'2025-06-09 18:47:19',18,18,18,'FS8B8CY4I3'),(19,2018,'2025-06-09 18:47:19',19,19,19,'VA5Y9VK4D2'),(20,2019,'2025-06-09 18:47:19',20,20,20,'YW5Y2KG9E9'),(21,2020,'2025-06-09 18:47:19',21,21,21,'AL0C2CS1U3'),(22,2017,'2025-06-09 18:47:19',22,22,22,'IS5K4FO1A7'),(23,2021,'2025-06-09 18:47:19',23,23,23,'NK4A7RD7D5'),(24,2016,'2025-06-09 18:47:19',24,24,24,'GP2Q3PD9C7'),(25,2018,'2025-06-09 18:47:19',25,25,25,'MF4W8OI9U0'),(26,2019,'2025-06-09 18:47:19',26,26,26,'BA8L5ID5M7'),(27,2020,'2025-06-09 18:47:19',27,27,27,'CI3T7PS6E9'),(28,2017,'2025-06-09 18:47:19',28,28,28,'CT3T5LP6P0'),(29,2021,'2025-06-09 18:47:19',29,29,29,'EW8M0OS9M6'),(30,2016,'2025-06-09 18:47:19',30,30,30,'YR5U1NA5Y8'),(31,2018,'2025-06-09 18:47:19',31,31,31,'PH6G4HF1C0'),(32,2019,'2025-06-09 18:47:19',32,32,32,'BB0F9XT0A8'),(33,2020,'2025-06-09 18:47:19',33,33,33,'LO4J6CO4V5'),(34,2017,'2025-06-09 18:47:19',34,34,34,'MP5D9IT7L9'),(35,2021,'2025-06-09 18:47:19',35,35,35,'LK6B2EE2V3'),(36,2016,'2025-06-09 18:47:19',36,36,36,'IN6O9WR7N5'),(37,2018,'2025-06-09 18:47:19',37,37,37,'AN4X1XD9E2'),(38,2019,'2025-06-09 18:47:19',38,38,38,'LQ8I1QV1F6'),(39,2020,'2025-06-09 18:47:19',39,39,39,'OY9A1XW7A8'),(40,2017,'2025-06-09 18:47:19',40,40,40,'GS8X0SJ6A2'),(41,2021,'2025-06-09 18:47:19',41,41,41,'IS6E9ZF1Y2'),(42,2016,'2025-06-09 18:47:19',42,42,42,'SQ0I4GZ1Z2'),(43,2018,'2025-06-09 18:47:19',43,43,43,'IW3I4IF1Z4'),(44,2019,'2025-06-09 18:47:19',44,44,44,'MX1D1OD0S5'),(45,2020,'2025-06-09 18:47:19',45,45,45,'RO8T0XN7J5'),(46,2017,'2025-06-09 18:47:19',46,46,46,'NA5P3FV5B7'),(47,2021,'2025-06-09 18:47:19',47,47,47,'SG1Y3TV9A4'),(48,2016,'2025-06-09 18:47:19',48,48,48,'BZ7S2JZ8C0'),(49,2018,'2025-06-09 18:47:19',49,49,49,'DJ5K4GT0Z7'),(50,2019,'2025-06-09 18:47:19',50,50,50,'WB6G2IZ9X6'),(51,2020,'2025-06-09 18:47:19',1,1,51,'HR4J3UV7I2'),(52,2017,'2025-06-09 18:47:19',2,2,52,'NU3G3VF4W7'),(53,2021,'2025-06-09 18:47:19',3,3,53,'KQ9Z0FX9A2'),(54,2016,'2025-06-09 18:47:19',4,4,54,'GL5G7UU6T7'),(55,2018,'2025-06-09 18:47:19',5,5,55,'SH2O8UI2E1'),(56,2019,'2025-06-09 18:47:19',6,6,56,'IC4E4TL9G4'),(57,2020,'2025-06-09 18:47:19',7,7,57,'RZ8D2VK5I0'),(58,2017,'2025-06-09 18:47:19',8,8,58,'JP9U1IH4J4'),(59,2021,'2025-06-09 18:47:19',9,9,59,'JH4E6XM6Q3'),(60,2016,'2025-06-09 18:47:19',10,10,60,'WG6I7ZL3P7'),(61,2018,'2025-06-09 18:47:19',11,11,61,'BA9R4FV3N4'),(62,2019,'2025-06-09 18:47:19',12,12,62,'MD2Y9XR7N5'),(63,2020,'2025-06-09 18:47:19',13,13,63,'ZI6J8CA7O5'),(64,2017,'2025-06-09 18:47:19',14,14,64,'FL4C0CF7D4'),(65,2021,'2025-06-09 18:47:19',15,15,65,'XB6E8ND2O2'),(66,2016,'2025-06-09 18:47:19',16,16,66,'QI7W0OT0C2'),(67,2018,'2025-06-09 18:47:19',17,17,67,'CP7U7IN5C8'),(68,2019,'2025-06-09 18:47:19',18,18,68,'YF1E3HI7A7'),(69,2020,'2025-06-09 18:47:19',19,19,69,'MG8L7LY4E6'),(70,2017,'2025-06-09 18:47:19',20,20,70,'WI9V2YW4N4'),(71,2021,'2025-06-09 18:47:19',21,21,71,'OM8O3FY0K8'),(72,2016,'2025-06-09 18:47:19',22,22,72,'BS4B0WG6I7'),(73,2018,'2025-06-09 18:47:19',23,23,73,'XD0S5QK1R7'),(74,2019,'2025-06-09 18:47:19',24,24,74,'YH6G3GA3V9'),(75,2020,'2025-06-09 18:47:19',25,25,75,'KC3J8BT5O1'),(76,2017,'2025-06-09 18:47:19',26,26,76,'EI1R0ES0Y7'),(77,2021,'2025-06-09 18:47:19',27,27,77,'TR0D5FM8P5'),(78,2016,'2025-06-09 18:47:19',28,28,78,'BP7C1II6I6'),(79,2018,'2025-06-09 18:47:19',29,29,79,'KB9Q3UZ4J4'),(80,2019,'2025-06-09 18:47:19',30,30,80,'CF7E6RL1H0'),(81,2020,'2025-06-09 18:47:19',31,31,81,'MH8Q4GA3O8'),(82,2017,'2025-06-09 18:47:19',32,32,82,'OH7T6UB9Q3'),(83,2021,'2025-06-09 18:47:19',33,33,83,'QE0S4XH7A7'),(84,2016,'2025-06-09 18:47:19',34,34,84,'WX9E8UK6W5'),(85,2018,'2025-06-09 18:47:19',35,35,85,'YF1G7BB0G0'),(86,2019,'2025-06-09 18:47:19',36,36,86,'LB9P1CW1Y4'),(87,2020,'2025-06-09 18:47:19',37,37,87,'EQ7R2HP1V8'),(88,2017,'2025-06-09 18:47:19',38,38,88,'OI0D5KH2N8'),(89,2021,'2025-06-09 18:47:19',39,39,89,'MY2Q3SQ0K8'),(90,2016,'2025-06-09 18:47:19',40,40,90,'VU4Q0FZ2K2'),(91,2018,'2025-06-09 18:47:19',41,41,91,'DV6Z8HX7V0'),(92,2019,'2025-06-09 18:47:19',42,42,92,'RE8Y1RZ9R5'),(93,2020,'2025-06-09 18:47:19',43,43,93,'YY8L6BE7F7'),(94,2017,'2025-06-09 18:47:19',44,44,94,'IG2P1YJ9O0'),(95,2021,'2025-06-09 18:47:19',45,45,95,'JT6F9YB3T5'),(96,2016,'2025-06-09 18:47:19',46,46,96,'OF2U0CH0P7'),(97,2018,'2025-06-09 18:47:19',47,47,97,'VA5R7QX7Z6'),(98,2019,'2025-06-09 18:47:19',48,48,98,'EB7N3KU7K7'),(99,2020,'2025-06-09 18:47:19',49,49,99,'RB2Y0KW0W1'),(100,2017,'2025-06-09 18:47:19',50,50,100,'BW2N9BN3J6'),(101,1971,'2025-06-10 21:55:13',51,51,1,'IQ0N3HK1P5'),(102,1971,'2025-06-10 21:57:44',51,51,1,'IQ6N3HK1P5'),(103,1971,'2025-06-10 23:03:11',52,52,1,'IQ7N3HK1P5');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-11  6:48:32
