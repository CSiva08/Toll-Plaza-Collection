-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 02:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toll`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` longtext NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `question`, `answer`, `password`) VALUES
('191075', 'WHO IS YOUR BEST FRIEND?', 'zakeer', '@5sarkar'),
('191019', 'WHAT WAS YOUR HOBBY?', 'sleeping', '@5rajesh');

-- --------------------------------------------------------

--
-- Table structure for table `adminprofile`
--

CREATE TABLE `adminprofile` (
  `name` longtext NOT NULL,
  `contact_no` longtext NOT NULL,
  `dob` longtext NOT NULL,
  `address` longtext NOT NULL,
  `adminid` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `end_state`
--

CREATE TABLE `end_state` (
  `end` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `end_state`
--

INSERT INTO `end_state` (`end`) VALUES
('chennai'),
('bangalore'),
('delhi');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `username` longtext NOT NULL,
  `contact_no` longtext NOT NULL,
  `status` longtext NOT NULL,
  `complaint` longtext NOT NULL,
  `vehicle_no` longtext DEFAULT NULL,
  `date` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`username`, `contact_no`, `status`, `complaint`, `vehicle_no`, `date`) VALUES
('siva', '6302287578', 'Informed', 'I lost my vehicle', 'ap03ap1234', '18-11-2022'),
('siva', '6302287578', 'Informed', 'I lost my vehicle', 'ap12as1432', '19-11-2022'),
('siva', '6302287578', 'Informed', 'I lost my vehicle', 'ap12as1432', '19-11-2022'),
('siva', '6302287578', 'Informed', 'I lost my vehicle', 'ap12as1432', '19-11-2022');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `username` longtext NOT NULL,
  `start` longtext DEFAULT NULL,
  `end` longtext DEFAULT NULL,
  `toll_name` longtext NOT NULL,
  `vehicle_type` longtext NOT NULL,
  `vehicle_number` longtext NOT NULL,
  `amount` int(11) NOT NULL,
  `verification` longtext NOT NULL,
  `date` longtext NOT NULL,
  `time` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`username`, `start`, `end`, `toll_name`, `vehicle_type`, `vehicle_number`, `amount`, `verification`, `date`, `time`) VALUES
('siva', 'chittoor', 'chennai', 'sriperumbhur', 'car', 'ap03ap1234', 50, 'Refunded', '18-11-2022', '10:19:47'),
('siva', 'chittoor', 'chennai', 'sriperumbhur', 'jeep', 'ap03ap1234', 50, 'Refunded', '18-11-2022', '10:22:18'),
('siva', 'chittoor', 'chennai', 'sriperumbhur', 'jeep', 'ap03ap1234', 50, 'Refunded', '17-11-2022', '6:37:50'),
('siva', 'chittoor', 'chennai', 'sriperumbhur', 'car', 'ap03ap1234', 50, 'Refunded', '18-11-2022', '11:29:18'),
('rajesh', 'chittoor', 'chennai', 'sriperumbhur', 'jeep', 'ap03ap1234', 50, 'Refunded', '18-11-2022', '6:37:50'),
('rajesh', 'chittoor', 'chennai', 'sriperumbhur', 'car', 'ap12as1432', 50, 'Paid/not verified', '19-11-2022', '10:37:50'),
('siva', 'chittoor', 'chennai', 'sriperumbhur', 'jeep', 'ap03ap1234', 50, 'Refunded', '18-11-2022', '6:37:50'),
('siva', 'chittoor', 'chennai', 'sriperumbhur', 'jeep', 'ap03ap1234', 50, 'Refunded', '18-11-2022', '6:37:50'),
('siva', 'chittoor', 'chennai', 'sriperumbhur', 'jeep', 'ap03ap1234', 50, 'Refunded', '18-11-2022', '6:37:50'),
('siva', 'chittoor', 'chennai', 'sriperumbhur', 'jeep', 'ap03ap1234', 50, 'Refunded', '18-11-2022', '6:37:50'),
('siva', 'chittoor', 'chennai', 'sriperumbhur', 'jeep', 'ap03ap1234', 50, 'Refunded', '18-11-2022', '6:37:50'),
('siva', 'chittoor', 'chennai', 'sriperumbhur', 'jeep', 'ap03ap1234', 50, 'Paid/verified', '19-11-2022', '1:24:17'),
('siva', 'chittoor', 'chennai', 'sriperumbhur', 'jeep', 'ap03ap1234', 50, 'Refunded', '18-11-2022', '6:37:50'),
('siva', 'chennai', 'bangalore', 'sriperumbudur', 'car', 'ap03ap1234', 50, 'Paid/not verified', '2-12-2022', '4:9:7'),
('siva', 'chennai', 'bangalore', 'Krishnagiri', 'car', 'ap03ap1234', 75, 'Paid/not verified', '2-12-2022', '4:9:7');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `username` longtext NOT NULL,
  `name` longtext NOT NULL,
  `contact_no` longtext NOT NULL,
  `dob` longtext NOT NULL,
  `address` longtext NOT NULL,
  `qrcode` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`username`, `name`, `contact_no`, `dob`, `address`, `qrcode`) VALUES
