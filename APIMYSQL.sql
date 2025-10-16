-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2025 at 09:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `APIMYSQL`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `userUUID` varchar(36) NOT NULL,
  `roleID` tinyint(4) DEFAULT NULL,
  `timezoneID` int(11) NOT NULL DEFAULT 27,
  `loginType` enum('website','android','ios') NOT NULL DEFAULT 'website',
  `signupType` enum('twitter','facebook','website','others') NOT NULL DEFAULT 'website',
  `name` varchar(50) NOT NULL,
  `profilePic` varchar(120) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `countryID` int(11) NOT NULL DEFAULT 101,
  `mobileNo` varchar(20) NOT NULL COMMENT 'mobile number of gym owner',
  `address` varchar(1024) NOT NULL,
  `password` varchar(255) NOT NULL,
  `plainPassword` varchar(255) NOT NULL,
  `domainSubDomain` varchar(132) DEFAULT NULL,
  `ipAddress` varchar(20) DEFAULT NULL,
  `lastLogin` timestamp NULL DEFAULT NULL,
  `OTP` int(11) DEFAULT NULL,
  `otpSendTime` varchar(50) DEFAULT NULL,
  `deviceToken` varchar(100) DEFAULT NULL,
  `broswer` varchar(100) DEFAULT NULL,
  `browserVersion` varchar(100) DEFAULT NULL,
  `activationKey` varchar(200) DEFAULT NULL,
  `addedBy` int(11) DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isVerified` tinyint(2) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userUUID`, `roleID`, `timezoneID`, `loginType`, `signupType`, `name`, `profilePic`, `email`, `countryID`, `mobileNo`, `address`, `password`, `plainPassword`, `domainSubDomain`, `ipAddress`, `lastLogin`, `OTP`, `otpSendTime`, `deviceToken`, `broswer`, `browserVersion`, `activationKey`, `addedBy`, `updatedBy`, `createdAt`, `updatedAt`, `isVerified`, `status`) VALUES
