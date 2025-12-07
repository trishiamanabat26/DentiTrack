-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2025 at 06:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dentitrack_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `posted_by` int(11) NOT NULL,
  `posted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `title`, `content`, `posted_by`, `posted_at`, `image`) VALUES
(1, 'Holiday', 'christmas szn', 5, '2025-12-25 16:00:00', 'ann_69286c7a515fe.jfif'),
(2, 'Maintenance', 'wait for the further announcement', 5, '2025-11-28 16:00:00', 'ann_69286c660649c.jpg'),
(3, 'Maintenance', 'wait for the further announcement', 5, '2025-11-28 16:00:00', 'ann_69286bc247c39.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(50) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `status` enum('booked','completed','cancelled','declined','rest') NOT NULL DEFAULT 'booked',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `user_id`, `patient_id`, `service_id`, `appointment_date`, `appointment_time`, `start_time`, `end_time`, `comments`, `status`, `created_at`, `updated_at`) VALUES
(1, 26, 26, 8, '2025-11-28', '7:00 AM - 9:00 AM', '07:00:00', '09:00:00', 'a', 'cancelled', '2025-11-26 19:32:25', '2025-11-26 20:03:48'),
(2, 26, NULL, 8, '2025-11-29', '11:00 AM - 1:00 PM', '11:00:00', '13:00:00', '123qasea', 'completed', '2025-11-26 19:44:52', '2025-11-26 19:54:51'),
(3, 26, NULL, 11, '2025-12-01', '5:00 AM - 5:30 AM', '05:00:00', '05:30:00', '', 'completed', '2025-11-26 20:04:26', '2025-11-28 15:41:27'),
(4, 26, NULL, 8, '2025-12-01', '5:30 AM - 7:30 AM', '05:30:00', '07:30:00', '', 'booked', '2025-11-26 20:04:37', '2025-11-26 20:04:37'),
(15, 26, 26, 9, '2025-12-02', '7:00 AM - 8:00 AM', '07:00:00', '08:00:00', '', 'booked', '2025-11-27 17:12:33', '2025-11-27 17:12:33'),
(16, 26, 26, 8, '2025-12-02', '5:00 AM - 7:00 AM', '05:00:00', '07:00:00', '123', '', '2025-11-27 17:16:12', '2025-11-27 17:16:12'),
(17, 26, 26, 8, '2025-12-02', '5:00 AM - 7:00 AM', '05:00:00', '07:00:00', '123', 'booked', '2025-11-27 17:17:24', '2025-11-27 17:17:24'),
(18, 26, 26, 9, '2025-12-02', '8:00 AM - 9:00 AM', '08:00:00', '09:00:00', 'test', 'booked', '2025-11-27 18:13:46', '2025-11-27 18:13:46'),
(19, 26, 26, 9, '2025-12-02', '9:00 AM - 10:00 AM', '09:00:00', '10:00:00', 'test', 'booked', '2025-11-27 18:14:15', '2025-11-27 18:14:15'),
(20, 27, 27, 8, '2025-11-30', '11:00 AM - 1:00 PM', '11:00:00', '13:00:00', '', 'booked', '2025-11-28 05:36:27', '2025-11-28 05:36:27'),
(21, 28, 28, 9, '2025-11-30', '7:00 AM - 8:00 AM', '07:00:00', '08:00:00', '', 'completed', '2025-11-28 07:22:56', '2025-11-28 15:45:30'),
(22, 28, 28, 8, '2025-11-30', '1:00 PM - 3:00 PM', '13:00:00', '15:00:00', '', 'completed', '2025-11-28 07:33:21', '2025-11-28 15:42:50'),
(23, 28, 28, 7, '2025-12-04', '11:00 AM - 1:00 PM', '11:00:00', '13:00:00', '', 'booked', '2025-11-28 15:52:06', '2025-11-28 15:52:06'),
(24, 28, 28, 22, '2025-12-10', '6:00 AM - 6:30 AM', '06:00:00', '06:30:00', '', 'booked', '2025-11-28 15:55:53', '2025-11-28 15:55:53'),
(25, 28, 28, 6, '2025-12-03', '6:30 AM - 7:00 AM', '06:30:00', '07:00:00', '', 'booked', '2025-11-28 16:03:32', '2025-11-28 16:03:32'),
(44, 26, 26, 11, '2025-12-06', '6:30 AM - 7:00 AM', '06:30:00', '07:00:00', '', 'booked', '2025-11-29 15:47:58', '2025-11-29 15:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `dental_records`
--

CREATE TABLE `dental_records` (
  `record_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `record_date` date NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dental_supplies`
--

CREATE TABLE `dental_supplies` (
  `supply_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `batch_id` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `unit` varchar(50) DEFAULT 'pcs',
  `expiration_date` date DEFAULT NULL,
  `low_stock_threshold` int(11) NOT NULL DEFAULT 5,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `price` decimal(10,2) DEFAULT NULL,
  `lot_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dental_supplies`
--

INSERT INTO `dental_supplies` (`supply_id`, `name`, `batch_id`, `category`, `description`, `quantity`, `unit`, `expiration_date`, `low_stock_threshold`, `last_updated`, `price`, `lot_number`) VALUES
(38, 'Rubber Dam', '2026-07-10-38', NULL, 'A thin latex or non-latex sheet used to isolate one or more teeth during dental procedures (restorations, root canal, etc.) to keep the area dry and clean.', 135, 'boxes', '2026-07-10', 10, '2025-11-28 07:59:17', 150.00, 'LOT-20251128-ab563c'),
(39, 'Rubber Dam', '2028-11-01-39', NULL, 'A thin latex or non-latex sheet used to isolate one or more teeth during dental procedures (restorations, root canal, etc.) to keep the area dry and clean.', 20, 'boxes', '2028-11-01', 10, '2025-11-28 07:59:43', 150.00, 'LOT-20251128-84e858'),
(40, 'Rubber Mixing Bowl', '2028-02-11-40', NULL, 'A flexible rubber bowl used for mixing dental materials such as alginate and impression', 120, 'boxes', '2028-02-11', 60, '2025-11-28 08:01:25', 100.00, 'LOT-20251128-22c570');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_availability`
--

CREATE TABLE `doctor_availability` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `available_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_availability`
--

INSERT INTO `doctor_availability` (`id`, `doctor_id`, `available_date`, `start_time`, `end_time`, `is_available`, `reason`, `created_at`, `updated_at`) VALUES
(1, 4, '2025-11-30', '00:00:00', '23:59:59', 1, 'asd', '2025-11-26 19:52:01', '2025-11-26 20:13:04'),
(2, 4, '2025-12-02', '00:00:00', '23:59:59', 0, 'sick leave', '2025-11-26 20:13:12', '2025-11-26 20:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `fullname` varchar(255) GENERATED ALWAYS AS (trim(concat_ws(' ',`first_name`,`middle_name`,`last_name`))) STORED,
  `email` varchar(150) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT 'Other',
  `address` text DEFAULT NULL,
  `emergency_contact_name` varchar(150) DEFAULT NULL,
  `emergency_contact_number` varchar(20) DEFAULT NULL,
  `medical_history` text DEFAULT NULL,
  `allergies` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `outstanding_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_archived` tinyint(1) NOT NULL DEFAULT 0,
  `archived_date` datetime DEFAULT NULL,
  `downpayment_default` decimal(10,2) DEFAULT 500.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `user_id`, `first_name`, `middle_name`, `last_name`, `email`, `contact_number`, `dob`, `gender`, `address`, `emergency_contact_name`, `emergency_contact_number`, `medical_history`, `allergies`, `notes`, `created_at`, `updated_at`, `outstanding_balance`, `is_archived`, `archived_date`, `downpayment_default`) VALUES
(26, 26, 'Aya', 'Mae', 'Pretty', 'ayizaki2004@gmail.com', '09305333684', '2004-02-26', 'Female', '1294 Caingin Bocaue Bulacan', NULL, NULL, NULL, NULL, NULL, '2025-11-20 09:48:58', '2025-11-28 12:44:02', 0.00, 0, NULL, 500.00),
(27, 27, 'Analizel', 'B.', 'Del poso', 'analizeldelposo0519@gmail.com', '09334894525', '1999-02-27', 'Female', 'Bocaue', NULL, NULL, NULL, NULL, NULL, '2025-11-26 05:11:24', '2025-11-28 05:35:28', 0.00, 0, NULL, 500.00),
(28, 28, 'Mayix', 'M', 'Manabat', 'trishiamae.manabat@gmail.com', '09097541389', '2004-07-19', 'Female', 'Marilao', NULL, NULL, NULL, NULL, NULL, '2025-11-28 07:12:02', '2025-11-28 17:20:06', 16000.00, 0, NULL, 500.00),
(35, 36, 'Christine', 'P.', 'Lazaro', 'lazarochristine08@gmail.com', '099877654321', '2004-02-08', 'Female', 'Bolacan', NULL, NULL, NULL, NULL, NULL, '2025-11-29 13:44:33', '2025-11-29 13:44:33', 0.00, 0, NULL, 500.00),
(36, 37, 'Irish', 'M.', 'Legaspi', 'trishiamae.manabat@gmail.com', '09097541389', '2004-07-18', 'Female', 'New york city', NULL, NULL, NULL, NULL, NULL, '2025-11-29 16:41:02', '2025-11-29 16:41:02', 0.00, 0, NULL, 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `patient_files`
--

CREATE TABLE `patient_files` (
  `file_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `uploaded_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_files`
