-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 09:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ehr`
--

-- --------------------------------------------------------

--
-- Table structure for table `excelfiles`
--

CREATE TABLE `excelfiles` (
  `id` int(11) NOT NULL,
  `ids` varchar(30) NOT NULL,
  `PaymentP` varchar(30) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `type` varchar(30) NOT NULL,
  `Size` decimal(10,0) NOT NULL,
  `content` longtext NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `excelfiles`
--

INSERT INTO `excelfiles` (`id`, `ids`, `PaymentP`, `name`, `type`, `Size`, `content`) VALUES
(1, '1', 'Administrator.php', 'teachers.csv', 'application/vnd.ms-excel', 76, 'Sample content'),
(2, '1', 'Administrator.php', 'students.csv', 'application/vnd.ms-excel', 76, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_drugs`
--

CREATE TABLE `tbl_drugs` (
  `id` int(11) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `DOE` varchar(300) NOT NULL,
  `Quantity` varchar(300) NOT NULL,
  `PurchasedPrice` varchar(300) NOT NULL,
  `RetailPrice` varchar(300) NOT NULL,
  `Strength` varchar(300) NOT NULL,
  `Medstype` varchar(300) NOT NULL,
  `Drugsremain` varchar(300) NOT NULL,
  `Marker` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_drugs`
--

INSERT INTO `tbl_drugs` (`id`, `Name`, `DOE`, `Quantity`, `PurchasedPrice`, `RetailPrice`, `Strength`, `Medstype`, `Drugsremain`, `Marker`) VALUES
(1, 'Crocin', '2024-01-26', '5', '120', '36', '500', 'Tablet', '5', '1.5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_icd10`
--

CREATE TABLE `tbl_icd10` (
  `id` int(11) NOT NULL,
  `Diagnosisname` varchar(300) NOT NULL,
  `Diagnosiscode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_laboratory`
--

CREATE TABLE `tbl_laboratory` (
  `id` int(11) NOT NULL,
  `Patientid` varchar(30) NOT NULL,
  `Diseased` varchar(300) NOT NULL,
  `Test_RBS` varchar(300) NOT NULL,
  `Test_FBS` varchar(300) NOT NULL,
  `Test_PBS` varchar(300) NOT NULL,
  `Test_UCT` varchar(300) NOT NULL,
  `Test_MRDT` varchar(300) NOT NULL,
  `Test_FBC` varchar(300) NOT NULL,
  `Test_TFT` varchar(300) NOT NULL,
  `Test_LFT` varchar(300) NOT NULL,
  `Patient_Complaint` varchar(300) NOT NULL,
  `Patient_Story` varchar(300) NOT NULL,
  `Test_comment` text NOT NULL,
  `Results` varchar(300) NOT NULL,
  `Officer` varchar(300) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_laboratory`
--

INSERT INTO `tbl_laboratory` (`id`, `Patientid`, `Diseased`, `Test_RBS`, `Test_FBS`, `Test_PBS`, `Test_UCT`, `Test_MRDT`, `Test_FBC`, `Test_TFT`, `Test_LFT`, `Patient_Complaint`, `Patient_Story`, `Test_comment`, `Results`, `Officer`, `Date`, `Status`) VALUES
(1, '2', '', 'RBS', '', '', '', '', '', '', '', 'Good', '', '', '', 'Mr John Sharma', '23-12-31', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_labresults`
--

CREATE TABLE `tbl_labresults` (
  `id` int(11) NOT NULL,
  `Patientid` varchar(30) NOT NULL,
  `Testid` varchar(30) NOT NULL,
  `Status` varchar(30) NOT NULL,
  `Test_FBS` text NOT NULL,
  `FBS_Comment` text NOT NULL,
  `Test_RBS` text NOT NULL,
  `RBS_Comment` text NOT NULL,
  `Test_UCT` text NOT NULL,
  `UCT_Comment` text NOT NULL,
  `Test_PBS` text NOT NULL,
  `PBS_Comment` text NOT NULL,
  `Test_MRDT` text NOT NULL,
  `MRDT_Comment` text NOT NULL,
  `Test_FBC` text NOT NULL,
  `FBC_Comment` text NOT NULL,
  `Test_TFT` text NOT NULL,
  `TFT_Comment` text NOT NULL,
  `Test_LFT` text NOT NULL,
  `LFT_Comment` text NOT NULL,
  `Officer` varchar(300) NOT NULL,
  `Date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_labresults`
--

INSERT INTO `tbl_labresults` (`id`, `Patientid`, `Testid`, `Status`, `Test_FBS`, `FBS_Comment`, `Test_RBS`, `RBS_Comment`, `Test_UCT`, `UCT_Comment`, `Test_PBS`, `PBS_Comment`, `Test_MRDT`, `MRDT_Comment`, `Test_FBC`, `FBC_Comment`, `Test_TFT`, `TFT_Comment`, `Test_LFT`, `LFT_Comment`, `Officer`, `Date`) VALUES
(1, '2', '1', '', '', '', 'favicon.png', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Mr John Sharma', '23-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_managementplan`
--

CREATE TABLE `tbl_managementplan` (
  `id` int(11) NOT NULL,
  `Resultsid` varchar(300) NOT NULL,
  `Patientid` varchar(30) NOT NULL,
  `Management_plan` text NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Status` varchar(300) NOT NULL,
  `Plan` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_petients`
--

CREATE TABLE `tbl_petients` (
  `id` int(11) NOT NULL,
  `Mtitle` varchar(30) NOT NULL,
  `Firstname` varchar(300) NOT NULL,
  `Middlename` varchar(300) NOT NULL,
  `Sirname` varchar(300) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `NextKphone` varchar(300) NOT NULL,
  `DOB` varchar(300) NOT NULL,
  `Location` varchar(300) NOT NULL,
  `Relation` varchar(300) NOT NULL,
  `Guardian` varchar(300) NOT NULL,
  `Status` varchar(300) NOT NULL,
  `Status2` varchar(300) NOT NULL,
  `Date` varchar(300) NOT NULL,
  `Payment` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_petients`
--

INSERT INTO `tbl_petients` (`id`, `Mtitle`, `Firstname`, `Middlename`, `Sirname`, `Gender`, `Phone`, `NextKphone`, `DOB`, `Location`, `Relation`, `Guardian`, `Status`, `Status2`, `Date`, `Payment`) VALUES
(1, 'Mr', 'Sonu', 'Sir', 'Pradhan', 'Male', '1234567891', '1234567898', '2024-01-09', 'a', 'Mother', 'a', 'Accounts', '', '31-12-23', 'CASH'),
(2, 'Mr', 'Sonu', 'Sonu Sir', 'Pradhan', 'Male', '8169412563', '8164578965', '2002-09-14', 'Kurla', 'Brother', 'Student', 'Accounts', '', '31-12-23', 'CASH');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_readings`
--

CREATE TABLE `tbl_readings` (
  `id` int(11) NOT NULL,
  `Patientid` varchar(30) NOT NULL,
  `Date` varchar(300) NOT NULL,
  `Time` varchar(300) NOT NULL,
  `BodyT` varchar(300) NOT NULL,
  `PulseRate` varchar(300) NOT NULL,
  `RespirationRate` varchar(300) NOT NULL,
  `SystolicBP` varchar(300) NOT NULL,
  `DiastolicBP` varchar(300) NOT NULL,
  `Oxygensaturation` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `id` int(11) NOT NULL,
  `Patientid` varchar(30) NOT NULL,
  `Drugname` varchar(300) NOT NULL,
  `Quantity` varchar(300) NOT NULL,
  `Unitprice` varchar(300) NOT NULL,
  `Days` varchar(300) NOT NULL,
  `Amount` varchar(300) NOT NULL,
  `Totalcost` varchar(300) NOT NULL,
  `Consultation_fee` varchar(300) NOT NULL,
  `Lab_fee` varchar(300) NOT NULL,
  `Payment` varchar(300) NOT NULL,
  `Scheme_id` varchar(300) NOT NULL,
  `Date` varchar(300) NOT NULL,
  `Time` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_treatment`
--

CREATE TABLE `tbl_treatment` (
  `id` int(11) NOT NULL,
  `Resultsid` varchar(300) NOT NULL,
  `Patientid` varchar(30) NOT NULL,
  `Drugid` varchar(300) NOT NULL,
  `Quantity` varchar(300) NOT NULL,
  `Timesperday` varchar(300) NOT NULL,
  `Days` varchar(300) NOT NULL,
  `Amount` varchar(300) NOT NULL,
  `Prescribe_Comment` text NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Officer` varchar(300) NOT NULL,
  `Status` varchar(300) NOT NULL,
  `Progress` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userlogs`
--

CREATE TABLE `tbl_userlogs` (
  `id` int(11) NOT NULL,
  `Userid` varchar(300) NOT NULL,
  `Machineip` varchar(300) NOT NULL,
  `Login` varchar(300) NOT NULL,
  `Logout` varchar(300) NOT NULL,
  `Activities` varchar(300) NOT NULL,
  `Count` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_userlogs`
--

INSERT INTO `tbl_userlogs` (`id`, `Userid`, `Machineip`, `Login`, `Logout`, `Activities`, `Count`) VALUES
(1, '1', 'T9-Q7-S0-T2-S8-A9', '31-12-2023 08:23:52 PM', '31-12-2023 08:36:08 PM', '', '0'),
(2, '3', 'R0-H2-T2-P8-T8-G7', '31-12-2023 08:39:49 PM', '2024-01-01 01:09:49', '', '0'),
(3, '3', 'H2-P7-X3-C8-H1-W2', '31-12-2023 08:41:51 PM', '2024-01-01 01:11:51', 'Registered new patient Mr Sonu Pradhan \nPatient Sonu Pradhan sent to consultation', '2'),
(4, '3', 'J0-E4-V4-S3-Z9-F0', '31-12-2023 09:03:34 PM', '2024-01-01 01:33:34', 'Patient Sonu Pradhan sent to accounts\nRegistered new patient Mr Sonu Pradhan \nPatient Sonu Pradhan sent to consultation\nPatient Sonu Pradhan sent to lab\nPatient Sonu Pradhan lab lab results produced\nPatient Sonu Pradhan sent to accounts', '6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userprivilages`
--

CREATE TABLE `tbl_userprivilages` (
  `id` int(11) NOT NULL,
  `Userid` varchar(30) NOT NULL,
  `Adduser` varchar(300) NOT NULL,
  `Manageuser` varchar(300) NOT NULL,
  `Logactivities` varchar(300) NOT NULL,
  `Addpatient` varchar(300) NOT NULL,
  `Editpatient` varchar(300) NOT NULL,
  `Managepatient` varchar(300) NOT NULL,
  `Consultation` varchar(300) NOT NULL,
  `Labaccess` varchar(300) NOT NULL,
  `Accountaccess` varchar(300) NOT NULL,
  `Givedrugs` varchar(300) NOT NULL,
  `Adddrugs` varchar(300) NOT NULL,
  `Managedrugs` varchar(30) NOT NULL,
  `Todayssales` varchar(300) NOT NULL,
  `Todaystreat` varchar(300) NOT NULL,
  `Monthlyreport` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_userprivilages`
--

INSERT INTO `tbl_userprivilages` (`id`, `Userid`, `Adduser`, `Manageuser`, `Logactivities`, `Addpatient`, `Editpatient`, `Managepatient`, `Consultation`, `Labaccess`, `Accountaccess`, `Givedrugs`, `Adddrugs`, `Managedrugs`, `Todayssales`, `Todaystreat`, `Monthlyreport`) VALUES
(1, '3', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(300) NOT NULL,
  `Sirname` varchar(300) NOT NULL,
  `Mtitle` varchar(30) NOT NULL,
  `Pic_name` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `Role` varchar(30) NOT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Online` varchar(300) NOT NULL DEFAULT 'Offline',
  `Time` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `Firstname`, `Sirname`, `Mtitle`, `Pic_name`, `Phone`, `Email`, `Password`, `Role`, `State`, `Online`, `Time`) VALUES
(1, 'Patrick', 'Mvuma', 'Mr', 'default_profile.jpg', '0999107724', 'mvumapatrick@gmail.com', '1234554321', 'Medical Doctor', 'Super', 'Offline', 1704050632),
(2, 'Hendry', 'Manganda', 'Dr', 'default_profile.jpg', '0888876600', 'hmanganda@gmail.com', '12345', 'Clinician', NULL, 'Offline', 0),
(3, 'John', 'Sharma', 'Mr', 'default_profile.jpg', '0999107724', 'john.sharma@gmail.com', '1234554355', 'System Developer', 'Super', 'Online', 1704053014);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendors`
--

CREATE TABLE `tbl_vendors` (
  `id` int(11) NOT NULL,
  `Fullname` varchar(300) NOT NULL,
  `Drugid` varchar(300) NOT NULL,
  `Location` varchar(300) NOT NULL,
  `Phone` varchar(300) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `DOP` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vendors`
--

INSERT INTO `tbl_vendors` (`id`, `Fullname`, `Drugid`, `Location`, `Phone`, `Email`, `DOP`) VALUES
(1, 'Aditya Randive', '1', 'Mulund', '8169019456', 'a@gmail.com', '2023-06-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `excelfiles`
--
ALTER TABLE `excelfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_drugs`
--
ALTER TABLE `tbl_drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_icd10`
--
ALTER TABLE `tbl_icd10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_laboratory`
--
ALTER TABLE `tbl_laboratory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_labresults`
--
ALTER TABLE `tbl_labresults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_managementplan`
--
ALTER TABLE `tbl_managementplan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_petients`
--
ALTER TABLE `tbl_petients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_readings`
--
ALTER TABLE `tbl_readings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_treatment`
--
ALTER TABLE `tbl_treatment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userlogs`
--
ALTER TABLE `tbl_userlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userprivilages`
--
ALTER TABLE `tbl_userprivilages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vendors`
--
ALTER TABLE `tbl_vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `excelfiles`
--
ALTER TABLE `excelfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_drugs`
--
ALTER TABLE `tbl_drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_icd10`
--
ALTER TABLE `tbl_icd10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_laboratory`
--
ALTER TABLE `tbl_laboratory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_labresults`
--
ALTER TABLE `tbl_labresults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_managementplan`
--
ALTER TABLE `tbl_managementplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_petients`
--
ALTER TABLE `tbl_petients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_readings`
--
ALTER TABLE `tbl_readings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_treatment`
--
ALTER TABLE `tbl_treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_userlogs`
--
ALTER TABLE `tbl_userlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_userprivilages`
--
ALTER TABLE `tbl_userprivilages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vendors`
--
ALTER TABLE `tbl_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
