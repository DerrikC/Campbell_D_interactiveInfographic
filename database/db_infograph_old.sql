-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 02, 2019 at 02:50 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_infograph`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genes`
--

CREATE TABLE `tbl_genes` (
  `ID` int(11) NOT NULL,
  `diagram` text NOT NULL,
  `info1` text NOT NULL,
  `info2` text NOT NULL,
  `info3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genes`
--

INSERT INTO `tbl_genes` (`ID`, `diagram`, `info1`, `info2`, `info3`) VALUES
(1, 'geneDiagram.jpeg', '1 in 4 (25%)\r\nchance of having\r\nSickle Cell Disease\r\n', '1 in 2 (50%)\r\nchance of being a carrier\r\n(but not having Sickle Cell Disease)\r\n', '1 in 4 (25%)\r\nchance of not having\r\nSickle Cell Disease or being a carrier\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_infograph`
--

CREATE TABLE `tbl_infograph` (
  `ID` int(11) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `details` text,
  `image` varchar(100) DEFAULT NULL,
  `numbers` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_infograph`
--

INSERT INTO `tbl_infograph` (`ID`, `title`, `details`, `image`, `numbers`) VALUES
(1, 'discoverer', 'The first description of a Sickle-shaped\r\nblood cell was made by Dr. James Herrick\r\nin 1910.\r\n', 'fact1Img.svg', NULL),
(2, 'mosquitoes', 'It has been hypothesized that the sickle cell\r\ndisease remained because it was evolutionarily\r\nadvantageous against malaria. The unique\r\nsickle cell shaped blood cells make carriers.\r\n', 'fact2Image.svg', NULL),
(3, 'genetics', 'When both parents are\r\ncarriers of Sickle Cell\r\nDisease a copy of the\r\ngene is passed on.\r\nA = Normal gene\r\nS = Sickle cell gene\r\n', 'fact3Img.svg', NULL),
(4, 'geneticGraphic', NULL, 'geneticDesc.svg', NULL),
(5, 'stat1', 'of the world’s\r\npopulation\r\ncarries genes\r\nresponsible\r\nfor sickle cell\r\ndisease.\r\n', NULL, '5%\r\n'),
(6, 'stat2', 'is the expected\r\nglobal increase of\r\nsickle cell anemia\r\ncases by 2050\r\n', NULL, '30%\r\n'),
(7, 'stat3', '\r\nbirths per year will be impacted by sickle\r\nanemia given rough world estimates.\r\nMost common among people with ancestry\r\nfrom sub-Saharan Africa, India, Saudi Arabia\r\nand Mediterranean countries.\r\n', NULL, '300,000\r\n'),
(8, 'stat4', 'of children born with\r\nsickle cell disease\r\nwill die within the\r\nfirst 5 years of life.\r\n', NULL, '90%');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sidefacts`
--

CREATE TABLE `tbl_sidefacts` (
  `ID` int(11) NOT NULL,
  `discoverer` text,
  `genetics` text,
  `mosquitoes` text,
  `stat1` varchar(20) DEFAULT NULL,
  `statDesc` text,
  `stat2` varchar(20) DEFAULT NULL,
  `stat2Desc` text,
  `stat3` varchar(20) DEFAULT NULL,
  `stat3Desc` text,
  `stat4` varchar(20) DEFAULT NULL,
  `stat4Desc` text,
  `image` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sidefacts`
--

INSERT INTO `tbl_sidefacts` (`ID`, `discoverer`, `genetics`, `mosquitoes`, `stat1`, `statDesc`, `stat2`, `stat2Desc`, `stat3`, `stat3Desc`, `stat4`, `stat4Desc`, `image`) VALUES
(1, 'The first description of a Sickle-shaped\r\nblood cell was made by Dr. James Herrick\r\nin 1910.\r\n', 'When both parents are\r\ncarriers of Sickle Cell\r\nDisease a copy of the\r\ngene is passed on.\r\nA = Normal gene\r\nS = Sickle cell gene\r\n', 'It has been hypothesized that the sickle cell disease remained because it was evolutionary advantageous against malaria. The unique sickle cell shaped blood cells make carriers more resistant to malaria parasites that would attack a normal blood cell.\r\n', '5%', 'of the world’s\r\npopulation\r\ncarries genes\r\nresponsible\r\nfor sickle cell\r\ndisease.\r\n', '30%', 'is the expected\r\nglobal increase of\r\nsickle cell anemia\r\ncases by 2050\r\n', '300,000', 'births per year will be impacted by sickle\r\nanemia given rough world estimates.\r\nMost common among people with ancestry\r\nfrom sub-Saharan Africa, India, Saudi Arabia and Mediterranean countries.\r\n', '90%', 'of children born with\r\nsickle cell disease\r\nwill die within the\r\nfirst 5 years of life.\r\n', 'geneDiagram.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_worldimpact`
--

CREATE TABLE `tbl_worldimpact` (
  `ID` int(11) NOT NULL,
  `numbers` text,
  `details` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_worldimpact`
--

INSERT INTO `tbl_worldimpact` (`ID`, `numbers`, `details`) VALUES
(1, '5%\r\n\r\n', 'of the world’s\r\npopulation\r\ncarries genes\r\nresponsible\r\nfor sickle cell\r\ndisease.\r\n'),
(2, '30%\r\n', 'is the expected\r\nglobal increase of\r\nsickle cell anemia\r\ncases by 2050.'),
(3, '90%\r\n', 'of children born with\r\nsickle cell disease\r\nwill die within the\r\nfirst 5 years of life.\r\n'),
(4, '300,000\r\n', 'births per year will be impacted by sickle\r\nanemia given rough world estimates.\r\nMost common among people with ancestry\r\nfrom sub-Saharan Africa, India, Saudi Arabia\r\nand Mediterranean countries.\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genes`
--
ALTER TABLE `tbl_genes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_infograph`
--
ALTER TABLE `tbl_infograph`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `tbl_sidefacts`
--
ALTER TABLE `tbl_sidefacts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_worldimpact`
--
ALTER TABLE `tbl_worldimpact`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genes`
--
ALTER TABLE `tbl_genes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_infograph`
--
ALTER TABLE `tbl_infograph`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_sidefacts`
--
ALTER TABLE `tbl_sidefacts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_worldimpact`
--
ALTER TABLE `tbl_worldimpact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