--

INSERT INTO `patient_files` (`file_id`, `patient_id`, `file_name`, `file_path`, `uploaded_at`) VALUES
(1, 26, 'dentitrack_main (12).sql', '../uploads/patient_files/1764181235_dentitrack_main (12).sql', '2025-11-27 02:20:35'),
(2, 26, 'EVAL_FINAL.docx', '../uploads/patient_files/1764182783_EVAL_FINAL.docx', '2025-11-27 02:46:23'),
(3, 27, 'pngtree-festive-christmas-and-new-year-2025-celebration-background-image_16821101.jpg', '../uploads/patient_files/1764307688_pngtree-festive-christmas-and-new-year-2025-celebration-background-image_16821101.jpg', '2025-11-28 13:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `patient_recommendations`
--

CREATE TABLE `patient_recommendations` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_username` varchar(255) DEFAULT NULL,
  `recommendation` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_recommendations`
--

INSERT INTO `patient_recommendations` (`id`, `patient_id`, `doctor_username`, `recommendation`, `created_at`) VALUES
(45, 26, 'Trishia Mayi', 'hello', '2025-11-27 02:18:00'),
(46, 27, 'Trishia Mayi', 'brush teeth', '2025-11-28 13:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `patient_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `discount_type` varchar(20) DEFAULT 'none',
  `discount_amount` decimal(10,2) DEFAULT 0.00,
  `total_amount` decimal(10,2) DEFAULT 0.00,
  `supplies_used` text DEFAULT NULL,
  `payment_method` varchar(20) NOT NULL DEFAULT 'cash',
  `booking_option` varchar(50) DEFAULT NULL,
  `status` enum('pending','paid','completed') NOT NULL DEFAULT 'pending',
  `payment_option` enum('full','installment') DEFAULT 'full',
  `downpayment` decimal(10,2) DEFAULT 0.00,
  `installment_term` int(11) DEFAULT 1,
  `monthly_payment` decimal(10,2) DEFAULT 0.00,
  `appointment_id` int(11) DEFAULT NULL,
  `proof_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `user_id`, `amount`, `payment_date`, `created_at`, `patient_id`, `service_id`, `discount_type`, `discount_amount`, `total_amount`, `supplies_used`, `payment_method`, `booking_option`, `status`, `payment_option`, `downpayment`, `installment_term`, `monthly_payment`, `appointment_id`, `proof_image`) VALUES
(1, 26, 30000.00, '2025-11-11', '2025-11-10 18:51:07', 26, 8, 'loyalty', 3000.00, 27000.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(2, 26, 300.00, '2025-11-11', '2025-11-10 18:51:38', 26, 16, 'health', 45.00, 255.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(3, 26, 50000.00, '2025-11-11', '2025-11-10 18:52:54', 26, 9, 'none', 0.00, 50000.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(4, 26, 50000.00, '2025-11-11', '2025-11-10 18:53:29', 26, 9, 'none', 0.00, 50000.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(5, 26, 30000.00, '2025-11-11', '2025-11-10 18:53:48', 26, 8, 'none', 0.00, 30000.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(6, 26, 30000.00, '2025-11-11', '2025-11-10 19:06:54', 26, 8, 'health', 4500.00, 25500.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(7, 26, 30000.00, '2025-11-11', '2025-11-10 19:10:03', 26, 8, 'health', 4500.00, 25500.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(8, 26, 300.00, '2025-11-11', '2025-11-10 19:12:14', 26, 16, 'health', 45.00, 255.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(9, 26, 50000.00, '2025-11-11', '2025-11-10 19:14:40', 26, 9, 'none', 0.00, 50000.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(10, 26, 30000.00, '2025-11-11', '2025-11-10 19:17:53', 26, 8, 'health', 4500.00, 25500.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(11, 26, 300.00, '2025-11-11', '2025-11-10 19:30:59', 26, 16, 'health', 45.00, 255.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(12, 26, 30000.00, '2025-11-11', '2025-11-10 19:34:41', 26, 8, 'loyalty', 3000.00, 27000.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(13, 26, 50000.00, '2025-11-11', '2025-11-10 19:36:50', 26, 9, 'loyalty', 5000.00, 45000.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(14, 26, 1500.00, '2025-11-11', '2025-11-10 19:37:02', 26, 11, 'loyalty', 150.00, 1350.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(15, 26, 30000.00, '2025-11-11', '2025-11-10 19:43:46', 26, 8, 'health', 4500.00, 25500.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(16, 26, 1500.00, '2025-11-11', '2025-11-10 19:47:53', 26, 11, 'loyalty', 150.00, 1350.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(17, 26, 1500.00, '2025-11-11', '2025-11-10 19:52:17', 26, 11, 'health', 225.00, 1275.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(18, 26, 50000.00, '2025-11-11', '2025-11-11 06:28:10', 26, 9, 'health', 7500.00, 42500.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(19, 26, 5310.00, '2025-11-12', '2025-11-12 07:46:23', 26, 11, 'health', 796.50, 4513.50, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(20, 26, 1500.00, '2025-11-12', '2025-11-12 08:33:58', 26, 11, 'none', 0.00, 1500.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(21, 26, 1500.00, '2025-11-12', '2025-11-12 08:34:02', 26, 11, 'none', 0.00, 1500.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(22, 26, 1200.00, '2025-11-12', '2025-11-12 08:34:27', 26, 13, 'none', 0.00, 1200.00, NULL, 'gcash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(23, 26, 900.00, '2025-11-12', '2025-11-12 08:41:36', 26, 15, 'none', 0.00, 900.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(24, 26, 3000.00, '2025-11-12', '2025-11-12 08:42:45', 26, 10, 'none', 0.00, 3000.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(25, 26, 1500.00, '2025-11-12', '2025-11-12 08:43:14', 26, 3, 'none', 0.00, 1500.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(26, 26, 700.00, '2025-11-12', '2025-11-12 08:52:21', 26, 4, 'none', 0.00, 700.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(27, 26, 3000.00, '2025-11-12', '2025-11-12 08:54:42', 26, 10, 'none', 0.00, 3000.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(28, 26, 25000.00, '2025-11-12', '2025-11-12 08:57:10', 26, 7, 'none', 0.00, 25000.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(29, 26, 700.00, '2025-11-12', '2025-11-12 08:58:46', 26, 4, 'none', 0.00, 700.00, NULL, 'gcash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(30, 26, 1500.00, '2025-11-12', '2025-11-12 09:02:36', 26, 11, 'none', 0.00, 1500.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(31, 26, 50000.00, '2025-11-12', '2025-11-12 09:02:53', 26, 9, 'health', 7500.00, 42500.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(32, 26, 1100.00, '2025-11-12', '2025-11-12 09:03:32', 26, 14, 'loyalty', 110.00, 990.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(33, 26, 1500.00, '2025-11-12', '2025-11-12 09:08:56', 26, 11, 'none', 0.00, 1500.00, NULL, 'gcash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(34, 26, 1500.00, '2025-11-12', '2025-11-12 09:09:11', 26, 11, 'health', 225.00, 1275.00, NULL, 'gcash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(35, 26, 50600.00, '2025-11-12', '2025-11-12 09:18:41', 26, 9, 'health', 7590.00, 43010.00, NULL, 'gcash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(36, 26, 17100.00, '2025-11-12', '2025-11-12 09:22:30', 26, 11, 'none', 0.00, 17100.00, NULL, 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(37, 26, 5100.00, '2025-11-12', '2025-11-12 09:32:43', 26, 11, 'none', 0.00, 5100.00, NULL, 'gcash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(38, 26, 1300.00, '2025-11-12', '2025-11-12 09:38:15', 26, 4, 'none', 0.00, 1300.00, '[{\"id\":1,\"name\":\"Rubber\",\"qty\":2}]', 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(39, 26, 1500.00, '2025-11-12', '2025-11-12 12:28:47', 26, 11, 'none', 0.00, 1500.00, '[]', 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(40, 26, 30600.00, '2025-11-12', '2025-11-12 12:29:18', 26, 8, 'health', 4590.00, 26010.00, '[{\"id\":1,\"name\":\"Rubber\",\"qty\":2}]', 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(41, 26, 1500.00, '2025-11-12', '2025-11-12 12:41:42', 26, 13, 'none', 0.00, 1500.00, '[{\"id\":1,\"name\":\"Rubber\",\"qty\":1}]', 'gcash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(42, 26, 2100.00, '2025-11-12', '2025-11-12 13:10:24', 26, 11, 'none', 0.00, 2100.00, '[{\"id\":1,\"name\":\"Rubber\",\"qty\":2}]', 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(43, 26, 33600.00, '2025-11-12', '2025-11-12 13:12:35', 26, 8, 'none', 0.00, 33600.00, '[{\"id\":1,\"name\":\"Rubber\",\"qty\":12}]', 'gcash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(44, 26, 600.00, '2025-11-12', '2025-11-12 13:45:29', 26, NULL, 'none', 0.00, 600.00, '[{\"id\":1,\"name\":\"Rubber\",\"qty\":2}]', 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(45, 26, 600.00, '2025-11-12', '2025-11-12 13:45:37', 26, NULL, 'none', 0.00, 600.00, '[{\"id\":1,\"name\":\"Rubber\",\"qty\":2}]', 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(46, 26, 2100.00, '2025-11-12', '2025-11-12 13:45:50', 26, 11, 'none', 0.00, 2100.00, '[{\"id\":1,\"name\":\"Rubber\",\"qty\":2}]', 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(47, 26, 2400.00, '2025-11-12', '2025-11-12 13:46:14', 26, 11, 'none', 0.00, 2400.00, '[{\"id\":1,\"name\":\"Rubber\",\"qty\":3}]', 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(48, 26, 1800.00, '2025-11-12', '2025-11-12 14:04:32', 26, 11, 'health', 270.00, 1530.00, '[{\"id\":1,\"name\":\"Rubber\",\"qty\":1}]', 'gcash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(49, 26, 1100.00, '2025-11-12', '2025-11-12 14:05:31', 26, 1, 'none', 0.00, 1100.00, '[{\"id\":1,\"name\":\"Rubber\",\"qty\":1}]', 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(50, 26, 1850.00, '2025-11-12', '2025-11-12 14:07:13', 26, 11, 'none', 0.00, 1850.00, '[{\"id\":11,\"name\":\"Brace Wire\",\"qty\":1},{\"id\":1,\"name\":\"Rubber\",\"qty\":1}]', 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(51, 26, 1750.00, '2025-11-13', '2025-11-12 17:59:36', 26, 11, 'none', 0.00, 1750.00, '[{\"id\":7,\"name\":\"123\",\"qty\":5}]', 'cash', NULL, 'pending', 'full', 0.00, 1, 0.00, 4, NULL),
(52, 26, 30125.00, '2025-11-15', '2025-11-14 19:55:51', 26, 8, 'none', 0.00, 30125.00, '[{\"id\":1,\"name\":\"Mefenamic\",\"qty\":5}]', 'cash', NULL, 'paid', 'installment', 2500.00, 6, 4604.17, 4, NULL),
(53, 26, 30125.00, '2025-11-15', '2025-11-14 19:58:21', 26, 8, 'none', 0.00, 30125.00, '[{\"id\":1,\"name\":\"Mefenamic\",\"qty\":5}]', 'cash', NULL, 'paid', 'installment', 2500.00, 6, 4604.17, 4, NULL),
(54, 26, 30050.00, '2025-11-15', '2025-11-14 20:00:38', 26, 8, 'health', 4507.50, 25542.50, '[{\"id\":1,\"name\":\"Mefenamic\",\"qty\":2}]', 'cash', NULL, 'pending', 'installment', 5000.00, 12, 1711.88, 4, NULL),
(106, 26, 30125.00, '2025-11-15', '2025-11-14 20:04:29', 26, 8, 'loyalty', 3012.50, 27112.50, '[{\"id\":1,\"name\":\"Mefenamic\",\"qty\":5}]', 'gcash', NULL, 'pending', 'installment', 4500.00, 6, 3768.75, 4, NULL),
(107, 26, 31500.00, '2025-11-15', '2025-11-14 20:07:31', 26, 8, 'loyalty', 3150.00, 28350.00, '[{\"id\":2,\"name\":\"Rubber\",\"qty\":5}]', 'cash', NULL, 'pending', 'installment', 5000.00, 12, 1945.83, 4, NULL),
(108, 26, 25125.00, '2025-11-15', '2025-11-14 20:39:40', 26, 7, 'health', 3768.75, 21356.25, '[{\"id\":1,\"name\":\"Mefenamic\",\"qty\":5}]', 'cash', NULL, 'pending', 'installment', 6000.00, 3, 5118.75, 4, NULL),
(109, 26, 25125.00, '2025-11-15', '2025-11-14 20:40:14', 26, 7, 'health', 3768.75, 21356.25, '[{\"id\":1,\"name\":\"Mefenamic\",\"qty\":5}]', 'cash', NULL, 'pending', 'installment', 6000.00, 3, 5118.75, 4, NULL),
(110, 26, 0.00, '2025-11-15', '2025-11-14 21:08:53', 26, 7, 'none', 0.00, 5118.75, '[]', 'cash', NULL, '', '', 5118.75, 0, 0.00, 4, NULL),
(111, 26, 0.00, '2025-11-15', '2025-11-14 23:37:01', 26, 7, 'none', 0.00, 5118.75, '[]', 'cash', NULL, '', '', 5118.75, 0, 0.00, 4, NULL),
(112, 26, 25000.00, '2025-11-15', '2025-11-15 07:40:45', 26, 7, 'none', 0.00, 25000.00, '[]', 'cash', NULL, 'paid', 'full', 0.00, 0, 0.00, 4, NULL),
(113, 26, 25000.00, '2025-11-15', '2025-11-15 07:42:51', 26, 7, 'none', 0.00, 25000.00, '[]', 'cash', NULL, 'pending', 'installment', 5000.00, 1, 20000.00, 4, NULL),
(114, 0, 0.00, '2025-11-28', '2025-11-27 16:59:01', 26, 8, 'None', 0.00, 0.00, NULL, 'Walk-in', 'Walk-in', 'pending', 'full', 0.00, 1, 0.00, NULL, 'uploads/payment_proofs/proof_692883553123e.png'),
(115, 0, 0.00, '2025-11-28', '2025-11-27 17:03:23', 26, 11, 'None', 0.00, 0.00, NULL, 'Walk-in', 'Walk-in', 'pending', 'full', 0.00, 1, 0.00, NULL, 'uploads/payment_proofs/proof_6928845b46b22.png'),
(116, 0, 0.00, '2025-11-28', '2025-11-27 17:08:07', 26, 11, 'None', 0.00, 0.00, NULL, 'Walk-in', 'Walk-in', 'pending', 'full', 0.00, 1, 0.00, NULL, 'uploads/payment_proofs/proof_692885774e735.png'),
(117, 0, 0.00, '2025-11-28', '2025-11-27 17:12:33', 26, 9, 'None', 0.00, 0.00, NULL, 'Walk-in', 'Walk-in', 'paid', 'full', 0.00, 1, 0.00, 15, 'uploads/payment_proofs/proof_692886810df9e.png'),
(118, 0, 0.00, '2025-11-28', '2025-11-27 17:16:12', 26, 8, 'None', 0.00, 0.00, NULL, 'Walk-in', 'Walk-in', 'paid', 'full', 0.00, 1, 0.00, 16, 'uploads/payment_proofs/proof_6928875c5286f.png'),
(119, 0, 0.00, '2025-11-28', '2025-11-27 17:17:24', 26, 8, 'None', 0.00, 0.00, NULL, 'Walk-in', 'Walk-in', 'paid', 'full', 0.00, 1, 0.00, 17, 'uploads/payment_proofs/proof_692887a4e0c7c.png'),
(120, 0, 42500.00, '2025-11-28', '2025-11-27 18:13:46', 26, 9, 'Health Card (15%)', 7500.00, 42500.00, NULL, 'Online', 'Full Payment', 'paid', 'full', 42500.00, 1, 0.00, 18, 'uploads/payment_proofs/proof_692894da28c04.png'),
(121, 0, 500.00, '2025-11-28', '2025-11-27 18:14:15', 26, 9, 'Loyalty Card (10%)', 5000.00, 45000.00, NULL, 'Walk-in', 'Downpayment', 'pending', 'installment', 500.00, 1, 0.00, 19, 'uploads/payment_proofs/proof_692894f76493f.png'),
(122, 0, 1500.00, '2025-11-29', '2025-11-29 15:47:58', 26, 11, 'None', 0.00, 1500.00, NULL, 'Online', 'Full Payment', 'paid', 'full', 1500.00, 0, 0.00, 44, 'uploads/payment_proofs/proof_692b15ae589aa.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `category`, `description`, `price`, `duration`, `image_path`, `created_at`, `status`) VALUES
(1, 'Fluoride Application for Kids', 'Pediatric Dentistry', 'Helps strengthen tooth enamel and prevent cavities in children.', 800.00, '30 minutes', 'uploads/service_images/svc_691ec18f4774b.jfif', '2025-10-21 23:17:09', 'inactive'),
(2, 'Sealant Application for Kids', 'Pediatric Dentistry', 'Protective coating applied to children’s molars to prevent decay.', 900.00, '30 minutes', 'uploads/service_images/svc_69289072713a0.jpg', '2025-10-21 23:17:09', 'inactive'),
(3, 'Space Maintainer', 'Pediatric Dentistry', 'Used to keep space open for permanent teeth after premature tooth loss.', 1500.00, '45 minutes', NULL, '2025-10-21 23:17:09', 'inactive'),
(4, 'Tooth Extraction (Deciduous Tooth)', 'Pediatric Dentistry', 'Safe extraction of a baby tooth.', 700.00, '30 minutes', NULL, '2025-10-21 23:17:09', 'active'),
(5, 'Pulpotomy / Pulpectomy (Primary Tooth)', 'Pediatric Dentistry', 'Removes infected pulp tissue from a primary tooth to save it.', 2000.00, '1 hour', NULL, '2025-10-21 23:17:09', 'inactive'),
(6, 'Orthodontic Consultation', 'Orthodontics', 'Initial assessment and treatment planning for braces or aligners.', 500.00, '30 minutes', NULL, '2025-10-21 23:17:09', 'active'),
(7, 'Metal Braces Installation', 'Orthodontics', 'Installation of traditional metal braces for teeth alignment.', 25000.00, '2 hours', NULL, '2025-10-21 23:17:09', 'active'),
(8, 'Ceramic Braces Installation', 'Orthodontics', 'Aesthetic braces with ceramic brackets.', 30000.00, '2 hours', NULL, '2025-10-21 23:17:09', 'active'),
(9, 'Clear Aligners', 'Orthodontics', 'Removable transparent aligners for teeth straightening.', 50000.00, '1 hour', NULL, '2025-10-21 23:17:09', 'active'),
(10, 'Retainers', 'Orthodontics', 'Custom retainers to maintain teeth alignment after treatment.', 3000.00, '30 minutes', NULL, '2025-10-21 23:17:09', 'active'),
(11, 'Adjustment / Monthly Visit', 'Orthodontics', 'Monthly adjustment and monitoring of orthodontic treatment.', 1500.00, '30 minutes', NULL, '2025-10-21 23:17:09', 'active'),
(12, 'Oral Examination / Check-up', 'Preventive Dentistry', 'Comprehensive oral health evaluation.', 500.00, '30 minutes', NULL, '2025-10-21 23:17:09', 'active'),
(13, 'Dental Cleaning (Prophylaxis)', 'Preventive Dentistry', 'Professional teeth cleaning to remove plaque and tartar.', 1200.00, '45 minutes', NULL, '2025-10-21 23:17:09', 'active'),
(14, 'Fluoride Treatment', 'Preventive Dentistry', 'Fluoride application to strengthen enamel and prevent decay.', 800.00, '30 minutes', NULL, '2025-10-21 23:17:09', 'active'),
(18, 'Examinations:', 'General Dental Services', 'Regular check-ups to assess oral health and identify potential issues early.', 500.00, '30 minutes', NULL, '2025-11-11 22:16:04', 'active'),
(19, 'Examinations:', 'General Dental Services', 'Regular check-ups to assess oral health and identify potential issues early.', 500.00, '30 minutes', NULL, '2025-11-11 22:16:24', 'active'),
(20, 'Dental Bonding', 'Cosmetic Dental Services', 'A procedure to repair chipped or decayed teeth using a tooth-colored resin.', 800.00, '30 minutes', NULL, '2025-11-11 22:17:02', 'active'),
(21, 'Dental Bonding', 'Cosmetic Dental Services', 'A procedure to repair chipped or decayed teeth using a tooth-colored resin.', 800.00, '30 minutes', NULL, '2025-11-11 22:19:54', 'active'),
(22, 'Dental Bonding', 'Cosmetic Dental Services', 'A procedure to repair chipped or decayed teeth using a tooth-colored resin.', 800.00, '30 minutes', NULL, '2025-11-11 22:22:59', 'active'),
(23, 'Dental Bonding', 'Cosmetic Dental Services', 'A procedure to repair chipped or decayed teeth using a tooth-colored resin.', 800.00, '30 minutes', NULL, '2025-11-11 22:24:04', 'active'),
(30, 'metal braces', 'Retainers', 'hahah', 900.00, '40 mins', NULL, '2025-11-15 03:19:53', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `supply_usage`
--

CREATE TABLE `supply_usage` (
  `id` int(11) NOT NULL,
  `supply_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `quantity_used` int(11) NOT NULL,
  `used_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supply_usage`
--

INSERT INTO `supply_usage` (`id`, `supply_id`, `patient_id`, `payment_id`, `user_id`, `quantity_used`, `used_at`) VALUES
(1, 10, 3, NULL, 0, 12, '2025-11-11 02:51:07'),
(2, 1, 1, NULL, 0, 12, '2025-11-11 02:51:38'),
(3, 5, 4, NULL, 0, 5, '2025-11-11 02:52:54'),
(4, 5, 4, NULL, 0, 5, '2025-11-11 02:53:29'),
(5, 5, 4, NULL, 0, 5, '2025-11-11 02:53:48'),
(6, 5, 3, NULL, 0, 1, '2025-11-11 03:06:54'),
(7, 5, 2, NULL, 0, 1, '2025-11-11 03:10:03'),
(8, 5, 1, NULL, 0, 1, '2025-11-11 03:12:14'),
(9, 5, 4, NULL, 0, 1, '2025-11-11 03:14:40'),
(10, 5, 1, NULL, 0, 1, '2025-11-11 03:17:53'),
(11, 5, 4, NULL, 0, 1, '2025-11-11 03:30:59'),
(12, 5, 4, NULL, 0, 1, '2025-11-11 03:34:41'),
(13, 5, 4, NULL, 0, 1, '2025-11-11 03:36:50'),
(14, 5, 4, NULL, 0, 1, '2025-11-11 03:37:02'),
(15, 8, 4, NULL, 0, 1, '2025-11-11 03:43:46'),
(16, 5, 4, NULL, 0, 1, '2025-11-11 03:47:53'),
(17, 5, 4, NULL, 0, 1, '2025-11-11 03:52:17'),
(18, 5, 3, NULL, 0, 1, '2025-11-11 14:28:10'),
(19, 1, 4, NULL, 0, 12, '2025-11-12 15:46:23'),
(20, 9, 4, NULL, 0, 3, '2025-11-12 15:46:23'),
(21, 1, 4, 0, 0, 1, '2025-11-12 17:03:32'),
(22, 1, 4, 0, 0, 2, '2025-11-12 17:18:41'),
(23, 1, 4, 0, 0, 52, '2025-11-12 17:22:30'),
(24, 1, 4, 0, 0, 12, '2025-11-12 17:32:43'),
(25, 1, 4, 38, 0, 2, '2025-11-12 17:38:15'),
(26, 1, 4, 40, 0, 2, '2025-11-12 20:29:18'),
(27, 1, 3, 41, 0, 1, '2025-11-12 20:41:42'),
(28, 1, 2, 42, 0, 2, '2025-11-12 21:10:24'),
(29, 1, 1, 43, 0, 12, '2025-11-12 21:12:35'),
(30, 1, 2, 44, 0, 2, '2025-11-12 21:45:29'),
(31, 1, 2, 45, 0, 2, '2025-11-12 21:45:37'),
(32, 1, 2, 46, 0, 2, '2025-11-12 21:45:50'),
(33, 1, 4, 47, 0, 3, '2025-11-12 21:46:14'),
(34, 1, 2, 48, 0, 1, '2025-11-12 22:04:32'),
(35, 1, 3, 49, 0, 1, '2025-11-12 22:05:31'),
(36, 11, 3, 50, 0, 1, '2025-11-12 22:07:13'),
(37, 1, 3, 50, 0, 1, '2025-11-12 22:07:13'),
(38, 7, 3, 51, 0, 5, '2025-11-13 01:59:36'),
(39, 7, 26, 114, 0, 5, '2025-11-27 03:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting_key`, `setting_value`) VALUES
('about_us_image', 'images/about_us_image_692a6c7072a3b.jpg'),
('about_us_image_path', 'images/clinic_team.jpg'),
('about_us_text', 'At DentiTrack, we are passionate about providing exceptional dental care tailored to your needs. Our experienced team is committed to enhancing your dental health with personalized, state-of-the-art treatments in a welcoming environment. We utilize the latest technology to ensure your comfort and the highest standard of care. From routine check-ups to complex cosmetic procedures, trust us to brighten your smile and improve your oral health.'),
('about_us_title', 'Our Mission to your Smile'),
('accent_color', '#d7e515'),
('clinic_address', '0067 Wakas, Bocaue, Philippines'),
('clinic_contact_number', '0922 878 7341'),
('clinic_email', 'danaroxasdental@gmail.com'),
('clinic_hours_friday', 'CLOSED'),
('clinic_hours_html', '<ul style=\"list-style: none; padding: 0;\"><li><strong>Monday:</strong> 09:30 AM - 04:30 PM</li><li><strong>Tuesday:</strong> 10:00 AM - 08:30 PM</li><li><strong>Wednesday:</strong> 12:00 PM - 09:00 PM</li><li><strong>Thursday:</strong> CLOSED</li><li><strong>Friday:</strong> CLOSED</li><li><strong>Saturday:</strong> CLOSED</li><li><strong>Sunday:</strong> CLOSED</li></ul>'),
('clinic_hours_monday', '09:30 AM - 04:30 PM'),
('clinic_hours_saturday', 'CLOSED'),
('clinic_hours_sunday', 'CLOSED'),
('clinic_hours_thursday', 'CLOSED'),
('clinic_hours_tuesday', '10:00 AM - 08:30 PM'),
('clinic_hours_wednesday', '12:00 PM - 09:00 PM'),
('clinic_phone', ''),
('default_timezone', 'Asia/Manila'),
('doctor_can_manage_appointments', 'no'),
('enable_appointments', 'no'),
('enable_audit_logging', 'no'),
('enable_discounts', 'no'),
('enable_notifications', 'no'),
('enable_payments', 'no'),
('font_family', 'Segoe UI'),
('footer_text', ''),
('header_bg_image', 'images/header_bg_692a6cb3c7b06.jpg'),
('header_text_color', '#ffffff'),
('require_strong_passwords', 'no'),
('secretary_can_manage_patients', 'no'),
('sidebar_bg', '#349edf'),
('sidebar_text', '#ffffff'),
('system_name', 'DentiTrack');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `otp_code` varchar(10) DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL,
  `role` enum('patient','secretary','doctor','admin') NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `remember_token` varchar(255) DEFAULT NULL,
  `remember_selector` varchar(32) DEFAULT NULL,
  `verification_expiry` datetime DEFAULT NULL,
  `verification_token` varchar(6) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password_hash`, `otp_code`, `otp_expiry`, `role`, `created_at`, `updated_at`, `remember_token`, `remember_selector`, `verification_expiry`, `verification_token`, `is_verified`) VALUES
(2, 'mayi26', NULL, '$2y$10$sZVDoc6E9FZLIu8AC4w36OV4NAaTCpjWd8M0QaVhaiy9stLFeU4Ba', NULL, NULL, 'secretary', '2025-10-01 00:51:38', '2025-11-20 17:55:11', NULL, NULL, NULL, NULL, 1),
(3, 'Trishia Mayi', NULL, '$2y$10$J0glyT39TQbiVeMIYC9/Fu9eyzARm1c5GV9VAcRqBxaE0Olwm6/Lu', NULL, NULL, 'doctor', '2025-10-01 01:08:16', '2025-11-20 17:55:13', NULL, NULL, NULL, NULL, 1),
(4, 'Oswald', 'johnoswald@gmail.com', '$2y$10$tuuNj5fEM8dBlBFXdta/P.q/MQwWuZHJezklXHXV2JQENbM4NCkRG', NULL, NULL, 'doctor', '2025-10-01 01:17:25', '2025-11-20 17:55:16', NULL, NULL, NULL, NULL, 1),
(5, 'Andrei', 'andrei09555938734@gmail.com', '$2y$10$iUuDJM7ayaTEMcRHuADd3uHDbzPUr9SpH3hylI59mNv.OmDp3/58O', NULL, NULL, 'secretary', '2025-10-01 01:20:36', '2025-11-28 20:31:56', NULL, NULL, NULL, NULL, 1),
(7, 'Jeorge', 'jeorgereyes@gmail.com', '$2y$10$hY3RFrHy7hZPDju7esejieQTfjF5g5G87iiwpAP9Ds/NTkUOr57Xe', NULL, NULL, 'secretary', '2025-10-01 01:44:38', '2025-11-20 17:55:23', NULL, NULL, NULL, NULL, 1),
(8, 'Iya', ' ', '$2y$10$J0glyT39TQbiVeMIYC9/Fu9eyzARm1c5GV9VAcRqBxaE0Olwm6/Lu', NULL, NULL, 'secretary', '2025-10-01 01:56:20', '2025-11-20 17:55:26', NULL, NULL, NULL, NULL, 1),
(9, 'Admin123', 'dentitrack2025@gmail.com', '$2y$10$9sOpfVxg/9QLucL4WUDGPez0PYW.VSAdQ4jOQs/gzybjq9jtRLhYy', '551702', '2025-11-12 18:53:31', 'admin', '2025-10-01 01:57:28', '2025-11-20 17:55:28', NULL, NULL, NULL, NULL, 1),
(10, 'Admin Mayi', NULL, '$2y$10$N8ocdRzOi4AJsSsdmrhvQ.OQf6/T3DtoYL9FEdxchmcI9v6podN6G', NULL, NULL, 'admin', '2025-10-02 00:19:08', '2025-11-30 00:19:10', NULL, NULL, NULL, NULL, 1),
(11, 'Admin Etan', 'tantanlegaspi01@gmail.com', '$2y$10$wlZ4NXR5dQamCsvw3hg1/uawgbYatTq.BQ3lSTTfK.Q1t2QDSO5zC', '440175', '2025-11-14 22:17:22', 'admin', '2025-10-02 00:23:34', '2025-11-20 17:55:32', NULL, NULL, NULL, NULL, 1),
(12, 'Admin Maureen', 'maureennipas2@gmail.com', '$2y$10$9AWdpW7Dz/LayApdzewqfeTXMbo1OGchgdNkyV7F9e6HeKJUxV7yu', NULL, NULL, 'admin', '2025-10-02 16:13:15', '2025-11-20 17:55:34', NULL, NULL, NULL, NULL, 1),
(14, 'yap', 'yap@gmail.com', '$2y$10$3oc7mV9M.RH3cjzmbi/2n.T89D4.BXOQ26349s/AI0hPgQfRoxETW', NULL, NULL, 'admin', '2025-10-22 13:43:15', '2025-11-20 17:55:39', NULL, NULL, NULL, NULL, 1),
(15, 'yapyap', 'yapyap@gmail.com', '$2y$10$DJvTs2vMcyqdgvqQma8aSuZIULqPQvrOA5fGkorNQQQ4.Hre30Y3.', NULL, NULL, 'secretary', '2025-10-22 13:44:54', '2025-11-20 17:55:42', NULL, NULL, NULL, NULL, 1),
(16, 'yap123', 'yapjohnoswald@gmail.com', '$2y$10$dK98Hhs3/CtSDm8yzboMjeDm5Akg1R1N.5w42b4EWH4vQE1.Fj.Pe', NULL, NULL, 'patient', '2025-10-22 13:46:38', '2025-11-20 17:55:43', NULL, NULL, NULL, NULL, 1),
(17, 'namiyaki@gmail.com', 'nami@gmail.com', '$2y$10$ZvRoee4bOr5TLrPpwZr7xOn/YBmt5lYFb6GWeV92JneDgdiDK5rCy', NULL, NULL, 'patient', '2025-11-15 00:52:56', '2025-11-20 23:07:22', NULL, NULL, NULL, NULL, 1),
(26, 'ayizaki', 'ayizaki2004@gmail.com', '$2y$10$czsXHHufKz3.ZZwj1ZxIx.mfhKXCOXeG6SCScXrrEhhYNsyPBmrBi', NULL, NULL, 'patient', '2025-11-20 17:48:58', '2025-11-20 17:49:11', NULL, NULL, NULL, NULL, 1),
(27, 'analizel', 'analizeldelposo0519@gmail.com', '$2y$10$YoUyle7lZ/nmEpJbMT4u4uomAVXOitLjWc9ogqhsEqrotigInMzv6', NULL, NULL, 'patient', '2025-11-26 13:11:24', '2025-11-26 13:11:46', NULL, NULL, NULL, NULL, 1),
(28, 'Mayix', '', '$2y$10$N8ocdRzOi4AJsSsdmrhvQ.OQf6/T3DtoYL9FEdxchmcI9v6podN6G', NULL, NULL, 'patient', '2025-11-28 15:12:02', '2025-11-30 00:18:54', NULL, NULL, NULL, NULL, 1),
(36, 'Christine', 'lazarochristine08@gmail.com', '$2y$10$WyWYbl0MwnE7OwALKGJSOOeFlC1dvfWz2rAMXVsWAopsHTiyWtyr6', NULL, NULL, 'patient', '2025-11-29 21:44:33', '2025-11-29 21:48:12', NULL, NULL, NULL, NULL, 1),
(37, 'Irishmae', 'trishiamae.manabat@gmail.com', '$2y$10$CNQeo9pBTxLBMpkdVDTFQ.4aOSn19AElwo9w/8fGOaLzJ5zGQW24O', NULL, NULL, 'patient', '2025-11-30 00:41:02', '2025-11-30 00:46:13', NULL, NULL, '2025-11-30 00:56:02', '341627', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `action_type` varchar(50) NOT NULL COMMENT 'e.g., Login, Logout, Record Added',
  `timestamp` datetime NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`log_id`, `user_id`, `username`, `action_type`, `timestamp`, `ip_address`) VALUES
(1, 5, 'Andrei', 'Successful Login', '2025-11-15 02:00:13', '::1'),
(2, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 02:00:21', '::1'),
(3, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 02:35:03', '::1'),
(4, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 02:38:37', '::1'),
(5, 5, 'Andrei', 'Successful Login', '2025-11-15 02:38:40', '::1'),
(6, NULL, 'jeorge', 'Failed Login Attempt', '2025-11-15 02:40:29', '::1'),
(7, 5, 'Andrei', 'Successful Login', '2025-11-15 02:40:51', '::1'),
(8, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 02:40:56', '::1'),
(9, 5, 'Andrei', 'Successful Login', '2025-11-15 03:17:48', '::1'),
(10, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 03:18:22', '::1'),
(11, 5, 'Andrei', 'Successful Login', '2025-11-15 03:20:05', '::1'),
(12, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 03:20:57', '::1'),
(13, 5, 'Andrei', 'Successful Login', '2025-11-15 03:24:33', '::1'),
(14, 3, 'Trishia Mayi', 'Successful Login', '2025-11-15 03:29:21', '::1'),
(15, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 03:29:34', '::1'),
(16, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 03:46:27', '::1'),
(17, NULL, 'yap123', 'Failed Login Attempt', '2025-11-15 03:46:51', '::1'),
(18, 16, 'yap123', 'Successful Login', '2025-11-15 03:48:14', '::1'),
(19, 15, 'yapyap', 'Successful Login', '2025-11-15 04:25:05', '::1'),
(20, NULL, 'Trishia Mayi', 'Failed Login Attempt', '2025-11-15 04:52:16', '::1'),
(21, 3, 'Trishia Mayi', 'OTP Sent', '2025-11-15 04:52:46', '::1'),
(22, 3, 'Trishia Mayi', 'OTP Verified', '2025-11-15 04:52:56', '::1'),
(23, 3, 'Trishia Mayi', 'Password Reset Successful', '2025-11-15 04:53:07', '::1'),
(24, 3, 'Trishia Mayi', 'Successful Login', '2025-11-15 04:53:17', '::1'),
(25, 5, 'Andrei', 'Successful Login', '2025-11-15 05:55:53', '::1'),
(26, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 06:49:39', '::1'),
(27, 5, 'Andrei', 'Successful Login', '2025-11-15 07:28:17', '::1'),
(28, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 07:34:42', '::1'),
(29, 5, 'Andrei', 'Successful Login', '2025-11-15 07:37:15', '::1'),
(30, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 07:39:15', '::1'),
(31, 15, 'yapyap', 'Successful Login', '2025-11-15 12:21:28', '::1'),
(32, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 13:45:31', '::1'),
(33, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 13:46:24', '::1'),
(34, 5, 'Andrei', 'Successful Login', '2025-11-15 13:46:38', '::1'),
(35, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 13:50:33', '::1'),
(36, 5, 'Andrei', 'Successful Login', '2025-11-15 13:50:57', '::1'),
(37, NULL, 'yap123', 'Failed Login Attempt', '2025-11-15 13:53:19', '::1'),
(38, 5, 'Andrei', 'Successful Login', '2025-11-15 13:53:24', '::1'),
(39, 5, 'Andrei', 'Successful Login', '2025-11-15 14:14:33', '::1'),
(40, 5, 'Andrei', 'Successful Login', '2025-11-15 14:50:41', '::1'),
(41, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 14:53:07', '::1'),
(42, NULL, 'Trishia Mayi', 'Failed Login Attempt', '2025-11-15 14:53:58', '::1'),
(43, 3, 'Trishia Mayi', 'Successful Login', '2025-11-15 14:54:11', '::1'),
(44, 5, 'Andrei', 'Successful Login', '2025-11-15 15:01:19', '::1'),
(45, NULL, 'yap123', 'Failed Login Attempt', '2025-11-15 15:10:37', '::1'),
(46, 5, 'Andrei', 'Successful Login', '2025-11-15 15:10:44', '::1'),
(47, 10, 'Admin Mayi', 'Successful Login', '2025-11-15 15:16:10', '::1'),
(48, 5, 'Andrei', 'Successful Login', '2025-11-15 15:22:08', '::1'),
(49, 3, 'Trishia Mayi', 'Successful Login', '2025-11-15 15:58:34', '::1'),
(50, 5, 'Andrei', 'Successful Login', '2025-11-20 01:23:24', '::1'),
(51, 10, 'Admin Mayi', 'Successful Login', '2025-11-20 15:20:46', '::1'),
(52, 10, 'Admin Mayi', 'Successful Login', '2025-11-20 15:43:33', '::1'),
(53, 3, 'Trishia Mayi', 'Successful Login', '2025-11-20 15:43:38', '::1'),
(54, 5, 'Andrei', 'Successful Login', '2025-11-20 15:43:41', '::1'),
(55, 10, 'Admin Mayi', 'Successful Login', '2025-11-20 15:43:49', '::1'),
(56, 5, 'Andrei', 'Successful Login', '2025-11-20 15:43:58', '::1'),
(57, 25, 'ayazaki', 'Successful Login', '2025-11-20 17:42:39', '::1'),
(58, 5, 'Andrei', 'Failed Login (Unverified Account)', '2025-11-20 17:47:53', '::1'),
(59, 26, 'ayizaki', 'Successful Login', '2025-11-20 17:49:26', '::1'),
(60, 10, 'Admin Mayi', 'Failed Login (Unverified Account)', '2025-11-20 17:49:52', '::1'),
(61, 10, 'Admin Mayi', 'Successful Login', '2025-11-20 17:54:44', '::1'),
(62, 26, 'ayizaki', 'Successful Login', '2025-11-20 17:54:48', '::1'),
(63, 10, 'Admin Mayi', 'Successful Login', '2025-11-20 17:54:54', '::1'),
(64, 10, 'Admin Mayi', 'Successful Login', '2025-11-20 18:12:56', '::1'),
(65, 10, 'Admin Mayi', 'Successful Login', '2025-11-20 21:02:06', '::1'),
(66, 5, 'Andrei', 'Successful Login', '2025-11-20 21:12:15', '::1'),
(67, 10, 'Admin Mayi', 'Successful Login', '2025-11-20 21:19:41', '::1'),
(68, 5, 'Andrei', 'Successful Login', '2025-11-20 21:22:56', '::1'),
(69, 10, 'Admin Mayi', 'Successful Login', '2025-11-20 21:32:34', '::1'),
(70, 10, 'Admin Mayi', 'Successful Login', '2025-11-20 23:27:34', '::1'),
(71, 5, 'Andrei', 'Successful Login', '2025-11-20 23:46:42', '::1'),
(72, 5, 'Andrei', 'Successful Login', '2025-11-23 19:57:26', '::1'),
(73, 10, 'Admin Mayi', 'Successful Login', '2025-11-23 20:08:12', '::1'),
(74, 26, 'ayizaki', 'Successful Login', '2025-11-23 20:09:28', '::1'),
(75, 5, 'Andrei', 'Successful Login', '2025-11-23 20:14:45', '::1'),
(76, 26, 'ayizaki', 'Successful Login', '2025-11-23 20:16:02', '::1'),
(77, 10, 'Admin Mayi', 'Successful Login', '2025-11-23 20:19:25', '::1'),
(78, 26, 'ayizaki', 'Successful Login', '2025-11-23 20:21:12', '::1'),
(79, 5, 'Andrei', 'Successful Login', '2025-11-23 20:28:25', '::1'),
(80, 26, 'ayizaki', 'Successful Login', '2025-11-23 20:55:17', '::1'),
(81, 3, 'Trishia Mayi', 'Successful Login', '2025-11-23 20:57:20', '::1'),
(82, 5, 'Andrei', 'Successful Login', '2025-11-23 21:07:19', '::1'),
(83, 26, 'ayizaki', 'Successful Login', '2025-11-23 21:07:25', '::1'),
(84, 3, 'Trishia Mayi', 'Successful Login', '2025-11-23 21:09:24', '::1'),
(85, 26, 'ayizaki', 'Successful Login', '2025-11-23 21:12:35', '::1'),
(86, 5, 'Andrei', 'Successful Login', '2025-11-23 21:20:00', '::1'),
(87, 26, 'ayizaki', 'Successful Login', '2025-11-23 21:22:00', '::1'),
(88, 3, 'Trishia Mayi', 'Successful Login', '2025-11-23 23:15:38', '::1'),
(89, 5, 'Andrei', 'Successful Login', '2025-11-26 12:37:11', '::1'),
(90, 10, 'Admin Mayi', 'Successful Login', '2025-11-26 12:39:52', '::1'),
(91, 5, 'Andrei', 'Successful Login', '2025-11-26 12:43:34', '::1'),
(92, 26, 'ayizaki', 'Successful Login', '2025-11-26 12:46:01', '::1'),
(93, 5, 'Andrei', 'Successful Login', '2025-11-26 12:54:44', '::1'),
(94, 26, 'ayizaki', 'Successful Login', '2025-11-26 13:03:27', '::1'),
(95, 10, 'Admin Mayi', 'Successful Login', '2025-11-26 13:03:49', '::1'),
(96, 5, 'Andrei', 'Successful Login', '2025-11-26 13:05:02', '::1'),
(97, 27, 'analizel', 'Successful Login', '2025-11-26 13:12:00', '::1'),
(98, 27, 'analizel', 'Successful Login', '2025-11-26 13:12:07', '::1'),
(99, 26, 'ayizaki', 'Successful Login', '2025-11-26 13:12:29', '::1'),
(100, 27, 'analizel', 'Successful Login', '2025-11-26 13:13:43', '::1'),
(101, 27, 'analizel', 'Successful Login', '2025-11-26 13:15:08', '::1'),
(102, 5, 'Andrei', 'Successful Login', '2025-11-26 13:15:26', '::1'),
(103, 10, 'Admin Mayi', 'Successful Login', '2025-11-26 13:24:43', '::1'),
(104, 27, 'analizel', 'Successful Login', '2025-11-26 13:25:57', '::1'),
(105, 10, 'Admin Mayi', 'Successful Login', '2025-11-26 13:31:00', '::1'),
(106, 5, 'Andrei', 'Successful Login', '2025-11-27 00:50:38', '127.0.0.1'),
(107, 3, 'Trishia Mayi', 'Successful Login', '2025-11-27 01:07:40', '::1'),
(108, 5, 'Andrei', 'Successful Login', '2025-11-27 01:10:35', '::1'),
(109, 26, 'ayizaki', 'Successful Login', '2025-11-27 01:11:33', '::1'),
(110, 5, 'Andrei', 'Successful Login', '2025-11-27 01:15:31', '::1'),
(111, 3, 'Trishia Mayi', 'Successful Login', '2025-11-27 01:16:21', '::1'),
(112, 5, 'Andrei', 'Successful Login', '2025-11-27 01:16:42', '::1'),
(113, 26, 'ayizaki', 'Successful Login', '2025-11-27 01:18:16', '::1'),
(114, 5, 'Andrei', 'Successful Login', '2025-11-27 01:19:10', '::1'),
(115, 26, 'ayizaki', 'Successful Login', '2025-11-27 01:24:45', '::1'),
(116, 5, 'Andrei', 'Successful Login', '2025-11-27 01:25:33', '::1'),
(117, 5, 'Andrei', 'Successful Login', '2025-11-27 04:04:40', '::1'),
(118, 26, 'ayizaki', 'Successful Login', '2025-11-27 04:10:56', '::1'),
(119, 26, 'ayizaki', 'Successful Login', '2025-11-27 04:11:38', '::1'),
(120, 5, 'Andrei', 'Successful Login', '2025-11-27 04:11:52', '::1'),
(121, 3, 'Trishia Mayi', 'Successful Login', '2025-11-27 04:12:07', '::1'),
(122, 26, 'ayizaki', 'Successful Login', '2025-11-27 22:27:27', '::1'),
(123, 5, 'Andrei', 'Successful Login', '2025-11-27 22:39:35', '::1'),
(124, 26, 'ayizaki', 'Successful Login', '2025-11-27 22:41:13', '::1'),
(125, 5, 'Andrei', 'Successful Login', '2025-11-27 22:41:27', '::1'),
(126, 26, 'ayizaki', 'Successful Login', '2025-11-27 23:26:49', '::1'),
(127, 26, 'ayizaki', 'Successful Login', '2025-11-27 23:34:38', '::1'),
(128, 26, 'ayizaki', 'Successful Login', '2025-11-27 23:35:30', '::1'),
(129, 3, 'Trishia Mayi', 'Successful Login', '2025-11-28 00:11:11', '::1'),
(130, 5, 'Andrei', 'Successful Login', '2025-11-28 00:11:28', '::1'),
(131, 26, 'ayizaki', 'Successful Login', '2025-11-28 01:38:56', '::1'),
(132, 26, 'ayizaki', 'Successful Login', '2025-11-28 01:42:43', '::1'),
(133, 26, 'ayizaki', 'Successful Login', '2025-11-28 01:42:44', '::1'),
(134, 26, 'ayizaki', 'Successful Login', '2025-11-28 01:42:45', '::1'),
(135, 26, 'ayizaki', 'Successful Login', '2025-11-28 01:42:59', '::1'),
(136, 10, 'Admin Mayi', 'Successful Login', '2025-11-28 01:53:43', '::1'),
(137, 10, 'Admin Mayi', 'Successful Login', '2025-11-28 02:03:02', '::1'),
(138, 10, 'Admin Mayi', 'Successful Login', '2025-11-28 02:03:12', '::1'),
(139, 26, 'ayizaki', 'Successful Login', '2025-11-28 02:03:26', '::1'),
(140, 5, 'Andrei', 'Successful Login', '2025-11-28 02:06:20', '::1'),
(141, 26, 'ayizaki', 'Successful Login', '2025-11-28 03:36:41', '::1'),
(142, 5, 'Andrei', 'Successful Login', '2025-11-28 03:37:58', '::1'),
(143, 26, 'ayizaki', 'Successful Login', '2025-11-28 13:21:50', '::1'),
(144, 3, 'Trishia Mayi', 'Successful Login', '2025-11-28 13:21:57', '::1'),
(145, 26, 'ayizaki', 'Successful Login', '2025-11-28 13:27:23', '::1'),
(146, 3, 'Trishia Mayi', 'Successful Login', '2025-11-28 13:27:46', '::1'),
(147, 26, 'ayizaki', 'Successful Login', '2025-11-28 13:28:30', '::1'),
(148, 27, 'analizel', 'Successful Login', '2025-11-28 13:28:36', '::1'),
(149, 26, 'ayizaki', 'Successful Login', '2025-11-28 13:32:32', '::1'),
(150, 27, 'analizel', 'Successful Login', '2025-11-28 13:35:43', '::1'),
(151, 5, 'Andrei', 'Successful Login', '2025-11-28 13:37:38', '::1'),
(152, 26, 'ayizaki', 'Successful Login', '2025-11-28 13:39:39', '::1'),
(153, 5, 'Andrei', 'Successful Login', '2025-11-28 13:40:05', '::1'),
(154, 26, 'ayizaki', 'Successful Login', '2025-11-28 13:55:29', '::1'),
(155, 5, 'Andrei', 'Successful Login', '2025-11-28 14:06:21', '::1'),
(156, 26, 'ayizaki', 'Successful Login', '2025-11-28 14:09:07', '::1'),
(157, 5, 'Andrei', 'Successful Login', '2025-11-28 14:09:54', '::1'),
(158, 26, 'ayizaki', 'Successful Login', '2025-11-28 15:00:52', '::1'),
(159, 5, 'Andrei', 'Successful Login', '2025-11-28 15:01:53', '::1'),
(160, 28, 'Mayix', 'Successful Login', '2025-11-28 15:12:30', '::1'),
(161, 5, 'Andrei', 'Successful Login', '2025-11-28 15:23:14', '::1'),
(162, 28, 'Mayix', 'Successful Login', '2025-11-28 15:32:24', '::1'),
(163, 5, 'Andrei', 'Successful Login', '2025-11-28 15:36:27', '::1'),
(164, 5, 'Andrei', 'Auto-Login', '2025-11-28 20:00:13', '::1'),
(165, 5, 'Andrei', 'Successful Login', '2025-11-28 20:31:56', '::1'),
(166, 5, 'Andrei', 'Successful Login', '2025-11-28 20:57:45', '::1'),
(167, 10, 'Admin Mayi', 'Successful Login', '2025-11-28 21:09:12', '::1'),
(168, 29, 'Ivsei', 'Successful Login', '2025-11-28 21:50:55', '::1'),
(169, 10, 'Admin Mayi', 'Successful Login', '2025-11-28 21:51:02', '::1'),
(170, 5, 'Andrei', 'Successful Login', '2025-11-28 22:33:17', '::1'),
(171, 28, 'Mayix', 'Successful Login', '2025-11-28 22:47:37', '::1'),
(172, 5, 'Andrei', 'Successful Login', '2025-11-28 23:11:33', '::1'),
(173, 26, 'ayizaki', 'Successful Login', '2025-11-28 23:15:18', '::1'),
(174, 5, 'Andrei', 'Successful Login', '2025-11-28 23:16:37', '::1'),
(175, 28, 'Mayix', 'Successful Login', '2025-11-28 23:19:12', '::1'),
(176, 5, 'Andrei', 'Successful Login', '2025-11-28 23:23:02', '::1'),
(177, 10, 'Admin Mayi', 'Successful Login', '2025-11-28 23:24:02', '::1'),
(178, 5, 'Andrei', 'Successful Login', '2025-11-28 23:26:24', '::1'),
(179, 10, 'Admin Mayi', 'Successful Login', '2025-11-28 23:45:19', '::1'),
(180, 5, 'Andrei', 'Successful Login', '2025-11-28 23:45:23', '::1'),
(181, 28, 'Mayix', 'Successful Login', '2025-11-28 23:51:15', '::1'),
(182, 5, 'Andrei', 'Successful Login', '2025-11-28 23:54:00', '::1'),
(183, 28, 'Mayix', 'Successful Login', '2025-11-28 23:55:21', '::1'),
(184, 5, 'Andrei', 'Successful Login', '2025-11-29 00:07:54', '::1'),
(185, 10, 'Admin Mayi', 'Successful Login', '2025-11-29 00:51:58', '::1'),
(186, 5, 'Andrei', 'Successful Login', '2025-11-29 00:52:15', '::1'),
(187, 5, 'Andrei', 'Successful Login', '2025-11-29 01:27:07', '::1'),
(188, 10, 'Admin Mayi', 'Successful Login', '2025-11-29 10:31:33', '::1'),
(189, 10, 'Admin Mayi', 'Successful Login', '2025-11-29 10:51:40', '::1'),
(190, 10, 'Admin Mayi', 'Successful Login', '2025-11-29 11:24:42', '::1'),
(191, 28, 'Mayix', 'OTP Sent', '2025-11-29 12:08:24', '::1'),
(192, 28, 'Mayix', 'OTP Verified', '2025-11-29 12:08:47', '::1'),
(193, 28, 'Mayix', 'Password Reset Successful', '2025-11-29 12:09:06', '::1'),
(194, NULL, 'Admin Mayi', 'Failed Login Attempt', '2025-11-29 12:09:09', '::1'),
(195, NULL, 'Admin Mayi', 'Failed Login Attempt', '2025-11-29 12:09:15', '::1'),
(196, NULL, 'Admin Mayi', 'Failed Login Attempt', '2025-11-29 12:09:16', '::1'),
(197, 10, 'Admin Mayi', 'OTP Sent', '2025-11-29 12:09:48', '::1'),
(198, 10, 'Admin Mayi', 'OTP Verified', '2025-11-29 12:10:03', '::1'),
(199, 10, 'Admin Mayi', 'Password Reset Successful', '2025-11-29 12:10:14', '::1'),
(200, 10, 'Admin Mayi', 'Successful Login', '2025-11-29 12:10:17', '::1'),
(201, 10, 'Admin Mayi', 'Successful Login', '2025-11-29 12:36:23', '::1'),
(202, 34, 'ivseibaho', 'Successful Login', '2025-11-29 13:37:47', '::1'),
(203, 5, 'Andrei', 'Successful Login', '2025-11-29 20:47:08', '::1'),
(204, 26, 'ayizaki', 'Successful Login', '2025-11-29 22:14:18', '::1'),
(205, 3, 'Trishia Mayi', 'Successful Login', '2025-11-29 22:14:52', '::1'),
(206, 26, 'ayizaki', 'Successful Login', '2025-11-29 22:17:21', '::1'),
(207, 5, 'Andrei', 'Successful Login', '2025-11-29 22:19:49', '::1'),
(208, 5, 'Andrei', 'Successful Login', '2025-11-29 22:24:28', '::1'),
(209, 36, 'Christine', 'Successful Login', '2025-11-29 22:28:23', '::1'),
(210, 36, 'Christine', 'Successful Login', '2025-11-29 22:32:22', '::1'),
(211, 26, 'ayizaki', 'Successful Login', '2025-11-29 23:46:09', '::1'),
(212, 36, 'Christine', 'Successful Login', '2025-11-29 23:48:24', '::1'),
(213, 5, 'Andrei', 'Successful Login', '2025-11-29 23:51:30', '::1'),
(214, 36, 'Christine', 'Successful Login', '2025-11-30 00:00:08', '::1'),
(215, 37, 'Irishmae', 'Successful Login', '2025-11-30 00:41:23', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `posted_by` (`posted_by`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `fk_appointments_user` (`user_id`),
  ADD KEY `fk_appointments_service` (`service_id`),
  ADD KEY `fk_appointments_patient_id` (`patient_id`);

--
-- Indexes for table `dental_records`
--
ALTER TABLE `dental_records`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `dental_supplies`
--
ALTER TABLE `dental_supplies`
  ADD PRIMARY KEY (`supply_id`),
  ADD UNIQUE KEY `unique_supply_batch` (`name`,`expiration_date`);

--
-- Indexes for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_doctor_date` (`doctor_id`,`available_date`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD KEY `fk_patient_created_by` (`user_id`);

--
-- Indexes for table `patient_files`
--
ALTER TABLE `patient_files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `patient_recommendations`
--
ALTER TABLE `patient_recommendations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `fk_payments_user_id` (`user_id`),
  ADD KEY `fk_payments_appt_final` (`appointment_id`),
  ADD KEY `fk_payments_patient_final` (`patient_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `supply_usage`
--
ALTER TABLE `supply_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supply_id` (`supply_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `fk_supply_usage_patient` (`patient_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `dental_records`
--
ALTER TABLE `dental_records`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dental_supplies`
--
ALTER TABLE `dental_supplies`
  MODIFY `supply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `patient_files`
--
ALTER TABLE `patient_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient_recommendations`
--
ALTER TABLE `patient_recommendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `supply_usage`
--
ALTER TABLE `supply_usage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`posted_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `fk_appointments_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_appointments_service` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_appointments_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dental_records`
--
ALTER TABLE `dental_records`
  ADD CONSTRAINT `dental_records_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  ADD CONSTRAINT `doctor_availability_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `fk_patient_created_by` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `patient_files`
--
ALTER TABLE `patient_files`
  ADD CONSTRAINT `patient_files_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payments_appt_final` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_payments_patient_final` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
