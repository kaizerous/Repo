-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 27, 2015 at 01:09 PM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `AdventureDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADV_Command`
--

CREATE TABLE IF NOT EXISTS `ADV_Command` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdventureID` int(11) NOT NULL,
  `ActionID` int(11) NOT NULL,
  `Text` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_Event`
--

CREATE TABLE IF NOT EXISTS `ADV_Event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdventureID` int(11) NOT NULL,
  `EventTypeID` int(11) NOT NULL,
  `ActionID` int(11) NOT NULL,
  `String1` text NOT NULL,
  `String2` text NOT NULL,
  `String3` text NOT NULL,
  `Value1` int(11) NOT NULL,
  `Value2` int(11) NOT NULL,
  `Value3` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_EventPrereq`
--

CREATE TABLE IF NOT EXISTS `ADV_EventPrereq` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EventID` int(11) NOT NULL,
  `RequiredID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_Location`
--

CREATE TABLE IF NOT EXISTS `ADV_Location` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdventureID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_LocationConnection`
--

CREATE TABLE IF NOT EXISTS `ADV_LocationConnection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FromID` int(11) NOT NULL,
  `Direction` varchar(5) NOT NULL,
  `ToID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_LocationThing`
--

CREATE TABLE IF NOT EXISTS `ADV_LocationThing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ThingID` int(11) NOT NULL,
  `LocationID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ADV_Thing`
--

CREATE TABLE IF NOT EXISTS `ADV_Thing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ThingTypeID` int(11) NOT NULL,
  `AdventureID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `IsStackable` int(11) NOT NULL,
  `Value` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MST_Action`
--

CREATE TABLE IF NOT EXISTS `MST_Action` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Description` int(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MST_Adventure`
--

CREATE TABLE IF NOT EXISTS `MST_Adventure` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MST_EventType`
--

CREATE TABLE IF NOT EXISTS `MST_EventType` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `MST_ThingType`
--

CREATE TABLE IF NOT EXISTS `MST_ThingType` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `STA_Event`
--

CREATE TABLE IF NOT EXISTS `STA_Event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StateID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL,
  `Order` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `STA_LocationThing`
--

CREATE TABLE IF NOT EXISTS `STA_LocationThing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SaveID` int(11) NOT NULL,
  `ThingID` int(11) NOT NULL,
  `LocationID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `STA_Save`
--

CREATE TABLE IF NOT EXISTS `STA_Save` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AdventureID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `LocationID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
