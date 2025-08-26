-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.11.0.7065
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for real_data_indonesia
CREATE DATABASE IF NOT EXISTS `real_data_indonesia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `real_data_indonesia`;

-- Dumping structure for table real_data_indonesia.jabatan
CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table real_data_indonesia.jabatan: ~5 rows (approximately)
INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
	(1, 'CEO'),
	(2, 'Marketing'),
	(3, 'Engineer'),
	(4, 'Project Manager'),
	(5, 'Network Quality Monitoring');

-- Dumping structure for table real_data_indonesia.karyawan
CREATE TABLE IF NOT EXISTS `karyawan` (
  `id_karyawan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_karyawan` varchar(50) DEFAULT NULL,
  `id_jabatan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_karyawan`),
  KEY `id_jabatan` (`id_jabatan`),
  CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table real_data_indonesia.karyawan: ~13 rows (approximately)
INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `id_jabatan`) VALUES
	(1, 'Pa bimbi', 1),
	(2, 'Pa Andi', 2),
	(3, 'Mega', 2),
	(4, 'Ramadhan', 3),
	(5, 'Yusrandi', 3),
	(6, 'Nindia', 4),
	(7, 'Clarista', 4),
	(8, 'Aditya', 5),
	(9, 'Alif', 5),
	(10, 'Anggia', 5),
	(11, 'Dwi', 5),
	(12, 'Zula', 5),
	(13, 'Farhan', 5);

-- Dumping structure for table real_data_indonesia.karyawan_project
CREATE TABLE IF NOT EXISTS `karyawan_project` (
  `id_karyawan` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  PRIMARY KEY (`id_karyawan`,`id_project`),
  KEY `id_project` (`id_project`),
  CONSTRAINT `karyawan_project_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`),
  CONSTRAINT `karyawan_project_ibfk_2` FOREIGN KEY (`id_project`) REFERENCES `project` (`id_project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table real_data_indonesia.karyawan_project: ~14 rows (approximately)
INSERT INTO `karyawan_project` (`id_karyawan`, `id_project`) VALUES
	(1, 1),
	(1, 2),
	(4, 1),
	(4, 2),
	(5, 1),
	(5, 2),
	(6, 1),
	(7, 2),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 2),
	(12, 2),
	(13, 2);

-- Dumping structure for table real_data_indonesia.project
CREATE TABLE IF NOT EXISTS `project` (
  `id_project` int(11) NOT NULL AUTO_INCREMENT,
  `nama_project` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_project`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table real_data_indonesia.project: ~2 rows (approximately)
INSERT INTO `project` (`id_project`, `nama_project`) VALUES
	(1, 'SMBC INDONESIA'),
	(2, 'PEGADAIAN');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
