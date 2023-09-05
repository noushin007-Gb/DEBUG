-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 02:00 AM
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
-- Database: `debug`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `AdminID` int(4) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Department` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`AdminID`, `Name`, `Password`, `Phone`, `Email`, `Department`) VALUES
(5100, 'lankabangla', '$2y$10$yXuIgMe91IT3XpOGOrVV7O./SwN9EP8d2H8lw5JP1EBH2s0IpMWyy', '01535169773', 'rt36318@gmail.com', 'Any');

-- --------------------------------------------------------

--
-- Table structure for table `cdbl_system`
--

CREATE TABLE `cdbl_system` (
  `CDBL_Participant_ID` int(7) NOT NULL,
  `NID` varchar(17) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Passport` varchar(17) DEFAULT NULL,
  `Birth_Date` date NOT NULL,
  `account_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cdbl_system`
--

INSERT INTO `cdbl_system` (`CDBL_Participant_ID`, `NID`, `Name`, `Address`, `Email`, `Passport`, `Birth_Date`, `account_no`) VALUES
(1234567, '12345678901', 'John Doe', '123 Main St, City', 'john@example.com', NULL, '1990-05-15', 12345),
(3456789, '56789012341', 'Emily Davis', '234 Pine St, Hamlet', 'emily@example.com', NULL, '1988-07-08', 23456),
(5678901, '23456789051', 'William Wilson', '567 Birch St, Haven', 'william@example.com', 'E2345612', '1995-11-30', 89012),
(7654321, '98765432101', 'Jane Smith', '456 Elm St, Town', 'jane@example.com', 'B9876543', '1985-09-20', 67890),
(9876543, '78901234561', 'Michael Johnson', '789 Oak St, Village', 'michael@example.com', 'C9876123', '1992-03-10', 45678);

-- --------------------------------------------------------

--
-- Table structure for table `client_login`
--