('siva', 'siva', '6302287578', '31-05-2021', 'papasamudram', 0x89504e470d0a1a0a0000000d49484452000000c8000000c8010000000085239333000000df4944415478daedd73d0ec3200c056033f918dc949f9b720c265eb10952d3a6b35d09a624dff204d810c2af41478e1cf90fe9344740cb3d16798c9e441e6b8f8351f7ab1f2914eb4c2d4ec1a1acd43e05507727d873f9bc0f2c45aba4cba43ed68fa5ec51d6b787be6327925af2e64e895b625f92665e5ded5928f7d5b61634e226c1793666a2b7d4f6d2e75c6a6a607cee516b910f52bb4353e7db1eb597d563869eb7df156c295777919d581883e149b42ba3254d1de04bd63996b582efa97d498543b9ba4b7026eb169077297b92eb16a0a9a5501cc9f99f3b72e44fe5057e05718642f346060000000049454e44ae426082),
('manish', 'manish', 'Not given', 'Not given', 'Not given', 0x89504e470d0a1a0a0000000d49484452000000c8000000c8010000000085239333000000db4944415478daedd7310ec3200c055067e218dcb40937e5184c71fd31511a89cefe91608868dee2cac638a2ff962c59b2e41dd2c4d686673eb0cd4c826d69f2915cae9f3c72e05d9504df280551738abd688cd2b38d54cfeb2052fc9420f0f9f909145fe669de7722c532acb57717847c3efe4fb4a89e494f6f2dcf6cc74b93bda7da2bb150c908bce2ec5a6f4e4a24a8c12ae251d75d99e43e25b597642612ef2eb831ecb245e699644c011e359b8c2940809cb2f77df9ad5112b9eedb4332958c29a0d975218fb31d2fd714a08a9067134a98acefb9254b5e2a5f575e818e44ed00df0000000049454e44ae426082),
('rajesh', 'rajesh', '6302287578', '01-06-2021', 'CHITTOOR', 0x89504e470d0a1a0a0000000d49484452000000c8000000c8010000000085239333000000e04944415478daedd7410e84200c05d0b2e218bda9e24d39062b3bfd454d8cce9a6f022be46d9a420b8afd1b3265ca946f48131fc9eadab460aa4c82e9d674cfb69d9f3c5244378f1a2e89507ad49c62164e2776e6f2fd1c8c94a89286a4bed6cf483947e96b2f7d679c206ac4bb3659725d3295a07c7d2d1d85a24462157b9cad646fcc983089ef3372e99d6f975b051388afd514495d9bdecee878b1ab8e3d9dfba38247cad15d04af00976c4c125d39f65ca256a8e4bac73c9df7a849440de24f3c46417741b970497f75f65349264795c455f6b8e7c6cafc9f9b32e5a3f203b45d6d6081d880c80000000049454e44ae426082),
('zakeer', 'zakeer', 'Not given', 'Not given', 'Not given', 0x89504e470d0a1a0a0000000d49484452000000c8000000c8010000000085239333000000dd4944415478daedd74b0ec3200c045067c531b8690237e518ac70fd49aa22d1b5271228aa68df06c51e3721feb768cb962def904eb20ee6da73d16d4612dd56dbd4e72b8e14cad57eae9d0e40f153834a3b0951acda8d12affb20522c257a3bd7f989145f1e91d5dc8914adb01e564bed5106934babddcea4fd8824b924ef44bba084db21f14d2c6d28471e58e2ff6372760df1dca3f1f24d89e0efe48b9767bae8cceb74129464bfa9f259e66a23c8fd146017a26850da2592184ebaa58496cf559162d5d67ebc98e75387cb9d926123792cf21327fb7d6ecb9697ca07b5685d8e8abf5fce0000000049454e44ae426082),
('muthu', 'muthukumaran', '63022875758', '07-06-2021', 'CHENNAI', 0x89504e470d0a1a0a0000000d49484452000000c8000000c8010000000085239333000000e34944415478daed97410e84200c45cbaac7e0a60837e518acecb445c9cca86bbe09c418e46d2aedff1492a7418b2cb2c83b48231d416aa2986d1a91884d4ba3c452ce4f1c92292ad99abd0320d11d650125baf0f43f5389673bee16fb5d1dcc24ae120bf95e3f33491fed5cbbf8ce4ce2dacd5c8388a63d331291dae32df2ef2e0044760fd90c466a8022ae5d85c9f6b26e50c4a296e1cae93bdb0064d4a31acc6fb66793c35dbc11e04a2c48a44b44b54269180c0cf193560dc6dce5daa1cc2726142bc94c78a46bd7cf3428d2bb80326c0f881c5d80cad71e4622eb3eb7c8222f251f89119fb8f2832e040000000049454e44ae426082),
('mohith', 'mohith', 'Not given', 'Not given', 'Not given', 0x89504e470d0a1a0a0000000d49484452000000c8000000c8010000000085239333000000e249444154785eed954116c320084471e531bc698c37f518594967a4695fd3769d59c8220ff82e262260fecfec9a78d9228bd016912187c112bf65a75b9408dd76d866a59da10ed999eb96c99324a16a4d82c4a1489cd566a9db19ca90e8120abf76c9ed240c3cbf2315820a7b4f533b248f8fffb99df0258edc2b031c5122ee484378fd7a8902a46f99b02287d91c351721ec5d8ce4501df72a43c25073de2bc78c1099fd91b831b06c396694085d881d543d6bae44766e5a1f101fef518f84ff74a4c8ccb5e94b1167ce2a9d4b6fdf4e669770a751751c54213f6d9145688b6893077ff7a52227bee24e0000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `username` longtext NOT NULL,
  `rate` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`username`, `rate`) VALUES
