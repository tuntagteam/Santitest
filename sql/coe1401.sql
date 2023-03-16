-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 02:09 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `coe1401`
--

CREATE TABLE `coe1401` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coe1401`
--

INSERT INTO `coe1401` (`id`, `name`, `phone`, `email`, `country`, `region`) VALUES
(1, 'Lane Cotton', '1-715-938-3424', 'consectetuer.ipsum@hotmail.com', 'Mexico', 'Northern Cape'),
(2, 'Hedwig Dejesus', '1-834-213-5573', 'pellentesque.habitant.morbi@icloud.org', 'South Korea', 'South Sulawesi'),
(3, 'Ulric Wilkins', '1-207-274-5473', 'ante.iaculis@protonmail.net', 'Belgium', 'Viken'),
(4, 'Otto Harrison', '(251) 260-1036', 'orci.consectetuer.euismod@yahoo.net', 'Indonesia', 'Alberta'),
(5, 'Herman Randolph', '1-647-261-3625', 'tincidunt.congue@hotmail.edu', 'Austria', 'Kharkiv oblast'),
(6, 'Zelda Parrish', '1-896-238-1605', 'etiam.imperdiet@yahoo.edu', 'Colombia', 'Madrid'),
(7, 'Armando Bishop', '1-547-881-5542', 'purus.ac@yahoo.ca', 'Ireland', 'Irkutsk Oblast'),
(8, 'Brent Mejia', '1-169-425-2166', 'dolor.vitae.dolor@aol.edu', 'Peru', 'Cordillera Administrative Region'),
(9, 'Noelani Perkins', '(936) 745-7438', 'ultrices.sit.amet@yahoo.edu', 'Canada', 'Bahia'),
(10, 'Reagan Sawyer', '1-983-632-5594', 'nec.imperdiet@protonmail.com', 'Russian Federation', 'Gauteng'),
(11, 'Harriet Hickman', '(251) 932-4755', 'lorem.ut.aliquam@icloud.net', 'France', 'Pernambuco'),
(12, 'Sawyer Farmer', '1-612-336-1752', 'lacus.quisque.purus@yahoo.net', 'South Africa', 'Lai Châu'),
(13, 'Holmes Hoffman', '1-825-156-6006', 'mauris.rhoncus@aol.com', 'Nigeria', 'Huila'),
(14, 'Ursa Odom', '1-974-553-4435', 'auctor@outlook.net', 'United Kingdom', 'Borno'),
(15, 'Gay Dean', '(456) 854-2231', 'at.lacus@icloud.net', 'Poland', 'Huád?ng'),
(16, 'Carlos Middleton', '(717) 326-1553', 'nonummy@aol.org', 'Singapore', 'Tennessee'),
(17, 'Francesca Cohen', '1-252-825-5446', 'fringilla.donec@protonmail.com', 'Netherlands', 'South Chungcheong'),
(18, 'Chase Porter', '(724) 683-5681', 'nunc.quis@aol.ca', 'United Kingdom', 'Chelyabinsk Oblast'),
(19, 'Ryder Raymond', '(336) 856-6015', 'vitae.erat.vel@hotmail.edu', 'Russian Federation', 'Bahia'),
(20, 'Chantale Perkins', '1-314-357-4126', 'non@hotmail.ca', 'Indonesia', 'Kurgan Oblast'),
(21, 'Helen Craft', '(838) 528-9083', 'malesuada.vel@google.ca', 'Pakistan', 'Aragón'),
(22, 'Ira Hyde', '(630) 825-1598', 'tempus.scelerisque@hotmail.com', 'Indonesia', 'West-Vlaanderen'),
(23, 'Steven Pugh', '1-238-391-2031', 'orci.luctus@google.couk', 'United Kingdom', 'Biobío'),
(24, 'Tate Pickett', '(726) 796-3801', 'quis.tristique@outlook.couk', 'Mexico', 'Haryana'),
(25, 'Jason Salazar', '1-520-961-1687', 'dui.quis.accumsan@icloud.couk', 'Costa Rica', 'Bourgogne'),
(26, 'Kevin Whitaker', '1-252-764-4888', 'dui.semper.et@icloud.com', 'Australia', 'Akwa Ibom'),
(27, 'Tanisha Charles', '(752) 768-6953', 'purus@aol.ca', 'Austria', 'Berlin'),
(28, 'Bree Bass', '1-462-718-7088', 'ac.orci.ut@yahoo.org', 'Sweden', 'Sachsen'),
(29, 'Gabriel Spears', '1-888-554-7173', 'nulla.tincidunt@yahoo.net', 'Spain', 'Tennessee'),
(30, 'Geraldine Haynes', '1-918-483-2144', 'donec.fringilla@google.ca', 'Chile', 'Vestfold og Telemark'),
(31, 'Jackson Byers', '(835) 176-7142', 'fusce.dolor.quam@yahoo.couk', 'Belgium', 'Drenthe'),
(32, 'Kennan Collins', '1-731-525-0541', 'lorem.eu@aol.couk', 'Philippines', 'South Jeolla'),
(33, 'Natalie Bowen', '1-947-754-7197', 'elit.pede@protonmail.couk', 'Italy', 'North Island'),
(34, 'Kessie Williamson', '(888) 796-7577', 'interdum.sed@hotmail.ca', 'Peru', 'Kaduna'),
(35, 'Joseph Craig', '1-447-858-8533', 'molestie.dapibus@google.net', 'Germany', 'Bursa'),
(36, 'Cyrus Patton', '1-404-714-8531', 'dictum@hotmail.net', 'Ireland', 'Connacht'),
(37, 'Devin Melton', '1-363-427-4302', 'blandit.nam@yahoo.edu', 'China', 'Limón'),
(38, 'Grant Tillman', '(859) 805-9754', 'massa@icloud.couk', 'Poland', 'Phú Th?'),
(39, 'David Heath', '(620) 737-2615', 'nisl@outlook.org', 'New Zealand', 'Illinois'),
(40, 'Henry Gilliam', '(376) 286-0050', 'justo.nec@icloud.edu', 'Austria', 'Pomorskie'),
(41, 'Shoshana Barr', '1-443-627-1840', 'sed.pede@yahoo.org', 'Colombia', 'Western Australia'),
(42, 'Melvin Henderson', '1-240-477-5655', 'tellus.aenean.egestas@yahoo.net', 'Germany', 'Riau Islands'),
(43, 'Cassandra Duffy', '1-564-844-1017', 'porttitor@protonmail.edu', 'India', 'Kayseri'),
(44, 'Jaden Rich', '(279) 551-5823', 'adipiscing@hotmail.net', 'Italy', 'Dumfriesshire'),
(45, 'Kenneth Medina', '(578) 734-0901', 'molestie.sodales@google.org', 'South Africa', 'Central Region'),
(46, 'Juliet Lawson', '(314) 440-2665', 'proin@google.couk', 'Ukraine', 'Brussels Hoofdstedelijk Gewest'),
(47, 'Iris Harding', '1-744-978-5383', 'et.ultrices.posuere@yahoo.com', 'Germany', 'D?ngb?i'),
(48, 'Vernon Walker', '1-292-222-3372', 'hendrerit.id.ante@protonmail.org', 'South Korea', 'Prince Edward Island'),
(49, 'Charde Simmons', '1-819-431-4611', 'auctor.mauris@aol.com', 'Sweden', 'Maranhão'),
(50, 'Iris Sawyer', '(687) 744-0915', 'ultrices.mauris.ipsum@icloud.edu', 'Netherlands', 'Auvergne');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coe1401`
--
ALTER TABLE `coe1401`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coe1401`
--
ALTER TABLE `coe1401`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
