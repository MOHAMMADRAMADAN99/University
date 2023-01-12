-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221103.3a7b77d22e
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 07:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `ID` int(11) NOT NULL,
  `GroupName` varchar(40) NOT NULL,
  `ClassRoom` varchar(40) NOT NULL,
  `Professor` varchar(20) NOT NULL,
  `DateExam` varchar(50) NOT NULL,
  `Time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`ID`, `GroupName`, `ClassRoom`, `Professor`, `DateExam`, `Time`) VALUES
(4, 'FIRAT', 'YAZILIM', 'MUHAMMED', '5/18/22', '14:00'),
(5, 'HARVARD', 'TIP', 'SAMI', '5/27/22', '16:00'),
(14, 'Ahmed', 'mustafa', 'Bilala', '6/15/22', '15:00');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `ID` int(11) NOT NULL,
  `StudentName` varchar(40) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `BookName` varchar(20) NOT NULL,
  `DeliveryDate` varchar(50) NOT NULL,
  `ReturnDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`ID`, `StudentName`, `Phone`, `BookName`, `DeliveryDate`, `ReturnDate`) VALUES
(3, 'KOUSY', '05487932564', 'Fkir insanlar', '5/2/22', '6/24/22'),
(4, 'MAMDUH AKKAD', '05478996325', '?eytanlar', '5/11/22', '7/6/22'),
(5, 'MAHMMUD HINDAVI', '05478935644', 'Kumarbaz', '5/16/22', '5/16/22');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(40) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('1', '1'),
('MUHAMMED RAMADAN', '7014');

-- --------------------------------------------------------

--
-- Table structure for table `sportclub`
--

CREATE TABLE `sportclub` (
  `ID` int(40) NOT NULL,
  `SubscriberName` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Sports` varchar(20) NOT NULL,
  `RegistrationDate` varchar(30) NOT NULL,
  `ExpiryDate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sportclub`
--

INSERT INTO `sportclub` (`ID`, `SubscriberName`, `Phone`, `Sports`, `RegistrationDate`, `ExpiryDate`) VALUES
(15, 'furkan', 'ayub', 'Football', '6/20/22', '6/23/22'),
(16, 'hasan', 'akkad', 'Basketball', '6/14/22', '7/1/22'),
(17, 'muhammed', 'ismail', 'Fitness', '6/2/22', '7/31/22'),
(19, 'hmed salim', '6469156', 'swimming', '6/7/22', '7/1/22'),
(20, 'bk', 'kbb', 'Basketball', '7/6/22', '7/29/22');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `CIN` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Job` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`ID`, `FirstName`, `LastName`, `CIN`, `Email`, `Phone`, `Job`) VALUES
(3, 'SAMI', 'SUMMAK', '5644541', 'sami9@gmail.com', '05395185252', 'Professor'),
(4, 'majid', 'witey', '1546548', 'witey98@gmail.com', '05478931456', 'Employee'),
(5, 'IYAD', 'HAMMADI', '5646168461', 'iyad99@gmail.com', '05478931452', 'Technician');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `CIN` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `FirstName`, `LastName`, `CIN`, `Email`, `Phone`) VALUES
(6, 'Muhammed', 'Ramadan', '9966558745', 'muhammedr66@gmail.com', '05698746235'),
(7, 'Muhammed', 'Hacmuhammed', '47584368', 'hac88@gmail.com', '05789463225'),
(8, 'Muhammed', 'Barad', '48721567', 'barad34@gmail.com', '05478356452'),
(12, 'habis', 'kkkkkk', '4686468', 'ijokhnouh', '45646874');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sportclub`
--
ALTER TABLE `sportclub`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sportclub`
--
ALTER TABLE `sportclub`
  MODIFY `ID` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
