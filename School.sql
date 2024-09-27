-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2021 at 05:36 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` int(11) NOT NULL,
  `ANAME` varchar(150) NOT NULL,
  `APASS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `ANAME`, `APASS`) VALUES
(1, 'Abhii', '12345'),
(2, 'Dheeraj', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CID` int(11) NOT NULL,
  `CNAME` varchar(150) NOT NULL,
  `CSEC` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CID`, `CNAME`, `CSEC`) VALUES
(1, 'VII', 'A'),
(2, 'VII', 'B'),
(3, 'VIII', 'A'),
(4, 'VIII', 'B'),
(5, 'IX', 'A'),
(6, 'IX', 'B'),
(7, 'X', 'A'),
(8, 'X', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `EID` int(11) NOT NULL,
  `ENAME` varchar(150) NOT NULL,
  `ETYPE` varchar(150) NOT NULL,
  `EDATE` varchar(150) NOT NULL,
  `SESSION` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`EID`, `ENAME`, `ETYPE`, `EDATE`, `SESSION`, `CLASS`, `SUB`) VALUES
(1, 'Term Exam', 'II-Term', '14-08-2018', 'FN', 'VIII', 'Kannada'),
(3, 'Term Exam', 'II-Term', '10-09-2018', 'FN', 'III', 'English'),
(4, 'Term Exam', 'II-Term', '18-09-2018', 'AN', 'V', 'Maths'),
(5, 'Term Exam', 'III-Term', '19-11-2018', 'FN', 'VIII', 'Tamil');

-- --------------------------------------------------------

--
-- Table structure for table `hclass`
--

CREATE TABLE `hclass` (
  `HID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `CLA` varchar(150) NOT NULL,
  `SEC` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hclass`
--

INSERT INTO `hclass` (`HID`, `TID`, `CLA`, `SEC`, `SUB`) VALUES
(1, 1, 'VIII', 'A', 'English'),
(2, 4, 'X', 'B', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `MID` int(11) NOT NULL,
  `REGNO` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  `RESULT` varchar(150) NOT NULL,
  `MARK` varchar(150) NOT NULL,
  `TERM` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`MID`, `REGNO`, `SUB`,`RESULT`,`MARK`, `TERM`, `CLASS`) VALUES
(1, 'S101', 'Kannada','P', '95', 'I-Term', 'VII'),
(2, 'S102', 'English', 'F','25', 'II-Term', 'VIII'),
(3, 'S103', 'Social Science', 'P','75', 'III-Term', 'IX');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `TID` int(11) NOT NULL,
  `TNAME` varchar(150) NOT NULL,
  `TPASS` varchar(150) NOT NULL,
  `QUAL` varchar(150) NOT NULL,
  `SAL` varchar(150) NOT NULL,
  `PNO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `PADDR` text NOT NULL,
  `IMG` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`TID`, `TNAME`, `TPASS`, `QUAL`, `SAL`, `PNO`, `MAIL`, `PADDR`, `IMG`) VALUES
(1, 'Karunakar', '1234', 'MCA', '15000', '9876543210', 'karunakar@gmail.com', 'Karwar', 'staff/1.jpg'),
(2, 'Chandra', '123', 'MBA', '15000', '9876543210', 'chandra@gmail.com', 'Bangalore', 'staff/2.jpg'),
(3, 'Tulsi', '1234', 'MCA', '20000', '9876543210', 'tulsi@gmail.com', 'Cuttack', 'staff/3.jpg'),
(4, 'Manikyam', '1234', 'BTECH', '30000', '9876543210', 'manikyam@gmail.com', 'Cuttack', 'staff/4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `RNO` varchar(150) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `FNAME` varchar(150) NOT NULL,
  `DOB` varchar(150) NOT NULL,
  `GEN` varchar(150) NOT NULL,
  `PHO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `ADDR` text NOT NULL,
  `SCLASS` varchar(150) NOT NULL,
  `SSEC` varchar(150) NOT NULL,
  `SIMG` varchar(150) NOT NULL,
  `TID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `RNO`, `NAME`, `FNAME`, `DOB`, `GEN`, `PHO`, `MAIL`, `ADDR`, `SCLASS`, `SSEC`, `SIMG`, `TID`) VALUES
(1, 'S101', 'Anitha', 'Ram', '17-10-2004', 'Female', '9874561230', 'pappa@gmail.com', 'Coorg', 'VII', 'C', 'student/1.jpg', 1),
(2, 'S102', 'Kalya', 'Ram', '19-11-2007', 'Female', '8529634710', 'grandma@gmail.com', 'Bangalore', 'VIII', 'A', 'student/2.jpg', 2),
(3, 'S103', 'Anotha', 'Ram', '17-10-2004', 'Female', '9874561230', 'pappa@gmail.com', 'Cpt', 'IX', 'C', 'student/1.jpg', 3),
(4, 'S104', 'Kabya', 'Ram', '19-11-2007', 'Female', '8529634710', 'grandma@gmail.com', 'Ckarawar', 'X', 'A', 'student/2.jpg', 4),
(5, 'S105', 'sunitha', 'Ram', '17-10-2004', 'Female', '9874561230', 'pappa@gmail.com', 'Coorg', 'VII', 'C', 'student/1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `SID` int(11) NOT NULL,
  `SNAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`SID`, `SNAME`) VALUES
(1, 'Kannada'),
(2, 'English'),
(3, 'Maths'),
(4, 'Social Science'),
(5, 'Science');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`EID`);

--
-- Indexes for table `hclass`
--
ALTER TABLE `hclass`
  ADD PRIMARY KEY (`HID`),
  ADD KEY `test` (`TID`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`SID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `EID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hclass`
--
ALTER TABLE `hclass`
  MODIFY `HID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hclass`
--
ALTER TABLE `hclass`
  ADD CONSTRAINT `test` FOREIGN KEY (`TID`) REFERENCES `staff` (`TID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
