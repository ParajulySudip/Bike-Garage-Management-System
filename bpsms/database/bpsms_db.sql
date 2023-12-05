-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2023 at 08:42 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpsms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `image_path`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(8, 'Aprillia', 'uploads/brands/8.png?v=1691214438', 0, 1, '2023-08-05 11:32:18', '2023-08-05 11:32:18'),
(9, 'Bajaj', 'uploads/brands/9.png?v=1691214456', 0, 1, '2023-08-05 11:32:36', '2023-08-05 11:32:36'),
(10, 'Benelli', 'uploads/brands/10.png?v=1691214471', 0, 1, '2023-08-05 11:32:51', '2023-08-05 11:32:51'),
(11, 'Crossfire ', 'uploads/brands/11.png?v=1691214488', 0, 1, '2023-08-05 11:33:08', '2023-08-05 11:33:08'),
(12, 'Ducati', 'uploads/brands/12.png?v=1691214687', 0, 1, '2023-08-05 11:36:27', '2023-08-05 11:36:27'),
(13, 'Hartford', 'uploads/brands/13.png?v=1691214721', 0, 1, '2023-08-05 11:37:01', '2023-08-05 11:37:01'),
(14, 'Hero', 'uploads/brands/14.png?v=1691214752', 0, 1, '2023-08-05 11:37:32', '2023-08-05 11:37:32'),
(15, 'Honda', 'uploads/brands/15.png?v=1691214814', 0, 1, '2023-08-05 11:38:34', '2023-08-05 11:38:34'),
(16, 'KTM Racing', 'uploads/brands/16.png?v=1691214857', 0, 1, '2023-08-05 11:39:16', '2023-08-05 11:39:17'),
(17, 'Royal Enfield', 'uploads/brands/17.png?v=1691214890', 0, 1, '2023-08-05 11:39:25', '2023-08-05 11:39:50'),
(18, 'Suzuki', 'uploads/brands/18.png?v=1691214912', 0, 1, '2023-08-05 11:40:12', '2023-08-05 11:40:12'),
(19, 'TVS', 'uploads/brands/19.png?v=1691214940', 0, 1, '2023-08-05 11:40:40', '2023-08-05 11:40:40'),
(20, 'Vespa🛵 ', 'uploads/brands/20.png?v=1691214962', 0, 1, '2023-08-05 11:41:02', '2023-08-05 11:41:02'),
(21, 'Yamaha', 'uploads/brands/21.jpg?v=1691214990', 0, 1, '2023-08-05 11:41:30', '2023-08-05 11:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `delete_flag`, `date_created`) VALUES
(10, 'Spark plugs ', 1, 0, '2023-08-05 11:58:18'),
(11, 'Clutch', 1, 0, '2023-08-05 11:58:55'),
(12, 'Air-Filter', 1, 0, '2023-08-05 11:59:05'),
(13, 'Carburetor ', 1, 0, '2023-08-05 12:00:02'),
(14, 'Engine Oil🛢 ', 1, 0, '2023-08-05 12:00:29'),
(15, 'Sprockets', 1, 0, '2023-08-05 12:00:48'),
(16, 'Battery🔋 ', 1, 0, '2023-08-05 12:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_added` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mechanics_list`
--

CREATE TABLE `mechanics_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mechanics_list`
--

INSERT INTO `mechanics_list` (`id`, `name`, `contact`, `email`, `status`, `date_created`) VALUES
(3, 'Mustafa Ali', '9865656565', 'mstfa78@gmail.com', 1, '2023-08-05 12:22:12'),
(4, 'Ram Das Tharu', '988888888888', 'ramth@gmail.com', 1, '2023-08-05 12:22:44'),
(5, 'Chotu Kumal', '9877777777', 'Chhotmal899@gmail.com', 1, '2023-08-05 12:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending,1 = packed, 2 = for delivery, 3 = on the way, 4 = delivered, 5=cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `models` text NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `brand_id`, `category_id`, `name`, `models`, `description`, `price`, `status`, `image_path`, `delete_flag`, `date_created`, `date_updated`) VALUES
(6, 12, 10, 'NGK MAR9A-J Spark Plug', ' MAR9A-J', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 15px;&quot;&gt;The most important manufacturers of motorcycles, small engines and boat engines also rely on the spark plug technology of NGK and, therefore, on the highest quality. That is why the NGK product range has the right product for nearly every engine.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 2390, 1, 'uploads/products/6.jpg?v=1691216325', 0, '2023-08-05 12:03:45', '2023-08-05 12:03:45'),
(7, 18, 13, 'Gixxer 150 Carburetor', 'Gixxer-150', '&lt;ul class=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: 2; column-gap: 32px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, sans-serif; font-size: 12px;&quot;&gt;&lt;li class=&quot;&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;&quot;&gt;&bull; Best performance&lt;/li&gt;&lt;li class=&quot;&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;&quot;&gt;&bull; Easy to use&lt;/li&gt;&lt;li class=&quot;&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;&quot;&gt;&bull; Japnese air bleeding system&lt;/li&gt;&lt;li class=&quot;&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;&quot;&gt;&bull; Best petrol economizers&lt;/li&gt;&lt;li class=&quot;&quot; data-spm-anchor-id=&quot;a2a0e.pdp.product_detail.i2.4ba945d8SMIvkF&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;&quot;&gt;&bull; Compound jets and auxiliary air valves&lt;/li&gt;&lt;li class=&quot;&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;&quot;&gt;&bull; Tuning not required&lt;/li&gt;&lt;li class=&quot;&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;&quot;&gt;&bull; Expensive Metering rods are used&lt;/li&gt;&lt;/ul&gt;', 6930, 1, 'uploads/products/7.jpg?v=1691216540', 0, '2023-08-05 12:07:20', '2023-08-05 12:07:20'),
(8, 11, 12, 'Crossfire Air Filter', 'Dirt Bikes', '&lt;p&gt;Off-road products&lt;/p&gt;', 1870, 1, 'uploads/products/8.jpg?v=1691216645', 0, '2023-08-05 12:09:05', '2023-08-05 12:09:05'),
(9, 17, 11, 'Clutch-Hub', 'Royal Enfield Bullets ', '&lt;p&gt;Clutch hub for Royal Enfields&lt;/p&gt;', 2339, 1, 'uploads/products/9.jpg?v=1691216739', 0, '2023-08-05 12:10:39', '2023-08-05 12:10:39'),
(11, 17, 14, 'Motul 7100 4T 10W40 MA2 Synthetic 1Ltr Engine Oil', 'Bajaj- Pulsar/ Dominar,DSK Benelli,DSK Hyosung, Yamaha- FZ, Royal Enfield Classic,Royal Enfield', '&lt;ul class=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: 2; column-gap: 32px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, sans-serif; font-size: 12px;&quot;&gt;&lt;li class=&quot;&quot; data-spm-anchor-id=&quot;a2a0e.pdp.product_detail.i1.b010339c0HotIE&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;&quot;&gt;Designed with the perfect synergy for less oil consumption, reduced engine internal friction and extreme pressure performance, for more power;&lt;/li&gt;&lt;li class=&quot;&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;&quot;&gt;Oil type - synthetic petrol engine oil&lt;/li&gt;&lt;li class=&quot;&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;&quot;&gt;Jaso MA2 ensure optimum clutch performance at start-up, acceleration and full speed;&lt;/li&gt;&lt;li class=&quot;&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;&quot;&gt;API SN provide improved high temperature deposit protection for more stringent sludge control;&lt;/li&gt;&lt;/ul&gt;', 1440, 1, 'uploads/products/11.jpg?v=1691217059', 0, '2023-08-05 12:15:59', '2023-08-05 12:15:59'),
(12, 9, 16, 'Bolt Vrla Battery', ' Pulsar 150cc Bike', '&lt;ul class=&quot;&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: 2; column-gap: 32px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, sans-serif; font-size: 12px;&quot;&gt;&lt;li class=&quot;&quot; data-spm-anchor-id=&quot;a2a0e.pdp.product_detail.i0.7f172d2cSHiOAh&quot; style=&quot;margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid; column-span: all;&quot;&gt;Good QualityWarranty: 2 yearsSafer transportationReliable starting&lt;/li&gt;&lt;/ul&gt;', 2550, 1, 'uploads/products/12.jpg?v=1691217265', 0, '2023-08-05 12:19:25', '2023-08-05 12:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `request_meta`
--

CREATE TABLE `request_meta` (
  `request_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(5, 'Engine Checks', '&lt;ul style=&quot;margin-bottom: 10px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; font-size: 14px;&quot;&gt;&lt;li&gt;Oil change &ndash; the grade used will depend on the manufacturer&rsquo;s recommendation&lt;/li&gt;&lt;li&gt;New oil filter&lt;/li&gt;&lt;li&gt;New air filter&lt;/li&gt;&lt;li&gt;New spark plugs&lt;/li&gt;&lt;li&gt;Test/replace/top-up coolant as required&lt;/li&gt;&lt;/ul&gt;', 1, 0, '2023-08-05 11:46:46'),
(6, 'Overall Check-ups', '&lt;ul style=&quot;margin-bottom: 10px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; font-size: 14px;&quot;&gt;&lt;li&gt;Brake callipers removed and cleaned&lt;/li&gt;&lt;li&gt;Brake pistons degreased&lt;/li&gt;&lt;li&gt;Hydraulic Brake Fluid System inspected, topped up or replaced as required&lt;/li&gt;&lt;li&gt;Control cables, levers and pivots (throttle, clutch, brakes) cleaned and lubricated&lt;/li&gt;&lt;li&gt;Adjustment of throttle and clutch&lt;/li&gt;&lt;li&gt;Battery electrolyte level checked and topped up as required&lt;/li&gt;&lt;li&gt;Steering play and race bearing kit &ndash; examined for any looseness and adjusted as necessary&lt;/li&gt;&lt;li&gt;Front fork &ndash; inspected and checked for operation&lt;/li&gt;&lt;li&gt;Rear suspension &ndash; inspected and checked for operation&lt;/li&gt;&lt;li&gt;All fasteners &ndash; including engine mounting and chassis bolts &ndash; inspected and tightened as required&lt;/li&gt;&lt;li&gt;Wheel bearings &ndash; checked&lt;/li&gt;&lt;li&gt;Main and side stands checked and lubricated&lt;/li&gt;&lt;li&gt;Headlight checked for aim and focus - adjusted as required&lt;/li&gt;&lt;li&gt;Fuel hosed checked&lt;/li&gt;&lt;li&gt;Tyre pressures &ndash; checked and adjusted as necessary&lt;/li&gt;&lt;li&gt;Chain &ndash; adjusted and lubricated as necessary&lt;/li&gt;&lt;li&gt;General lubrication&lt;/li&gt;&lt;/ul&gt;', 1, 0, '2023-08-05 11:47:48'),
(7, 'Engine Oil', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;Normally, engine oil is changed anywhere between 1500 kilometers to 5000 kilometers or more, or 2 months to 1 year, depending on the engine displacement, make, and model of your motorcycle. Engines without oil filters will need a shorter service interval, and more well-designed oiling systems may be more relaxed with service intervals. If your oil is running low, you may also need to top up for engine safety. This can be checked through the engine&rsquo;s dipstick, filler cap, or sight glass, depending on the model of your motorcycle.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-08-05 11:49:33'),
(8, 'Oil Filters and Strainers', '&lt;p&gt;&lt;em style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;Oil filters&lt;/em&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;&amp;nbsp;are designed to catch any particulates which get lodged inside the engine which are mostly small metal particles. Oil filters should be changed during every engine oil service interval.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;em style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;Oil strainers&lt;/em&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;&amp;nbsp;must be inspected and cleaned every 2-3 oil changes. Strainers are designed to catch larger particulates, and may not necessarily need replacing every inspection &ndash; this would depend on your motorcycle and owner&rsquo;s manual recommendation.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-08-05 11:50:22'),
(9, 'Carburetors check', '&lt;p&gt;&lt;em style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;Carburetor cleaning&amp;nbsp;&lt;/em&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;should be conducted every 5,000 to 10,000 kilometers or every 6 months to 1 year. Cleaning the carburetor produces similar results to cleaning the injectors of an EFI system, ensuring that fuel delivery is optimal and without obstructions.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-08-05 11:51:38'),
(10, 'Spark plugs Check ups', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;Spark plugs must be replaced every 5,000 to 15,000 kilometers depending on the engine requirement of your motorcycle, your riding style, and your fuel system&rsquo;s health. Spark plugs generally have three different types: copper, platinum, and iridium&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-08-05 11:53:02'),
(11, 'Air-Filter', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;Motorcycle air filters must be replaced every 5,000 km to 10,000 km depending on usage or the recommended interval of the owner&rsquo;s manual. A simple visual inspection may also be conducted in order to determine if a motorcycle&rsquo;s air filter will need replacement.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-08-05 11:53:38'),
(12, 'Clutch Cable', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;The&amp;nbsp;&lt;/span&gt;&lt;em style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;clutch cable&lt;/em&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;&amp;nbsp;of a motorcycle will need replacement every 10,000 to 20,000 kilometers, or every 1-3 years depending on usage.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-08-05 11:54:51'),
(13, 'Sprocket ', '&lt;p style=&quot;line-height: 1.6em; color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;To protect your transmission&rsquo;s sprockets in the front and the rear, it is essential that you lube your chain frequently in order to reduce wear on the parts. Over time, your chain will eat away at the sprockets&rsquo; teeth, and in some cases, you can even break a tooth off if not taken care of. Eventually, when needed or after a long time, you will need to replace your motorcycle&rsquo;s sprockets and also your chain.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-08-05 11:55:47'),
(14, 'Cleaning', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Inter UI&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, sans-serif;&quot;&gt;Your motorcycle&rsquo;s frame is arguably one of the most important parts of your motorcycle. As such, regularly cleaning the frame is important to ensure that the health of your motorcycle will not deteriorate drastically over time. When cleaning the frame, simply use water from a hose and car shampoo or motorcycle-specific shampoo.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2023-08-05 11:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `service_type` text NOT NULL,
  `mechanic_id` int(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1= IN, 2= Out',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`id`, `product_id`, `quantity`, `type`, `date_created`) VALUES
(9, 12, 10, 1, '2023-08-05 12:19:52'),
(10, 12, 2, 1, '2023-08-05 12:20:06'),
(11, 9, 3, 1, '2023-08-05 12:20:28'),
(12, 8, 5, 1, '2023-08-05 12:20:42'),
(13, 7, 3, 1, '2023-08-05 12:20:56'),
(14, 11, 5, 1, '2023-08-05 12:21:13'),
(15, 11, 4, 1, '2023-08-05 12:21:19'),
(16, 6, 2, 1, '2023-08-05 12:21:35'),
(17, 6, 6, 1, '2023-08-05 12:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Bike-Garage Management System 🏍'),
(6, 'short_name', 'Garage'),
(11, 'logo', 'uploads/1691212560_logo.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1691212560_service.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Sudip', 'Raz', 'SudipRaz', 'd1a219e46856b8c1ecef94630df86d0c', 'uploads/1691212680_sudip avtar.jpg', NULL, 1, '2021-01-20 14:02:37', '2023-08-05 11:03:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD CONSTRAINT `service_requests_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_requests_ibfk_2` FOREIGN KEY (`mechanic_id`) REFERENCES `mechanics_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `stock_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