CREATE TABLE `client_login` (
  `Client_CODE` int(7) UNSIGNED NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_login`
--

INSERT INTO `client_login` (`Client_CODE`, `Username`, `Password`, `Phone`, `Email`, `Address`) VALUES
(2300002, 'lankabangla', '$2y$10$E1ESYGV42tUwaZjzdeLWJucwN7LPs7kyHbSi3OLrk7Q4k5sbQivBO', '01456226177', 'raitn2025@gmail.com', 'st 30 revenue'),
(2300004, 'nurjahan', '$2y$10$nvUGzcbcOjIKwwNCGVbn1.ZLQxWF1K4YOS9lo49OJ86Ngx7LcuNP6', '01912934123', 'rt@gmail.com', 'some address'),
(2300005, 'lankabangla2', '$2y$10$M32/6DXtOOGcUTGeQ7.s7uiWGGnD6UtSSM5wd1kSEZexQropwyT1O', '01914445227', 'rit@gmail.com', 'dont knw');

-- --------------------------------------------------------

--
-- Table structure for table `customer_application_for_terms_and_conditions_by_laws`
--

CREATE TABLE `customer_application_for_terms_and_conditions_by_laws` (
  `Data_Approval_Admin` varchar(20) DEFAULT NULL,
  `Data_Approval_CRM` varchar(20) DEFAULT NULL,
  `Data_Approval_HOS` varchar(20) DEFAULT NULL,
  `Client_CODE` int(7) UNSIGNED NOT NULL,
  `First_Account_Holder` varchar(40) DEFAULT NULL,
  `Second_Account_Holder` varchar(40) DEFAULT NULL,
  `_3rd_Signatory` varchar(40) DEFAULT NULL,
  `First_Account_Holder_sig` blob DEFAULT NULL,
  `Second_Account_Holder_sig` blob DEFAULT NULL,
  `_3rd_Signatory_sig` blob DEFAULT NULL,
  `DATE1` date DEFAULT NULL,
  `DATE2` date DEFAULT NULL,
  `DATE3` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_application_for_terms_and_conditions_by_laws`
--

INSERT INTO `customer_application_for_terms_and_conditions_by_laws` (`Data_Approval_Admin`, `Data_Approval_CRM`, `Data_Approval_HOS`, `Client_CODE`, `First_Account_Holder`, `Second_Account_Holder`, `_3rd_Signatory`, `First_Account_Holder_sig`, `Second_Account_Holder_sig`, `_3rd_Signatory_sig`, `DATE1`, `DATE2`, `DATE3`) VALUES
(NULL, NULL, NULL, 2300002, 'UlJqt0PqmL', 'UTVnzSiwG7', 'jyy2tej7s3', 0x646f776e6c6f6164202d20436f7079202832292e6a666966, 0x646f776e6c6f6164202d20436f70792e6a666966, 0x646f776e6c6f61642e6a666966, '2023-09-11', '2023-08-29', '2023-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `customer_bo_account_nomination_form_nominee1`
--

CREATE TABLE `customer_bo_account_nomination_form_nominee1` (
  `Data_Approval_Admin` varchar(20) DEFAULT NULL,
  `Data_Approval_CRM` varchar(20) DEFAULT NULL,
  `Data_Approval_HOS` varchar(20) DEFAULT NULL,
  `Client_CODE` int(7) UNSIGNED NOT NULL,
  `BO_ID` int(7) NOT NULL,
  `date1` date DEFAULT NULL,
  `application1` varchar(50) DEFAULT NULL,
  `Name_of_CDBL_Participant` varchar(40) NOT NULL,
  `CDBL_Participant_ID1` int(7) DEFAULT NULL,
  `NameofAccountHolder1` varchar(40) DEFAULT NULL,
  `fullName2` varchar(40) DEFAULT NULL,
  `shortName2` varchar(20) DEFAULT NULL,
  `title2` varchar(10) DEFAULT NULL,
  `relationship2` varchar(50) DEFAULT NULL,
  `percentage2` varchar(5) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city2` varchar(60) DEFAULT NULL,
  `postCode2` varchar(4) DEFAULT NULL,
  `state2` varchar(30) DEFAULT NULL,
  `country2` varchar(40) DEFAULT NULL,
  `telephone2` varchar(11) DEFAULT NULL,
  `mobilePhone2` varchar(11) DEFAULT NULL,
  `fax2` varchar(10) DEFAULT NULL,
  `email2` varchar(50) DEFAULT NULL,
  `passportNo2` varchar(20) DEFAULT NULL,
  `nid2` varchar(17) DEFAULT NULL,
  `issuePlace2` varchar(40) DEFAULT NULL,
  `issueDate2` date DEFAULT NULL,
  `expiryDate2` date DEFAULT NULL,
  `nationality2` varchar(40) DEFAULT NULL,
  `residencyStatus` varchar(20) DEFAULT NULL,
  `dateOfBirth2` date DEFAULT NULL,
  `guardianFullName3` varchar(40) DEFAULT NULL,
  `guardianShortName3` varchar(20) DEFAULT NULL,
  `guardianRelationship3` varchar(50) DEFAULT NULL,
  `guardianDateOfMinorBirth` date DEFAULT NULL,
  `guardianMaturityDate3` date DEFAULT NULL,
  `guardianAddress3` varchar(60) DEFAULT NULL,
  `guardianCity3` varchar(40) DEFAULT NULL,
  `guardianPostCode3` varchar(4) DEFAULT NULL,
  `guardianState3` varchar(40) DEFAULT NULL,
  `guardianCountry3` varchar(40) DEFAULT NULL,
  `guardianTelephone3` varchar(11) DEFAULT NULL,
  `guardianMobilePhone3` varchar(11) DEFAULT NULL,
  `guardianFax3` varchar(10) DEFAULT NULL,
  `guardianEmail3` varchar(30) DEFAULT NULL,
  `guardianPassportNo3` varchar(20) DEFAULT NULL,
  `guardianNid3` varchar(17) DEFAULT NULL,
  `guardianIssuePlace3` varchar(40) DEFAULT NULL,
  `guardianIssueDate3` date DEFAULT NULL,
  `guardianExpiryDate3` date DEFAULT NULL,
  `guardianNationality3` varchar(40) DEFAULT NULL,
  `guardianResidencyStatus` varchar(20) DEFAULT NULL,
  `guardianDateOfBirth3` date DEFAULT NULL,
  `Nominee1` varchar(40) NOT NULL,
  `dateNomineeSig1` date NOT NULL,
  `Guardian1` varchar(40) NOT NULL,
  `dateGuardian1Sig1` date NOT NULL,
  `firstAccName5` varchar(40) NOT NULL,
  `dateFirstSig5` date NOT NULL,
  `secondAccName6` varchar(40) NOT NULL,
  `dateSecondSig6` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_bo_account_nomination_form_nominee1`
--

INSERT INTO `customer_bo_account_nomination_form_nominee1` (`Data_Approval_Admin`, `Data_Approval_CRM`, `Data_Approval_HOS`, `Client_CODE`, `BO_ID`, `date1`, `application1`, `Name_of_CDBL_Participant`, `CDBL_Participant_ID1`, `NameofAccountHolder1`, `fullName2`, `shortName2`, `title2`, `relationship2`, `percentage2`, `address2`, `city2`, `postCode2`, `state2`, `country2`, `telephone2`, `mobilePhone2`, `fax2`, `email2`, `passportNo2`, `nid2`, `issuePlace2`, `issueDate2`, `expiryDate2`, `nationality2`, `residencyStatus`, `dateOfBirth2`, `guardianFullName3`, `guardianShortName3`, `guardianRelationship3`, `guardianDateOfMinorBirth`, `guardianMaturityDate3`, `guardianAddress3`, `guardianCity3`, `guardianPostCode3`, `guardianState3`, `guardianCountry3`, `guardianTelephone3`, `guardianMobilePhone3`, `guardianFax3`, `guardianEmail3`, `guardianPassportNo3`, `guardianNid3`, `guardianIssuePlace3`, `guardianIssueDate3`, `guardianExpiryDate3`, `guardianNationality3`, `guardianResidencyStatus`, `guardianDateOfBirth3`, `Nominee1`, `dateNomineeSig1`, `Guardian1`, `dateGuardian1Sig1`, `firstAccName5`, `dateFirstSig5`, `secondAccName6`, `dateSecondSig6`) VALUES
(NULL, NULL, NULL, 2300002, 5300001, '2023-08-15', '3WgpGfKgUy', 'LankaBangla Securities Ltd.', 1234567, 'r5kQlD1LlH', 'xXUq0sUgOA', 'AHoM2YBvyj', 'Mr', 'c0BQpFU74J', '80', 'KVNOnFBDgV', 'rd1jsB57Fy', '1234', 'Y9WRoAWvtu', 'UAENgS7j5f', '01916663445', '01916663445', '1234567890', '7hqer@2sow.com', '1234567890', '12345678901', 'FmhjrNndBC', '2023-08-16', '2023-08-02', 'L6WoTB0ivC', 'Resident', '2023-08-18', 'gDlWlQbaD7', 'FmgO0qGYRy', 'vSmkahdDEv', '2023-08-23', '2023-08-11', 'WVRbgUFOrt', 'F8pzf26wlU', '1234', '9OkfhQfqC1', 'ZL1jRaYo4b', '01916663445', '01916663445', '1234567890', 'xu0we@zgu1.com', '1234567890', '12345678901', 'mil5g8dRir', '2023-08-30', '2023-08-06', 'cevZEHKoJK', 'Resident', '2023-08-16', 'zPKFBvizWb', '2023-08-16', 'qQ6fswkvB8', '2023-08-09', 'LxvzVCwcmp', '2023-08-15', 'iNnwDKfGLb', '2023-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `customer_bo_account_nomination_form_nominee2`
--

CREATE TABLE `customer_bo_account_nomination_form_nominee2` (
  `Data_Approval_Admin` varchar(20) DEFAULT NULL,
  `Data_Approval_CRM` varchar(20) DEFAULT NULL,
  `Data_Approval_HOS` varchar(20) DEFAULT NULL,
  `Client_CODE` int(7) UNSIGNED NOT NULL,
  `BO_ID` int(7) NOT NULL,
  `date1` date DEFAULT NULL,
  `application1` varchar(50) DEFAULT NULL,
  `Name_of_CDBL_Participant` varchar(40) NOT NULL,
  `CDBL_Participant_ID1` int(7) DEFAULT NULL,
  `NameofAccountHolder1` varchar(40) DEFAULT NULL,
  `fullName4` varchar(40) DEFAULT NULL,
  `shortName4` varchar(20) DEFAULT NULL,
  `title4` varchar(10) DEFAULT NULL,
  `relationship4` varchar(50) DEFAULT NULL,
  `percentage4` varchar(5) DEFAULT NULL,
  `address4` varchar(100) DEFAULT NULL,
  `city4` varchar(60) DEFAULT NULL,
  `postCode4` varchar(4) DEFAULT NULL,
  `state4` varchar(30) DEFAULT NULL,
  `country4` varchar(40) DEFAULT NULL,
  `telephone4` varchar(11) DEFAULT NULL,
  `mobilePhone4` varchar(11) DEFAULT NULL,
  `fax4` varchar(10) DEFAULT NULL,
  `email4` varchar(50) DEFAULT NULL,
  `passportNo4` varchar(20) DEFAULT NULL,
  `nid4` varchar(17) DEFAULT NULL,
  `issuePlace4` varchar(40) DEFAULT NULL,
  `issueDate4` date DEFAULT NULL,
  `expiryDate4` date DEFAULT NULL,
  `nationality4` varchar(40) DEFAULT NULL,
  `residencyStatus1` varchar(20) DEFAULT NULL,
  `dateOfBirth4` date DEFAULT NULL,
  `guardianFullName5` varchar(40) DEFAULT NULL,
  `guardianShortName5` varchar(20) DEFAULT NULL,
  `guardianRelationship5` varchar(50) DEFAULT NULL,
  `guardianDateOfMinorBirth2` date DEFAULT NULL,
  `guardianMaturityDate5` date DEFAULT NULL,
  `guardianAddress5` varchar(60) DEFAULT NULL,
  `guardianCity5` varchar(40) DEFAULT NULL,
  `guardianPostCode5` varchar(4) DEFAULT NULL,
  `guardianState5` varchar(40) DEFAULT NULL,
  `guardianCountry5` varchar(40) DEFAULT NULL,
  `guardianTelephone5` varchar(11) DEFAULT NULL,
  `guardianMobilePhone5` varchar(11) DEFAULT NULL,
  `guardianFax5` varchar(10) DEFAULT NULL,
  `guardianEmail5` varchar(30) DEFAULT NULL,
  `guardianPassportNo5` varchar(20) DEFAULT NULL,
  `guardianNid5` varchar(17) DEFAULT NULL,
  `guardianIssuePlace5` varchar(40) DEFAULT NULL,
  `guardianIssueDate5` date DEFAULT NULL,
  `guardianExpiryDate5` date DEFAULT NULL,
  `guardianNationality5` varchar(40) DEFAULT NULL,
  `guardianResidencyStatus1` varchar(20) DEFAULT NULL,
  `guardianDateOfBirth5` date DEFAULT NULL,
  `Nominee2` varchar(40) NOT NULL,
  `dateNominee2Sig2` date NOT NULL,
  `Guardian2` varchar(40) NOT NULL,
  `dateGuardian2Sig2` date NOT NULL,
  `firstAccName5` varchar(40) NOT NULL,
  `dateFirstSig5` date NOT NULL,
  `secondAccName6` varchar(40) NOT NULL,
  `dateSecondSig6` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_bo_account_nomination_form_nominee2`
--

INSERT INTO `customer_bo_account_nomination_form_nominee2` (`Data_Approval_Admin`, `Data_Approval_CRM`, `Data_Approval_HOS`, `Client_CODE`, `BO_ID`, `date1`, `application1`, `Name_of_CDBL_Participant`, `CDBL_Participant_ID1`, `NameofAccountHolder1`, `fullName4`, `shortName4`, `title4`, `relationship4`, `percentage4`, `address4`, `city4`, `postCode4`, `state4`, `country4`, `telephone4`, `mobilePhone4`, `fax4`, `email4`, `passportNo4`, `nid4`, `issuePlace4`, `issueDate4`, `expiryDate4`, `nationality4`, `residencyStatus1`, `dateOfBirth4`, `guardianFullName5`, `guardianShortName5`, `guardianRelationship5`, `guardianDateOfMinorBirth2`, `guardianMaturityDate5`, `guardianAddress5`, `guardianCity5`, `guardianPostCode5`, `guardianState5`, `guardianCountry5`, `guardianTelephone5`, `guardianMobilePhone5`, `guardianFax5`, `guardianEmail5`, `guardianPassportNo5`, `guardianNid5`, `guardianIssuePlace5`, `guardianIssueDate5`, `guardianExpiryDate5`, `guardianNationality5`, `guardianResidencyStatus1`, `guardianDateOfBirth5`, `Nominee2`, `dateNominee2Sig2`, `Guardian2`, `dateGuardian2Sig2`, `firstAccName5`, `dateFirstSig5`, `secondAccName6`, `dateSecondSig6`) VALUES
(NULL, NULL, NULL, 2300002, 5300001, '2023-08-15', '3WgpGfKgUy', 'LankaBangla Securities Ltd.', 1234567, 'r5kQlD1LlH', 'IM4lwpAwf4', 'WXtDZbCme9', 'lqRw6fLFuu', 'PrscmYM3IB', '3Dc1D', 'bQlXSF1ItN', 'qYgbK0QAAt', '1234', 'kVOI1zv641', '9fzX1NLGoG', '12345678901', '12345678901', '1234567890', 'ziwxa@7ffd.com', '1234567890', '12345678901', 'psl2RNjbBK', '2023-08-08', '2023-08-09', '1QJW7UALLl', 'Resident', '2023-08-10', 'd849NpEtYK', 'tH29vSQ11d', 'V8VNuUdQk9', '2023-08-02', '2023-08-18', 'cUuktRN4Oh', 'E21r2RCavJ', '1234', 'GYEth4SA54', 'EgeQaTvFK6', '1234567890', '1234567890', '1234567890', 'gakwl@fhqo.com', '1234567890', '12345678901', 'aMfXFE7Nb6', '2023-08-09', '2023-08-18', 'jlbzLuBePG', 'Resident', '2023-08-14', 'vdNfoKoZrG', '2023-08-03', '6leF9XjKSm', '2023-08-18', 'LxvzVCwcmp', '2023-08-15', 'iNnwDKfGLb', '2023-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `customer_bo_account_opening_form`
--

CREATE TABLE `customer_bo_account_opening_form` (
  `Data_Approval_Admin` varchar(20) DEFAULT NULL,
  `Data_Approval_CRM` varchar(20) DEFAULT NULL,
  `Data_Approval_HOS` varchar(20) DEFAULT NULL,
  `Date` date NOT NULL,
  `Application` varchar(255) NOT NULL,
  `bo_category` varchar(30) NOT NULL,
  `bo_type` varchar(30) NOT NULL,
  `Name_of_CDBL_Participant` varchar(255) NOT NULL,
  `BO_ID` int(7) NOT NULL,
  `CDBL_Participant_ID` int(7) NOT NULL,
  `Client_CODE` int(7) UNSIGNED NOT NULL,
  `Date_Account_Opened` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_bo_account_opening_form`
--

INSERT INTO `customer_bo_account_opening_form` (`Data_Approval_Admin`, `Data_Approval_CRM`, `Data_Approval_HOS`, `Date`, `Application`, `bo_category`, `bo_type`, `Name_of_CDBL_Participant`, `BO_ID`, `CDBL_Participant_ID`, `Client_CODE`, `Date_Account_Opened`) VALUES
(NULL, NULL, NULL, '2023-08-02', 'Jk6FpXOUo8', 'Regular', 'Individual', 'LankaBangla Securities Ltd.', 5300001, 1234567, 2300002, '2023-08-23');

-- --------------------------------------------------------

--
-- Table structure for table `customer_bo_account_opening_form_part2`
--

CREATE TABLE `customer_bo_account_opening_form_part2` (
  `Data_Approval_Admin` varchar(20) DEFAULT NULL,
  `Data_Approval_CRM` varchar(20) DEFAULT NULL,
  `Data_Approval_HOS` varchar(20) DEFAULT NULL,
  `Client_CODE` int(7) UNSIGNED NOT NULL,
  `BO_ID` int(7) NOT NULL,
  `nameOfFullAccount2` varchar(40) NOT NULL,
  `TitleOfAccount2` varchar(10) NOT NULL,
  `contactPersonName2` varchar(40) NOT NULL,
  `individualGender2` varchar(10) NOT NULL,
  `occupation2` varchar(100) NOT NULL,
  `nid_bo2` varchar(17) DEFAULT NULL,
  `fatherHusbandName2` varchar(40) NOT NULL,
  `motherName2` varchar(40) NOT NULL,
  `Address2` varchar(100) NOT NULL,
  `City2` varchar(50) NOT NULL,
  `PostCode2` varchar(4) DEFAULT NULL,
  `State2` varchar(30) NOT NULL,
  `Country2` varchar(100) NOT NULL,
  `Telephone2` varchar(11) DEFAULT NULL,
  `MobilePhone2` varchar(11) DEFAULT NULL,
  `Fax2` varchar(15) DEFAULT NULL,
  `email_id2` varchar(50) NOT NULL,
  `PassportNo2` varchar(20) NOT NULL,
  `IssuePlace2` varchar(100) NOT NULL,
  `IssueDate2` date NOT NULL,
  `ExpiryDate2` date NOT NULL,
  `BankName2` varchar(100) NOT NULL,
  `BranchName2` varchar(100) NOT NULL,
  `AccountNo2` varchar(25) NOT NULL,
  `RoutingNo2` varchar(25) NOT NULL,
  `TinTaxID2` varchar(25) NOT NULL,
  `ElectronicDividendCredit2` varchar(10) NOT NULL,
  `TaxExemption` varchar(10) NOT NULL,
  `residency` varchar(10) NOT NULL,
  `statementCycle` varchar(10) NOT NULL,
  `otherStatementCycle` varchar(255) DEFAULT NULL,
  `Nationality2` varchar(50) NOT NULL,
  `DateOfBirth3` date NOT NULL,
  `DateOfRegistration3` date NOT NULL,
  `InternalRefNo3` varchar(50) NOT NULL,
  `InCaseOfCompany3` varchar(50) NOT NULL,
  `RegistrationNo3` varchar(25) DEFAULT NULL,
  `nameOfJointAccount2` varchar(40) NOT NULL,
  `jointTitleOfAccount2` varchar(10) NOT NULL,
  `customCheck4` varchar(10) NOT NULL,
  `depositoryAccountCode1` varchar(7) DEFAULT NULL,
  `customCheckExchange` varchar(10) NOT NULL,
  `depositoryAccountCodeDSE` varchar(7) DEFAULT NULL,
  `depositoryAccountCodeCSE` varchar(7) DEFAULT NULL,
  `customCheck5` varchar(10) NOT NULL,
  `firstAccName1` varchar(40) NOT NULL,
  `secondAccName2` varchar(40) NOT NULL,
  `thirdAccName3` varchar(40) NOT NULL,
  `customCheckInstructions` varchar(10) NOT NULL,
  `IntroducerName1` varchar(40) NOT NULL,
  `AccountID1` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_bo_account_opening_form_part2`
--

INSERT INTO `customer_bo_account_opening_form_part2` (`Data_Approval_Admin`, `Data_Approval_CRM`, `Data_Approval_HOS`, `Client_CODE`, `BO_ID`, `nameOfFullAccount2`, `TitleOfAccount2`, `contactPersonName2`, `individualGender2`, `occupation2`, `nid_bo2`, `fatherHusbandName2`, `motherName2`, `Address2`, `City2`, `PostCode2`, `State2`, `Country2`, `Telephone2`, `MobilePhone2`, `Fax2`, `email_id2`, `PassportNo2`, `IssuePlace2`, `IssueDate2`, `ExpiryDate2`, `BankName2`, `BranchName2`, `AccountNo2`, `RoutingNo2`, `TinTaxID2`, `ElectronicDividendCredit2`, `TaxExemption`, `residency`, `statementCycle`, `otherStatementCycle`, `Nationality2`, `DateOfBirth3`, `DateOfRegistration3`, `InternalRefNo3`, `InCaseOfCompany3`, `RegistrationNo3`, `nameOfJointAccount2`, `jointTitleOfAccount2`, `customCheck4`, `depositoryAccountCode1`, `customCheckExchange`, `depositoryAccountCodeDSE`, `depositoryAccountCodeCSE`, `customCheck5`, `firstAccName1`, `secondAccName2`, `thirdAccName3`, `customCheckInstructions`, `IntroducerName1`, `AccountID1`) VALUES
(NULL, NULL, NULL, 2300002, 5300001, 'jkrqOehXGJ', 'Mr', 'asdasdsad', 'Male', 'shqOHYy5dI', '12345678901', '2eo4jNidge', '4UOJNPaKUY', 'LO2XeyWTTK', 'We8DdWlkVR', '1234', '9WrE0SHy77', 'xKf8k8QDHU', '1234567890', '1234567890', '1234567890', 'ktezm@6yno.com', '1234567890', 'DZIWk1T69h', '2023-08-17', '2023-08-26', 'WwhULRq9GW', 'FSwZewk8k0', '1234567890', '1234567890', '1234567', 'yes', 'no', 'NonReside', 'Fortnightl', ' ', 'A5kjloa0q8', '2023-08-03', '2023-08-19', '1234567', 'Kgbvr43inB', '1234567890', 'vwAClTuYiU', 'Mr', 'Yes', '1234567', 'CSE', ' ', 'X8Z4Atf', 'Male', 'yT3XCtFB14', '2vcf1bo2AY', 'ID0AuSnkkm', 'AnyTwoWith', 'OhBPuixaFs', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `customer_credit_facility_form`
--

CREATE TABLE `customer_credit_facility_form` (
  `fill_up_date` date NOT NULL,
  `text_fill_up` varchar(255) NOT NULL,
  `Client_CODE` int(7) UNSIGNED NOT NULL,
  `faithfully` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Code` int(7) UNSIGNED NOT NULL,
  `BO` varchar(11) NOT NULL,
  `Recommened_by` varchar(40) NOT NULL,
  `approved_by` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_credit_facility_form`
--

INSERT INTO `customer_credit_facility_form` (`fill_up_date`, `text_fill_up`, `Client_CODE`, `faithfully`, `Name`, `Code`, `BO`, `Recommened_by`, `approved_by`) VALUES
('2023-08-30', 'AQfZ6nTxMb', 2300002, 'Z49OKhStfM', 'Il39VIzXJI', 2300002, '12345678901', '6k2vC2mDcN', 'b1uJWsSsRo');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info_authorized_account_holder`
--

CREATE TABLE `customer_info_authorized_account_holder` (
  `Data_Approval_Admin2` varchar(20) DEFAULT NULL,
  `Data_Approval_CRM2` varchar(20) DEFAULT NULL,
  `Data_Approval_HOS2` varchar(20) DEFAULT NULL,
  `authorized_acc_h_Name` varchar(40) NOT NULL,
  `Client_CODE` int(7) UNSIGNED NOT NULL,
  `Father_or_Husbands_Name` varchar(40) NOT NULL,
  `Mother’s_Name` varchar(40) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `Present_Address` varchar(60) NOT NULL,
  `Permanent_Address` varchar(60) NOT NULL,
  `NID` varchar(17) NOT NULL,
  `Tel` varchar(11) NOT NULL,
  `Mobile` varchar(11) NOT NULL,
  `Occupation` varchar(20) NOT NULL,
  `E_tin` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info_authorized_account_holder`
--

INSERT INTO `customer_info_authorized_account_holder` (`Data_Approval_Admin2`, `Data_Approval_CRM2`, `Data_Approval_HOS2`, `authorized_acc_h_Name`, `Client_CODE`, `Father_or_Husbands_Name`, `Mother’s_Name`, `Email`, `Nationality`, `Date_of_Birth`, `Sex`, `Present_Address`, `Permanent_Address`, `NID`, `Tel`, `Mobile`, `Occupation`, `E_tin`) VALUES
('Approved', NULL, NULL, 'jyy2tej7s3', 2300002, 'cLxq9gbsU4', 'UyBkGuG5xA', 'dao7p@h98d.com', '3VDwnfc16T', '2023-08-10', 'Female', 'HJINmQlhfe', 'YEiLq9lFR7', '12345678901', '12345678901', '12345678901', 'RA2ZhSZWLH', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info_date_client_form`
--

CREATE TABLE `customer_info_date_client_form` (
  `FillupDate` date NOT NULL,
  `Client_CODE` int(7) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info_date_client_form`
--

INSERT INTO `customer_info_date_client_form` (`FillupDate`, `Client_CODE`) VALUES
('2023-08-18', 2300002);

-- --------------------------------------------------------

--
-- Table structure for table `customer_info_first_account_holder`
--

CREATE TABLE `customer_info_first_account_holder` (
  `Data_Approval_Admin` varchar(20) DEFAULT NULL,
  `Data_Approval_CRM` varchar(20) DEFAULT NULL,
  `Data_Approval_HOS` varchar(20) DEFAULT NULL,
  `first_acc_h_Name` varchar(40) NOT NULL,
  `Client_CODE` int(7) UNSIGNED NOT NULL,
  `Father_or_Husbands_Name` varchar(40) NOT NULL,
  `Mother’s_Name` varchar(40) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `Present_Address` varchar(60) NOT NULL,
  `Permanent_Address` varchar(60) NOT NULL,
  `NID` varchar(17) NOT NULL,
  `Tel` varchar(11) NOT NULL,
  `Mobile` varchar(11) NOT NULL,
  `Occupation` varchar(20) NOT NULL,
  `E_tin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info_first_account_holder`
--

INSERT INTO `customer_info_first_account_holder` (`Data_Approval_Admin`, `Data_Approval_CRM`, `Data_Approval_HOS`, `first_acc_h_Name`, `Client_CODE`, `Father_or_Husbands_Name`, `Mother’s_Name`, `Email`, `Nationality`, `Date_of_Birth`, `Sex`, `Present_Address`, `Permanent_Address`, `NID`, `Tel`, `Mobile`, `Occupation`, `E_tin`) VALUES
('Approved', NULL, NULL, 'UlJqt0PqmL', 2300002, '93zcMeWdGN', 'C4dfHV4OAZ', 'n1fym@cr5m.com', 'FzbxEkFhFm', '2023-08-05', 'Female', '6WXN7f2AXQ', 'SFd4HhQHTL', '12345678901', '12345678901', '12345678901', 'qQyBi3CxWL', '1234567'),
('Approved', NULL, NULL, 'UlJqt0PqmL', 2300004, '93zcMeWdGN', 'C4dfHV4OAZ', 'n1fym@cr5m.com', 'FzbxEkFhFm', '2023-08-05', 'Female', '6WXN7f2AXQ', 'SFd4HhQHTL', '12345678901', '12345678901', '12345678901', 'qQyBi3CxWL', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info_joint_account_holder`
--

CREATE TABLE `customer_info_joint_account_holder` (
  `Data_Approval_Admin1` varchar(20) DEFAULT NULL,
  `Data_Approval_CRM1` varchar(20) DEFAULT NULL,
  `Data_Approval_HOS1` varchar(20) DEFAULT NULL,
  `joint_acc_h_Name` varchar(40) NOT NULL,
  `Client_CODE` int(7) UNSIGNED NOT NULL,
  `Father_or_Husbands_Name` varchar(40) NOT NULL,
  `Mother’s_Name` varchar(40) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `Present_Address` varchar(60) NOT NULL,
  `Permanent_Address` varchar(60) NOT NULL,
  `NID` varchar(17) NOT NULL,
  `Tel` varchar(11) NOT NULL,
  `Mobile` varchar(11) NOT NULL,
  `Occupation` varchar(20) NOT NULL,
  `E_tin` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info_joint_account_holder`
--

INSERT INTO `customer_info_joint_account_holder` (`Data_Approval_Admin1`, `Data_Approval_CRM1`, `Data_Approval_HOS1`, `joint_acc_h_Name`, `Client_CODE`, `Father_or_Husbands_Name`, `Mother’s_Name`, `Email`, `Nationality`, `Date_of_Birth`, `Sex`, `Present_Address`, `Permanent_Address`, `NID`, `Tel`, `Mobile`, `Occupation`, `E_tin`) VALUES
('Approved', NULL, NULL, 'UTVnzSiwG7', 2300002, 'vtd65xhPKV', 'xsYIDpiJsJ', 'jvhqm@jeeu.com', '8O5fNQILFq', '2023-08-18', 'Female', 'g8NDVFTsVx', '4H5hav3tOh', '12345678901', '12345678901', '12345678901', 'kxIkcPDeqh', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info_rest_of_info`
--

CREATE TABLE `customer_info_rest_of_info` (
  `Data_Approval_Admin3` varchar(20) DEFAULT NULL,
  `Data_Approval_CRM3` varchar(20) DEFAULT NULL,
  `Data_Approval_HOS3` varchar(20) DEFAULT NULL,
  `any_stock_exchange` varchar(10) NOT NULL,
  `Client_CODE` int(7) UNSIGNED NOT NULL,
  `name_of_the_Stock_Comp` varchar(40) NOT NULL,
  `signature_image` longblob DEFAULT NULL,
  `bank_name` varchar(100) NOT NULL,
  `branch_name` varchar(40) NOT NULL,
  `account_No` varchar(20) NOT NULL,
  `routing_No` varchar(20) NOT NULL,
  `F_AccH_Name` varchar(30) NOT NULL,
  `J_AccH_Name` varchar(30) NOT NULL,
  `A_AccH_Name` varchar(30) NOT NULL,
  `F_AccH_Signature` longblob DEFAULT NULL,
  `J_AccH_Signature` longblob DEFAULT NULL,
  `A_AccH_Signature` longblob DEFAULT NULL,
  `F_AccH_Signature_Date` date NOT NULL,
  `J_AccH_Signature_Date` date NOT NULL,
  `A_AccH_Signature_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info_rest_of_info`
--

INSERT INTO `customer_info_rest_of_info` (`Data_Approval_Admin3`, `Data_Approval_CRM3`, `Data_Approval_HOS3`, `any_stock_exchange`, `Client_CODE`, `name_of_the_Stock_Comp`, `signature_image`, `bank_name`, `branch_name`, `account_No`, `routing_No`, `F_AccH_Name`, `J_AccH_Name`, `A_AccH_Name`, `F_AccH_Signature`, `J_AccH_Signature`, `A_AccH_Signature`, `F_AccH_Signature_Date`, `J_AccH_Signature_Date`, `A_AccH_Signature_Date`) VALUES
('Approved', NULL, NULL, 'No', 2300002, '', 0x537461722054656368202d20313639313935323636312e706e67, 'sdasdasdad', 'U9SWUTSKGz', '1234567890', '1234567890', 'UlJqt0PqmL', 'UTVnzSiwG7', 'jyy2tej7s3', 0x537461722054656368202d20313639313935323636312e706e67, 0x537461722054656368202d20313639313935323636312e706e67, 0x537461722054656368202d20313639313935323636312e706e67, '2023-08-15', '2023-08-23', '2023-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `customer_relationship_manager_login`
--

CREATE TABLE `customer_relationship_manager_login` (
  `CUS_ID` int(3) UNSIGNED NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_relationship_manager_login`
--

INSERT INTO `customer_relationship_manager_login` (`CUS_ID`, `Username`, `Password`, `Phone`, `Email`, `Department`) VALUES
(231, 'lankabangla', '$2y$10$CekDe4ba4OfIH6aGhqKwgOyGwbYITSzUO2r9Zn8UtNxI0rkvVT06i', '01536129173', 'raityan2025@gmail.com', 'Any');

-- --------------------------------------------------------

--
-- Table structure for table `head_of_settlement_login`
--

CREATE TABLE `head_of_settlement_login` (
  `HOS_ID` int(3) UNSIGNED NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `head_of_settlement_login`
--

INSERT INTO `head_of_settlement_login` (`HOS_ID`, `Username`, `Password`, `Phone`, `Email`) VALUES
(101, 'lankabangla', '$2y$10$9dDGLqO.CU4BW3cvaINfU.dxZvi/2ECfv.LHALk8GK6K2dhaqtA1C', '01436229373', 'rait2025@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `cdbl_system`
--
ALTER TABLE `cdbl_system`
  ADD PRIMARY KEY (`CDBL_Participant_ID`);

--
-- Indexes for table `client_login`
--
ALTER TABLE `client_login`
  ADD PRIMARY KEY (`Client_CODE`),
  ADD KEY `idx_client_code` (`Client_CODE`);

--
-- Indexes for table `customer_application_for_terms_and_conditions_by_laws`
--
ALTER TABLE `customer_application_for_terms_and_conditions_by_laws`
  ADD PRIMARY KEY (`Client_CODE`),
  ADD KEY `FK_First_Account_Holder` (`First_Account_Holder`),
  ADD KEY `FK_Second_Account_Holder` (`Second_Account_Holder`),
  ADD KEY `FK_3rd_Signatory` (`_3rd_Signatory`);

--
-- Indexes for table `customer_bo_account_nomination_form_nominee1`
--
ALTER TABLE `customer_bo_account_nomination_form_nominee1`
  ADD PRIMARY KEY (`BO_ID`,`Client_CODE`),
  ADD KEY `Client_CODE` (`Client_CODE`),
  ADD KEY `idx_date1` (`date1`),
  ADD KEY `idx_Name_of_CDBL_Participant` (`Name_of_CDBL_Participant`),
  ADD KEY `idx_CDBL_Participant_ID1` (`CDBL_Participant_ID1`),
  ADD KEY `idx_NameofAccountHolder1` (`NameofAccountHolder1`),
  ADD KEY `idx_application1` (`application1`),
  ADD KEY `idx_firstAccName5` (`firstAccName5`),
  ADD KEY `idx_dateFirstSig5` (`dateFirstSig5`),
  ADD KEY `idx_secondAccName6` (`secondAccName6`),
  ADD KEY `idx_dateSecondSig6` (`dateSecondSig6`);

--
-- Indexes for table `customer_bo_account_nomination_form_nominee2`
--
ALTER TABLE `customer_bo_account_nomination_form_nominee2`
  ADD PRIMARY KEY (`BO_ID`,`Client_CODE`),
  ADD KEY `Client_CODE` (`Client_CODE`),
  ADD KEY `ss` (`date1`),
  ADD KEY `dd` (`application1`),
  ADD KEY `ff` (`Name_of_CDBL_Participant`),
  ADD KEY `ffs5` (`CDBL_Participant_ID1`),
  ADD KEY `ffs6` (`NameofAccountHolder1`),
  ADD KEY `ffs1` (`firstAccName5`),
  ADD KEY `ffs2` (`dateFirstSig5`),
  ADD KEY `ffs3` (`secondAccName6`),
  ADD KEY `ffs4` (`dateSecondSig6`);

--
-- Indexes for table `customer_bo_account_opening_form`
--
ALTER TABLE `customer_bo_account_opening_form`
  ADD PRIMARY KEY (`BO_ID`),
  ADD KEY `Client_CODE` (`Client_CODE`);

--
-- Indexes for table `customer_bo_account_opening_form_part2`
--
ALTER TABLE `customer_bo_account_opening_form_part2`
  ADD PRIMARY KEY (`Client_CODE`,`BO_ID`),
  ADD KEY `BO_ID` (`BO_ID`);

--
-- Indexes for table `customer_credit_facility_form`
--
ALTER TABLE `customer_credit_facility_form`
  ADD PRIMARY KEY (`fill_up_date`,`Client_CODE`),
  ADD KEY `Client_CODE` (`Client_CODE`),
  ADD KEY `Code` (`Code`);

--
-- Indexes for table `customer_info_authorized_account_holder`
--
ALTER TABLE `customer_info_authorized_account_holder`
  ADD PRIMARY KEY (`authorized_acc_h_Name`,`Client_CODE`),
  ADD KEY `Client_CODE` (`Client_CODE`),
  ADD KEY `authorized_acc_h_Name` (`authorized_acc_h_Name`),
  ADD KEY `idx_authorized_acc_h_Name` (`authorized_acc_h_Name`);

--
-- Indexes for table `customer_info_date_client_form`
--
ALTER TABLE `customer_info_date_client_form`
  ADD PRIMARY KEY (`Client_CODE`);

--
-- Indexes for table `customer_info_first_account_holder`
--
ALTER TABLE `customer_info_first_account_holder`
  ADD PRIMARY KEY (`first_acc_h_Name`,`Client_CODE`),
  ADD KEY `fk_client_code` (`Client_CODE`),
  ADD KEY `first_acc_h_Name` (`first_acc_h_Name`),
  ADD KEY `idx_first_acc_h_Name` (`first_acc_h_Name`);

--
-- Indexes for table `customer_info_joint_account_holder`
--
ALTER TABLE `customer_info_joint_account_holder`
  ADD PRIMARY KEY (`joint_acc_h_Name`,`Client_CODE`),
  ADD KEY `Client_CODE` (`Client_CODE`),
  ADD KEY `joint_acc_h_Name` (`joint_acc_h_Name`),
  ADD KEY `idx_joint_acc_h_Name` (`joint_acc_h_Name`);

--
-- Indexes for table `customer_info_rest_of_info`
--
ALTER TABLE `customer_info_rest_of_info`
  ADD PRIMARY KEY (`account_No`,`Client_CODE`,`routing_No`),
  ADD KEY `Client_CODE` (`Client_CODE`);

--
-- Indexes for table `customer_relationship_manager_login`
--
ALTER TABLE `customer_relationship_manager_login`
  ADD PRIMARY KEY (`CUS_ID`);

--
-- Indexes for table `head_of_settlement_login`
--
ALTER TABLE `head_of_settlement_login`
  ADD PRIMARY KEY (`HOS_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `AdminID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5101;

--
-- AUTO_INCREMENT for table `cdbl_system`
--
ALTER TABLE `cdbl_system`
  MODIFY `CDBL_Participant_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9876544;

--
-- AUTO_INCREMENT for table `client_login`
--
ALTER TABLE `client_login`
  MODIFY `Client_CODE` int(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2300006;

--
-- AUTO_INCREMENT for table `customer_bo_account_opening_form`
--
ALTER TABLE `customer_bo_account_opening_form`
  MODIFY `BO_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5300002;

--
-- AUTO_INCREMENT for table `customer_relationship_manager_login`
--
ALTER TABLE `customer_relationship_manager_login`
  MODIFY `CUS_ID` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `head_of_settlement_login`
--
ALTER TABLE `head_of_settlement_login`
  MODIFY `HOS_ID` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_application_for_terms_and_conditions_by_laws`
--
ALTER TABLE `customer_application_for_terms_and_conditions_by_laws`
  ADD CONSTRAINT `FK_3rd_Signatory` FOREIGN KEY (`_3rd_Signatory`) REFERENCES `customer_info_authorized_account_holder` (`authorized_acc_h_Name`),
  ADD CONSTRAINT `FK_First_Account_Holder` FOREIGN KEY (`First_Account_Holder`) REFERENCES `customer_info_first_account_holder` (`first_acc_h_Name`),
  ADD CONSTRAINT `FK_Second_Account_Holder` FOREIGN KEY (`Second_Account_Holder`) REFERENCES `customer_info_joint_account_holder` (`joint_acc_h_Name`),
  ADD CONSTRAINT `c_1` FOREIGN KEY (`Client_CODE`) REFERENCES `client_login` (`Client_CODE`);

--
-- Constraints for table `customer_bo_account_nomination_form_nominee1`
--
ALTER TABLE `customer_bo_account_nomination_form_nominee1`
  ADD CONSTRAINT `customer_bo_account_nomination_form_nominee1_ibfk_1` FOREIGN KEY (`Client_CODE`) REFERENCES `client_login` (`Client_CODE`),
  ADD CONSTRAINT `customer_bo_account_nomination_form_nominee1_ibfk_2` FOREIGN KEY (`BO_ID`) REFERENCES `customer_bo_account_opening_form` (`BO_ID`);

--
-- Constraints for table `customer_bo_account_nomination_form_nominee2`
--
ALTER TABLE `customer_bo_account_nomination_form_nominee2`
  ADD CONSTRAINT `customer_bo_account_nomination_form_nominee2_ibfk_1` FOREIGN KEY (`Client_CODE`) REFERENCES `client_login` (`Client_CODE`),
  ADD CONSTRAINT `customer_bo_account_nomination_form_nominee2_ibfk_2` FOREIGN KEY (`BO_ID`) REFERENCES `customer_bo_account_opening_form` (`BO_ID`),
  ADD CONSTRAINT `dd` FOREIGN KEY (`application1`) REFERENCES `customer_bo_account_nomination_form_nominee1` (`application1`),
  ADD CONSTRAINT `ff` FOREIGN KEY (`Name_of_CDBL_Participant`) REFERENCES `customer_bo_account_nomination_form_nominee1` (`Name_of_CDBL_Participant`),
  ADD CONSTRAINT `ffs1` FOREIGN KEY (`firstAccName5`) REFERENCES `customer_bo_account_nomination_form_nominee1` (`firstAccName5`),
  ADD CONSTRAINT `ffs2` FOREIGN KEY (`dateFirstSig5`) REFERENCES `customer_bo_account_nomination_form_nominee1` (`dateFirstSig5`),
  ADD CONSTRAINT `ffs3` FOREIGN KEY (`secondAccName6`) REFERENCES `customer_bo_account_nomination_form_nominee1` (`secondAccName6`),
  ADD CONSTRAINT `ffs4` FOREIGN KEY (`dateSecondSig6`) REFERENCES `customer_bo_account_nomination_form_nominee1` (`dateSecondSig6`),
  ADD CONSTRAINT `ffs5` FOREIGN KEY (`CDBL_Participant_ID1`) REFERENCES `customer_bo_account_nomination_form_nominee1` (`CDBL_Participant_ID1`),
  ADD CONSTRAINT `ffs6` FOREIGN KEY (`NameofAccountHolder1`) REFERENCES `customer_bo_account_nomination_form_nominee1` (`NameofAccountHolder1`),
  ADD CONSTRAINT `ss` FOREIGN KEY (`date1`) REFERENCES `customer_bo_account_nomination_form_nominee1` (`date1`);

--
-- Constraints for table `customer_bo_account_opening_form`
--
ALTER TABLE `customer_bo_account_opening_form`
  ADD CONSTRAINT `customer_bo_account_opening_form_ibfk_1` FOREIGN KEY (`Client_CODE`) REFERENCES `client_login` (`Client_CODE`);

--
-- Constraints for table `customer_bo_account_opening_form_part2`
--
ALTER TABLE `customer_bo_account_opening_form_part2`
  ADD CONSTRAINT `customer_bo_account_opening_form_part2_ibfk_1` FOREIGN KEY (`Client_CODE`) REFERENCES `client_login` (`Client_CODE`),
  ADD CONSTRAINT `customer_bo_account_opening_form_part2_ibfk_2` FOREIGN KEY (`BO_ID`) REFERENCES `customer_bo_account_opening_form` (`BO_ID`);

--
-- Constraints for table `customer_credit_facility_form`
--
ALTER TABLE `customer_credit_facility_form`
  ADD CONSTRAINT `customer_credit_facility_form_ibfk_1` FOREIGN KEY (`Client_CODE`) REFERENCES `client_login` (`Client_CODE`),
  ADD CONSTRAINT `customer_credit_facility_form_ibfk_2` FOREIGN KEY (`Code`) REFERENCES `client_login` (`Client_CODE`);

--
-- Constraints for table `customer_info_authorized_account_holder`
--
ALTER TABLE `customer_info_authorized_account_holder`
  ADD CONSTRAINT `customer_info_authorized_account_holder_ibfk_1` FOREIGN KEY (`Client_CODE`) REFERENCES `client_login` (`Client_CODE`);

--
-- Constraints for table `customer_info_date_client_form`
--
ALTER TABLE `customer_info_date_client_form`
  ADD CONSTRAINT `customer_info_date_client_form_ibfk_1` FOREIGN KEY (`Client_CODE`) REFERENCES `client_login` (`Client_CODE`);

--
-- Constraints for table `customer_info_first_account_holder`
--
ALTER TABLE `customer_info_first_account_holder`
  ADD CONSTRAINT `fk_client_code` FOREIGN KEY (`Client_CODE`) REFERENCES `client_login` (`Client_CODE`);

--
-- Constraints for table `customer_info_joint_account_holder`
--
ALTER TABLE `customer_info_joint_account_holder`
  ADD CONSTRAINT `customer_info_joint_account_holder_ibfk_1` FOREIGN KEY (`Client_CODE`) REFERENCES `client_login` (`Client_CODE`);

--
-- Constraints for table `customer_info_rest_of_info`
--
ALTER TABLE `customer_info_rest_of_info`
  ADD CONSTRAINT `customer_info_rest_of_info_ibfk_1` FOREIGN KEY (`Client_CODE`) REFERENCES `client_login` (`Client_CODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
