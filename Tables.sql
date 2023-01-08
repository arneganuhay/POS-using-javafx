-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2021 at 09:16 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gma_accountingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `active`
--

CREATE TABLE `active` (
  `id` int(11) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adminpagelogs`
--

CREATE TABLE `adminpagelogs` (
  `id` int(11) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categorylist`
--

CREATE TABLE `categorylist` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cosrecords`
--

CREATE TABLE `cosrecords` (
  `id` int(11) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `historylogs`
--

CREATE TABLE `historylogs` (
  `id` int(11) NOT NULL,
  `historyRecord` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `historypayable`
--

CREATE TABLE `historypayable` (
  `id` int(11) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventorylist`
--

CREATE TABLE `inventorylist` (
  `ProductCode` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Price` decimal(13,2) NOT NULL,
  `Quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventorymain_logs`
--

CREATE TABLE `inventorymain_logs` (
  `id` int(11) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `namelist`
--

CREATE TABLE `namelist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `paidAmount` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payablelist`
--

CREATE TABLE `payablelist` (
  `id` int(11) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `item code` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `total` decimal(13,2) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payablesales`
--

CREATE TABLE `payablesales` (
  `id` int(11) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `paidtotal` decimal(13,2) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recordtransaction`
--

CREATE TABLE `recordtransaction` (
  `Id` int(11) NOT NULL,
  `Date_created` varchar(255) DEFAULT NULL,
  `ItemCode` int(11) NOT NULL,
  `Item` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` decimal(13,2) NOT NULL,
  `Total` decimal(13,2) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stockinout`
--

CREATE TABLE `stockinout` (
  `id` int(11) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `itemCode` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TransactionCode` int(11) NOT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `ItemCode` int(255) NOT NULL,
  `Item` varchar(255) NOT NULL,
  `Quantity` int(255) NOT NULL,
  `Price` decimal(13,2) NOT NULL,
  `Total` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `UserType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Address`, `Contact`, `Email`, `Gender`, `Username`, `Password`, `DOB`, `UserType`) VALUES
(41, 'Arnold Tagudin Ganuhay', 'brgy. sto nino tugbok district davao city', '09195904247', 'arneganuhay@gmail.com', 'Male', 'arne1445', 'super911', '1994-12-21', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_login_logs`
--

CREATE TABLE `user_login_logs` (
  `id` int(11) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active`
--
ALTER TABLE `active`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminpagelogs`
--
ALTER TABLE `adminpagelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorylist`
--
ALTER TABLE `categorylist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cosrecords`
--
ALTER TABLE `cosrecords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historylogs`
--
ALTER TABLE `historylogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historypayable`
--
ALTER TABLE `historypayable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventorylist`
--
ALTER TABLE `inventorylist`
  ADD PRIMARY KEY (`ProductCode`);

--
-- Indexes for table `inventorymain_logs`
--
ALTER TABLE `inventorymain_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `namelist`
--
ALTER TABLE `namelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payablelist`
--
ALTER TABLE `payablelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payablesales`
--
ALTER TABLE `payablesales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recordtransaction`
--
ALTER TABLE `recordtransaction`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `stockinout`
--
ALTER TABLE `stockinout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TransactionCode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_login_logs`
--
ALTER TABLE `user_login_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active`
--
ALTER TABLE `active`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;

--
-- AUTO_INCREMENT for table `adminpagelogs`
--
ALTER TABLE `adminpagelogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `categorylist`
--
ALTER TABLE `categorylist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cosrecords`
--
ALTER TABLE `cosrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `historylogs`
--
ALTER TABLE `historylogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `historypayable`
--
ALTER TABLE `historypayable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `inventorylist`
--
ALTER TABLE `inventorylist`
  MODIFY `ProductCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1029;

--
-- AUTO_INCREMENT for table `inventorymain_logs`
--
ALTER TABLE `inventorymain_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `namelist`
--
ALTER TABLE `namelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `payablelist`
--
ALTER TABLE `payablelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `payablesales`
--
ALTER TABLE `payablesales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `recordtransaction`
--
ALTER TABLE `recordtransaction`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `stockinout`
--
ALTER TABLE `stockinout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TransactionCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=710;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `user_login_logs`
--
ALTER TABLE `user_login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=847;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