('siva', 'verygood'),
('manish', 'Not given'),
('rajesh', 'excellent'),
('zakeer', 'Not given'),
('muthu', 'verygood'),
('muthu', 'verygood'),
('mohith', 'Not given'),
('mohith', 'Not given');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `start` longtext NOT NULL,
  `end` longtext NOT NULL,
  `toll_name` longtext NOT NULL,
  `vehicle_type` longtext NOT NULL,
  `amount` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`start`, `end`, `toll_name`, `vehicle_type`, `amount`) VALUES
('chittoor', 'chennai', 'sriperumbhur', 'car', '50'),
('chittoor', 'chennai', 'sriperumbhur', 'jeep', '50'),
('chittoor', 'chennai', 'sriperumbhur', 'van', '50'),
('chittoor', 'chennai', 'sriperumbhur', 'bus', '75'),
('chittoor', 'chennai', 'sriperumbhur', 'truck', '75'),
('chittoor', 'chennai', 'chennasamudram', 'jeep', '25'),
('chittoor', 'chennai', 'chennasamudram', 'van', '25'),
('chittoor', 'chennai', 'chennasamudram', 'bus', '50'),
('chennai', 'bangalore', 'sriperumbudur', 'car', '50'),
('chennai', 'bangalore', 'sriperumbudur', 'jeep', '50'),
('chennai', 'bangalore', 'sriperumbudur', 'van', '50'),
('chennai', 'bangalore', 'Krishnagiri', 'car', '75'),
('chennai', 'bangalore', 'Krishnagiri', 'jeep', '75'),
('chennai', 'bangalore', 'Pallikonda', 'car', '95'),
('chennai', 'bangalore', 'Pallikonda', 'jeep', '95'),
('chennai', 'bangalore', 'Vaniyambadi', 'jeep', '90'),
('chennai', 'bangalore', 'Vaniyambadi', 'car', '90'),
('chennai', 'bangalore', 'Chennasamudram', 'car', '45'),
('chennai', 'bangalore', 'Chennasamudram', 'jeep', '45'),
('chennai', 'bangalore', 'Attibele betl', 'jeep', '30'),
('chennai', 'bangalore', 'Attibele betl', 'car', '30'),
('chennai', 'bangalore', 'Electronic city', 'car', '45'),
('chennai', 'bangalore', 'Electronic city', 'jeep', '45');

-- --------------------------------------------------------

--
-- Table structure for table `start_state`
--

CREATE TABLE `start_state` (
  `start` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `start_state`
--

INSERT INTO `start_state` (`start`) VALUES
('chittoor'),
('chennai');

-- --------------------------------------------------------

--
-- Table structure for table `toll_names`
--

CREATE TABLE `toll_names` (
  `toll_name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toll_names`
--

INSERT INTO `toll_names` (`toll_name`) VALUES
('sriperumbhur'),
('sriperumbudur'),
('Krishnagiri'),
('Pallikonda'),
('Vaniyambadi'),
('Chennasamudram'),
('Attibele betl'),
('Electronic city');

-- --------------------------------------------------------

--
-- Table structure for table `userregister`
--

CREATE TABLE `userregister` (
  `username` longtext NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `password` longtext NOT NULL,
  `wallet` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userregister`
--

INSERT INTO `userregister` (`username`, `question`, `answer`, `password`, `wallet`) VALUES
('siva', 'WHO IS YOUR BEST FRIEND?', 'zakeer', '@5sarkar', 375),
('manish', 'WHAT WAS YOUR HOBBY?', 'sleeping', '@5manish', 100),
('rajesh', 'WHO IS YOUR BEST FRIEND?', 'rajesh', '@5rajesh', 415),
('mohith', 'WHAT GAME YOU LIKE?', 'cricket', '@5mohith', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