(1, '205ef6d3-a269-4f3c-a033-aa3fe640', 1, 101, 'website', 'website', 'Automize Plus', NULL, 'automizeplus@gmail.com', 101, '9950697373', '16,Shree Ram nagar extension,nagal jaisa bhora jhotwara,Jaipur \r\nRajasthan', '$2a$10$Ehjm23WWn2EVWN2F5bBD8OnxBMm4JvG1U71D2asO/LGj.b28N/h/a', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-14 12:18:59', '2025-07-15 03:41:42', 0, 1),
(2, '908ef6d3-a269-4f3c-a033-bb3fe689', 2, 101, 'website', 'website', 'ABC', NULL, 'abctransporter@gmail.com', 101, '98756787', 'jaipur Rajasthan', '2320987654', '7654356789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-14 12:27:42', '2025-07-15 03:41:50', 0, 1),
(3, 'e3dd9e2b-ef0a-40df-b1eb-c79af4c8d85b', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$RXDHxL1/95mcxgUGSjf5xuXJmyf/mcHUoO9oNRo1fY1EjBvVoCfc6', '123456', NULL, '123.33.43.43', '2025-10-16 02:23:50', NULL, NULL, NULL, 'chrome', '54.9', NULL, 1, 1, '2025-07-17 11:11:49', '2025-10-16 07:53:50', 0, 1),
(4, '2c0c1c0f-7729-4520-bd1c-f82491b345c3', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$gr3a9RUg8URanazTTcCAbOx9TEBPJJpJDsMXDAdcQ5wa8O4x/7i76', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:13:48', '2025-07-17 11:13:48', 0, 1),
(5, 'd1adb0de-3e4e-4371-8204-deef03ee423c', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$3K9MaUWQItWtjEgAgeTtJulkRdmYwiTNjrbbNR8eG8K5Bnb9wRR0m', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:14:48', '2025-07-17 11:14:48', 0, 1),
(6, 'a232ec23-1561-4a73-af30-ae6a7d2db2e9', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$YEwguOyPBfx.I7CuybrlM.jh9THkxeU9l0rVFTv3KFLh8SIB96SDK', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:19:21', '2025-07-17 11:19:21', 0, 1),
(7, '756abdee-3093-425f-95ac-189fe89b998e', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$EbUNqK2fy/n1ieq3WdOLhuPblCDhxboWgK4tyqj/.8NoYppD2aGMm', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:25:31', '2025-07-17 11:25:31', 0, 1),
(8, '4b2d88db-0e1b-4dc4-b26e-6f85135825c7', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$pnM1tlZrENstw7qVX5ObMuwZVd5R8zQbf6Ev3/ILe4oTMNamPKkzK', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:25:43', '2025-07-17 11:25:43', 0, 1),
(9, 'dac54426-dd78-474a-a6d3-9a2bb607a640', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$OGxCm/a1Fy043W1izeCBv.GBxA39ESqSbTwKt9Zbk1SNfOiOS5YH2', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:27:01', '2025-07-17 11:27:01', 0, 1),
(10, 'bc671d64-26e0-4a16-b3df-234789862466', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$YDkb3cBImsE2EftznNQYIe8fZ/lDB9BY0TTZYKThtJAUO.aOdhUiu', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:29:27', '2025-07-17 11:29:27', 0, 1),
(11, '913287df-77a0-47b8-ad9d-a89d9820de86', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$KZb4zb6Ih0tUNQgiJKzehutMaUDM0x/wCe9Z0LhuhjCtlYtDQ1dIe', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:32:16', '2025-07-17 11:32:16', 0, 1),
(12, 'd987f74f-d1fb-42c0-8f33-2cd1db0a5cda', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$HiF/hhbmlYy6zJF8k2O3k.vF8R3ywsC.qM2FUOf1ij0wHYzss4WEm', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:32:27', '2025-07-17 11:32:27', 0, 1),
(13, 'ff9959b5-54c9-4fc0-aeb8-319ca2d4bde5', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$3CfnmFis/JnPcGrIyApU5.LFPIlO0lZjegVtmOxvTC.UgKi/GhMQG', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:32:48', '2025-07-17 11:32:48', 0, 1),
(14, '4b4e2e5d-ab86-43e6-82e8-67adae9a04f4', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$mrJyf3d7qFp2ytPHzy/0quuXTBYoLhWEDQORcmJczK3MB5.BxAcFu', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:33:00', '2025-07-17 11:33:00', 0, 1),
(15, '6106eb65-cff6-4280-9819-98e2637a9a7b', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$r723JKPJdk7GPmp8kQ6U7..2Q/B/Sba/FB9SaE9d4WIfROl2uHYwG', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:33:27', '2025-07-17 11:33:27', 0, 1),
(16, '315feccf-36dc-406f-8f0f-530b9c8cdee6', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$1qgK9zl.uwonKSZil.Eyi.9618jXiFf3EPH.jPRijZltvIsceGv..', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:36:33', '2025-07-17 11:36:33', 0, 1),
(17, '5c26cd77-fd49-4b6d-8431-e86c14152b69', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$YBjN.bm8sSWW9I3iiUeCKOOs/nm.WNk3ggf75NSWAqgiNDCzT7ElC', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:36:56', '2025-07-17 11:36:56', 0, 1),
(18, 'aeed1998-72e3-4c4b-9f52-495d1174e6a7', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$b8wbJJH.gYkUD/p/IroVEOnla1Twdj4Ol8Ayr6rSZ0bTGI6g3FeqS', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:37:33', '2025-07-17 11:37:33', 0, 1),
(19, 'c07f0a6c-138b-47b1-a2fd-fe06544694ae', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$NFUkvW9yF1MBRcONVFcIH.ogXLlBKeOrJSVuwo7ujS3bRbNgzUh3i', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:38:30', '2025-07-17 11:38:30', 0, 1),
(20, '651f129f-c5a5-4ff6-8a2a-f57d7d2553c6', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$GeySld6itHOkDswmI3CwvOHKHmqBND3/21JE3PUQ5GH.qqMftWwOK', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:39:35', '2025-07-17 11:39:35', 0, 1),
(21, 'a1016f39-c021-48ed-8df4-99ffe3d5fa00', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$NWjMCw2G1K8foldXfjUloelmCUjpX.q48mjQCV6oaZLlWz3WgkV8u', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 11:40:44', '2025-07-17 11:40:44', 0, 1),
(22, 'ed50cb05-b1bc-476d-bea5-3f4778c3ef09', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj123@gmail.com', 101, '876545678', 'jaipur Rajasthanb India', '$2b$10$ZeNaDaounFJSsrjKKEwUEeN5J/o7Lfji6hZYdO6rYxp4P9iBRsAkm', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 12:37:18', '2025-07-17 12:37:18', 0, 1),
(23, '0aad0aeb-c296-4898-b6ad-d11063e3f272', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'raj112323@gmail.com', 101, '54678897789', 'jaipur Rajasthanb India', '$2b$10$lmIjhaxZ78ljW/SvB61Ld.Y/1rGBwl/ETkx/.HVFGi9gewTxXLGme', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-07-17 12:37:56', '2025-07-17 12:37:56', 0, 1),
(24, '1d380fea-b0cd-4ffc-8570-e8fcbc03ecec', 2, 27, 'website', 'website', 'Rajesh kumar', NULL, 'rahuk@gmail.com', 101, '324242423', 'jaipur Rajasthanb India', '$2b$10$KygqKtvpRibaXolKJ4Eqmey9FounYB2QjDhLEsgsEwY2nOeyQckAm', '123434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2025-10-16 07:53:41', '2025-10-16 07:53:41', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `admin_added` (`addedBy`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
