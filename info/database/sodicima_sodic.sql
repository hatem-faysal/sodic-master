-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 31, 2023 at 11:56 AM
-- Server version: 5.7.35
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sodicima_sodic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Not Active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `slug`, `email`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Admin\",\"ar\":\"Admin\"}', 'admin', 'admin@gmail.com', 'Active', NULL, '$2y$10$MM4opiNWfpBvnUSxarrzfemrMUPBYT4RYekToeEJd0zzjAxe27J8W', NULL, '2023-05-23 06:56:41', '2023-07-16 08:37:17'),
(2, '{\"en\":\"Jonas Wuckert III\"}', 'jonas-wuckert-iii', 'magali.anderson@example.org', 'Active', '2023-05-23 06:56:41', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'DWZ28olEVP', '2023-05-23 06:56:41', '2023-05-23 06:56:41'),
(3, '{\"en\":\"Camille Hilpert\"}', 'camille-hilpert', 'virgie27@example.org', 'Active', '2023-05-23 06:56:41', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', '1bxlrFZwPP', '2023-05-23 06:56:41', '2023-05-23 06:56:41'),
(4, '{\"en\":\"Kyla Mohr II\"}', 'kyla-mohr-ii', 'esperanza.mcclure@example.org', 'Active', '2023-05-23 06:56:41', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'Xtxlpgsm9L', '2023-05-23 06:56:41', '2023-05-23 06:56:41'),
(5, '{\"en\":\"Alexane Volkman\"}', 'alexane-volkman', 'farrell.kyra@example.org', 'Active', '2023-05-23 06:56:41', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', '4PW7V6J58d', '2023-05-23 06:56:41', '2023-05-23 06:56:41'),
(6, '{\"en\":\"Miss Vita Kuhlman\"}', 'miss-vita-kuhlman', 'amelia.corkery@example.com', 'Active', '2023-05-23 06:56:41', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'H7uA5AMoj0', '2023-05-23 06:56:41', '2023-05-23 06:56:41'),
(7, '{\"en\":\"Kasandra Macejkovic\"}', 'kasandra-macejkovic', 'rice.jake@example.org', 'Active', '2023-05-23 06:56:41', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'q0pRqDjWTq', '2023-05-23 06:56:41', '2023-05-23 06:56:41'),
(8, '{\"en\":\"Jodie Mayer\"}', 'jodie-mayer', 'annamae45@example.com', 'Active', '2023-05-23 06:56:41', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'Ki7CWq8Sy7', '2023-05-23 06:56:41', '2023-05-23 06:56:41'),
(9, '{\"en\":\"Hosea Kulas\"}', 'hosea-kulas', 'eda95@example.com', 'Active', '2023-05-23 06:56:41', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'dAR2KKgbKc', '2023-05-23 06:56:41', '2023-05-23 06:56:41'),
(10, '{\"en\":\"Edmund Nikolaus DDS\"}', 'edmund-nikolaus-dds', 'koss.shaina@example.org', 'Active', '2023-05-23 06:56:41', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'pbI5N6l43y', '2023-05-23 06:56:41', '2023-05-23 06:56:41'),
(11, '{\"en\":\"Hazel Casper MD\"}', 'hazel-casper-md', 'lilla.feil@example.net', 'Active', '2023-05-23 06:56:41', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'mMjAvHv3Wn', '2023-05-23 06:56:41', '2023-05-23 06:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Not Active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(5, '{\"en\":\"logo\",\"ar\":\"\\u0644\\u0648\\u062c\\u0648\"}', 'logo', 'Active', '2023-06-04 07:55:30', '2023-06-04 07:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imagines`
--

CREATE TABLE `imagines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imagines`
--

INSERT INTO `imagines` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(106, 'MYSELF PARKING MY BIKE IN FRONT OF MY SCHOOL IN A FUTURISTIC PARKING LOT.', 105, '2023-07-16 19:12:08', '2023-07-16 19:12:08'),
(107, 'MYSELF SITTING ON AN ABSTRACT WHITE BENCH, IN THE STYLE OF ZAHA HADID.', 110, '2023-07-16 19:15:24', '2023-07-16 19:15:24'),
(108, 'MYSELF PLAYING A SQUASH MATCH IN CYBERPUNK STYLE.', 109, '2023-07-16 19:15:57', '2023-07-16 19:15:57'),
(109, 'MYSELF WORKING IN A WORKSPACE THAT IS MADE FROM GLASS IN AN OUTDOOR LANDSCAPE.', 108, '2023-07-16 19:36:29', '2023-07-16 19:36:29'),
(110, 'MYSELF PARTYING IN A BEACH CLUB THAT IS HUGE AND LOCATED IN THE MIDDLE OF THE SEA.', 107, '2023-07-16 19:36:47', '2023-07-16 19:36:47'),
(111, 'MYSELF DOING YOGA IN MY OWN YOGA HUB, WHICH IS MADE FROM GLASS, PLACED IN THE MIDDLE OF A PARK, AND SURROUNDED BY GREENERY AND TREES.', 106, '2023-07-16 19:37:12', '2023-07-16 19:37:12'),
(112, 'summer sculptures by an empty beach', 112, '2023-07-17 07:42:10', '2023-07-17 07:42:10'),
(113, 'Walking along a beachfront at sunset  filled with palm trees', 117, '2023-07-17 09:52:19', '2023-07-17 09:52:19'),
(114, 'An art deco bench made with sustainability material  in a park overlooking the lagoon', 119, '2023-07-17 13:14:51', '2023-07-17 13:14:51'),
(115, 'One floor beach house overlooking the Mediterranean with palm trees and mango trees', 129, '2023-07-17 13:22:14', '2023-07-17 13:22:14'),
(117, 'playing with my baby in a playground on the beach', 127, '2023-07-17 13:55:14', '2023-07-17 13:55:14'),
(118, 'yoga center by the beach', 126, '2023-07-17 14:26:08', '2023-07-17 14:26:08'),
(119, 'I imagine myself having a small family of three kids and two dogs; living on a 1 story Beach house overlooking the Mediterranean. The house has a beautiful spacious garden with lots of trees and flowers. The weather is great and the sun is shining.', 116, '2023-07-17 14:45:01', '2023-07-17 14:45:01'),
(120, 'in a wide terraced house overlooking the beach through the terrace open green open sea glass everywhere', 114, '2023-07-17 18:04:44', '2023-07-17 18:04:44'),
(121, 'Chilling on a lake reading a book', 113, '2023-07-17 18:25:24', '2023-07-17 18:25:24'),
(122, 'a smart glass house on a hill overlooking a beach completely secluded with everything you might need only a button away', 130, '2023-07-17 23:09:53', '2023-07-17 23:09:53'),
(123, 'i imagine myself in a house surrounded by sea and glass', 133, '2023-07-18 10:53:58', '2023-07-18 10:53:58'),
(125, 'Panoramic view\r\nGreenery\r\nWater front', 137, '2023-07-19 14:52:47', '2023-07-19 14:52:47'),
(126, 'myself meditating during sunrise in an all-glass open roof penthouse overlooking greenery and lagoons', 138, '2023-07-19 15:47:07', '2023-07-19 15:47:07'),
(127, 'Living in a high sky scraper on its own island with a panoramic view of a crystal clear river', 139, '2023-07-19 16:33:56', '2023-07-19 16:33:56'),
(128, 'On a ranch in North Carolina', 140, '2023-07-19 16:51:28', '2023-07-19 16:51:28'),
(129, 'Swimming in the beach with my friends and family', 141, '2023-07-19 17:10:37', '2023-07-19 17:10:37'),
(130, 'I think I\'ll live in  smart city, everything is automated, all of the compound own starlink devices to access the highest internet speed', 144, '2023-07-19 21:42:54', '2023-07-19 21:42:54'),
(131, 'Coldplay concert by the sea on a sandy beach with a barbecue and cocktail bar in the background', 143, '2023-07-19 21:51:23', '2023-07-19 21:51:23'),
(132, 'On top of a mountain at night , seeing all lights of the city around you', 147, '2023-07-19 23:11:00', '2023-07-19 23:11:00'),
(133, 'Futuristic sports club with a unique architectural design inspired by Zaha Hadid with sustainable features such as energy-efficient lighting, recycled materials and solar panels', 150, '2023-07-20 09:08:45', '2023-07-20 09:08:45'),
(134, 'Organic architecture of a bungalow in the middle of Egypt\'s Siwa desert surrounded by a lush pink oasis-like moat and a few flying camels', 152, '2023-07-20 09:17:30', '2023-07-20 09:17:30'),
(135, 'Speed functionality beauty nature space sky technology', 153, '2023-07-20 09:22:49', '2023-07-20 09:22:49'),
(136, 'Brightly colored beach', 154, '2023-07-20 09:26:17', '2023-07-20 09:26:17'),
(137, 'Read books among lush greenery.', 157, '2023-07-20 09:37:06', '2023-07-20 09:37:06'),
(138, 'Floating green city\r\nAnimals with humans', 158, '2023-07-20 09:41:47', '2023-07-20 09:41:47'),
(139, 'In a modern technological smart world', 159, '2023-07-20 09:48:19', '2023-07-20 09:48:19'),
(140, 'Beach house\r\nPanorama\r\nGreenery', 161, '2023-07-20 09:54:41', '2023-07-20 09:54:41'),
(141, 'A gym in a ground floor of a residential building.  Size 5×8. With mirror walls', 162, '2023-07-20 10:35:02', '2023-07-20 10:35:02'),
(142, 'Living in a 3d concrete printed house', 163, '2023-07-20 11:38:37', '2023-07-20 11:38:37'),
(143, 'damascus style home, open court with greeneries and islamic fountain, islamic pattern wooden screens, sun shining on the sparkling water, white marble floor with mosaics', 164, '2023-07-20 11:43:46', '2023-07-20 11:43:46'),
(144, 'White wide house with sea view and infinity pool', 165, '2023-07-20 11:50:55', '2023-07-20 11:50:55'),
(145, 'White wide house with sea view and infinity pool some wooden louvers large smart screen lighted places', 166, '2023-07-20 11:52:37', '2023-07-20 11:52:37'),
(146, 'A place by the sea,with cozy fairy-lighted streets at night where I\'ll eat and read and listen to music', 167, '2023-07-20 11:56:27', '2023-07-20 11:56:27'),
(147, 'a very modern and quiet house built on trees in the middle of a thick rainforest and a primal elevator is used to climb up and down from it. A flock of parrots living around the house in the trees. The house is big and inspired by the show called Vikings.', 168, '2023-07-20 13:14:27', '2023-07-20 13:14:27'),
(148, 'Panorama house with lots of lighting and greenery', 170, '2023-07-20 13:29:08', '2023-07-20 13:29:08'),
(149, 'Simple small house that has a garden with a pool and is near the beach', 171, '2023-07-20 13:34:37', '2023-07-20 13:34:37'),
(151, 'Spacious penthouse with bright marble floor and sea view', 174, '2023-07-20 13:57:23', '2023-07-20 13:57:23'),
(152, 'Sitting in my small house watching the sunset and the beach.', 173, '2023-07-20 13:59:59', '2023-07-20 13:59:59'),
(153, 'A sea side pink home with garden full of hot pink flowers and husky dog with pink headpiece and pink pool', 175, '2023-07-20 14:01:40', '2023-07-20 14:01:40'),
(154, 'Blue white lights home with pink garden and yellow pool with purple shades', 176, '2023-07-20 14:05:05', '2023-07-20 14:05:05'),
(155, 'Futuristic ancient Egypt', 177, '2023-07-20 14:07:22', '2023-07-20 14:07:22'),
(156, 'Luxury in nature modern castle unique elegant high end pool gardens', 178, '2023-07-20 14:09:52', '2023-07-20 14:09:52'),
(157, 'Two towers fully made of glass connected with a bridge overlooking an artificial lake', 179, '2023-07-20 14:15:21', '2023-07-20 14:15:21'),
(158, 'In my penthouse reading a book', 180, '2023-07-20 14:25:42', '2023-07-20 14:25:42'),
(159, 'Underwater life with flying dogs and sharks', 181, '2023-07-20 14:30:40', '2023-07-20 14:30:40'),
(160, 'A bedroom design with Lego as main feature and a floating bead with a gym and gaming space', 189, '2023-07-20 14:42:40', '2023-07-20 14:42:40'),
(161, 'Sodic flat villa with my bae', 190, '2023-07-20 14:45:46', '2023-07-20 14:45:46'),
(162, 'White city with dark black streets flying animals and flowers and me! Tall buildings with Egypt nature seems floating people', 191, '2023-07-20 14:48:35', '2023-07-20 14:48:35'),
(163, 'Effficient Dome like tents that can be easily relocated to any plot anywhere, while having all amenities', 192, '2023-07-20 14:58:01', '2023-07-20 14:58:01'),
(164, 'Boutique zen villa with pool. In front of the pyramids.', 193, '2023-07-20 14:58:29', '2023-07-20 14:58:29'),
(165, 'A simple smart house consiste of two stories with a backyard.', 194, '2023-07-20 16:11:06', '2023-07-20 16:11:06'),
(166, 'modern villa with garden , green area and sea , palms every where on the beach , children play in the garden', 195, '2023-07-20 16:17:28', '2023-07-20 16:17:28'),
(168, 'Imagine the lobby of an eclectic boutique hotel in egypt with a playful experience', 203, '2023-07-20 17:34:19', '2023-07-20 17:34:19'),
(169, '2 floor house\r\nMany windows\r\nBeach front\r\nTrees\r\nMountain back\r\nCalm', 204, '2023-07-20 17:38:12', '2023-07-20 17:38:12'),
(170, 'Looking at the sunset from my small house window, holding my beagle dog', 205, '2023-07-20 18:14:16', '2023-07-20 18:14:16'),
(171, 'White villa with vines growing on the walls by the lagoon', 198, '2023-07-20 18:18:44', '2023-07-20 18:18:44'),
(172, 'Villa with spacious garden and pool', 182, '2023-07-20 18:26:28', '2023-07-20 18:26:28'),
(173, '/imagine a bright green we blue sky', 211, '2023-07-20 19:46:16', '2023-07-20 19:46:16'),
(174, 'Costal house , sea view , and lots of greenery light colors', 208, '2023-07-20 22:42:29', '2023-07-20 22:42:29'),
(175, 'Costal house , sea view , and lots of greenery light colors', 208, '2023-07-20 23:11:31', '2023-07-20 23:11:31'),
(176, '1000 square meter modern house with helicopter port and big pool with organized garden', 212, '2023-07-21 00:04:14', '2023-07-21 00:04:14'),
(177, 'Large area of Greenery with small house and small pool colorful trees and my black maserati car sea view and country side feel clear air with small birds and butterflies', 213, '2023-07-21 03:41:13', '2023-07-21 03:41:13'),
(178, 'Large villa with 2 floors beige color and white painted with garden and pool view with a boho living room, colorful yoga zone at home. Open kitchen', 214, '2023-07-21 03:51:39', '2023-07-21 03:51:39'),
(179, 'Chilling by the sea', 215, '2023-07-21 05:30:57', '2023-07-21 05:30:57'),
(181, 'One storey double height modern villa with glazing everywhere, overlooking a serene lake and greenery.', 220, '2023-07-21 11:26:02', '2023-07-21 11:26:02'),
(182, 'Double height bedroom with PlayStation zone and plane paints with bohemian style', 219, '2023-07-21 11:32:15', '2023-07-21 11:32:15'),
(183, 'Natural lighted living room with colorful cozy furniture and my coffee machine! With oil paintings on walls, wooden pots of plants', 218, '2023-07-21 11:36:18', '2023-07-21 11:36:18'),
(184, 'My friends and i watching on a huge floating TV screen', 217, '2023-07-21 11:40:23', '2023-07-21 11:40:23'),
(185, 'Minimalistic with natural colors with greens and oranges in it and a cost space', 221, '2023-07-21 13:28:56', '2023-07-21 13:28:56'),
(186, 'Panoramic house on a hill 1 story with endless pool', 222, '2023-07-21 13:53:14', '2023-07-21 13:53:14'),
(187, 'Modern one story panoramic house on top of a hill with endless pool and minimal landscape', 223, '2023-07-21 13:57:40', '2023-07-21 13:57:40'),
(188, 'A small house consists of 2 floors on top of the clouds', 224, '2023-07-21 14:07:03', '2023-07-21 14:07:03'),
(189, 'Bedroom with dark wooden floor.\r\nIndirect lighting.\r\nKing size bed and flat screen tv', 225, '2023-07-21 14:14:50', '2023-07-21 14:14:50'),
(190, 'Minimal interior design with indoor pool sea view', 227, '2023-07-21 14:20:27', '2023-07-21 14:20:27'),
(191, 'A white one story house in the middle of a lake', 228, '2023-07-21 14:22:48', '2023-07-21 14:22:48'),
(192, 'A large ottoman style palace surrounding a lush garden', 229, '2023-07-21 14:44:46', '2023-07-21 14:44:46'),
(193, 'Home by the beach with a beautiful sunset and surrounded by a rain forest and lots of marine life', 230, '2023-07-21 20:21:38', '2023-07-21 20:21:38'),
(194, 'Luxurious Art deco interior with back yard sea view', 234, '2023-07-22 09:38:25', '2023-07-22 09:38:25'),
(195, 'An andalusian house on a top of a mountain at dusk', 235, '2023-07-22 10:35:06', '2023-07-22 10:35:06'),
(196, 'white room full of piece of arts and planets with red pieces on walls natural lighted room', 237, '2023-07-23 17:36:11', '2023-07-23 17:36:11'),
(197, 'canvas of colorful paints of abstract flowers and trees with dark background sparks inside', 236, '2023-07-23 17:52:07', '2023-07-23 17:52:07'),
(198, 'Villa of eternity next to the pyramids', 238, '2023-07-23 20:35:59', '2023-07-23 20:35:59'),
(199, 'a very simple coastal town with panromic view chalets and white sand', 241, '2023-07-24 10:36:05', '2023-07-24 10:36:05'),
(200, 'double heighted bungalow surrounded by lagoons and lots of greenery', 242, '2023-07-24 11:28:19', '2023-07-24 11:28:19'),
(201, 'One story villa, Large pool, Green backyard with playing area for my kids, Luxury cars in front of the house.', 243, '2023-07-24 12:09:04', '2023-07-24 12:09:04'),
(203, 'Art of abstract sea and sunlights with a white sand with abstract floral garden reflecting', 244, '2023-07-24 15:46:37', '2023-07-24 15:46:37'),
(204, 'On a lake in the woods looking st the stars above at night, with a boat that I can take to cross to the sea. And woods all around my house.', 245, '2023-07-24 17:29:17', '2023-07-24 17:29:17'),
(205, 'i think we will live in small houses that full of smart systems and robotics doing everything. we will use flying cars and working from everywhere', 246, '2023-07-25 01:40:06', '2023-07-25 01:40:06'),
(206, 'Smart Homes, flexibility amenities   , quite places', 253, '2023-07-25 05:40:21', '2023-07-25 05:40:21'),
(207, 'Minimal Art decor interior with sea view and infinity pool', 252, '2023-07-25 05:43:55', '2023-07-25 05:43:55'),
(208, 'Green Buildings, Rooftop Wind Turbines and solar cells\r\nFull Wi-Fi Coverage around the compound\r\nSmart Street Lighting to save more energy.', 250, '2023-07-25 05:50:16', '2023-07-25 05:50:16'),
(209, 'on a bright beach with unobstructed sea view, deconstructive architecture, with well designed landscape to complete the scene', 249, '2023-07-25 05:55:21', '2023-07-25 05:55:21'),
(210, 'one story panoramic view house with infinite pool in front of a lake', 254, '2023-07-25 06:10:36', '2023-07-25 06:10:36'),
(211, 'vernacular architecture design for houses around the sea in south sainai mixed with little greenery areas and kite surfing activity', 255, '2023-07-25 06:18:41', '2023-07-25 06:18:41'),
(212, 'My dream home is a modern and cozy space with light shades, wide windows, and abstract wall art. It\'s pet-friendly for my cats with cat-friendly features. The home has a garden and private pool view.', 258, '2023-07-25 06:24:55', '2023-07-25 06:24:55'),
(213, 'Smart home with panoramic views on a sandy beach with lush greenery on a starry night.', 257, '2023-07-25 06:29:11', '2023-07-25 06:29:11'),
(214, 'wood sea palm glass house skylight telscopic', 256, '2023-07-25 06:33:43', '2023-07-25 06:33:43'),
(215, 'sea view', 259, '2023-07-25 06:38:03', '2023-07-25 06:38:03'),
(216, 'stand alone villa made from natural materials with sea view, soft black sand, Sailing boat, yard for arabian horses under Grape net, Green spaces, fruitful trees at background, renewable power, no car', 260, '2023-07-25 06:40:35', '2023-07-25 06:40:35'),
(217, 'simple one story single family house with greeneries all around and friendly neighbours.', 262, '2023-07-25 06:51:04', '2023-07-25 06:51:04'),
(218, 'a residential home, sea view, modern style, exposed to nature (many windows)', 263, '2023-07-25 06:56:37', '2023-07-25 06:56:37'),
(219, 'a house on a hill, seeing the sea, greenery, mountains, touching the sky\r\nhouse made of wood and a glass\r\nhaving my own garden and animals', 276, '2023-07-25 09:35:43', '2023-07-25 09:35:43'),
(220, 'future SODIC compounds would be a truly elevated experience. it would offer a perfect blend of luxury, sustainability, and community living, creating an ideal environment for individuals and families', 275, '2023-07-25 09:47:32', '2023-07-25 09:47:32'),
(221, 'Villa overlooking the sea, with a swimming pool, a Mercedes car, and a large garden for flowers & a private Yacht in the port.', 277, '2023-07-25 09:56:13', '2023-07-25 09:56:13'),
(222, 'Minimalistic vertical outdoor terrace overlooking pyramids with built in counter and seating area', 279, '2023-07-25 10:11:52', '2023-07-25 10:11:52'),
(223, 'sun nature sea alot of glass blue', 264, '2023-07-25 10:25:55', '2023-07-25 10:25:55'),
(224, 'green areas, modern buildings and interiors, infinity pools, productive trees, islamic modern architecture', 281, '2023-07-25 10:49:43', '2023-07-25 10:49:43'),
(225, 'pet-friendly space suitable for multiple cats with cat-friendly features such as scratching posts, climbing trees, and perches integrated into the design of the home.', 266, '2023-07-25 10:58:50', '2023-07-25 10:58:50'),
(226, 'standalone villa with simplicity , cubic architecture, with green overview elevated on a platform with surrounding villas having double height ceiling and glazing black framed', 283, '2023-07-25 11:27:08', '2023-07-25 11:27:08'),
(227, 'A sustainable Villa, smart control , front yard with fuzzy fountains , simple and attractive design , surrounded with living neighborhood, streets shaded with high trees, neighboring corner is dusk ,', 280, '2023-07-25 11:35:04', '2023-07-25 11:35:04'),
(228, 'Earthy interior semi open kitchen with floating counter and smart storage solutions', 278, '2023-07-25 12:02:54', '2023-07-25 12:02:54'),
(229, 'a smart community with GIS unit to manage and facilitate the different activities.\r\na Sustainable Residential Community Powered by Renewable Energy, Reducing Carbon Footprint.', 274, '2023-07-25 12:15:21', '2023-07-25 12:15:21'),
(230, 'The architecture is a seamless blend of sleek, modern design and organic elements. Towering structures reach towards the sky, their exteriors adorned with luminous panels that pulse and', 272, '2023-07-25 12:29:05', '2023-07-25 12:29:05'),
(231, 'One story villa on a hill with triangle roof & curtain wall all around, front wooden deck same level with the villa, then stairs down to over flow pool with open view to tropical landscape out side.', 271, '2023-07-25 12:35:08', '2023-07-25 12:35:08'),
(232, 'Big family size Spanish style house with internal court. The house located within private farm with view on wide lake . The farm including lambs and horses.', 269, '2023-07-25 12:47:47', '2023-07-25 12:47:47'),
(233, 'to be surrounded with a sustainability environments , green buildings , go green initiatives  , green house , operated with the utmost available technologies , home is controlled with internet.', 270, '2023-07-25 12:51:15', '2023-07-25 12:51:15'),
(234, 'Modern contemporary loft , panoramic windows, greenery, luxurious interior', 288, '2023-07-25 13:08:42', '2023-07-25 13:08:42'),
(235, 'Large costal castell, large garden, light colors, birds, flowers.', 251, '2023-07-25 13:13:13', '2023-07-25 13:13:13'),
(236, 'Green Buildings, Rooftop Wind Turbines and solar cells\r\nFull Wi-Fi Coverage around the compound\r\nSmart Street Lighting to save more energy.', 250, '2023-07-25 13:25:37', '2023-07-25 13:25:37'),
(237, 'large villa with a big garden and in front of the sea with calm and peace', 240, '2023-07-25 13:39:33', '2023-07-25 13:39:33'),
(238, 'Dynamic environmentally friendly villa build from glass and wood', 289, '2023-07-25 14:15:07', '2023-07-25 14:15:07'),
(239, 'Modern, sun entering from every corner, palms and plants around the villa from outside, medium size, with outer pool.', 290, '2023-07-25 15:15:47', '2023-07-25 15:15:47'),
(240, 'Techonalogy smart home relax landscape vision scope pattern', 291, '2023-07-25 18:07:57', '2023-07-25 18:07:57'),
(241, 'Gummy bears, colorful interior, high ceiling, bachelorette apartment, nintendo switch, natural light, blue sky', 292, '2023-07-25 18:16:38', '2023-07-25 18:16:38'),
(242, 'bright colours, minimalistic design, beach front house, mostly white, greenery, plants, panoramic window, a hint of colour, nature, relaxing view', 293, '2023-07-25 18:26:05', '2023-07-25 18:26:05'),
(243, 'In a cave on a lake', 294, '2023-07-25 18:50:13', '2023-07-25 18:50:13'),
(244, 'Villa sloped cube wood garden pool bicycle lane playground kids', 296, '2023-07-25 21:29:56', '2023-07-25 21:29:56'),
(245, 'living room, home cinema, sound system, big TV screen, L shape sofa, warm colours, cozy feeling', 297, '2023-07-25 21:33:54', '2023-07-25 21:33:54'),
(246, 'green mountain, panoramic view, organic architecture, skies, full moon, stars, sea view, trees, swimming pool, hammock, colors, flying vehicles, deers', 298, '2023-07-25 21:40:52', '2023-07-25 21:40:52'),
(247, 'Flying cars', 301, '2023-07-26 06:27:18', '2023-07-26 06:27:18'),
(250, 'villa in an island with private pool with glass cladding and large terrace with warm indirect lights surrounded by trees  private yacht in the sea', 302, '2023-07-26 07:08:16', '2023-07-26 07:08:16'),
(251, 'I want a spacious living room with clean and light shades of paint but with pop of colours in the decor. I want the living room to have comfortable and elegant seating.', 304, '2023-07-26 11:03:01', '2023-07-26 11:03:01'),
(252, 'costal home with big tropical garden large pool', 305, '2023-07-26 11:12:05', '2023-07-26 11:12:05'),
(253, 'A wheelchair-friendly, simple house on the beach with access to the sea, in a quiet and relaxing spot where you can enjoy the sunset.', 307, '2023-07-26 11:17:30', '2023-07-26 11:17:30'),
(254, 'a white modern home with a pool, 1 big storey, greenery everywhere with palm, big trees, with a husky dog, a swing in the home entrance', 308, '2023-07-26 13:12:26', '2023-07-26 13:12:26'),
(255, 'Natural lighted Ancient Egyptian living room with gold Islamic arts on walls overlooking the Nile River with felucca boats at Aswan!', 310, '2023-07-26 14:04:02', '2023-07-26 14:04:02'),
(256, 'One-storey villa on an island, minimalistic design and earthy tones, with lots of greenery and palm trees. Sail boat docked on private jetty in front of the villa.', 309, '2023-07-26 14:17:32', '2023-07-26 14:17:32'),
(257, 'An italian inspired exterior ground level home in a secluded area with high ceilings and sunlight coming through big windows with an axel vervoordt inspired interior design', 311, '2023-07-26 15:25:04', '2023-07-26 15:25:04'),
(258, '3 story villa with a big door and a lot of windows and a backyard with an infinity pool and a lot of greenery, grey walls. and a front porch with a pond', 312, '2023-07-26 15:45:27', '2023-07-26 15:45:27'),
(259, 'Contemporary Penthouse , nile view, small infinity pool , fireplace, golden hour, big terrace with greenery', 314, '2023-07-26 16:42:08', '2023-07-26 16:42:08'),
(260, 'One story villa on a hilltop with a tropical backyard with palm trees and a big pool', 316, '2023-07-26 17:52:08', '2023-07-26 17:52:08'),
(261, 'Book shop Cafe with looping staircase and walla made from books with flower shop in the middle', 315, '2023-07-26 17:55:37', '2023-07-26 17:55:37'),
(262, 'Home, peaceful, greenery, minimalistic, organic, natural light, bookyard, family', 317, '2023-07-26 19:14:48', '2023-07-26 19:14:48'),
(263, 'A glass house with a lot of greenery plants, with my cats, looking to a beautiful beach and lovely music', 318, '2023-07-26 19:28:13', '2023-07-26 19:28:13'),
(264, 'A fully finished city consists of 3 compounds ( villas, houses & apartments ) includes \r\n- mini clubhouses \r\n- activities parks \r\n- commercial mall\r\n- school \r\n- gas station', 321, '2023-07-26 21:49:31', '2023-07-26 21:49:31'),
(265, 'Double height stand alone house with car parking inside the living area with glass walls', 325, '2023-07-26 21:50:04', '2023-07-26 21:50:04'),
(266, 'Cozy bedroom bubble candle lights, cozy furniture and candles on table centered at bedroom living area overlooking night city view abstract dark oil paint on walls', 323, '2023-07-26 21:56:19', '2023-07-26 21:56:19'),
(267, 'Old style beach house with wooden style and smart as well', 324, '2023-07-26 22:04:09', '2023-07-26 22:04:09'),
(268, 'Natural lighted glazed athletic hall overlooking sea and some palms and greeneries', 322, '2023-07-26 22:40:04', '2023-07-26 22:40:04'),
(269, 'Spacious double height living room marble flooring, brown wooden kitchen ..with white and beige warm furniture, touch of greenery and large tv, having large windows and opening to the garden and pool', 326, '2023-07-26 23:43:25', '2023-07-26 23:43:25'),
(270, 'Fully smart villa on hill with panorama view on near beach, the design has a wooden theme, warm furniture, Side yard with covered pool and small Gym and palm garden with seats, Hummer car Parking.', 327, '2023-07-27 07:53:49', '2023-07-27 07:53:49'),
(271, 'large land with a small villa directly to the lake, with a separate building as workshop 50 Meter square for DIY The rest of land green area with a swimming pool & a garage containing 8 cars', 334, '2023-07-27 11:38:59', '2023-07-27 11:38:59'),
(272, 'luxurious green architecture  with black and dark grey interior', 335, '2023-07-27 12:50:45', '2023-07-27 12:50:45'),
(273, 'a white 3 story modern villa with back yard that has an infinity pool a lot of greenery and a pop of color in the flowers i also want a fire pit with light teal colored cushions i also want modern lig', 337, '2023-07-27 15:53:06', '2023-07-27 15:53:06'),
(274, 'Mountain top by the ocean, minimalistic house,wood,glass,,artwork', 339, '2023-07-27 17:59:22', '2023-07-27 17:59:22'),
(275, 'smart penthouse with a great view, located in a top of a tall building with sea, gardens and other beautiful buildings', 342, '2023-07-28 13:27:53', '2023-07-28 13:27:53'),
(276, 'duplex with beautiful terrace with big garden and pool , with second floor balcony looking at the pool', 343, '2023-07-28 21:02:14', '2023-07-28 21:02:14'),
(277, 'Living in a very sleek and modern villa, color white with greenery roof and horizon swimming pool, parking my Lamborghini in the garage for charging.', 344, '2023-07-29 18:56:23', '2023-07-29 18:56:23'),
(278, 'One floor home with big garden', 352, '2023-07-29 19:10:24', '2023-07-29 19:10:24'),
(279, 'small smart home that interactive with human needs yet its simple minimalism beauty \r\ninner planting sun light \r\ninner water features', 351, '2023-07-29 19:34:28', '2023-07-29 19:34:28'),
(280, 'A House that is covered by alot of trees on a high-level mountain with a sunny weather', 353, '2023-07-29 19:49:26', '2023-07-29 19:49:26'),
(281, 'Living on the sea around bright flowers in a smart house with all modern technological means', 354, '2023-07-29 20:04:56', '2023-07-29 20:04:56'),
(282, 'a smart house that has a playground in a garden next to a quiet relaxing river and has all technologies controlled', 356, '2023-07-29 22:06:03', '2023-07-29 22:06:03'),
(283, 'a double height modern minimalist looks like airplan interior with luxuries details', 357, '2023-07-29 22:43:42', '2023-07-29 22:43:42'),
(284, 'Building consist of alot of terraces with white colour details and minimal modern look the terraces are planted the view is from top of city glass Transparent doors overlook white minimal interior', 358, '2023-07-30 02:02:03', '2023-07-30 02:02:03'),
(285, 'Glass house with zero architecture come and goes with nature with all of its elements water fire air and love', 359, '2023-07-30 02:07:25', '2023-07-30 02:07:25'),
(286, 'Living in sustainable home , sunny, white colors', 361, '2023-07-30 04:26:41', '2023-07-30 04:26:41'),
(287, 'Living, beach, Red Sea, environmental control, small buildings,', 363, '2023-07-30 04:30:30', '2023-07-30 04:30:30'),
(288, 'A fully updated castle on a hill overlooking the sea with an infinity pool  , a privet beach ,and a forest as a backyards , at sunset my mom , me are sipping coffee  and enjoying  life with my cats', 369, '2023-07-30 08:36:55', '2023-07-30 08:36:55'),
(289, 'Smart Homes: It\'s likely that homes will become increasingly connected and automated, such as voice-activated assistants, automated lighting, and climate control systems. Making it easier.', 360, '2023-07-30 08:38:19', '2023-07-30 08:38:19'),
(290, 'full glass walls see front penthouse with huge mangrove or palm trees in the background', 364, '2023-07-30 08:47:26', '2023-07-30 08:47:26'),
(291, 'cozy house in the forest made from wood overlooking a lake, comfy swing on the terrace, horse stable.', 367, '2023-07-30 08:59:26', '2023-07-30 08:59:26'),
(292, 'A fairy house with a flower garden & cove in a forest, me on my flying black horse plying with magical creatures', 370, '2023-07-30 09:30:42', '2023-07-30 09:30:42'),
(293, 'Nestled on a tranquil beach, my future home is a serene oasis. With floor-to-ceiling windows, it offers a panoramic view of the sparkling ocean. The minimalist design and soothing color palette create', 371, '2023-07-30 09:34:39', '2023-07-30 09:34:39'),
(294, 'Mountain top by the ocean, minimalistic house,wood,glass,,artwork,greenery and flowers', 365, '2023-07-30 09:37:38', '2023-07-30 09:37:38'),
(295, 'high tech eco-friendly 4 floor commercial building, solar powered.', 372, '2023-07-30 09:41:29', '2023-07-30 09:41:29'),
(296, 'an industrial loft building with full glass front looking over ocean beach with mangrove trees in the back, 3 ginger cats, industrial modern comfy furniture, lanterns in the outdoors', 366, '2023-07-30 09:48:08', '2023-07-30 09:48:08'),
(297, 'Underwater futuristic cities that are interconnected with glass tunnels. Imagine a house in one of those cities that is an all glass minimalistic capsule', 373, '2023-07-30 09:57:09', '2023-07-30 09:57:09'),
(298, 'Environmental control, Red Sea, cozy, small houses, beach, Nubian,', 377, '2023-07-30 13:31:22', '2023-07-30 13:31:22'),
(299, 'Indoor Japanese garden with modern sculptures under double-height skylight', 379, '2023-07-30 13:41:09', '2023-07-30 13:41:09'),
(300, 'high tech highrise buliding counnected to the ocean from the bottom with glass room to see the world under ocean with composition of greens and mountains and pool and scorpio decorations', 375, '2023-07-30 13:51:29', '2023-07-30 13:51:29'),
(301, 'Huge villa on a formula one track with 10 parked supercars and a massive pool', 381, '2023-07-30 14:09:59', '2023-07-30 14:09:59'),
(302, 'living in an open space where you can enjoy all life leisures', 382, '2023-07-30 15:59:15', '2023-07-30 15:59:15'),
(303, 'Green, futuristic, Bohemian, small home, love, white, beige, Lake', 384, '2023-07-30 16:11:51', '2023-07-30 16:11:51'),
(304, 'Richard myer modern house with indoor pool minimalistic details with very futuristic furntire trend and maximum technology that promote relaxation and happiness', 383, '2023-07-30 16:24:58', '2023-07-30 16:24:58'),
(305, 'myself residing in a sustainable development community that prioritizes various elements such as renewable energy, environmentally friendly alternative transportation, eco-conscious building', 385, '2023-07-30 16:54:37', '2023-07-30 16:54:37'),
(306, 'spaceship looks like house with tiny details water penterat it everywhere one open space accomdate all uses including bathroom glass everywhere and white leather furntire', 387, '2023-07-30 17:03:21', '2023-07-30 17:03:21'),
(307, 'Sea water falls one floor open to nature with sunset', 386, '2023-07-30 17:41:55', '2023-07-30 17:41:55'),
(308, 'Wide space and greeneries with clear view', 378, '2023-07-30 17:44:50', '2023-07-30 17:44:50'),
(309, 'An eco friendly community with shared working spaces, landscape, open theatre, kids area, yoga space, shaded workout space and water park, mountain climber and funky playful benches', 388, '2023-07-30 19:49:14', '2023-07-30 19:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(9, 'App\\Models\\Banner', 5, '9b6b021d-48bd-4261-ae6b-c6da920c889b', 'banner', 'last_edi', 'last_edi.png', 'image/png', 'media', 'media', 21610, '[]', '[]', '[]', '[]', 1, '2023-06-04 07:55:30', '2023-06-04 07:55:30'),
(10, 'App\\Models\\Answer', 73, '9f631ea4-e15a-489a-8c92-12dd3a2ff07f', 'answer', 'CaptureWhiteColor', 'CaptureWhiteColor.PNG', 'image/png', 'media', 'media', 25441, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:07:11', '2023-06-04 08:07:11'),
(11, 'App\\Models\\Answer', 72, '9dc74321-1c28-4cc7-9107-89a58adfd291', 'answer', 'CaptureTest', 'CaptureTest.png', 'image/png', 'media', 'media', 18761, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:11:52', '2023-06-04 08:11:52'),
(12, 'App\\Models\\Answer', 2, '8deee923-ee4d-4463-9a87-8c3fbfb6f48d', 'answer', 'q1_survey_apartment', 'q1_survey_apartment.jpg', 'image/jpeg', 'media', 'media', 85248, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:19:47', '2023-06-04 08:19:47'),
(13, 'App\\Models\\Answer', 3, '3c5cf7fe-f76d-459b-bee7-6c9420b0feb2', 'answer', 'q1_survey_hotel', 'q1_survey_hotel.jpg', 'image/jpeg', 'media', 'media', 92086, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:20:10', '2023-06-04 08:20:10'),
(16, 'App\\Models\\Answer', 4, 'a467370a-9cd8-44ce-af15-ce02f1653801', 'answer', 'q1_survey_limousine', 'q1_survey_limousine.jpg', 'image/jpeg', 'media', 'media', 91836, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:20:40', '2023-06-04 08:20:40'),
(17, 'App\\Models\\Answer', 5, 'b230e1fc-05c6-4b6c-b9c8-e7bf4b8815a6', 'answer', 'q1_survey_rentacar-1', 'q1_survey_rentacar-1.jpg', 'image/jpeg', 'media', 'media', 102980, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:21:04', '2023-06-04 08:21:04'),
(18, 'App\\Models\\Answer', 6, 'bfec8e95-4178-4dc9-a340-94d9b36681a8', 'answer', 'q1_survey_tour_new', 'q1_survey_tour_new.jpg', 'image/jpeg', 'media', 'media', 86373, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:21:45', '2023-06-04 08:21:45'),
(19, 'App\\Models\\Answer', 7, 'db6d313e-88e8-4003-a7e2-f4bf60f84d2e', 'answer', 'q1_survey_transfer', 'q1_survey_transfer.jpg', 'image/jpeg', 'media', 'media', 79447, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:22:14', '2023-06-04 08:22:14'),
(20, 'App\\Models\\Answer', 8, 'bf4e74e2-0dfb-400c-8210-315dde84bece', 'answer', 'q2_survey_switzerland', 'q2_survey_switzerland.jpg', 'image/jpeg', 'media', 'media', 80956, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:22:56', '2023-06-04 08:22:56'),
(21, 'App\\Models\\Answer', 9, '96e76035-f6f7-4904-82aa-cfbba88d9d8e', 'answer', 'q2_survey_austria', 'q2_survey_austria.jpg', 'image/jpeg', 'media', 'media', 83418, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:32:13', '2023-06-04 08:32:13'),
(22, 'App\\Models\\Answer', 10, 'dacbf23c-75eb-4d8d-af81-cd55788acb08', 'answer', 'q2_survey_Bosnia', 'q2_survey_Bosnia.jpg', 'image/jpeg', 'media', 'media', 115806, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:34:36', '2023-06-04 08:34:36'),
(23, 'App\\Models\\Answer', 11, 'b0b447a6-a90c-4cd9-944c-585f586767b5', 'answer', 'q2_survey_france', 'q2_survey_france.jpg', 'image/jpeg', 'media', 'media', 81207, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:35:10', '2023-06-04 08:35:10'),
(24, 'App\\Models\\Answer', 12, '4c01a83f-7d92-4b47-83b8-68cc455bc1a7', 'answer', 'q2_survey_germany', 'q2_survey_germany.jpg', 'image/jpeg', 'media', 'media', 77259, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:35:38', '2023-06-04 08:35:38'),
(25, 'App\\Models\\Answer', 13, '1ed70884-9701-433d-ac1b-20c1e375fd47', 'answer', 'q2_survey_italy', 'q2_survey_italy.jpg', 'image/jpeg', 'media', 'media', 96326, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:36:10', '2023-06-04 08:36:10'),
(26, 'App\\Models\\Answer', 14, '019b7ae4-e73d-41ff-963e-6f3061bc1daa', 'answer', 'q2_survey_spain', 'q2_survey_spain.jpg', 'image/jpeg', 'media', 'media', 90684, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:36:44', '2023-06-04 08:36:44'),
(28, 'App\\Models\\Answer', 15, 'cf50efec-a097-4493-bbb7-f113ef6f3e66', 'answer', 'q1_dislike', 'q1_dislike.jpg', 'image/jpeg', 'media', 'media', 24572, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:38:35', '2023-06-04 08:38:35'),
(29, 'App\\Models\\Answer', 17, '07e6d1c8-193d-42b2-b396-da749f593a69', 'answer', 'q3_survey_capital', 'q3_survey_capital.jpg', 'image/jpeg', 'media', 'media', 111524, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:39:20', '2023-06-04 08:39:20'),
(30, 'App\\Models\\Answer', 18, 'd3213791-589c-4e0f-805d-63b7eea9de1e', 'answer', 'q3_survey_village', 'q3_survey_village.jpg', 'image/jpeg', 'media', 'media', 81192, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:40:06', '2023-06-04 08:40:06'),
(31, 'App\\Models\\Answer', 19, 'f5812955-d534-4e6f-91a6-fac242e06b26', 'answer', 'q3_survey_both', 'q3_survey_both.jpg', 'image/jpeg', 'media', 'media', 88392, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:40:42', '2023-06-04 08:40:42'),
(32, 'App\\Models\\Answer', 23, '7f240df8-b907-46c4-85c8-b00fea97dfdf', 'answer', 'q4_survey_family', 'q4_survey_family.jpg', 'image/jpeg', 'media', 'media', 222510, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:41:23', '2023-06-04 08:41:23'),
(33, 'App\\Models\\Answer', 24, 'a467ad7b-fe3a-4129-b107-102fb304224d', 'answer', 'q4_survey_mat7af', 'q4_survey_mat7af.jpg', 'image/jpeg', 'media', 'media', 77364, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:41:56', '2023-06-04 08:41:56'),
(34, 'App\\Models\\Answer', 25, 'c76dc3e7-9434-42b5-9cbb-b16ae52a2004', 'answer', 'q4_survey_relaxation', 'q4_survey_relaxation.jpg', 'image/jpeg', 'media', 'media', 85845, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:42:40', '2023-06-04 08:42:40'),
(35, 'App\\Models\\Answer', 26, '205b4162-8960-4865-af64-42b955d0abae', 'answer', 'q4_survey_romantic1', 'q4_survey_romantic1.jpg', 'image/jpeg', 'media', 'media', 158418, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:43:32', '2023-06-04 08:43:32'),
(36, 'App\\Models\\Answer', 20, 'd83b9d8d-e242-42ec-b8f7-53d44e0cd75e', 'answer', 'q4_survey_3stars', 'q4_survey_3stars.jpg', 'image/jpeg', 'media', 'media', 163929, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:44:17', '2023-06-04 08:44:17'),
(37, 'App\\Models\\Answer', 21, '4b24ab8d-9bbb-41ee-b78d-f2dbeadc11d9', 'answer', 'q4_survey_4stars', 'q4_survey_4stars.jpg', 'image/jpeg', 'media', 'media', 165390, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:45:00', '2023-06-04 08:45:00'),
(38, 'App\\Models\\Answer', 22, '562a12e2-8926-4fa5-8504-134d75f803a1', 'answer', 'q4_survey_5stars', 'q4_survey_5stars.jpg', 'image/jpeg', 'media', 'media', 167805, '[]', '[]', '[]', '[]', 1, '2023-06-04 08:45:53', '2023-06-04 08:45:53'),
(39, 'App\\Models\\Answer', 74, '967d8564-bf55-4fdc-ac71-d4becd6dcc91', 'answer', 'Capture', 'Capture.PNG', 'image/png', 'media', 'media', 24577, '[]', '[]', '[]', '[]', 1, '2023-06-04 09:20:23', '2023-06-04 09:20:23'),
(40, 'App\\Models\\Answer', 75, '5ce607c3-d9a4-4ac7-86da-82b63053a1cb', 'answer', 'CaptureWhiteColor', 'CaptureWhiteColor.PNG', 'image/png', 'media', 'media', 25441, '[]', '[]', '[]', '[]', 1, '2023-06-04 09:20:43', '2023-06-04 09:20:43'),
(41, 'App\\Models\\Answer', 76, '95996c2f-296a-4407-acb6-85625b7393d8', 'answer', 'last_edi', 'last_edi.png', 'image/png', 'media', 'media', 21610, '[]', '[]', '[]', '[]', 1, '2023-06-04 09:21:04', '2023-06-04 09:21:04'),
(109, 'App\\Models\\Imagine', 68, '7b193448-a83e-4d4a-9c26-b3036ffc0abb', 'Imagine', '33', '33.jpg', 'image/jpeg', 'media', 'media', 1478684, '[]', '[]', '[]', '[]', 1, '2023-06-20 17:04:43', '2023-06-20 17:04:43'),
(110, 'App\\Models\\Imagine', 69, '5c44d9da-5b13-497a-844a-3172a6522acd', 'Imagine', '44', '44.jpg', 'image/jpeg', 'media', 'media', 819448, '[]', '[]', '[]', '[]', 1, '2023-06-20 17:05:00', '2023-06-20 17:05:00'),
(111, 'App\\Models\\Imagine', 70, 'eb47e252-6a14-48a6-9104-4f619dd28735', 'Imagine', '77', '77.jpg', 'image/jpeg', 'media', 'media', 1270051, '[]', '[]', '[]', '[]', 1, '2023-06-20 17:05:19', '2023-06-20 17:05:19'),
(113, 'App\\Models\\Imagine', 72, 'adcd7bb2-fde1-4538-b446-4a6a4470bc55', 'Imagine', '55', '55.jpg', 'image/jpeg', 'media', 'media', 592178, '[]', '[]', '[]', '[]', 1, '2023-06-21 12:01:19', '2023-06-21 12:01:19'),
(115, 'App\\Models\\Imagine', 74, '8508b4fc-bc14-41ed-8f88-f15aab8eaedf', 'Imagine', '33', '33.jpg', 'image/jpeg', 'media', 'media', 1478684, '[]', '[]', '[]', '[]', 1, '2023-06-21 12:05:11', '2023-06-21 12:05:11'),
(117, 'App\\Models\\Imagine', 76, 'ea32a3cb-54d6-4d84-b065-451c064ec91c', 'Imagine', '2', '2.jpg', 'image/jpeg', 'media', 'media', 1346365, '[]', '[]', '[]', '[]', 1, '2023-06-21 12:31:12', '2023-06-21 12:31:12'),
(118, 'App\\Models\\Imagine', 77, '5bfd879f-6d41-47e4-8816-c8aae0eea54d', 'Imagine', '77', '77.jpg', 'image/jpeg', 'media', 'media', 1270051, '[]', '[]', '[]', '[]', 1, '2023-06-21 12:31:57', '2023-06-21 12:31:57'),
(120, 'App\\Models\\Imagine', 79, '913a7782-069d-4e4f-aa71-a457fbff1ed6', 'Imagine', '2', '2.jpg', 'image/jpeg', 'media', 'media', 1346365, '[]', '[]', '[]', '[]', 1, '2023-06-22 09:47:12', '2023-06-22 09:47:12'),
(121, 'App\\Models\\Imagine', 80, 'aa217be0-1215-4732-90ec-c030a2c62916', 'Imagine', '33', '33.jpg', 'image/jpeg', 'media', 'media', 1478684, '[]', '[]', '[]', '[]', 1, '2023-06-22 09:47:35', '2023-06-22 09:47:35'),
(122, 'App\\Models\\Imagine', 81, '079e9132-36a7-411f-856d-053697b8b6f4', 'Imagine', '44', '44.jpg', 'image/jpeg', 'media', 'media', 819448, '[]', '[]', '[]', '[]', 1, '2023-06-22 09:47:56', '2023-06-22 09:47:56'),
(123, 'App\\Models\\Imagine', 82, '3ed3f156-4825-4373-99e8-272e5755be52', 'Imagine', '55', '55.jpg', 'image/jpeg', 'media', 'media', 592178, '[]', '[]', '[]', '[]', 1, '2023-06-22 09:48:08', '2023-06-22 09:48:08'),
(124, 'App\\Models\\Imagine', 83, '0b2d389e-6977-47cd-bd45-954c6aff9304', 'Imagine', '77', '77.jpg', 'image/jpeg', 'media', 'media', 1270051, '[]', '[]', '[]', '[]', 1, '2023-06-22 09:48:31', '2023-06-22 09:48:31'),
(125, 'App\\Models\\Imagine', 84, 'fc2f78f5-adbd-47c4-915e-d4248c66523e', 'Imagine', '2', '2.jpg', 'image/jpeg', 'media', 'media', 1346365, '[]', '[]', '[]', '[]', 1, '2023-06-22 09:49:01', '2023-06-22 09:49:01'),
(126, 'App\\Models\\Imagine', 85, '7d9ee054-3e74-49ce-988e-b585893ba004', 'Imagine', '33', '33.jpg', 'image/jpeg', 'media', 'media', 1478684, '[]', '[]', '[]', '[]', 1, '2023-06-22 09:49:37', '2023-06-22 09:49:37'),
(127, 'App\\Models\\Imagine', 86, 'd3e8c76c-101f-4694-96cc-a51fec944423', 'Imagine', '44', '44.jpg', 'image/jpeg', 'media', 'media', 819448, '[]', '[]', '[]', '[]', 1, '2023-06-22 09:50:07', '2023-06-22 09:50:07'),
(128, 'App\\Models\\Imagine', 87, '93b55602-9d96-44df-a476-66f914c8b4e3', 'Imagine', '55', '55.jpg', 'image/jpeg', 'media', 'media', 592178, '[]', '[]', '[]', '[]', 1, '2023-06-22 09:50:31', '2023-06-22 09:50:31'),
(129, 'App\\Models\\Imagine', 88, 'bad57fa7-9349-47f7-99db-e81d1ad1b91a', 'Imagine', '77', '77.jpg', 'image/jpeg', 'media', 'media', 1270051, '[]', '[]', '[]', '[]', 1, '2023-06-22 09:51:04', '2023-06-22 09:51:04'),
(130, 'App\\Models\\Imagine', 89, 'c451fb64-cc91-4bf3-96a1-bc98092fd467', 'Imagine', 'home1', 'home1.png', 'image/png', 'media', 'media', 130074, '[]', '[]', '[]', '[]', 1, '2023-06-22 09:53:31', '2023-06-22 09:53:31'),
(131, 'App\\Models\\Imagine', 90, 'fdfdfc08-7388-417d-8690-57696809d5b2', 'Imagine', '2', '2.jpg', 'image/jpeg', 'media', 'media', 1346365, '[]', '[]', '[]', '[]', 1, '2023-06-22 09:56:56', '2023-06-22 09:56:56'),
(132, 'App\\Models\\Imagine', 91, 'cf23b320-fa43-486e-8e94-68e7b3d10217', 'Imagine', '2', '2.jpg', 'image/jpeg', 'media', 'media', 1346365, '[]', '[]', '[]', '[]', 1, '2023-06-22 11:11:56', '2023-06-22 11:11:56'),
(133, 'App\\Models\\Imagine', 92, '35246acc-baad-4b85-9e09-2b8d9cf8ecf0', 'Imagine', '33', '33.jpg', 'image/jpeg', 'media', 'media', 1478684, '[]', '[]', '[]', '[]', 1, '2023-06-22 11:12:18', '2023-06-22 11:12:18'),
(134, 'App\\Models\\Imagine', 93, 'f23d43de-ee11-4c4b-9303-bc19447b7cc8', 'Imagine', '44', '44.jpg', 'image/jpeg', 'media', 'media', 819448, '[]', '[]', '[]', '[]', 1, '2023-06-22 11:12:38', '2023-06-22 11:12:38'),
(135, 'App\\Models\\Imagine', 94, '17d59f11-7436-491c-9b5c-6b40d248bd43', 'Imagine', '55', '55.jpg', 'image/jpeg', 'media', 'media', 592178, '[]', '[]', '[]', '[]', 1, '2023-06-22 11:12:57', '2023-06-22 11:12:57'),
(136, 'App\\Models\\Imagine', 95, '3323f956-7ff0-4abc-8b79-d2d82a44f29c', 'Imagine', '77', '77.jpg', 'image/jpeg', 'media', 'media', 1270051, '[]', '[]', '[]', '[]', 1, '2023-06-22 11:13:14', '2023-06-22 11:13:14'),
(137, 'App\\Models\\Imagine', 96, '44085df8-2a22-46f3-a5a2-4b0de212c632', 'Imagine', 'home2', 'home2.png', 'image/png', 'media', 'media', 147192, '[]', '[]', '[]', '[]', 1, '2023-06-22 11:15:57', '2023-06-22 11:15:57'),
(138, 'App\\Models\\Imagine', 97, '25e4be9e-ad8e-4d7a-8da4-7b5290a2be12', 'Imagine', '44', '44.jpg', 'image/jpeg', 'media', 'media', 819448, '[]', '[]', '[]', '[]', 1, '2023-06-22 11:19:11', '2023-06-22 11:19:11'),
(139, 'App\\Models\\Imagine', 98, '0d5ca424-c95b-45b3-b329-51732bbbea91', 'Imagine', '55', '55.jpg', 'image/jpeg', 'media', 'media', 592178, '[]', '[]', '[]', '[]', 1, '2023-06-22 11:21:16', '2023-06-22 11:21:16'),
(140, 'App\\Models\\Imagine', 99, 'e4df29f0-3978-4c02-a9c3-02a07b543c0f', 'Imagine', '77', '77.jpg', 'image/jpeg', 'media', 'media', 1270051, '[]', '[]', '[]', '[]', 1, '2023-06-22 11:22:31', '2023-06-22 11:22:31'),
(141, 'App\\Models\\Imagine', 100, 'f01d5bab-ae89-403e-9996-2d47c8da9be7', 'Imagine', '33', '33.jpg', 'image/jpeg', 'media', 'media', 1478684, '[]', '[]', '[]', '[]', 1, '2023-06-22 11:23:01', '2023-06-22 11:23:01'),
(142, 'App\\Models\\Imagine', 101, 'f41ec9c8-535c-4afa-9e39-79cd1ed21d17', 'Imagine', 'download', 'download.png', 'image/png', 'media', 'media', 15103, '[]', '[]', '[]', '[]', 1, '2023-07-16 09:06:10', '2023-07-16 09:06:10'),
(143, 'App\\Models\\Imagine', 102, '3f930cf3-2ce6-4303-bc80-cdb25b2aa3f9', 'Imagine', 'Square Box Full Color-04', 'Square-Box-Full-Color-04.png', 'image/png', 'media', 'media', 1644214, '[]', '[]', '[]', '[]', 1, '2023-07-16 09:21:01', '2023-07-16 09:21:01'),
(144, 'App\\Models\\Imagine', 103, 'a05e4edd-696d-4a51-9ef3-8a636a4f7058', 'Imagine', 'zz-01', 'zz-01.png', 'image/png', 'media', 'media', 227816, '[]', '[]', '[]', '[]', 1, '2023-07-16 09:21:36', '2023-07-16 09:21:36'),
(145, 'App\\Models\\Imagine', 104, '95680a76-2211-4e1f-abfb-868c5fb0c109', 'Imagine', 'Box With txt And BG (1)', 'Box-With-txt-And-BG-(1).png', 'image/png', 'media', 'media', 1846401, '[]', '[]', '[]', '[]', 1, '2023-07-16 09:53:58', '2023-07-16 09:53:58'),
(146, 'App\\Models\\Imagine', 105, '2a6a333e-6686-4ab8-b5e8-eaa09c5c11d4', 'Imagine', 'Box With txt And BG (1)', 'Box-With-txt-And-BG-(1).png', 'image/png', 'media', 'media', 1846401, '[]', '[]', '[]', '[]', 1, '2023-07-16 11:11:48', '2023-07-16 11:11:48'),
(147, 'App\\Models\\Imagine', 106, '3a61f1fd-7ec5-41c5-b111-99d044635205', 'Imagine', 'Sodic_JPG-02', 'Sodic_JPG-02.jpg', 'image/jpeg', 'media', 'media', 841917, '[]', '[]', '[]', '[]', 1, '2023-07-16 19:12:08', '2023-07-16 19:12:08'),
(148, 'App\\Models\\Imagine', 107, 'e0250206-3e0d-4f4b-b256-0647a9fa1e56', 'Imagine', 'Sodic_JPG-04', 'Sodic_JPG-04.jpg', 'image/jpeg', 'media', 'media', 1476443, '[]', '[]', '[]', '[]', 1, '2023-07-16 19:15:24', '2023-07-16 19:15:24'),
(149, 'App\\Models\\Imagine', 108, '825c9e2d-7d37-4132-ab0b-4850f4e05502', 'Imagine', 'Sodic_JPG-06', 'Sodic_JPG-06.jpg', 'image/jpeg', 'media', 'media', 1418372, '[]', '[]', '[]', '[]', 1, '2023-07-16 19:15:57', '2023-07-16 19:15:57'),
(150, 'App\\Models\\Imagine', 109, 'a318ed98-5b60-4009-aba4-cbef730c9800', 'Imagine', 'WhatsApp Image 2023-07-17 at 00.35.27 (4)', 'WhatsApp-Image-2023-07-17-at-00.35.27-(4).jpeg', 'image/jpeg', 'media', 'media', 511351, '[]', '[]', '[]', '[]', 1, '2023-07-16 19:36:29', '2023-07-16 19:36:29'),
(151, 'App\\Models\\Imagine', 110, 'aaa71175-44d8-424a-b3f2-50d660776a5a', 'Imagine', 'WhatsApp Image 2023-07-17 at 00.35.27', 'WhatsApp-Image-2023-07-17-at-00.35.27.jpeg', 'image/jpeg', 'media', 'media', 239107, '[]', '[]', '[]', '[]', 1, '2023-07-16 19:36:47', '2023-07-16 19:36:47'),
(152, 'App\\Models\\Imagine', 111, '857bdbf5-4edb-4999-9e90-0dcfeb8f1b5a', 'Imagine', 'WhatsApp Image 2023-07-17 at 00.35.27 (2)', 'WhatsApp-Image-2023-07-17-at-00.35.27-(2).jpeg', 'image/jpeg', 'media', 'media', 778620, '[]', '[]', '[]', '[]', 1, '2023-07-16 19:37:12', '2023-07-16 19:37:12'),
(153, 'App\\Models\\Imagine', 112, '948d58ce-bbbd-4bc1-ba17-1488d813904f', 'Imagine', 'GehadRashwan_Summer_Sculptures_by_the_beach_c8ce3eba-19a0-4b5f-a3ba-e6c7cc1b5c88', 'GehadRashwan_Summer_Sculptures_by_the_beach_c8ce3eba-19a0-4b5f-a3ba-e6c7cc1b5c88.png', 'image/png', 'media', 'media', 114933, '[]', '[]', '[]', '[]', 1, '2023-07-17 07:42:10', '2023-07-17 07:42:10'),
(154, 'App\\Models\\Imagine', 113, 'c0e66254-8589-4c18-aaf6-6d7179791804', 'Imagine', 'GehadRashwan_Walking_along_a_beachfront_at_sunset_filled_with_p_a062085d-05e8-46b3-9526-49ec3c22b851', 'GehadRashwan_Walking_along_a_beachfront_at_sunset_filled_with_p_a062085d-05e8-46b3-9526-49ec3c22b851.png', 'image/png', 'media', 'media', 1598300, '[]', '[]', '[]', '[]', 1, '2023-07-17 09:52:19', '2023-07-17 09:52:19'),
(155, 'App\\Models\\Imagine', 114, '2dbe5161-9911-4855-bf69-d36b6b71a0ef', 'Imagine', 'GehadRashwan_wide_image_of_a_man_sitting_on_An_art_deco_bench_m_eacaa36f-5dff-4a53-867c-9695ab482754', 'GehadRashwan_wide_image_of_a_man_sitting_on_An_art_deco_bench_m_eacaa36f-5dff-4a53-867c-9695ab482754.png', 'image/png', 'media', 'media', 1851701, '[]', '[]', '[]', '[]', 1, '2023-07-17 13:14:51', '2023-07-17 13:14:51'),
(156, 'App\\Models\\Imagine', 115, '1a311d72-108f-453f-bf8a-dd435eaaebe1', 'Imagine', 'GehadRashwan_One_floor_beach_house_overlooking_the_Mediterranea_afc1f5f5-9969-4923-b271-5f6afca0e5c3', 'GehadRashwan_One_floor_beach_house_overlooking_the_Mediterranea_afc1f5f5-9969-4923-b271-5f6afca0e5c3.png', 'image/png', 'media', 'media', 2039762, '[]', '[]', '[]', '[]', 1, '2023-07-17 13:22:14', '2023-07-17 13:22:14'),
(157, 'App\\Models\\Imagine', 116, 'e48aa89d-1796-4734-890f-c224673f0dca', 'Imagine', 'GehadRashwan_stairs_of_the_future_00c0f810-7894-4f90-99e0-5133c43b820a', 'GehadRashwan_stairs_of_the_future_00c0f810-7894-4f90-99e0-5133c43b820a.png', 'image/png', 'media', 'media', 1719615, '[]', '[]', '[]', '[]', 1, '2023-07-17 13:31:03', '2023-07-17 13:31:03'),
(158, 'App\\Models\\Imagine', 117, 'd9316d65-90b0-470d-ac9a-38babcd0b7f9', 'Imagine', 'GehadRashwan_playing_with_my_baby_in_a_playground_on_the_beach__45d3f1a2-f7d1-48f7-8176-5dabe31193c5', 'GehadRashwan_playing_with_my_baby_in_a_playground_on_the_beach__45d3f1a2-f7d1-48f7-8176-5dabe31193c5.png', 'image/png', 'media', 'media', 1569710, '[]', '[]', '[]', '[]', 1, '2023-07-17 13:55:14', '2023-07-17 13:55:14'),
(159, 'App\\Models\\Imagine', 118, 'dcc9b273-69e2-431e-b3ff-38ae840b0006', 'Imagine', 'GehadRashwan_yoga_center_by_the_beach_d33cf902-1d4f-40a6-8462-53f33ea1c588', 'GehadRashwan_yoga_center_by_the_beach_d33cf902-1d4f-40a6-8462-53f33ea1c588.png', 'image/png', 'media', 'media', 1881148, '[]', '[]', '[]', '[]', 1, '2023-07-17 14:26:08', '2023-07-17 14:26:08'),
(160, 'App\\Models\\Imagine', 119, 'facf71be-c89b-41da-b64a-0e60203cf24a', 'Imagine', 'GehadRashwan_I_imagine_myself_having_a_small_family_of_three_ki_788771b1-1ad6-4969-8228-d67f02c2cb6d', 'GehadRashwan_I_imagine_myself_having_a_small_family_of_three_ki_788771b1-1ad6-4969-8228-d67f02c2cb6d.png', 'image/png', 'media', 'media', 1972061, '[]', '[]', '[]', '[]', 1, '2023-07-17 14:45:01', '2023-07-17 14:45:01'),
(161, 'App\\Models\\Imagine', 120, 'b4bf85f3-8993-43bd-8525-23a146cbfba1', 'Imagine', 'GehadRashwan_in_a_wide_terraced_house_overlooking_the_beach_thr_7c614ab8-4073-4bc8-a81c-52f0a2648ae2', 'GehadRashwan_in_a_wide_terraced_house_overlooking_the_beach_thr_7c614ab8-4073-4bc8-a81c-52f0a2648ae2.png', 'image/png', 'media', 'media', 1865371, '[]', '[]', '[]', '[]', 1, '2023-07-17 18:04:44', '2023-07-17 18:04:44'),
(162, 'App\\Models\\Imagine', 121, 'b3966cb5-e2ce-4e12-8b72-e62230784406', 'Imagine', 'GehadRashwan_Chilling_on_a_lake_reading_a_book_65f377a9-8368-4088-bce1-9dfc0892e5e6', 'GehadRashwan_Chilling_on_a_lake_reading_a_book_65f377a9-8368-4088-bce1-9dfc0892e5e6.png', 'image/png', 'media', 'media', 1754435, '[]', '[]', '[]', '[]', 1, '2023-07-17 18:25:24', '2023-07-17 18:25:24'),
(163, 'App\\Models\\Imagine', 122, '38da940a-8a9a-4b28-8130-2d05e36fdcea', 'Imagine', 'GehadRashwan_a_smart_glass_house_on_a_hill_overlooking_a_beach__2f6bce5f-d8dc-41e4-bb96-e80c4378d861', 'GehadRashwan_a_smart_glass_house_on_a_hill_overlooking_a_beach__2f6bce5f-d8dc-41e4-bb96-e80c4378d861.png', 'image/png', 'media', 'media', 1692839, '[]', '[]', '[]', '[]', 1, '2023-07-17 23:09:53', '2023-07-17 23:09:53'),
(164, 'App\\Models\\Imagine', 123, '7baa6a7f-2398-4c25-8134-5bed57787cd2', 'Imagine', 'GehadRashwan_i_imagine_myself_in_a_house_surrounded_by_sea_and__1256a855-54b6-4f35-b25f-53c9be2d45e2', 'GehadRashwan_i_imagine_myself_in_a_house_surrounded_by_sea_and__1256a855-54b6-4f35-b25f-53c9be2d45e2.png', 'image/png', 'media', 'media', 1712231, '[]', '[]', '[]', '[]', 1, '2023-07-18 10:53:58', '2023-07-18 10:53:58'),
(165, 'App\\Models\\Imagine', 124, '1b35d31f-3f90-4af1-ac07-e46b11e3ed33', 'Imagine', 'GehadRashwan_Myself_welcoming_my_guests_from_a_balcony_of_a_hig_9b0ce0ce-8e14-4cb7-9b54-51f05b55e673', 'GehadRashwan_Myself_welcoming_my_guests_from_a_balcony_of_a_hig_9b0ce0ce-8e14-4cb7-9b54-51f05b55e673.png', 'image/png', 'media', 'media', 1744832, '[]', '[]', '[]', '[]', 1, '2023-07-18 10:56:06', '2023-07-18 10:56:06'),
(166, 'App\\Models\\Imagine', 125, '5f5820c5-45e4-4d03-bd2e-f00e52a93372', 'Imagine', 'GehadRashwan_a_house_with_Panoramic_view_Greenery_Water_front_4dc4a81c-ee5a-4d9c-a281-a69212bfb0fa', 'GehadRashwan_a_house_with_Panoramic_view_Greenery_Water_front_4dc4a81c-ee5a-4d9c-a281-a69212bfb0fa.png', 'image/png', 'media', 'media', 1981573, '[]', '[]', '[]', '[]', 1, '2023-07-19 14:52:47', '2023-07-19 14:52:47'),
(167, 'App\\Models\\Imagine', 126, 'e62df09f-23e0-4f60-a12e-fd473c5193c9', 'Imagine', 'GehadRashwan_myself_meditating_during_sunrise_in_an_all-glass_o_458a8567-aa08-4dc7-9f3d-d39ab9156586', 'GehadRashwan_myself_meditating_during_sunrise_in_an_all-glass_o_458a8567-aa08-4dc7-9f3d-d39ab9156586.png', 'image/png', 'media', 'media', 1633037, '[]', '[]', '[]', '[]', 1, '2023-07-19 15:47:07', '2023-07-19 15:47:07'),
(168, 'App\\Models\\Imagine', 127, '36df9506-ba13-40a2-85ec-1632c456ed34', 'Imagine', 'GehadRashwan_Living_in_a_high_sky_scraper_on_its_own_island_wit_1b8fec87-bd38-4a3c-a743-cd3fec69a411', 'GehadRashwan_Living_in_a_high_sky_scraper_on_its_own_island_wit_1b8fec87-bd38-4a3c-a743-cd3fec69a411.png', 'image/png', 'media', 'media', 1745167, '[]', '[]', '[]', '[]', 1, '2023-07-19 16:33:56', '2023-07-19 16:33:56'),
(169, 'App\\Models\\Imagine', 128, '1b0587ac-4288-4915-81fa-6e9663c016dd', 'Imagine', 'GehadRashwan_On_a_modern_ranch_in_North_Carolina_2a4dfb84-2fb8-4167-a917-44472d5524a4', 'GehadRashwan_On_a_modern_ranch_in_North_Carolina_2a4dfb84-2fb8-4167-a917-44472d5524a4.png', 'image/png', 'media', 'media', 1948142, '[]', '[]', '[]', '[]', 1, '2023-07-19 16:51:28', '2023-07-19 16:51:28'),
(170, 'App\\Models\\Imagine', 129, 'be74ce77-e4b3-4570-ac30-d758e617aa84', 'Imagine', 'GehadRashwan_Swimming_in_the_beach_with_my_friends_and_family_w_94eb8db4-fba1-4a4e-87b7-644811925d0a', 'GehadRashwan_Swimming_in_the_beach_with_my_friends_and_family_w_94eb8db4-fba1-4a4e-87b7-644811925d0a.png', 'image/png', 'media', 'media', 1777889, '[]', '[]', '[]', '[]', 1, '2023-07-19 17:10:37', '2023-07-19 17:10:37'),
(171, 'App\\Models\\Imagine', 130, 'e717e274-39cf-49cf-9808-e9042b8eb337', 'Imagine', 'GehadRashwan_I_think_Ill_live_in_smart_city_everything_is_autom_63a3f364-ed63-45bc-b90d-ff8adffa1996', 'GehadRashwan_I_think_Ill_live_in_smart_city_everything_is_autom_63a3f364-ed63-45bc-b90d-ff8adffa1996.png', 'image/png', 'media', 'media', 1936414, '[]', '[]', '[]', '[]', 1, '2023-07-19 21:42:54', '2023-07-19 21:42:54'),
(172, 'App\\Models\\Imagine', 131, '7475b22e-6af8-4bb9-b3cb-13e153c0b9cd', 'Imagine', 'GehadRashwan_Coldplay_concert_by_the_sea_on_a_sandy_beach_with__d7a490bd-3d23-4e35-988d-1bf694b7312d', 'GehadRashwan_Coldplay_concert_by_the_sea_on_a_sandy_beach_with__d7a490bd-3d23-4e35-988d-1bf694b7312d.png', 'image/png', 'media', 'media', 1703431, '[]', '[]', '[]', '[]', 1, '2023-07-19 21:51:23', '2023-07-19 21:51:23'),
(173, 'App\\Models\\Imagine', 132, 'c52f10ec-c3ed-42e1-9f8d-9e280a2c925b', 'Imagine', 'GehadRashwan_On_top_of_a_mountain_at_night__seeing_all_lights_o_43027b66-14cb-42f7-afbe-e79f30514939', 'GehadRashwan_On_top_of_a_mountain_at_night__seeing_all_lights_o_43027b66-14cb-42f7-afbe-e79f30514939.png', 'image/png', 'media', 'media', 1707679, '[]', '[]', '[]', '[]', 1, '2023-07-19 23:11:01', '2023-07-19 23:11:01'),
(174, 'App\\Models\\Imagine', 133, 'c3ce3bf0-2c29-4ba1-9692-8e5880be9547', 'Imagine', 'GehadRashwan_Futuristic_sports_club_with_a_unique_architectural_30c63089-2e13-42c8-b01c-04ced0b0d6bd', 'GehadRashwan_Futuristic_sports_club_with_a_unique_architectural_30c63089-2e13-42c8-b01c-04ced0b0d6bd.png', 'image/png', 'media', 'media', 1406770, '[]', '[]', '[]', '[]', 1, '2023-07-20 09:08:45', '2023-07-20 09:08:45'),
(175, 'App\\Models\\Imagine', 134, '3057cc04-1e5b-4a77-89dd-34bda8f965dc', 'Imagine', 'GehadRashwan_Organic_architecture_of_a_bungalow_in_the_middle_o_d8c83667-9cd2-4f4f-a075-972f9365801b', 'GehadRashwan_Organic_architecture_of_a_bungalow_in_the_middle_o_d8c83667-9cd2-4f4f-a075-972f9365801b.png', 'image/png', 'media', 'media', 1962927, '[]', '[]', '[]', '[]', 1, '2023-07-20 09:17:30', '2023-07-20 09:17:30'),
(176, 'App\\Models\\Imagine', 135, '15e5fd84-e97f-42fe-8892-0bdb35caa236', 'Imagine', 'GehadRashwan_Speed_functionality_beauty_nature_space_sky_techno_04de725e-130f-4780-8bb1-79404f313a3b', 'GehadRashwan_Speed_functionality_beauty_nature_space_sky_techno_04de725e-130f-4780-8bb1-79404f313a3b.png', 'image/png', 'media', 'media', 1697971, '[]', '[]', '[]', '[]', 1, '2023-07-20 09:22:49', '2023-07-20 09:22:49'),
(177, 'App\\Models\\Imagine', 136, '0d76f3b1-91ec-49c7-bc28-2c10fe06a142', 'Imagine', 'GehadRashwan_Brightly_colored_beach_150d6618-e4fb-4f1a-bc71-2f39bcf2afee', 'GehadRashwan_Brightly_colored_beach_150d6618-e4fb-4f1a-bc71-2f39bcf2afee.png', 'image/png', 'media', 'media', 1706984, '[]', '[]', '[]', '[]', 1, '2023-07-20 09:26:17', '2023-07-20 09:26:17'),
(178, 'App\\Models\\Imagine', 137, '84b6aa83-5e59-4bdc-b95e-d4bc9ed40acc', 'Imagine', 'GehadRashwan_Read_books_among_lush_greenery._8c98c4fb-c00b-49b8-8d60-09fd5f0e0aec', 'GehadRashwan_Read_books_among_lush_greenery._8c98c4fb-c00b-49b8-8d60-09fd5f0e0aec.png', 'image/png', 'media', 'media', 2037484, '[]', '[]', '[]', '[]', 1, '2023-07-20 09:37:06', '2023-07-20 09:37:06'),
(179, 'App\\Models\\Imagine', 138, '5942a463-2600-4c8b-a6d6-69eaa87c8d93', 'Imagine', 'GehadRashwan_Floating_green_city_Animals_with_humans_e7b2514b-d094-4448-9ff6-2667459f7f5f', 'GehadRashwan_Floating_green_city_Animals_with_humans_e7b2514b-d094-4448-9ff6-2667459f7f5f.png', 'image/png', 'media', 'media', 1972540, '[]', '[]', '[]', '[]', 1, '2023-07-20 09:41:47', '2023-07-20 09:41:47'),
(180, 'App\\Models\\Imagine', 139, '421a844d-c54d-4bcc-bd06-0ba945490d64', 'Imagine', 'GehadRashwan_modern_technological_smart_world_f1c2a123-7960-4c89-a197-81aff76ba1d4', 'GehadRashwan_modern_technological_smart_world_f1c2a123-7960-4c89-a197-81aff76ba1d4.png', 'image/png', 'media', 'media', 2054418, '[]', '[]', '[]', '[]', 1, '2023-07-20 09:48:19', '2023-07-20 09:48:19'),
(181, 'App\\Models\\Imagine', 140, '56fc728f-57ee-457e-80e2-59a9ad0a6e84', 'Imagine', 'GehadRashwan_Beach_house_Panorama_Greenery_030a99cd-c156-4f56-8757-4b407d1db89b', 'GehadRashwan_Beach_house_Panorama_Greenery_030a99cd-c156-4f56-8757-4b407d1db89b.png', 'image/png', 'media', 'media', 2005889, '[]', '[]', '[]', '[]', 1, '2023-07-20 09:54:41', '2023-07-20 09:54:41'),
(182, 'App\\Models\\Imagine', 141, 'd5e5d76d-2101-4c1f-b35d-36a0c6510ad4', 'Imagine', 'GehadRashwan_A_gym_in_a_ground_floor_of_a_residential_building__27793485-3864-4a7e-803a-a30e75321922', 'GehadRashwan_A_gym_in_a_ground_floor_of_a_residential_building__27793485-3864-4a7e-803a-a30e75321922.png', 'image/png', 'media', 'media', 1928820, '[]', '[]', '[]', '[]', 1, '2023-07-20 10:35:02', '2023-07-20 10:35:02'),
(183, 'App\\Models\\Imagine', 142, 'be730bf3-70f9-4955-93d7-eb6bc5ad1c05', 'Imagine', 'GehadRashwan_Living_in_a_3d_concrete_printed_house_eb35b551-569e-4e14-b8be-a0d292b24faf', 'GehadRashwan_Living_in_a_3d_concrete_printed_house_eb35b551-569e-4e14-b8be-a0d292b24faf.png', 'image/png', 'media', 'media', 1816376, '[]', '[]', '[]', '[]', 1, '2023-07-20 11:38:37', '2023-07-20 11:38:37'),
(184, 'App\\Models\\Imagine', 143, '73628bd6-59a9-41ec-8cb1-e46d893714a9', 'Imagine', 'GehadRashwan_damascus_style_home_open_court_with_greeneries_and_88b9f080-658f-405e-8bbe-bde6e3718e6e', 'GehadRashwan_damascus_style_home_open_court_with_greeneries_and_88b9f080-658f-405e-8bbe-bde6e3718e6e.png', 'image/png', 'media', 'media', 1974147, '[]', '[]', '[]', '[]', 1, '2023-07-20 11:43:46', '2023-07-20 11:43:46'),
(185, 'App\\Models\\Imagine', 144, 'acce3dfd-0e69-4e3c-bd20-baf6e505c770', 'Imagine', 'GehadRashwan_White_wide_house_with_sea_view_and_infinity_pool_43fd01ee-e5e5-4af8-bc2b-a38e0138f10b', 'GehadRashwan_White_wide_house_with_sea_view_and_infinity_pool_43fd01ee-e5e5-4af8-bc2b-a38e0138f10b.png', 'image/png', 'media', 'media', 1493123, '[]', '[]', '[]', '[]', 1, '2023-07-20 11:50:55', '2023-07-20 11:50:55'),
(186, 'App\\Models\\Imagine', 145, '5210fb73-89d1-4ce8-a423-9039b19ed6b2', 'Imagine', 'GehadRashwan_White_wide_house_with_sea_view_and_infinity_pool_s_1a972d64-1ba6-4662-9a77-a7a71ece30f4', 'GehadRashwan_White_wide_house_with_sea_view_and_infinity_pool_s_1a972d64-1ba6-4662-9a77-a7a71ece30f4.png', 'image/png', 'media', 'media', 1563519, '[]', '[]', '[]', '[]', 1, '2023-07-20 11:52:37', '2023-07-20 11:52:37'),
(187, 'App\\Models\\Imagine', 146, '705367b7-b332-4e31-8a50-b1ee459c97a4', 'Imagine', 'GehadRashwan_A_place_by_the_seawith_cozy_fairy-lighted_streets__7f89a89d-a4b1-4983-9f6e-3b6744999601', 'GehadRashwan_A_place_by_the_seawith_cozy_fairy-lighted_streets__7f89a89d-a4b1-4983-9f6e-3b6744999601.png', 'image/png', 'media', 'media', 1880483, '[]', '[]', '[]', '[]', 1, '2023-07-20 11:56:27', '2023-07-20 11:56:27'),
(188, 'App\\Models\\Imagine', 147, 'ffd871a1-eb3c-435b-a545-b7a24a596e4e', 'Imagine', 'GehadRashwan_a_very_modern_and_quiet_house_built_on_trees_in_th_93e3dbab-7b85-414d-a6f6-4bc1bef6830a', 'GehadRashwan_a_very_modern_and_quiet_house_built_on_trees_in_th_93e3dbab-7b85-414d-a6f6-4bc1bef6830a.png', 'image/png', 'media', 'media', 2061859, '[]', '[]', '[]', '[]', 1, '2023-07-20 13:14:27', '2023-07-20 13:14:27'),
(189, 'App\\Models\\Imagine', 148, '2b33d32f-9693-485a-8423-b4025e5ab2c3', 'Imagine', 'GehadRashwan_Panorama_house_with_lots_of_lighting_and_greenery_489596f2-179b-402f-bc17-5b91cfc9d594', 'GehadRashwan_Panorama_house_with_lots_of_lighting_and_greenery_489596f2-179b-402f-bc17-5b91cfc9d594.png', 'image/png', 'media', 'media', 1854705, '[]', '[]', '[]', '[]', 1, '2023-07-20 13:29:08', '2023-07-20 13:29:08'),
(190, 'App\\Models\\Imagine', 149, 'dc760b1e-ff25-4333-a263-0e2ce7ccbfee', 'Imagine', 'GehadRashwan_Simple_small_house_that_has_a_garden_with_a_pool_a_86a1d97c-0ac7-454d-bab2-13c394555660', 'GehadRashwan_Simple_small_house_that_has_a_garden_with_a_pool_a_86a1d97c-0ac7-454d-bab2-13c394555660.png', 'image/png', 'media', 'media', 1888161, '[]', '[]', '[]', '[]', 1, '2023-07-20 13:34:37', '2023-07-20 13:34:37'),
(192, 'App\\Models\\Imagine', 151, 'c7d0a4a8-585f-4809-8fab-542e54d759c8', 'Imagine', 'GehadRashwan_Spacious_penthouse_with_bright_marble_floor_and_se_0e7116f0-d7c7-4f9a-a9c3-ad2b23f5779f', 'GehadRashwan_Spacious_penthouse_with_bright_marble_floor_and_se_0e7116f0-d7c7-4f9a-a9c3-ad2b23f5779f.png', 'image/png', 'media', 'media', 1542286, '[]', '[]', '[]', '[]', 1, '2023-07-20 13:57:23', '2023-07-20 13:57:23'),
(193, 'App\\Models\\Imagine', 152, 'cd9db6cd-0b1c-4fd3-8bf7-ef5a801d3abd', 'Imagine', 'GehadRashwan_Sitting_in_my_small_house_watching_the_sunset_and__aba26e80-b524-46c1-a2b4-19506b432e1e', 'GehadRashwan_Sitting_in_my_small_house_watching_the_sunset_and__aba26e80-b524-46c1-a2b4-19506b432e1e.png', 'image/png', 'media', 'media', 1502943, '[]', '[]', '[]', '[]', 1, '2023-07-20 13:59:59', '2023-07-20 13:59:59'),
(194, 'App\\Models\\Imagine', 153, '9f9c8280-dbcd-4613-a8c6-b90d0f075959', 'Imagine', 'GehadRashwan_A_sea_side_pink_home_with_garden_full_of_hot_pink__79b03a4b-bbbc-4bb2-9b57-8e541d83be62', 'GehadRashwan_A_sea_side_pink_home_with_garden_full_of_hot_pink__79b03a4b-bbbc-4bb2-9b57-8e541d83be62.png', 'image/png', 'media', 'media', 1704485, '[]', '[]', '[]', '[]', 1, '2023-07-20 14:01:40', '2023-07-20 14:01:40'),
(195, 'App\\Models\\Imagine', 154, '627014d3-94a8-4b31-9956-0896a20dd867', 'Imagine', 'GehadRashwan_Blue_white_lights_home_with_pink_garden_and_yellow_76e96504-b7e1-4764-8208-b67b3b3b9eab', 'GehadRashwan_Blue_white_lights_home_with_pink_garden_and_yellow_76e96504-b7e1-4764-8208-b67b3b3b9eab.png', 'image/png', 'media', 'media', 1842038, '[]', '[]', '[]', '[]', 1, '2023-07-20 14:05:05', '2023-07-20 14:05:05'),
(196, 'App\\Models\\Imagine', 155, 'f6d6219f-87a0-49ec-90a7-7cff898692db', 'Imagine', 'GehadRashwan_Futuristic_ancient_Egypt_1ccad57b-2657-4e1b-91b4-c7c3c8684b48', 'GehadRashwan_Futuristic_ancient_Egypt_1ccad57b-2657-4e1b-91b4-c7c3c8684b48.png', 'image/png', 'media', 'media', 1873640, '[]', '[]', '[]', '[]', 1, '2023-07-20 14:07:22', '2023-07-20 14:07:22'),
(197, 'App\\Models\\Imagine', 156, '98fbf8d0-4cc3-486a-9cb8-868020f2d7d4', 'Imagine', 'GehadRashwan_Luxury_in_nature_modern_castle_unique_elegant_high_6afdf210-d697-42c8-bb77-d60a289fc17f', 'GehadRashwan_Luxury_in_nature_modern_castle_unique_elegant_high_6afdf210-d697-42c8-bb77-d60a289fc17f.png', 'image/png', 'media', 'media', 1692509, '[]', '[]', '[]', '[]', 1, '2023-07-20 14:09:52', '2023-07-20 14:09:52'),
(198, 'App\\Models\\Imagine', 157, '35e0091c-9c9a-4fb7-9c09-4cdced5df707', 'Imagine', 'GehadRashwan_two_towers_made_of_glass_with_a_bridge_connecting__cb0acc72-4822-4e1b-b7fa-4550d146ea47', 'GehadRashwan_two_towers_made_of_glass_with_a_bridge_connecting__cb0acc72-4822-4e1b-b7fa-4550d146ea47.png', 'image/png', 'media', 'media', 1638082, '[]', '[]', '[]', '[]', 1, '2023-07-20 14:15:21', '2023-07-20 14:15:21'),
(199, 'App\\Models\\Imagine', 158, '379ab776-0eac-43ff-a803-a6ef35f58d62', 'Imagine', 'GehadRashwan_reading_book_in_my_penthouse_b1737359-c6a8-4d8b-a3e9-131148cf8d4c', 'GehadRashwan_reading_book_in_my_penthouse_b1737359-c6a8-4d8b-a3e9-131148cf8d4c.png', 'image/png', 'media', 'media', 1419704, '[]', '[]', '[]', '[]', 1, '2023-07-20 14:25:42', '2023-07-20 14:25:42'),
(200, 'App\\Models\\Imagine', 159, '04751089-845e-4a22-a8d6-f4ec5a2f82d3', 'Imagine', 'GehadRashwan_Underwater_life_with_flying_dogs_and_sharks_9bc7e4e8-9892-47d8-b971-ab9935b3c7ce', 'GehadRashwan_Underwater_life_with_flying_dogs_and_sharks_9bc7e4e8-9892-47d8-b971-ab9935b3c7ce.png', 'image/png', 'media', 'media', 1721003, '[]', '[]', '[]', '[]', 1, '2023-07-20 14:30:40', '2023-07-20 14:30:40'),
(201, 'App\\Models\\Imagine', 160, '2bf2fa32-f76e-4549-ab66-e374eb569459', 'Imagine', 'GehadRashwan_A_bedroom_design_with_Lego_as_main_feature_and_a_f_e0a1a8ee-fdfc-47fb-8332-e5fd54add848', 'GehadRashwan_A_bedroom_design_with_Lego_as_main_feature_and_a_f_e0a1a8ee-fdfc-47fb-8332-e5fd54add848.png', 'image/png', 'media', 'media', 1641428, '[]', '[]', '[]', '[]', 1, '2023-07-20 14:42:40', '2023-07-20 14:42:40'),
(202, 'App\\Models\\Imagine', 161, 'f25e9631-c2e3-4d39-871c-ebb2f567f042', 'Imagine', 'GehadRashwan_Sodic_flat_villa_with_my_bae_4c61e094-31ba-487f-950d-de0351754df9', 'GehadRashwan_Sodic_flat_villa_with_my_bae_4c61e094-31ba-487f-950d-de0351754df9.png', 'image/png', 'media', 'media', 1790959, '[]', '[]', '[]', '[]', 1, '2023-07-20 14:45:46', '2023-07-20 14:45:46'),
(203, 'App\\Models\\Imagine', 162, '876b1f40-c4e2-456b-9437-01cc1a59338d', 'Imagine', 'GehadRashwan_White_city_with_dark_black_streets_flying_animals__0599487c-dbe8-4cf9-9c1c-5f25200a3134', 'GehadRashwan_White_city_with_dark_black_streets_flying_animals__0599487c-dbe8-4cf9-9c1c-5f25200a3134.png', 'image/png', 'media', 'media', 2042306, '[]', '[]', '[]', '[]', 1, '2023-07-20 14:48:35', '2023-07-20 14:48:35'),
(204, 'App\\Models\\Imagine', 163, '0a0b0f94-38d0-4d4c-8977-4e71a1902b01', 'Imagine', 'GehadRashwan_Effficient_Dome_like_tents_that_can_be_easily_relo_8bf313ac-2674-4f20-8365-f0885f722a0a', 'GehadRashwan_Effficient_Dome_like_tents_that_can_be_easily_relo_8bf313ac-2674-4f20-8365-f0885f722a0a.png', 'image/png', 'media', 'media', 1682720, '[]', '[]', '[]', '[]', 1, '2023-07-20 14:58:01', '2023-07-20 14:58:01'),
(205, 'App\\Models\\Imagine', 164, 'cccc7f8a-9d40-4577-9296-d96bd9b7e574', 'Imagine', 'GehadRashwan_Boutique_zen_villa_with_pool._In_front_of_the_pyra_510bc7ca-d4ac-42af-bb31-345e37dd417c', 'GehadRashwan_Boutique_zen_villa_with_pool._In_front_of_the_pyra_510bc7ca-d4ac-42af-bb31-345e37dd417c.png', 'image/png', 'media', 'media', 1618720, '[]', '[]', '[]', '[]', 1, '2023-07-20 14:58:29', '2023-07-20 14:58:29'),
(206, 'App\\Models\\Imagine', 165, 'b74ca5f7-9bfe-4b7f-8402-7a0545d7f8cf', 'Imagine', 'GehadRashwan_A_simple_smart_house_consiste_of_two_stories_with__cb78b4ef-0cc6-405a-89fd-43006135ecb9', 'GehadRashwan_A_simple_smart_house_consiste_of_two_stories_with__cb78b4ef-0cc6-405a-89fd-43006135ecb9.png', 'image/png', 'media', 'media', 1862359, '[]', '[]', '[]', '[]', 1, '2023-07-20 16:11:06', '2023-07-20 16:11:06'),
(207, 'App\\Models\\Imagine', 166, '7a6acae2-209a-47a3-9ac5-6ea2aaa5b9c3', 'Imagine', 'GehadRashwan_modern_villa_by_the_sea_with_garden_where_kids_pla_525bf4fc-ebcc-48d6-a7e6-22e0bfed8bff', 'GehadRashwan_modern_villa_by_the_sea_with_garden_where_kids_pla_525bf4fc-ebcc-48d6-a7e6-22e0bfed8bff.png', 'image/png', 'media', 'media', 1818884, '[]', '[]', '[]', '[]', 1, '2023-07-20 16:17:28', '2023-07-20 16:17:28'),
(209, 'App\\Models\\Imagine', 168, 'd9fdedd2-9dca-4145-9ffa-4fc813e4fbd9', 'Imagine', 'sodicimagine_Imagine_the_lobby_of_an_eclectic_boutique_hotel_in_bfffdecc-7455-4134-92c9-1994c818223a', 'sodicimagine_Imagine_the_lobby_of_an_eclectic_boutique_hotel_in_bfffdecc-7455-4134-92c9-1994c818223a.png', 'image/png', 'media', 'media', 1907799, '[]', '[]', '[]', '[]', 1, '2023-07-20 17:34:19', '2023-07-20 17:34:19'),
(210, 'App\\Models\\Imagine', 169, '8516a517-8177-4afc-a55d-b05f5e5e9f87', 'Imagine', 'sodicimagine_2_floor_house_Many_windows_Beach_front_Trees_Mount_84aa9fdd-8e57-41f9-be59-fc6874db3dad', 'sodicimagine_2_floor_house_Many_windows_Beach_front_Trees_Mount_84aa9fdd-8e57-41f9-be59-fc6874db3dad.png', 'image/png', 'media', 'media', 1927523, '[]', '[]', '[]', '[]', 1, '2023-07-20 17:38:12', '2023-07-20 17:38:12'),
(211, 'App\\Models\\Imagine', 170, 'acfc47f9-8bb7-47ff-be67-7de32f3997f3', 'Imagine', 'sodicimagine_Looking_at_the_sunset_from_my_small_house_window_h_2f5e53ec-3fa6-43ce-a986-2346f7679dd1', 'sodicimagine_Looking_at_the_sunset_from_my_small_house_window_h_2f5e53ec-3fa6-43ce-a986-2346f7679dd1.png', 'image/png', 'media', 'media', 1305802, '[]', '[]', '[]', '[]', 1, '2023-07-20 18:14:16', '2023-07-20 18:14:16'),
(212, 'App\\Models\\Imagine', 171, '7d42595f-cb26-458b-a42b-88b9d7ffcca6', 'Imagine', 'sodicimagine_White_villa_with_vines_growing_on_the_walls_by_the_449d475d-3129-438c-b38a-20c62cf4b663', 'sodicimagine_White_villa_with_vines_growing_on_the_walls_by_the_449d475d-3129-438c-b38a-20c62cf4b663.png', 'image/png', 'media', 'media', 1994541, '[]', '[]', '[]', '[]', 1, '2023-07-20 18:18:44', '2023-07-20 18:18:44'),
(213, 'App\\Models\\Imagine', 172, '7a2114cc-4f98-4284-b03e-41f756490066', 'Imagine', 'sodicimagine_Villa_with_spacious_garden_and_pool_514ca8bd-ff13-4074-a48c-9a0a2952bf54', 'sodicimagine_Villa_with_spacious_garden_and_pool_514ca8bd-ff13-4074-a48c-9a0a2952bf54.png', 'image/png', 'media', 'media', 1918148, '[]', '[]', '[]', '[]', 1, '2023-07-20 18:26:28', '2023-07-20 18:26:28'),
(214, 'App\\Models\\Imagine', 173, 'f4a5cf8e-c0aa-4b07-9533-23b206ce23cf', 'Imagine', 'sodicimagine_a_bright_green_we_blue_sky_68c465c5-b324-45fd-ae51-1c24bcc7ac44', 'sodicimagine_a_bright_green_we_blue_sky_68c465c5-b324-45fd-ae51-1c24bcc7ac44.png', 'image/png', 'media', 'media', 1868016, '[]', '[]', '[]', '[]', 1, '2023-07-20 19:46:16', '2023-07-20 19:46:16'),
(215, 'App\\Models\\Imagine', 174, '926624ca-796e-437e-8a82-23b505e8f073', 'Imagine', 'BBDF99F7-8BE2-4108-BE21-78B67D4196DB', 'BBDF99F7-8BE2-4108-BE21-78B67D4196DB.png', 'image/png', 'media', 'media', 1911890, '[]', '[]', '[]', '[]', 1, '2023-07-20 22:42:29', '2023-07-20 22:42:29'),
(216, 'App\\Models\\Imagine', 175, '629aabd5-703c-4dcd-933c-ad75eb58c7af', 'Imagine', 'IMG_20230721_041042', 'IMG_20230721_041042.png', 'image/png', 'media', 'media', 1961065, '[]', '[]', '[]', '[]', 1, '2023-07-20 23:11:31', '2023-07-20 23:11:31'),
(217, 'App\\Models\\Imagine', 176, '39f9f1f6-eb62-443f-9c0d-1cccb3f38ccc', 'Imagine', 'sodicimagine_top_view_of_1000_square_meter_modern_house_with_he_8e0b7a21-2e74-4421-9662-1f06d2511068', 'sodicimagine_top_view_of_1000_square_meter_modern_house_with_he_8e0b7a21-2e74-4421-9662-1f06d2511068.png', 'image/png', 'media', 'media', 2007559, '[]', '[]', '[]', '[]', 1, '2023-07-21 00:04:14', '2023-07-21 00:04:14'),
(218, 'App\\Models\\Imagine', 177, '86e8d27b-7eb4-4599-a948-474fb6410c32', 'Imagine', 'sodicimagine_Large_area_of_Greenery_with_small_house_and_small__2e80bda6-27eb-41a6-bcff-4c578a1138ce', 'sodicimagine_Large_area_of_Greenery_with_small_house_and_small__2e80bda6-27eb-41a6-bcff-4c578a1138ce.png', 'image/png', 'media', 'media', 1980026, '[]', '[]', '[]', '[]', 1, '2023-07-21 03:41:13', '2023-07-21 03:41:13'),
(219, 'App\\Models\\Imagine', 178, '0f060c7b-48b1-4192-b451-118b6d9c080b', 'Imagine', 'sodicimagine_M_Large_villa_with_2_floors_beige_color_and_white__123e29d1-7412-45f0-bfda-d57cce5158f1', 'sodicimagine_M_Large_villa_with_2_floors_beige_color_and_white__123e29d1-7412-45f0-bfda-d57cce5158f1.png', 'image/png', 'media', 'media', 1934468, '[]', '[]', '[]', '[]', 1, '2023-07-21 03:51:39', '2023-07-21 03:51:39'),
(220, 'App\\Models\\Imagine', 179, 'ed56d0cd-cb8b-4d3d-8c99-c5c59751bafa', 'Imagine', 'DBBF0952-127C-47DF-AA28-FF579DED8E58', 'DBBF0952-127C-47DF-AA28-FF579DED8E58.png', 'image/png', 'media', 'media', 1799832, '[]', '[]', '[]', '[]', 1, '2023-07-21 05:30:57', '2023-07-21 05:30:57'),
(222, 'App\\Models\\Imagine', 181, 'd34a04d8-462e-42d8-95d8-bce830878aea', 'Imagine', '819ACA1E-5943-4288-814F-AB18BE36B99D', '819ACA1E-5943-4288-814F-AB18BE36B99D.png', 'image/png', 'media', 'media', 1758992, '[]', '[]', '[]', '[]', 1, '2023-07-21 11:26:02', '2023-07-21 11:26:02'),
(223, 'App\\Models\\Imagine', 182, '8841fe27-f01f-4d1f-aeb3-be457d1332da', 'Imagine', '475D6418-0CC0-4D5A-8B4D-CD29A9C78F1A', '475D6418-0CC0-4D5A-8B4D-CD29A9C78F1A.png', 'image/png', 'media', 'media', 1880619, '[]', '[]', '[]', '[]', 1, '2023-07-21 11:32:15', '2023-07-21 11:32:15'),
(224, 'App\\Models\\Imagine', 183, 'fd3dec01-c211-4270-8c76-e8a636e954e0', 'Imagine', '15980957-ABFD-4FE3-9A38-74C829778EF7', '15980957-ABFD-4FE3-9A38-74C829778EF7.png', 'image/png', 'media', 'media', 1843109, '[]', '[]', '[]', '[]', 1, '2023-07-21 11:36:18', '2023-07-21 11:36:18'),
(225, 'App\\Models\\Imagine', 184, '052bf491-c5b8-4d26-b83e-0fb97b97d1d5', 'Imagine', '0148041A-159F-47EE-B420-5CCE19C52CB5', '0148041A-159F-47EE-B420-5CCE19C52CB5.png', 'image/png', 'media', 'media', 1383346, '[]', '[]', '[]', '[]', 1, '2023-07-21 11:40:23', '2023-07-21 11:40:23'),
(226, 'App\\Models\\Imagine', 185, '8bc96258-3c90-442c-b969-a251d6995ec7', 'Imagine', 'sodicimagine_Minimalistic_with_natural_colors_with_greens_and_o_448e180e-c84e-4c28-9f72-9e6943b5eeaf', 'sodicimagine_Minimalistic_with_natural_colors_with_greens_and_o_448e180e-c84e-4c28-9f72-9e6943b5eeaf.png', 'image/png', 'media', 'media', 1601621, '[]', '[]', '[]', '[]', 1, '2023-07-21 13:28:56', '2023-07-21 13:28:56'),
(227, 'App\\Models\\Imagine', 186, 'fca90e8d-15c8-433b-bb2e-d35d3405e028', 'Imagine', 'sodicimagine_Panoramic_house_on_a_hill_1_story_with_endless_poo_5db2efca-c036-4a5e-9fc9-b5a157ab0c1c', 'sodicimagine_Panoramic_house_on_a_hill_1_story_with_endless_poo_5db2efca-c036-4a5e-9fc9-b5a157ab0c1c.png', 'image/png', 'media', 'media', 1674910, '[]', '[]', '[]', '[]', 1, '2023-07-21 13:53:14', '2023-07-21 13:53:14'),
(228, 'App\\Models\\Imagine', 187, '15b9d8e5-f647-4da8-9db7-316e80c9383d', 'Imagine', 'sodicimagine_Modern_one_story_panoramic_house_on_top_of_a_hill__68481728-34ac-4358-93c3-028241c039ae', 'sodicimagine_Modern_one_story_panoramic_house_on_top_of_a_hill__68481728-34ac-4358-93c3-028241c039ae.png', 'image/png', 'media', 'media', 1544111, '[]', '[]', '[]', '[]', 1, '2023-07-21 13:57:40', '2023-07-21 13:57:40'),
(229, 'App\\Models\\Imagine', 188, '3a95284f-7f9a-4f3e-9f1b-36fd4786a55c', 'Imagine', 'sodicimagine_A_small_modern_house_consists_of_2_floors_on_top_o_c1471a06-fbb5-44dd-bdc5-fe2551e5debe', 'sodicimagine_A_small_modern_house_consists_of_2_floors_on_top_o_c1471a06-fbb5-44dd-bdc5-fe2551e5debe.png', 'image/png', 'media', 'media', 1686848, '[]', '[]', '[]', '[]', 1, '2023-07-21 14:07:03', '2023-07-21 14:07:03'),
(230, 'App\\Models\\Imagine', 189, '053a68d0-c8bb-4a13-b4ab-e33f7cc4fbfc', 'Imagine', 'sodicimagine_Bedroom_with_dark_wooden_floor._Indirect_lighting._3ea92719-cab6-48a9-9031-79ce3b710270', 'sodicimagine_Bedroom_with_dark_wooden_floor._Indirect_lighting._3ea92719-cab6-48a9-9031-79ce3b710270.png', 'image/png', 'media', 'media', 1620795, '[]', '[]', '[]', '[]', 1, '2023-07-21 14:14:50', '2023-07-21 14:14:50'),
(231, 'App\\Models\\Imagine', 190, 'd94c1300-5151-4149-b2e3-da6f8d82fa1a', 'Imagine', 'sodicimagine_Minimal_interior_design_with_indoor_pool_sea_view_e6d4569e-57bb-4d32-89b4-3a14d3522773', 'sodicimagine_Minimal_interior_design_with_indoor_pool_sea_view_e6d4569e-57bb-4d32-89b4-3a14d3522773.png', 'image/png', 'media', 'media', 1665000, '[]', '[]', '[]', '[]', 1, '2023-07-21 14:20:27', '2023-07-21 14:20:27'),
(232, 'App\\Models\\Imagine', 191, '9f82725c-598d-43e5-9b8c-7eb2b574ab21', 'Imagine', 'sodicimagine_A_white_one_story_house_in_the_middle_of_a_lake_879e0610-2be3-4c8e-a089-f205410658c2', 'sodicimagine_A_white_one_story_house_in_the_middle_of_a_lake_879e0610-2be3-4c8e-a089-f205410658c2.png', 'image/png', 'media', 'media', 1684325, '[]', '[]', '[]', '[]', 1, '2023-07-21 14:22:48', '2023-07-21 14:22:48'),
(233, 'App\\Models\\Imagine', 192, '07b27f4f-659d-4175-9b0c-3cec492fb6e1', 'Imagine', 'sodicimagine_top_view_of_A_large_ottoman_style_palace_surroundi_7ea3fa51-c7b3-4401-a56b-956cabe0922b', 'sodicimagine_top_view_of_A_large_ottoman_style_palace_surroundi_7ea3fa51-c7b3-4401-a56b-956cabe0922b.jpg', 'image/jpeg', 'media', 'media', 521128, '[]', '[]', '[]', '[]', 1, '2023-07-21 14:44:46', '2023-07-21 14:44:46'),
(234, 'App\\Models\\Imagine', 193, '63dc38e8-ab98-475f-9b0b-383d0d975cc7', 'Imagine', '06900BFE-1C90-4587-BF07-DCD3517D9C96', '06900BFE-1C90-4587-BF07-DCD3517D9C96.png', 'image/png', 'media', 'media', 2034595, '[]', '[]', '[]', '[]', 1, '2023-07-21 20:21:38', '2023-07-21 20:21:38'),
(235, 'App\\Models\\Imagine', 194, 'ababa525-e175-48d1-8358-61f3325c16fc', 'Imagine', '541CDE00-A30B-4723-8387-0E808B171BA5', '541CDE00-A30B-4723-8387-0E808B171BA5.png', 'image/png', 'media', 'media', 1763082, '[]', '[]', '[]', '[]', 1, '2023-07-22 09:38:25', '2023-07-22 09:38:25'),
(236, 'App\\Models\\Imagine', 195, '13a8fa4b-ca38-4ec7-a952-1566b09954d1', 'Imagine', '070EAAB3-5282-4F66-9019-9872B7C15E91', '070EAAB3-5282-4F66-9019-9872B7C15E91.png', 'image/png', 'media', 'media', 1690672, '[]', '[]', '[]', '[]', 1, '2023-07-22 10:35:06', '2023-07-22 10:35:06'),
(237, 'App\\Models\\Imagine', 196, 'cd196355-ab55-4053-92d1-c2dcc787d9a8', 'Imagine', '4D885601-CF0C-44C0-AC17-B9E3B6E5A3EA', '4D885601-CF0C-44C0-AC17-B9E3B6E5A3EA.png', 'image/png', 'media', 'media', 1442390, '[]', '[]', '[]', '[]', 1, '2023-07-23 17:36:11', '2023-07-23 17:36:11'),
(238, 'App\\Models\\Imagine', 197, 'afd0c268-4eed-401f-8483-f713f22d842a', 'Imagine', 'sodicimagine_real_canvas_of_colorful_paints_of_abstract_flowers_ba7aaeb5-5168-40fb-bb58-816ed5a3f577', 'sodicimagine_real_canvas_of_colorful_paints_of_abstract_flowers_ba7aaeb5-5168-40fb-bb58-816ed5a3f577.png', 'image/png', 'media', 'media', 1704512, '[]', '[]', '[]', '[]', 1, '2023-07-23 17:52:07', '2023-07-23 17:52:07'),
(239, 'App\\Models\\Imagine', 198, 'a7b8ec32-4b60-490f-bf6b-c7dd7ebeadf4', 'Imagine', 'sodicimagine_Villa_of_eternity_with_view_by_the_pyramids_35f88e80-03e0-4dad-a74b-4adc4979161a', 'sodicimagine_Villa_of_eternity_with_view_by_the_pyramids_35f88e80-03e0-4dad-a74b-4adc4979161a.png', 'image/png', 'media', 'media', 1722887, '[]', '[]', '[]', '[]', 1, '2023-07-23 20:35:59', '2023-07-23 20:35:59'),
(240, 'App\\Models\\Imagine', 199, '4aeb7066-8905-49bd-a332-ddc8355775dc', 'Imagine', 'sodicimagine_town_by_the_coast_consists_of_modern_panoramic_cha_c56c9121-33d0-41a4-88a7-7a146f724104', 'sodicimagine_town_by_the_coast_consists_of_modern_panoramic_cha_c56c9121-33d0-41a4-88a7-7a146f724104.png', 'image/png', 'media', 'media', 1732096, '[]', '[]', '[]', '[]', 1, '2023-07-24 10:36:05', '2023-07-24 10:36:05'),
(241, 'App\\Models\\Imagine', 200, '7892570e-a64a-42ff-bd1c-ef1600a9cc8f', 'Imagine', 'sodicimagine_double_heighted_bungalow_surrounded_by_lagoons_and_e2821d2d-1fa4-441f-8e28-9ffbcde19a7b', 'sodicimagine_double_heighted_bungalow_surrounded_by_lagoons_and_e2821d2d-1fa4-441f-8e28-9ffbcde19a7b.png', 'image/png', 'media', 'media', 1951512, '[]', '[]', '[]', '[]', 1, '2023-07-24 11:28:19', '2023-07-24 11:28:19'),
(242, 'App\\Models\\Imagine', 201, '41ab88e1-a3bf-42ca-9bf9-8deb7a4a6df1', 'Imagine', 'sodicimagine_One_story_villa_Large_pool_Green_backyard_with_pla_ab2f2d4c-4990-4189-a50a-2dbdd771ec08', 'sodicimagine_One_story_villa_Large_pool_Green_backyard_with_pla_ab2f2d4c-4990-4189-a50a-2dbdd771ec08.png', 'image/png', 'media', 'media', 1734326, '[]', '[]', '[]', '[]', 1, '2023-07-24 12:09:04', '2023-07-24 12:09:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(244, 'App\\Models\\Imagine', 203, '78c6939f-9c77-43eb-a646-be905776e4ee', 'Imagine', 'abstract of floral garden', 'abstract-of-floral-garden.png', 'image/png', 'media', 'media', 2026241, '[]', '[]', '[]', '[]', 1, '2023-07-24 15:46:37', '2023-07-24 15:46:37'),
(245, 'App\\Models\\Imagine', 204, 'b8130985-cf55-449a-98a1-f3f5d9139daf', 'Imagine', 'Nour prompt', 'Nour-prompt.png', 'image/png', 'media', 'media', 1596480, '[]', '[]', '[]', '[]', 1, '2023-07-24 17:29:17', '2023-07-24 17:29:17'),
(246, 'App\\Models\\Imagine', 205, '8e703f51-1419-4e37-9024-a87cfc59c629', 'Imagine', 'Mostafa Abd Elkhabir Mohamed', 'Mostafa-Abd-Elkhabir-Mohamed.jpg', 'image/jpeg', 'media', 'media', 714652, '[]', '[]', '[]', '[]', 1, '2023-07-25 01:40:06', '2023-07-25 01:40:06'),
(247, 'App\\Models\\Imagine', 206, '75d9c220-c6dd-4063-b94f-e44d8e606a7d', 'Imagine', '7292DC63-D69B-48F9-8AFD-3EBD0BCA6B32', '7292DC63-D69B-48F9-8AFD-3EBD0BCA6B32.png', 'image/png', 'media', 'media', 1651990, '[]', '[]', '[]', '[]', 1, '2023-07-25 05:40:21', '2023-07-25 05:40:21'),
(248, 'App\\Models\\Imagine', 207, '84d6768e-bb7b-4c35-927b-2ba18c59860f', 'Imagine', 'A4BE41AD-9C61-498B-B413-D2D1CEDACBD8', 'A4BE41AD-9C61-498B-B413-D2D1CEDACBD8.png', 'image/png', 'media', 'media', 1530367, '[]', '[]', '[]', '[]', 1, '2023-07-25 05:43:55', '2023-07-25 05:43:55'),
(249, 'App\\Models\\Imagine', 208, '2f5390eb-0f3b-4a1a-b3b1-40bb3e6dbfd9', 'Imagine', '51931EC5-A343-475D-8DBD-C0BCDA9ED786', '51931EC5-A343-475D-8DBD-C0BCDA9ED786.png', 'image/png', 'media', 'media', 1961849, '[]', '[]', '[]', '[]', 1, '2023-07-25 05:50:16', '2023-07-25 05:50:16'),
(250, 'App\\Models\\Imagine', 209, '8b41d87f-d8e8-4f90-aef9-b73998df9f78', 'Imagine', 'E4EF5B21-04A2-4963-ACB2-7F3FEAE57DA3', 'E4EF5B21-04A2-4963-ACB2-7F3FEAE57DA3.png', 'image/png', 'media', 'media', 1864089, '[]', '[]', '[]', '[]', 1, '2023-07-25 05:55:21', '2023-07-25 05:55:21'),
(251, 'App\\Models\\Imagine', 210, '7caaddee-71a6-472e-9cac-952bb62d53fe', 'Imagine', '98D24982-503A-400F-97BA-8F752FF25471', '98D24982-503A-400F-97BA-8F752FF25471.png', 'image/png', 'media', 'media', 1602403, '[]', '[]', '[]', '[]', 1, '2023-07-25 06:10:36', '2023-07-25 06:10:36'),
(252, 'App\\Models\\Imagine', 211, '42b94134-a659-4498-a7ef-1d089d4ad98a', 'Imagine', 'F9218A26-386A-4DCA-9B00-81146CB46FBA', 'F9218A26-386A-4DCA-9B00-81146CB46FBA.png', 'image/png', 'media', 'media', 1819459, '[]', '[]', '[]', '[]', 1, '2023-07-25 06:18:41', '2023-07-25 06:18:41'),
(253, 'App\\Models\\Imagine', 212, '31e7188c-22c9-48af-a724-e746ebfd6277', 'Imagine', '31B76EEF-E1CD-44CB-964D-1ABED5D73FEB', '31B76EEF-E1CD-44CB-964D-1ABED5D73FEB.png', 'image/png', 'media', 'media', 1524122, '[]', '[]', '[]', '[]', 1, '2023-07-25 06:24:55', '2023-07-25 06:24:55'),
(254, 'App\\Models\\Imagine', 213, '5462164c-425a-4567-b855-ad65e0612759', 'Imagine', '664D9DE4-71F5-4770-A93A-16EB55A08241', '664D9DE4-71F5-4770-A93A-16EB55A08241.png', 'image/png', 'media', 'media', 1612202, '[]', '[]', '[]', '[]', 1, '2023-07-25 06:29:11', '2023-07-25 06:29:11'),
(255, 'App\\Models\\Imagine', 214, 'de1c9049-4288-46a6-88b1-f0b6fa940b1e', 'Imagine', '8FBF3FD3-6863-4C6D-8C75-6117B74338BB', '8FBF3FD3-6863-4C6D-8C75-6117B74338BB.png', 'image/png', 'media', 'media', 1936265, '[]', '[]', '[]', '[]', 1, '2023-07-25 06:33:43', '2023-07-25 06:33:43'),
(256, 'App\\Models\\Imagine', 215, 'a96afc66-8008-4812-b57e-62b6575df36b', 'Imagine', '2E552B7F-2AD4-438B-AC0B-AC2DF6E6C15C', '2E552B7F-2AD4-438B-AC0B-AC2DF6E6C15C.png', 'image/png', 'media', 'media', 1706999, '[]', '[]', '[]', '[]', 1, '2023-07-25 06:38:03', '2023-07-25 06:38:03'),
(257, 'App\\Models\\Imagine', 216, '120fa8ac-1133-4258-9ccb-6686dfc24015', 'Imagine', '134B87BF-474F-4969-BFE1-CFD9AADF3BD1', '134B87BF-474F-4969-BFE1-CFD9AADF3BD1.png', 'image/png', 'media', 'media', 1944114, '[]', '[]', '[]', '[]', 1, '2023-07-25 06:40:35', '2023-07-25 06:40:35'),
(258, 'App\\Models\\Imagine', 217, 'd80303d0-b138-43ae-8227-ac0b5162e777', 'Imagine', '8BEAD5D0-3FCE-44A5-A96D-65EF3FA7AF89', '8BEAD5D0-3FCE-44A5-A96D-65EF3FA7AF89.png', 'image/png', 'media', 'media', 1668402, '[]', '[]', '[]', '[]', 1, '2023-07-25 06:51:04', '2023-07-25 06:51:04'),
(259, 'App\\Models\\Imagine', 218, 'e13775a9-4897-4096-9fa3-fde3059ea886', 'Imagine', 'FE38EE22-CF63-4439-8936-4E44E6F78B25', 'FE38EE22-CF63-4439-8936-4E44E6F78B25.png', 'image/png', 'media', 'media', 1790376, '[]', '[]', '[]', '[]', 1, '2023-07-25 06:56:37', '2023-07-25 06:56:37'),
(260, 'App\\Models\\Imagine', 219, '69d79e26-1f9f-4886-8193-3ac99e628ccd', 'Imagine', 'mariam.elzomor', 'mariam.elzomor.png', 'image/png', 'media', 'media', 1971265, '[]', '[]', '[]', '[]', 1, '2023-07-25 09:35:43', '2023-07-25 09:35:43'),
(261, 'App\\Models\\Imagine', 220, 'ca8cf621-5c1d-47d4-a068-a92184ba712b', 'Imagine', 'kareem mohamed', 'kareem-mohamed.png', 'image/png', 'media', 'media', 1969506, '[]', '[]', '[]', '[]', 1, '2023-07-25 09:47:32', '2023-07-25 09:47:32'),
(262, 'App\\Models\\Imagine', 221, 'e94702c9-168b-494d-8154-b032b2edf9a0', 'Imagine', 'Shahana Gamal', 'Shahana-Gamal.png', 'image/png', 'media', 'media', 1895021, '[]', '[]', '[]', '[]', 1, '2023-07-25 09:56:14', '2023-07-25 09:56:14'),
(263, 'App\\Models\\Imagine', 222, '5f36324b-b332-4412-a1b6-30fa02219865', 'Imagine', 'Sally montasser', 'Sally-montasser.png', 'image/png', 'media', 'media', 1610025, '[]', '[]', '[]', '[]', 1, '2023-07-25 10:11:52', '2023-07-25 10:11:52'),
(264, 'App\\Models\\Imagine', 223, '8b314cc5-9941-4658-8032-4f10587d6400', 'Imagine', 'Salma abouldahab', 'Salma-abouldahab.png', 'image/png', 'media', 'media', 1826141, '[]', '[]', '[]', '[]', 1, '2023-07-25 10:25:55', '2023-07-25 10:25:55'),
(265, 'App\\Models\\Imagine', 224, 'a6c5b506-e410-4191-a25c-15efabb953e1', 'Imagine', 'Hani Khattab', 'Hani-Khattab.png', 'image/png', 'media', 'media', 1916566, '[]', '[]', '[]', '[]', 1, '2023-07-25 10:49:43', '2023-07-25 10:49:43'),
(266, 'App\\Models\\Imagine', 225, '66aee3e3-32a4-4c77-b302-62f5dd182b54', 'Imagine', 'Salma Yehia', 'Salma-Yehia.png', 'image/png', 'media', 'media', 1544528, '[]', '[]', '[]', '[]', 1, '2023-07-25 10:58:50', '2023-07-25 10:58:50'),
(267, 'App\\Models\\Imagine', 226, 'dfcb6f31-e873-4f92-b8db-fd13838fb9fe', 'Imagine', 'Hussien Sh', 'Hussien-Sh.png', 'image/png', 'media', 'media', 1843713, '[]', '[]', '[]', '[]', 1, '2023-07-25 11:27:08', '2023-07-25 11:27:08'),
(268, 'App\\Models\\Imagine', 227, 'f6ad7537-7333-4bc7-b0af-5196d8c31c35', 'Imagine', 'abdulal_abdelrazek', 'abdulal_abdelrazek.png', 'image/png', 'media', 'media', 1811434, '[]', '[]', '[]', '[]', 1, '2023-07-25 11:35:04', '2023-07-25 11:35:04'),
(269, 'App\\Models\\Imagine', 228, '00cb181e-ac69-40f1-ad9e-9d8fa9e702d7', 'Imagine', 'Sally montasser', 'Sally-montasser.jpg', 'image/jpeg', 'media', 'media', 572024, '[]', '[]', '[]', '[]', 1, '2023-07-25 12:02:54', '2023-07-25 12:02:54'),
(270, 'App\\Models\\Imagine', 229, 'fc2aae56-4aa0-433a-8a65-5ac52ef20697', 'Imagine', 'Yasser Taha', 'Yasser-Taha.png', 'image/png', 'media', 'media', 2019823, '[]', '[]', '[]', '[]', 1, '2023-07-25 12:15:21', '2023-07-25 12:15:21'),
(271, 'App\\Models\\Imagine', 230, '6b09cc7b-7505-408b-80c9-5f371e2e7728', 'Imagine', 'mohamadmorgan', 'mohamadmorgan.png', 'image/png', 'media', 'media', 1736051, '[]', '[]', '[]', '[]', 1, '2023-07-25 12:29:05', '2023-07-25 12:29:05'),
(272, 'App\\Models\\Imagine', 231, '32245e56-06a4-4872-b777-7a2900b94007', 'Imagine', 'hassan hegazi', 'hassan-hegazi.png', 'image/png', 'media', 'media', 1905510, '[]', '[]', '[]', '[]', 1, '2023-07-25 12:35:08', '2023-07-25 12:35:08'),
(273, 'App\\Models\\Imagine', 232, 'eebb2012-3702-4cf8-9681-0bc210fdeeeb', 'Imagine', 'Hamdy Abdou', 'Hamdy-Abdou.png', 'image/png', 'media', 'media', 2002526, '[]', '[]', '[]', '[]', 1, '2023-07-25 12:47:47', '2023-07-25 12:47:47'),
(274, 'App\\Models\\Imagine', 233, '60638d7d-fdd5-4395-9a8d-69cfa5ddffd6', 'Imagine', 'abdulal abdelrazek', 'abdulal-abdelrazek.png', 'image/png', 'media', 'media', 1895127, '[]', '[]', '[]', '[]', 1, '2023-07-25 12:51:15', '2023-07-25 12:51:15'),
(275, 'App\\Models\\Imagine', 234, '34d3d359-9180-432d-9a97-934dbd13df54', 'Imagine', 'Hazem', 'Hazem.png', 'image/png', 'media', 'media', 1930216, '[]', '[]', '[]', '[]', 1, '2023-07-25 13:08:42', '2023-07-25 13:08:42'),
(276, 'App\\Models\\Imagine', 235, '6673aeb9-a019-4d64-9564-52bc88a53283', 'Imagine', 'nada.hussein.334', 'nada.hussein.334.jpg', 'image/jpeg', 'media', 'media', 524428, '[]', '[]', '[]', '[]', 1, '2023-07-25 13:13:13', '2023-07-25 13:13:13'),
(277, 'App\\Models\\Imagine', 236, '42d5fb08-0845-462b-81cd-33e890d76294', 'Imagine', 'Eslam Atef', 'Eslam-Atef.png', 'image/png', 'media', 'media', 1933403, '[]', '[]', '[]', '[]', 1, '2023-07-25 13:25:37', '2023-07-25 13:25:37'),
(278, 'App\\Models\\Imagine', 237, '8959e27f-ab0f-4788-afaa-70067fbb031f', 'Imagine', 'Nada Hussein', 'Nada-Hussein.jpg', 'image/jpeg', 'media', 'media', 761048, '[]', '[]', '[]', '[]', 1, '2023-07-25 13:39:33', '2023-07-25 13:39:33'),
(279, 'App\\Models\\Imagine', 238, '6dce35c3-76ab-4241-8d8b-0f9d041fc1be', 'Imagine', 'Marwankhaled315', 'Marwankhaled315.png', 'image/png', 'media', 'media', 1767903, '[]', '[]', '[]', '[]', 1, '2023-07-25 14:15:07', '2023-07-25 14:15:07'),
(280, 'App\\Models\\Imagine', 239, 'd79956ea-1e03-48d0-b455-0948899aac1e', 'Imagine', 'Sara abdelmohsen', 'Sara-abdelmohsen.png', 'image/png', 'media', 'media', 1705811, '[]', '[]', '[]', '[]', 1, '2023-07-25 15:15:47', '2023-07-25 15:15:47'),
(281, 'App\\Models\\Imagine', 240, 'a3d47280-4d1f-480c-9ce7-0b6b5ecfa785', 'Imagine', 'M', 'M.png', 'image/png', 'media', 'media', 1591121, '[]', '[]', '[]', '[]', 1, '2023-07-25 18:07:57', '2023-07-25 18:07:57'),
(282, 'App\\Models\\Imagine', 241, '587fa26b-3dd6-4d7b-9747-429276d08687', 'Imagine', 'Sherien_mohammed', 'Sherien_mohammed.png', 'image/png', 'media', 'media', 1607386, '[]', '[]', '[]', '[]', 1, '2023-07-25 18:16:38', '2023-07-25 18:16:38'),
(283, 'App\\Models\\Imagine', 242, '2aee8d19-b670-4f55-a73e-ff2808b38d13', 'Imagine', 'radwaelzahaby6789', 'radwaelzahaby6789.png', 'image/png', 'media', 'media', 1862252, '[]', '[]', '[]', '[]', 1, '2023-07-25 18:26:05', '2023-07-25 18:26:05'),
(284, 'App\\Models\\Imagine', 243, '95cf9b46-37c5-4571-afc1-ac5d9147f436', 'Imagine', 'Osama', 'Osama.png', 'image/png', 'media', 'media', 1845918, '[]', '[]', '[]', '[]', 1, '2023-07-25 18:50:13', '2023-07-25 18:50:13'),
(285, 'App\\Models\\Imagine', 244, 'f1fd114f-6163-4818-9fa2-33198a654e42', 'Imagine', 'Mariam', 'Mariam.png', 'image/png', 'media', 'media', 1933701, '[]', '[]', '[]', '[]', 1, '2023-07-25 21:29:56', '2023-07-25 21:29:56'),
(286, 'App\\Models\\Imagine', 245, 'd07e99ec-ffff-45c3-8104-379a3b519b79', 'Imagine', 'radwaelzahaby6789', 'radwaelzahaby6789.png', 'image/png', 'media', 'media', 1784856, '[]', '[]', '[]', '[]', 1, '2023-07-25 21:33:54', '2023-07-25 21:33:54'),
(287, 'App\\Models\\Imagine', 246, 'af073dda-5562-49ae-9cfc-39a5ca1b0fd4', 'Imagine', 'radwaelzahaby', 'radwaelzahaby.png', 'image/png', 'media', 'media', 1880897, '[]', '[]', '[]', '[]', 1, '2023-07-25 21:40:52', '2023-07-25 21:40:52'),
(288, 'App\\Models\\Imagine', 247, '1169bf87-635a-433e-ab75-cf0ff4c4b2ac', 'Imagine', 'D2F3AAAE-F6DA-4660-AAEE-1B00A253EDFD', 'D2F3AAAE-F6DA-4660-AAEE-1B00A253EDFD.png', 'image/png', 'media', 'media', 1625493, '[]', '[]', '[]', '[]', 1, '2023-07-26 06:27:18', '2023-07-26 06:27:18'),
(291, 'App\\Models\\Imagine', 250, '27ae153e-da0f-4e63-aef2-58eea2d141eb', 'Imagine', 'HeshamElmasry', 'HeshamElmasry.jpg', 'image/jpeg', 'media', 'media', 118630, '[]', '[]', '[]', '[]', 1, '2023-07-26 07:08:16', '2023-07-26 07:08:16'),
(292, 'App\\Models\\Imagine', 251, 'd45b2f7d-d102-4214-9835-e4d4921558c4', 'Imagine', '2FC5D805-D6A4-45FD-B265-F9C6108E9951', '2FC5D805-D6A4-45FD-B265-F9C6108E9951.png', 'image/png', 'media', 'media', 1524050, '[]', '[]', '[]', '[]', 1, '2023-07-26 11:03:01', '2023-07-26 11:03:01'),
(293, 'App\\Models\\Imagine', 252, '5a919030-520f-4533-a79f-fed2c5452a75', 'Imagine', 'Shady ', 'Shady-.PNG', 'image/png', 'media', 'media', 2046298, '[]', '[]', '[]', '[]', 1, '2023-07-26 11:12:05', '2023-07-26 11:12:05'),
(294, 'App\\Models\\Imagine', 253, '8f7e699a-22b7-4dda-95dd-9148973732f1', 'Imagine', 'eslam abuali', 'eslam-abuali.PNG', 'image/png', 'media', 'media', 1733303, '[]', '[]', '[]', '[]', 1, '2023-07-26 11:17:30', '2023-07-26 11:17:30'),
(295, 'App\\Models\\Imagine', 254, '7551db0c-0121-41b6-ab5c-16975108a03b', 'Imagine', 'dashboard', 'dashboard.PNG', 'image/png', 'media', 'media', 1645254, '[]', '[]', '[]', '[]', 1, '2023-07-26 13:12:26', '2023-07-26 13:12:26'),
(296, 'App\\Models\\Imagine', 255, '19f21edc-94ec-477d-a1bc-5da8e0345011', 'Imagine', 'Samaa', 'Samaa.jpg', 'image/jpeg', 'media', 'media', 561655, '[]', '[]', '[]', '[]', 1, '2023-07-26 14:04:02', '2023-07-26 14:04:02'),
(297, 'App\\Models\\Imagine', 256, '4625a9f7-488d-41d4-b2d1-3d15fd48c3dd', 'Imagine', 'jenanenaguib', 'jenanenaguib.png', 'image/png', 'media', 'media', 1698074, '[]', '[]', '[]', '[]', 1, '2023-07-26 14:17:32', '2023-07-26 14:17:32'),
(298, 'App\\Models\\Imagine', 257, 'c73dc7b5-8869-4d5a-93ab-c53c1aff6896', 'Imagine', 'Zeinabbadawy', 'Zeinabbadawy.jpg', 'image/jpeg', 'media', 'media', 197940, '[]', '[]', '[]', '[]', 1, '2023-07-26 15:25:04', '2023-07-26 15:25:04'),
(299, 'App\\Models\\Imagine', 258, 'ed7c3ca8-3f6e-4ff6-9c39-6ec8d155ad0a', 'Imagine', 'Sara', 'Sara.png', 'image/png', 'media', 'media', 1809074, '[]', '[]', '[]', '[]', 1, '2023-07-26 15:45:27', '2023-07-26 15:45:27'),
(300, 'App\\Models\\Imagine', 259, '1a969f3f-c094-4f34-83c5-62be7e6115fb', 'Imagine', 'Hazem2', 'Hazem2.jpg', 'image/jpeg', 'media', 'media', 539871, '[]', '[]', '[]', '[]', 1, '2023-07-26 16:42:08', '2023-07-26 16:42:08'),
(301, 'App\\Models\\Imagine', 260, '9d4daba1-96f9-4f8e-afa3-b5c185ae6eed', 'Imagine', 'Yfayek', 'Yfayek.jpg', 'image/jpeg', 'media', 'media', 666531, '[]', '[]', '[]', '[]', 1, '2023-07-26 17:52:08', '2023-07-26 17:52:08'),
(302, 'App\\Models\\Imagine', 261, '4811a4d2-b568-4388-bab1-4ae984873f06', 'Imagine', 'Koko', 'Koko.jpg', 'image/jpeg', 'media', 'media', 502945, '[]', '[]', '[]', '[]', 1, '2023-07-26 17:55:37', '2023-07-26 17:55:37'),
(303, 'App\\Models\\Imagine', 262, 'ff93d9ba-b9db-4f05-9ccd-0e2fc7ce7942', 'Imagine', 'Sherienmohammed', 'Sherienmohammed.png', 'image/png', 'media', 'media', 2048403, '[]', '[]', '[]', '[]', 1, '2023-07-26 19:14:48', '2023-07-26 19:14:48'),
(304, 'App\\Models\\Imagine', 263, '728a5bec-dbb0-451d-99dd-2e7f9c150ac1', 'Imagine', 'Zomorda', 'Zomorda.png', 'image/png', 'media', 'media', 1757263, '[]', '[]', '[]', '[]', 1, '2023-07-26 19:28:13', '2023-07-26 19:28:13'),
(305, 'App\\Models\\Imagine', 264, '55175809-de6a-49c1-9c2c-509732889ec4', 'Imagine', 'M Salem', 'M-Salem.jpg', 'image/jpeg', 'media', 'media', 228417, '[]', '[]', '[]', '[]', 1, '2023-07-26 21:49:31', '2023-07-26 21:49:31'),
(306, 'App\\Models\\Imagine', 265, '1f6bacc5-55e8-4723-ab55-dbc9d24850b5', 'Imagine', 'Khaled abdeljawad', 'Khaled-abdeljawad.PNG', 'image/png', 'media', 'media', 1839997, '[]', '[]', '[]', '[]', 1, '2023-07-26 21:50:04', '2023-07-26 21:50:04'),
(307, 'App\\Models\\Imagine', 266, '237b4ab4-9c51-4ac8-bfb8-e5ea0c547d7c', 'Imagine', 'Ss ', 'Ss-.PNG', 'image/png', 'media', 'media', 1507560, '[]', '[]', '[]', '[]', 1, '2023-07-26 21:56:19', '2023-07-26 21:56:19'),
(308, 'App\\Models\\Imagine', 267, 'f23d053a-0a75-4fc0-a763-ddb3d304af5a', 'Imagine', 'Khaled ', 'Khaled-.PNG', 'image/png', 'media', 'media', 1726243, '[]', '[]', '[]', '[]', 1, '2023-07-26 22:04:09', '2023-07-26 22:04:09'),
(309, 'App\\Models\\Imagine', 268, 'c4e6a313-6b7b-4907-a9fb-527241975e53', 'Imagine', 'Sama', 'Sama.png', 'image/png', 'media', 'media', 1703754, '[]', '[]', '[]', '[]', 1, '2023-07-26 22:40:04', '2023-07-26 22:40:04'),
(310, 'App\\Models\\Imagine', 269, '904de6ec-8f7d-4a23-8669-6f49536a5460', 'Imagine', 'Lina ', 'Lina-.PNG', 'image/png', 'media', 'media', 1741742, '[]', '[]', '[]', '[]', 1, '2023-07-26 23:43:25', '2023-07-26 23:43:25'),
(311, 'App\\Models\\Imagine', 270, '7c55cd73-bb8f-46e0-b91e-9f54a68912b2', 'Imagine', 'Ahmed Zidan', 'Ahmed-Zidan.jpg', 'image/jpeg', 'media', 'media', 569584, '[]', '[]', '[]', '[]', 1, '2023-07-27 07:53:49', '2023-07-27 07:53:49'),
(312, 'App\\Models\\Imagine', 271, '61e515b8-e452-4f48-ab77-59448fd74005', 'Imagine', 'KarimSamir', 'KarimSamir.png', 'image/png', 'media', 'media', 1980517, '[]', '[]', '[]', '[]', 1, '2023-07-27 11:38:59', '2023-07-27 11:38:59'),
(313, 'App\\Models\\Imagine', 272, 'e42e3d88-a678-471a-9649-c7cb89fef76b', 'Imagine', 'marwankhaled', 'marwankhaled.png', 'image/png', 'media', 'media', 1794695, '[]', '[]', '[]', '[]', 1, '2023-07-27 12:50:45', '2023-07-27 12:50:45'),
(314, 'App\\Models\\Imagine', 273, '559ca2a0-e621-4fc3-9d84-2bcba0c07ee2', 'Imagine', 'Sara', 'Sara.png', 'image/png', 'media', 'media', 1799848, '[]', '[]', '[]', '[]', 1, '2023-07-27 15:53:06', '2023-07-27 15:53:06'),
(315, 'App\\Models\\Imagine', 274, '28fbb716-fb75-43c4-93f5-69fa99638fd4', 'Imagine', 'kholoodelshaer', 'kholoodelshaer.png', 'image/png', 'media', 'media', 1500747, '[]', '[]', '[]', '[]', 1, '2023-07-27 17:59:22', '2023-07-27 17:59:22'),
(316, 'App\\Models\\Imagine', 275, '6757c908-d91d-47a0-8349-824617043ae5', 'Imagine', 'Ahmed Amin', 'Ahmed-Amin.png', 'image/png', 'media', 'media', 1737120, '[]', '[]', '[]', '[]', 1, '2023-07-28 13:27:53', '2023-07-28 13:27:53'),
(317, 'App\\Models\\Imagine', 276, '8fce90e0-b32b-470b-b52c-27c1da99b117', 'Imagine', 'Nora Ismail', 'Nora-Ismail.PNG', 'image/png', 'media', 'media', 1925427, '[]', '[]', '[]', '[]', 1, '2023-07-28 21:02:14', '2023-07-28 21:02:14'),
(318, 'App\\Models\\Imagine', 277, 'cba82541-e138-46ca-85da-a6d8fa61427b', 'Imagine', 'Mohamed El-Araby', 'Mohamed-El-Araby.png', 'image/png', 'media', 'media', 1370999, '[]', '[]', '[]', '[]', 1, '2023-07-29 18:56:23', '2023-07-29 18:56:23'),
(319, 'App\\Models\\Imagine', 278, '61344e0d-784c-4116-a74b-2f3569a321ef', 'Imagine', 'Ahsalah', 'Ahsalah.png', 'image/png', 'media', 'media', 1951361, '[]', '[]', '[]', '[]', 1, '2023-07-29 19:10:24', '2023-07-29 19:10:24'),
(320, 'App\\Models\\Imagine', 279, 'e4b68d77-32f4-4557-9697-144d5d55ff74', 'Imagine', 'AhmedAmin', 'AhmedAmin.png', 'image/png', 'media', 'media', 1451997, '[]', '[]', '[]', '[]', 1, '2023-07-29 19:34:28', '2023-07-29 19:34:28'),
(321, 'App\\Models\\Imagine', 280, '2d7348f3-86e8-4ad6-9349-f9de2faff5fc', 'Imagine', 'Hazem Emam', 'Hazem-Emam.jpg', 'image/jpeg', 'media', 'media', 271103, '[]', '[]', '[]', '[]', 1, '2023-07-29 19:49:26', '2023-07-29 19:49:26'),
(322, 'App\\Models\\Imagine', 281, 'cf6a57de-2e71-4821-90f0-c17eeebe7dc7', 'Imagine', 'yasserzohdy', 'yasserzohdy.jpg', 'image/jpeg', 'media', 'media', 225327, '[]', '[]', '[]', '[]', 1, '2023-07-29 20:04:56', '2023-07-29 20:04:56'),
(323, 'App\\Models\\Imagine', 282, 'b4fffb75-85c9-4493-9258-04fed8b8b92b', 'Imagine', 'Dalida Amin', 'Dalida-Amin.jpg', 'image/jpeg', 'media', 'media', 283917, '[]', '[]', '[]', '[]', 1, '2023-07-29 22:06:03', '2023-07-29 22:06:03'),
(324, 'App\\Models\\Imagine', 283, '53c4ef50-808d-40cf-96a8-f8b6cbfcc434', 'Imagine', 'Ahmed amin1', 'Ahmed-amin1.png', 'image/png', 'media', 'media', 1852484, '[]', '[]', '[]', '[]', 1, '2023-07-29 22:43:42', '2023-07-29 22:43:42'),
(325, 'App\\Models\\Imagine', 284, 'e63b9e50-2176-43b6-9cc0-c31e322f20f6', 'Imagine', 'AhmadAmin', 'AhmadAmin.png', 'image/png', 'media', 'media', 1295868, '[]', '[]', '[]', '[]', 1, '2023-07-30 02:02:03', '2023-07-30 02:02:03'),
(326, 'App\\Models\\Imagine', 285, '7dd7f02b-4163-4a5a-91cf-b00e75eafb7c', 'Imagine', 'DalidaAhmad', 'DalidaAhmad.png', 'image/png', 'media', 'media', 1933546, '[]', '[]', '[]', '[]', 1, '2023-07-30 02:07:25', '2023-07-30 02:07:25'),
(327, 'App\\Models\\Imagine', 286, '7b48424b-19b0-4609-b147-bc1de6d98d75', 'Imagine', '734BD5B8-9320-4731-B188-AE21E45DFA13', '734BD5B8-9320-4731-B188-AE21E45DFA13.png', 'image/png', 'media', 'media', 1838277, '[]', '[]', '[]', '[]', 1, '2023-07-30 04:26:41', '2023-07-30 04:26:41'),
(328, 'App\\Models\\Imagine', 287, 'aa95fbd3-6c72-4cf5-852c-83fe0490f9e3', 'Imagine', 'Amr', 'Amr.PNG', 'image/png', 'media', 'media', 1874778, '[]', '[]', '[]', '[]', 1, '2023-07-30 04:30:30', '2023-07-30 04:30:30'),
(329, 'App\\Models\\Imagine', 288, '777870d6-3e0d-44b8-9360-da654bcdb1a9', 'Imagine', 'RaniaIsmail', 'RaniaIsmail.png', 'image/png', 'media', 'media', 1880121, '[]', '[]', '[]', '[]', 1, '2023-07-30 08:36:55', '2023-07-30 08:36:55'),
(330, 'App\\Models\\Imagine', 289, 'f15934ef-e5b9-42f1-adec-801934f43761', 'Imagine', 'SuhaRefaat', 'SuhaRefaat.png', 'image/png', 'media', 'media', 1565897, '[]', '[]', '[]', '[]', 1, '2023-07-30 08:38:19', '2023-07-30 08:38:19'),
(331, 'App\\Models\\Imagine', 290, 'e1443fc9-1a93-4018-9765-51e5456ba90b', 'Imagine', 'shaymaaelzayat', 'shaymaaelzayat.png', 'image/png', 'media', 'media', 1726174, '[]', '[]', '[]', '[]', 1, '2023-07-30 08:47:26', '2023-07-30 08:47:26'),
(332, 'App\\Models\\Imagine', 291, '34e17f8e-e29e-4eb6-b073-e90f708b906c', 'Imagine', 'Ahmed Zayton', 'Ahmed-Zayton.png', 'image/png', 'media', 'media', 1742300, '[]', '[]', '[]', '[]', 1, '2023-07-30 08:59:26', '2023-07-30 08:59:26'),
(333, 'App\\Models\\Imagine', 292, '375ecd2d-e9b8-4225-ae4e-0fdd60847f9a', 'Imagine', 'Rania Ismail', 'Rania-Ismail.jpg', 'image/jpeg', 'media', 'media', 293689, '[]', '[]', '[]', '[]', 1, '2023-07-30 09:30:42', '2023-07-30 09:30:42'),
(334, 'App\\Models\\Imagine', 293, '97e1e448-865e-4e16-b165-2431194fb230', 'Imagine', 'Nouran', 'Nouran.png', 'image/png', 'media', 'media', 1638694, '[]', '[]', '[]', '[]', 1, '2023-07-30 09:34:39', '2023-07-30 09:34:39'),
(335, 'App\\Models\\Imagine', 294, '644a318c-80c3-48cf-b2e3-c9c434b1e83f', 'Imagine', 'kholood elshaer', 'kholood-elshaer.png', 'image/png', 'media', 'media', 1413988, '[]', '[]', '[]', '[]', 1, '2023-07-30 09:37:38', '2023-07-30 09:37:38'),
(336, 'App\\Models\\Imagine', 295, 'ee34f1fd-299c-41ae-afa7-a4bd9170da5d', 'Imagine', 'Mohammed', 'Mohammed.jpg', 'image/jpeg', 'media', 'media', 255935, '[]', '[]', '[]', '[]', 1, '2023-07-30 09:41:29', '2023-07-30 09:41:29'),
(337, 'App\\Models\\Imagine', 296, '7fe3dc3e-6bcf-4a95-b5f0-1eb9c3043260', 'Imagine', 'Shaymaa Elzayat', 'Shaymaa-Elzayat.png', 'image/png', 'media', 'media', 1720169, '[]', '[]', '[]', '[]', 1, '2023-07-30 09:48:08', '2023-07-30 09:48:08'),
(338, 'App\\Models\\Imagine', 297, '8483d3c6-8595-4aca-ab29-f3e05b3a2964', 'Imagine', 'Hebamfawzi', 'Hebamfawzi.png', 'image/png', 'media', 'media', 1719587, '[]', '[]', '[]', '[]', 1, '2023-07-30 09:57:09', '2023-07-30 09:57:09'),
(339, 'App\\Models\\Imagine', 298, '20d78cd5-62d2-41f9-9c99-7044591c71d6', 'Imagine', 'karany', 'karany.png', 'image/png', 'media', 'media', 1525341, '[]', '[]', '[]', '[]', 1, '2023-07-30 13:31:22', '2023-07-30 13:31:22'),
(340, 'App\\Models\\Imagine', 299, '7a57699f-bbee-4367-8625-421a1311325f', 'Imagine', 'jenane naguib', 'jenane-naguib.png', 'image/png', 'media', 'media', 1694484, '[]', '[]', '[]', '[]', 1, '2023-07-30 13:41:09', '2023-07-30 13:41:09'),
(341, 'App\\Models\\Imagine', 300, 'e83a8157-abb3-4da7-bf40-0ce49580cdfd', 'Imagine', 'malkzedan', 'malkzedan.png', 'image/png', 'media', 'media', 1993793, '[]', '[]', '[]', '[]', 1, '2023-07-30 13:51:29', '2023-07-30 13:51:29'),
(342, 'App\\Models\\Imagine', 301, '39b70aff-1c35-4fd6-8d1c-6f54495e7510', 'Imagine', 'Waguih Emad Iskandar', 'Waguih-Emad-Iskandar.png', 'image/png', 'media', 'media', 1629939, '[]', '[]', '[]', '[]', 1, '2023-07-30 14:09:59', '2023-07-30 14:09:59'),
(343, 'App\\Models\\Imagine', 302, '795c1f09-32de-4c75-abaf-3a2fa3504935', 'Imagine', 'Youssef', 'Youssef.png', 'image/png', 'media', 'media', 1883491, '[]', '[]', '[]', '[]', 1, '2023-07-30 15:59:15', '2023-07-30 15:59:15'),
(344, 'App\\Models\\Imagine', 303, '9fedad55-92be-49fa-a1c7-3e9abd978e98', 'Imagine', 'Karany', 'Karany.png', 'image/png', 'media', 'media', 1654618, '[]', '[]', '[]', '[]', 1, '2023-07-30 16:11:51', '2023-07-30 16:11:51'),
(345, 'App\\Models\\Imagine', 304, '404e1dfc-d971-4ddd-8c49-3323fb4f0c7e', 'Imagine', 'Ahmad Amy', 'Ahmad-Amy.jpg', 'image/jpeg', 'media', 'media', 173142, '[]', '[]', '[]', '[]', 1, '2023-07-30 16:24:58', '2023-07-30 16:24:58'),
(346, 'App\\Models\\Imagine', 305, '1443ec81-72a5-4ea7-b189-8bd77cfa372b', 'Imagine', 'HossamSalah', 'HossamSalah.png', 'image/png', 'media', 'media', 2052063, '[]', '[]', '[]', '[]', 1, '2023-07-30 16:54:38', '2023-07-30 16:54:38'),
(347, 'App\\Models\\Imagine', 306, '2f8596ff-8828-4c24-8e7c-175984af05b5', 'Imagine', 'spac', 'spac.png', 'image/png', 'media', 'media', 1606920, '[]', '[]', '[]', '[]', 1, '2023-07-30 17:03:21', '2023-07-30 17:03:21'),
(348, 'App\\Models\\Imagine', 307, 'a0c3c1e4-3f0a-45ea-b00e-123360df2bc4', 'Imagine', 'Mahi', 'Mahi.png', 'image/png', 'media', 'media', 1968457, '[]', '[]', '[]', '[]', 1, '2023-07-30 17:41:55', '2023-07-30 17:41:55'),
(349, 'App\\Models\\Imagine', 308, 'bb1834aa-1131-4b09-b83e-39746cdcde14', 'Imagine', 'LoaySaid', 'LoaySaid.png', 'image/png', 'media', 'media', 1838734, '[]', '[]', '[]', '[]', 1, '2023-07-30 17:44:50', '2023-07-30 17:44:50'),
(350, 'App\\Models\\Imagine', 309, 'be6e8fa5-6fff-43b9-8acf-ace09ea7538d', 'Imagine', 'Sally Montasser', 'Sally-Montasser.jpg', 'image/jpeg', 'media', 'media', 282189, '[]', '[]', '[]', '[]', 1, '2023-07-30 19:49:14', '2023-07-30 19:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'good', 'admin', '2023-05-23 06:56:20', '2023-05-23 06:56:20'),
(2, 'bad', 'admin', '2023-05-23 06:56:20', '2023-05-23 06:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2023-05-23 06:56:41', '2023-05-23 06:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `translation_keys`
--

CREATE TABLE `translation_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translation_keys`
--

INSERT INTO `translation_keys` (`id`, `key`, `name`, `created_at`, `updated_at`) VALUES
(1, 'en', 'english', '2023-05-23 06:56:41', NULL),
(2, 'ar', 'arabic', '2023-05-23 06:56:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `socialmedia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialhandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `message`, `phone`, `remember_token`, `created_at`, `updated_at`, `socialmedia`, `socialhandle`) VALUES
(105, 'Amir Adib', NULL, NULL, NULL, 'Using a transparent or translucent material for the bike shed walls, such as polycarbonate or acrylic, can create a sense of openness and allow light to pass through, making the shed feel more spacious and inviting', NULL, NULL, '2023-07-16 19:05:11', '2023-07-19 09:10:04', 'INSTAGRAM', 'AmirAdib'),
(106, 'Nada Aly', NULL, NULL, NULL, 'A beautiful woman doing yoga in a glass room that is placed in the middle of a park that is full of colourful trees and plants, enjoying fresh air, a dreamy look, Leica M11, focus, 35 mm lens, mirrorless, ISO 100, long shot, wide angle', NULL, NULL, '2023-07-16 19:05:44', '2023-07-19 09:11:09', 'INSTAGRAM', 'NadaAly'),
(107, 'Mohamed Fouad', NULL, NULL, NULL, 'A brightly colored beach club on the shore, in the style of exotic fantasy, sea through structure, organic architecture, neon lighting, dark pink and azure lightings.', NULL, NULL, '2023-07-16 19:06:20', '2023-07-19 07:25:46', NULL, 'MohamedFouad'),
(108, 'Ahmed Magdy', NULL, NULL, NULL, 'An open workspace in outdoor land escape with glases cube in dreamy look, leica m11, focus, 35 mm lens, mirror less, iso 100, long shot, wide angel, bright', NULL, NULL, '2023-07-16 19:06:43', '2023-07-19 09:14:21', 'FACEBOOK', 'AhmedMagdy'),
(109, 'Ahmed Hany', NULL, NULL, NULL, 'Padel player, modern indoor court, glass box, 8K, hyper - detailed, wide shot cinematic lighting, dark and moody light, neon lights, concept art, masterful composition, neon strobe, red neon light ,cyan neon lights, glow', NULL, NULL, '2023-07-16 19:07:33', '2023-07-19 09:15:28', 'FACEBOOK', 'Ahmed Hany'),
(110, 'Mohamed Fouad', NULL, NULL, NULL, 'a white bench  in an outdoor park, in the style of futuristic organic, vray, intricate art nouveau, soft renderings, made of insects, bold yet graceful, light bronze', NULL, NULL, '2023-07-16 19:07:57', '2023-07-19 09:21:44', NULL, 'MoFouad'),
(112, 'Gehad Rashwan', NULL, NULL, NULL, 'summer sculptures by an empty beach', '01021992219', NULL, '2023-07-16 20:31:45', '2023-07-16 20:31:45', 'INSTAGRAM', 'https://instagram.com/gehadrashwan?igshid=OGQ5ZDc2ODk2ZA=='),
(113, 'Gehad Rashwan', NULL, NULL, NULL, 'Chilling on a lake reading a book', NULL, NULL, '2023-07-16 21:00:48', '2023-07-16 21:00:48', 'FACEBOOK', 'https://www.facebook.com/gehad.rashwan.100?mibextid=LQQJ4d'),
(114, 'Nadine Okasha', NULL, NULL, NULL, 'in a wide terraced house overlooking the beach through the terrace open green open sea glass everywhere', NULL, NULL, '2023-07-17 09:04:06', '2023-07-17 09:04:06', NULL, 'https://instagram.com/nadineokasha?igshid=NTc4MTIwNjQ2YQ=='),
(115, 'Hassan El Sada', NULL, NULL, NULL, 'I imagine myself having a small family of three kids and two dogs; living on a 1 story Beach house overlooking the Mediterranean. The house has a beautiful spacious garden with lots of trees and flowers. The weather is great and the sun is shining.', '01000102131', NULL, '2023-07-17 09:13:24', '2023-07-17 09:13:24', 'INSTAGRAM', 'Helsada'),
(116, 'Hassan El Sada', NULL, NULL, NULL, 'I imagine myself having a small family of three kids and two dogs; living on a 1 story Beach house overlooking the Mediterranean. The house has a beautiful spacious garden with lots of trees and flowers. The weather is great and the sun is shining.', '01000102131', NULL, '2023-07-17 09:13:25', '2023-07-17 09:13:25', 'INSTAGRAM', 'Helsada'),
(117, 'Shahana Helal', NULL, NULL, NULL, 'Walking along a beachfront at sunset  filled with palm trees', '01001644255', NULL, '2023-07-17 09:16:21', '2023-07-17 09:16:21', 'INSTAGRAM', 'shahanahelal'),
(119, 'Shahana helal', NULL, NULL, NULL, 'An art deco bench made with sustainability material  in a park overlooking the lagoon', NULL, NULL, '2023-07-17 09:29:56', '2023-07-17 09:29:56', 'FACEBOOK', 'Shahanahelal'),
(120, 'Sally Montasser', NULL, NULL, NULL, 'Hshshh', NULL, NULL, '2023-07-17 09:32:02', '2023-07-17 09:32:02', 'INSTAGRAM', 'Sallymontasser'),
(126, 'Ameena', NULL, NULL, NULL, 'yoga center by the beach', '01001445533', NULL, '2023-07-17 10:48:50', '2023-07-17 10:48:50', 'INSTAGRAM', 'ameenaabouzeid'),
(127, 'Alaa Elgendy', NULL, NULL, NULL, 'playing with my baby in a playground on the beach', NULL, NULL, '2023-07-17 11:09:23', '2023-07-17 11:09:23', 'INSTAGRAM', 'alaa.m.elgendy'),
(129, 'Mayar Makhlouf', NULL, NULL, NULL, 'One floor beach house overlooking the Mediterranean with palm trees and mango trees', '+201001720352', NULL, '2023-07-17 12:44:16', '2023-07-17 12:44:16', 'INSTAGRAM', 'https://instagram.com/mayartrashad?igshid=MjEwN2IyYWYwYw=='),
(130, 'Rana Nadim', NULL, NULL, NULL, 'a smart glass house on a hill overlooking a beach completely secluded with everything you might need only a button away', '01003411226', NULL, '2023-07-17 22:28:17', '2023-07-17 22:28:17', 'INSTAGRAM', '@rana_nadim'),
(131, 'Malek Sharif', NULL, NULL, NULL, 'Myself welcoming my guests from a balcony of a highly elevated futuristic house, the only way into the house from the ground is going up using elevators.', NULL, NULL, '2023-07-18 07:48:10', '2023-07-18 07:48:10', 'FACEBOOK', 'Malekw'),
(133, 'Dala Bahgat', NULL, NULL, NULL, 'i imagine myself in a house surrounded by sea and glass', '01288760555', NULL, '2023-07-18 10:27:25', '2023-07-18 10:27:25', 'INSTAGRAM', 'https://instagram.com/dalabahgat?igshid=MzRlODBiNWFlZA=='),
(134, 'hanan elbialy', NULL, NULL, NULL, 'a house one floor built with natural stones and glass with sunglass ceilings and arched terraces , with an inside garden that has a pergola and a swing that could be used as a bed. furniture will be mostly built in from the natural stones. the house with the furniture will feel like a fairytale medieval castle with oil paintings on the walls. around the house is a lake and you access the house from the lack via a small bridge with an arched flowers wrapping it. the bedroom will be build as if sleeping in a garden. toilets and kitchen are royal medieval yet stone designs and toilet will have a library and long chair bonquet', NULL, NULL, '2023-07-19 08:40:23', '2023-07-19 08:40:23', 'INSTAGRAM', 'hananelbialy1'),
(135, 'wedewd', NULL, NULL, NULL, 'edge', NULL, NULL, '2023-07-19 12:39:35', '2023-07-19 12:39:35', 'INSTAGRAM', 'wedwe'),
(136, 'qwdqwd', NULL, NULL, NULL, 'wqdwwd', NULL, NULL, '2023-07-19 12:41:11', '2023-07-19 12:41:11', 'FACEBOOK', 'qwdqwd'),
(137, 'Nso', NULL, NULL, NULL, 'Panoramic view\r\nGreenery\r\nWater front', NULL, NULL, '2023-07-19 14:43:56', '2023-07-19 14:43:56', 'INSTAGRAM', 'Nnno'),
(138, 'Hend El Deeb', NULL, NULL, NULL, 'myself meditating during sunrise in an all-glass open roof penthouse overlooking greenery and lagoons', NULL, NULL, '2023-07-19 15:26:41', '2023-07-19 15:26:41', 'INSTAGRAM', 'lamia_serry'),
(139, 'Ahmed mohsen', NULL, NULL, NULL, 'Living in a high sky scraper on its own island with a panoramic view of a crystal clear river', NULL, NULL, '2023-07-19 16:02:26', '2023-07-19 16:02:26', 'INSTAGRAM', 'prime.egypt.111'),
(140, 'Salma hagrass', NULL, NULL, NULL, 'On a ranch in North Carolina', NULL, NULL, '2023-07-19 16:23:23', '2023-07-19 16:23:23', 'INSTAGRAM', 'Salmahagrass'),
(141, 'Jannah', NULL, NULL, NULL, 'Swimming in the beach with my friends and family', '0106626255', NULL, '2023-07-19 16:25:37', '2023-07-19 16:25:37', 'INSTAGRAM', 'Jannahbarakat'),
(142, 'Ayman Amer', NULL, NULL, NULL, 'A one floor house by the sea , with palm trees , blue sky , crystal light blue water , huge glass windows , glass roof for the jacuzzi and bathrooms the shot at 10 am in the morning, the house style is white modern house with some simple claddings at the elevators and a huge garden with grass and low shrub fence and indoor outdoor swimming pool linking the house together', '01222199368', NULL, '2023-07-19 17:49:52', '2023-07-19 17:49:52', 'FACEBOOK', 'WhatsApp'),
(143, 'Mohamed Magdy', NULL, NULL, NULL, 'Coldplay concert by the sea on a sandy beach with a barbecue and cocktail bar in the background', '+201222540949', NULL, '2023-07-19 18:31:23', '2023-07-19 18:31:23', 'FACEBOOK', 'Magdy'),
(144, 'Mohammed Emad', NULL, NULL, NULL, 'I think I\'ll live in  smart city, everything is automated, all of the compound own starlink devices to access the highest internet speed', '01159319537', NULL, '2023-07-19 18:38:18', '2023-07-19 18:38:18', 'FACEBOOK', 'https://www.facebook.com/mohammed.emad.DMS?mibextid=ZbWKwL'),
(145, 'Youssef', NULL, NULL, NULL, 'Happy', '01065275060', NULL, '2023-07-19 20:59:58', '2023-07-19 20:59:58', 'FACEBOOK', 'Facebook'),
(146, 'Mohamed Bashir', NULL, NULL, NULL, 'Going to the club in 5 mins car or walking \r\n\r\nHaving green spaces to walk within in quite \r\n\r\nElectric charge for electric cars for apartments in east access \r\n\r\nShades for parking for surface parkings\r\n\r\nCommunity sharing thoughts and getting in touch through an integrated application for residence \r\n\r\nActive Edara property management with professional team', '+20 111 200 0460', NULL, '2023-07-19 21:40:46', '2023-07-19 21:40:46', 'FACEBOOK', '+20 111 200 0460'),
(147, 'Moetaz ahmed', NULL, NULL, NULL, 'On top of a mountain at night , seeing all lights of the city around you', '01156685477', NULL, '2023-07-19 22:34:46', '2023-07-19 22:34:46', 'INSTAGRAM', 'Moetaz_ahmed21'),
(148, 'Haroun Hamza', NULL, NULL, NULL, 'I imagine living in a house with its history and identity, but also has that touch of modern. Huge ceilings, but even bigger windows. With gigantic outdoor area with anything a human could even think about.', '01024097636', NULL, '2023-07-19 23:29:36', '2023-07-19 23:29:36', 'INSTAGRAM', 'Harounhamza_'),
(149, 'Shiro Omar', NULL, NULL, NULL, 'Blade runner', NULL, NULL, '2023-07-20 02:31:52', '2023-07-20 02:31:52', 'INSTAGRAM', '@sherif_omar4'),
(150, 'Hend El Deeb', NULL, NULL, NULL, 'Futuristic sports club with a unique architectural design inspired by Zaha Hadid with sustainable features such as energy-efficient lighting, recycled materials and solar panels', NULL, NULL, '2023-07-20 06:10:14', '2023-07-20 06:10:14', 'INSTAGRAM', 'Lamia_serry'),
(151, 'Ahmed Shetta', NULL, NULL, NULL, 'In a sustainable city, where all buildings are designed and constructed with sustainable materials, contributing to less carbon footprint. \r\nBuildings to be vertically planted.\r\nPeople to engage and work in outdoor landscape. The use of cars to be minimal.', '01003754575', NULL, '2023-07-20 06:28:25', '2023-07-20 06:28:25', 'INSTAGRAM', 'ahmedshetta1'),
(152, 'Timmy mowafi', NULL, NULL, NULL, 'Organic architecture of a bungalow in the middle of Egypt\'s Siwa desert surrounded by a lush pink oasis-like moat and a few flying camels', NULL, NULL, '2023-07-20 06:31:00', '2023-07-20 06:31:00', 'INSTAGRAM', 'timmymowafi'),
(153, 'Mohamed osman', NULL, NULL, NULL, 'Speed functionality beauty nature space sky technology', NULL, NULL, '2023-07-20 06:46:28', '2023-07-20 06:46:28', 'INSTAGRAM', 'https://instagram.com/ozzjr?igshid=OGQ5ZDc2ODk2ZA=='),
(154, 'Youssef Fayek', NULL, NULL, NULL, 'Brightly colored beach', '01000140060', NULL, '2023-07-20 07:19:17', '2023-07-20 07:19:17', 'INSTAGRAM', 'https://instagram.com/yfayek_?igshid=OGQ5ZDc2ODk2ZA=='),
(155, 'Ahmed Samir', NULL, NULL, NULL, 'My house would be on the red sea beach or the mediterranean right close to a bay that is a cool kitesurfing spot, the design of the house is tulum inspired boho chic with shades of grey and magical intervention of palm trees and landscape a reflection od simplicity and authenticity', NULL, NULL, '2023-07-20 07:56:22', '2023-07-20 07:56:22', 'INSTAGRAM', 'ahmedsamir_84'),
(156, 'Ahmed Samir', NULL, NULL, NULL, 'It is a one floor stand alone house.. with a big garden and a padel court with grey turf, the design of the house is modern with shades of grey and landscape and dark wood featuring a solar shaded parking lot for 2 cars an attached tool room, outdoor ice tub and sustainable high tech energy sources', NULL, NULL, '2023-07-20 08:01:31', '2023-07-20 08:01:31', 'INSTAGRAM', 'ahmedsamir_84'),
(157, 'Adly', NULL, NULL, NULL, 'Read books among lush greenery.', '49785641', NULL, '2023-07-20 08:05:21', '2023-07-20 08:05:21', 'INSTAGRAM', 'Adly63'),
(158, 'Nso', NULL, NULL, NULL, 'Floating green city\r\nAnimals with humans', NULL, NULL, '2023-07-20 08:09:12', '2023-07-20 08:09:12', 'INSTAGRAM', 'Nso'),
(159, 'Mohab Ahmed Enany', NULL, NULL, NULL, 'In a modern technological smart world', '+20 114 399 6930', NULL, '2023-07-20 08:20:30', '2023-07-20 08:20:30', 'FACEBOOK', 'https://www.facebook.com/mohab.ahmed.188?mibextid=ZbWKwL'),
(160, 'test', NULL, NULL, NULL, 'testtesttesttesttesttest', '01123694440', NULL, '2023-07-20 08:22:36', '2023-07-20 08:22:36', 'FACEBOOK', 'testtest'),
(161, 'SO', NULL, NULL, NULL, 'Beach house\r\nPanorama\r\nGreenery', NULL, NULL, '2023-07-20 08:51:39', '2023-07-20 08:51:39', 'INSTAGRAM', 'SO'),
(162, 'Aly El Samra', NULL, NULL, NULL, 'A gym in a ground floor of a residential building.  Size 5×8. With mirror walls', NULL, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 'INSTAGRAM', 'https://instagram.com/alyelsamra?igshid=NGExMmI2YTkyZg=='),
(163, 'Zeyad Zein', NULL, NULL, NULL, 'Living in a 3d concrete printed house', '+201157467272', NULL, '2023-07-20 11:04:56', '2023-07-20 11:04:56', 'INSTAGRAM', 'Zeyadzein'),
(164, 'maram ahmed', NULL, NULL, NULL, 'damascus style home, open court with greeneries and islamic fountain, islamic pattern wooden screens, sun shining on the sparkling water, white marble floor with mosaics', '0115 668 5466', NULL, '2023-07-20 11:14:24', '2023-07-20 11:14:24', 'INSTAGRAM', 'maraamahmed'),
(165, 'Samaa Darwish', NULL, NULL, NULL, 'White wide house with sea view and infinity pool', NULL, NULL, '2023-07-20 11:21:45', '2023-07-20 11:21:45', 'FACEBOOK', '01095677449'),
(166, 'Samaa Darwish', NULL, NULL, NULL, 'White wide house with sea view and infinity pool some wooden louvers large smart screen lighted places', '01095677449', NULL, '2023-07-20 11:24:14', '2023-07-20 11:24:14', 'FACEBOOK', 'Samaa darwish'),
(167, 'Kholood', NULL, NULL, NULL, 'A place by the sea,with cozy fairy-lighted streets at night where I\'ll eat and read and listen to music', NULL, NULL, '2023-07-20 11:29:16', '2023-07-20 11:29:16', 'INSTAGRAM', 'Kholoodelshaer'),
(168, 'Yusuf Sarhan', NULL, NULL, NULL, 'a very modern and quiet house built on trees in the middle of a thick rainforest and a primal elevator is used to climb up and down from it. A flock of parrots living around the house in the trees. The house is big and inspired by the show called Vikings.', '01111030362', NULL, '2023-07-20 12:44:23', '2023-07-20 12:44:23', 'INSTAGRAM', '@yusufsar7an'),
(169, 'Karim', NULL, NULL, NULL, 'Test', '+20 100 675 1942', NULL, '2023-07-20 12:58:11', '2023-07-20 12:58:11', 'INSTAGRAM', '+20 100 675 1942'),
(170, 'Bino Roy', NULL, NULL, NULL, 'Panorama house with lots of lighting and greenery', NULL, NULL, '2023-07-20 13:14:31', '2023-07-20 13:14:31', 'FACEBOOK', 'Ios'),
(171, 'Louly', NULL, NULL, NULL, 'Simple small house that has a garden with a pool and is near the beach', NULL, NULL, '2023-07-20 13:16:23', '2023-07-20 13:16:23', 'INSTAGRAM', 'Louly'),
(172, 'Louly 13', NULL, NULL, NULL, 'Sitting in my small house watching the sunset and the beach.', NULL, NULL, '2023-07-20 13:30:59', '2023-07-20 13:30:59', 'INSTAGRAM', 'Louly'),
(173, 'Louly 13', NULL, NULL, NULL, 'Sitting in my small house watching the sunset and the beach.', NULL, NULL, '2023-07-20 13:31:00', '2023-07-20 13:31:00', 'INSTAGRAM', 'Louly'),
(174, 'Bino Roy', NULL, NULL, NULL, 'Spacious penthouse with bright marble floor and sea view', NULL, NULL, '2023-07-20 13:45:11', '2023-07-20 13:45:11', 'FACEBOOK', 'Ios'),
(175, 'Karma', NULL, NULL, NULL, 'A sea side pink home with garden full of hot pink flowers and husky dog with pink headpiece and pink pool', '01095677449', NULL, '2023-07-20 13:45:23', '2023-07-20 13:45:23', 'FACEBOOK', 'Karma'),
(176, 'Saksonia', NULL, NULL, NULL, 'Blue white lights home with pink garden and yellow pool with purple shades', '01000076500', NULL, '2023-07-20 13:46:37', '2023-07-20 13:46:37', 'FACEBOOK', 'Saksoniav'),
(177, 'Bino Roy', NULL, NULL, NULL, 'Futuristic ancient Egypt', NULL, NULL, '2023-07-20 13:47:25', '2023-07-20 13:47:25', 'FACEBOOK', 'Ios'),
(178, 'Ahmed', NULL, NULL, NULL, 'Luxury in nature modern castle unique elegant high end pool gardens', '011111111188766', NULL, '2023-07-20 13:55:06', '2023-07-20 13:55:06', 'FACEBOOK', 'Ahmed'),
(179, 'Bino Roy', NULL, NULL, NULL, 'Two towers fully made of glass connected with a bridge overlooking an artificial lake', NULL, NULL, '2023-07-20 13:55:47', '2023-07-20 13:55:47', 'FACEBOOK', 'Ios'),
(180, 'Louly13', NULL, NULL, NULL, 'In my penthouse reading a book', NULL, NULL, '2023-07-20 13:58:56', '2023-07-20 13:58:56', 'INSTAGRAM', 'Louly'),
(181, 'Loli', NULL, NULL, NULL, 'Underwater life with flying dogs and sharks', NULL, NULL, '2023-07-20 14:12:16', '2023-07-20 14:12:16', 'FACEBOOK', 'Loli'),
(182, 'Bino Roy', NULL, NULL, NULL, 'Villa with spacious garden and pool', NULL, NULL, '2023-07-20 14:14:27', '2023-07-20 14:14:27', 'FACEBOOK', 'Ios'),
(183, 'Bino Roy', NULL, NULL, NULL, 'Villa with spacious garden and pool', NULL, NULL, '2023-07-20 14:14:27', '2023-07-20 14:14:27', 'FACEBOOK', 'Ios'),
(184, 'Bino Roy', NULL, NULL, NULL, 'Villa with spacious garden and pool', NULL, NULL, '2023-07-20 14:14:27', '2023-07-20 14:14:27', 'FACEBOOK', 'Ios'),
(185, 'Bino Roy', NULL, NULL, NULL, 'Villa with spacious garden and pool', NULL, NULL, '2023-07-20 14:14:27', '2023-07-20 14:14:27', 'FACEBOOK', 'Ios'),
(186, 'Bino Roy', NULL, NULL, NULL, 'Villa with spacious garden and pool', NULL, NULL, '2023-07-20 14:14:52', '2023-07-20 14:14:52', 'FACEBOOK', 'Ios'),
(187, 'Maram ElShawarby', NULL, NULL, NULL, 'I imagine myself living in a one story beach house.. surrounded by all services that would facilitate my family\'s daily requirements.. the house is located within beautiful scenery spots.. quite place.. back to simplicity and back to basics.. overlooking my two little girls laughing, playing and enjoying life in it\'s simple beautiful natural format', '01220715000', NULL, '2023-07-20 14:24:11', '2023-07-20 14:24:11', 'FACEBOOK', 'Maram ElShawarby'),
(188, 'Louly13', NULL, NULL, NULL, 'In my penthouse bedroom playing on my phone', NULL, NULL, '2023-07-20 14:24:50', '2023-07-20 14:24:50', 'INSTAGRAM', 'Louly'),
(189, 'Aly El Samra', NULL, NULL, NULL, 'A bedroom design with Lego as main feature and a floating bead with a gym and gaming space', NULL, NULL, '2023-07-20 14:29:54', '2023-07-20 14:29:54', 'INSTAGRAM', 'https://instagram.com/alyelsamra?igshid=NGExMmI2YTkyZg=='),
(190, 'Firado', NULL, NULL, NULL, 'Sodic flat villa with my bae', NULL, NULL, '2023-07-20 14:30:09', '2023-07-20 14:30:09', 'INSTAGRAM', 'Bgd'),
(191, 'Nivana', NULL, NULL, NULL, 'White city with dark black streets flying animals and flowers and me! Tall buildings with Egypt nature seems floating people', NULL, NULL, '2023-07-20 14:32:46', '2023-07-20 14:32:46', 'FACEBOOK', 'H'),
(192, 'Ehab El Agamy', NULL, NULL, NULL, 'Effficient Dome like tents that can be easily relocated to any plot anywhere, while having all amenities', NULL, NULL, '2023-07-20 14:34:14', '2023-07-20 14:34:14', 'INSTAGRAM', 'https://instagram.com/agamy147?igshid=MzNlNGNkZWQ4Mg=='),
(193, 'Ahmed Shetta', NULL, NULL, NULL, 'Boutique zen villa with pool. In front of the pyramids.', '01003754575', NULL, '2023-07-20 14:34:53', '2023-07-20 14:34:53', 'INSTAGRAM', 'ahmedshetta1'),
(194, 'Abdelrahman El-Hamalawy', NULL, NULL, NULL, 'A simple smart house consiste of two stories with a backyard.', '0111205644', NULL, '2023-07-20 14:54:32', '2023-07-20 14:54:32', 'INSTAGRAM', 'abdelrahman.elhamalawy'),
(195, 'mohamed haddad', NULL, NULL, NULL, 'modern villa with garden , green area and sea , palms every where on the beach , children play in the garden', '01068679706', NULL, '2023-07-20 15:27:29', '2023-07-20 15:27:29', 'FACEBOOK', 'mohamed'),
(196, 'Louly13', NULL, NULL, NULL, 'In my penthouse bedroom with my Regal to', NULL, NULL, '2023-07-20 15:46:04', '2023-07-20 15:46:04', 'INSTAGRAM', 'Louly'),
(197, 'Louly13', NULL, NULL, NULL, 'In my small house holding my Beagle dog', NULL, NULL, '2023-07-20 16:10:39', '2023-07-20 16:10:39', 'INSTAGRAM', 'Louly'),
(198, 'Bino Roy', NULL, NULL, NULL, 'White villa with vines growing on the walls by the lagoon', NULL, NULL, '2023-07-20 16:15:58', '2023-07-20 16:15:58', 'FACEBOOK', 'Ios'),
(199, 'Bino Roy', NULL, NULL, NULL, 'White villa with vines growing on the walls by the lagoon', NULL, NULL, '2023-07-20 16:15:58', '2023-07-20 16:15:58', 'FACEBOOK', 'Ios'),
(200, 'Bino Roy', NULL, NULL, NULL, 'White villa with vines growing on the walls by the lagoon', NULL, NULL, '2023-07-20 16:15:59', '2023-07-20 16:15:59', 'FACEBOOK', 'Ios'),
(201, 'Bino Roy', NULL, NULL, NULL, 'White villa with vines growing on the walls by the lagoon', NULL, NULL, '2023-07-20 16:16:00', '2023-07-20 16:16:00', 'FACEBOOK', 'Ios'),
(202, 'Omar mohamed soliman', NULL, NULL, NULL, 'https://www.facebook.com/omar.soliman.92?mibextid=LQQJ4d', '01020300849', NULL, '2023-07-20 16:23:07', '2023-07-20 16:23:07', 'FACEBOOK', 'https://www.facebook.com/omar.soliman.92?mibextid=LQQJ4d'),
(203, 'Poupe', NULL, NULL, NULL, 'Imagine the lobby of an eclectic boutique hotel in egypt with a playful experience', NULL, NULL, '2023-07-20 16:44:38', '2023-07-20 16:44:38', 'INSTAGRAM', 'Instagram'),
(204, 'Io', NULL, NULL, NULL, '2 floor house\r\nMany windows\r\nBeach front\r\nTrees\r\nMountain back\r\nCalm', NULL, NULL, '2023-07-20 17:02:19', '2023-07-20 17:02:19', 'FACEBOOK', 'IO'),
(205, 'Louly', NULL, NULL, NULL, 'Looking at the sunset from my small house window, holding my beagle dog', NULL, NULL, '2023-07-20 17:03:31', '2023-07-20 17:03:31', 'INSTAGRAM', 'Louly'),
(206, 'Marwa El Khodary', NULL, NULL, NULL, 'marwaelkhodary instgram', '01223103537', NULL, '2023-07-20 18:34:25', '2023-07-20 18:34:25', 'INSTAGRAM', 'Marwaelkhodary'),
(207, 'Marwa El Khodary', NULL, NULL, NULL, 'marwaelkhodary instgram', '01223103537', NULL, '2023-07-20 18:34:26', '2023-07-20 18:34:26', 'INSTAGRAM', 'Marwaelkhodary'),
(208, 'Marwa El Khodary', NULL, NULL, NULL, 'Costal house , sea view , and lots of greenery light colors', NULL, NULL, '2023-07-20 18:37:36', '2023-07-20 18:48:03', 'INSTAGRAM', 'Marwaelkhodary'),
(209, 'HK', NULL, NULL, NULL, 'Ssss', NULL, NULL, '2023-07-20 18:53:04', '2023-07-20 18:53:04', 'FACEBOOK', 'Nnss'),
(210, 'HK', NULL, NULL, NULL, 'Ssss', NULL, NULL, '2023-07-20 18:53:06', '2023-07-20 18:53:06', 'FACEBOOK', 'Nnss'),
(211, 'Karimelfar', NULL, NULL, NULL, '/imagine a bright green we blue sky', '01223450314', NULL, '2023-07-20 19:27:46', '2023-07-20 19:27:46', 'FACEBOOK', 'Karim el far'),
(212, 'Ahmed Kamal', NULL, NULL, NULL, '1000 square meter modern house with helicopter port and big pool with organized garden', '01007170433', NULL, '2023-07-20 23:42:22', '2023-07-20 23:42:22', 'INSTAGRAM', 'ahmedkamal.8'),
(213, 'Malak D', NULL, NULL, NULL, 'Large area of Greenery with small house and small pool colorful trees and my black maserati car sea view and country side feel clear air with small birds and butterflies', NULL, NULL, '2023-07-21 01:25:34', '2023-07-21 01:25:34', 'FACEBOOK', 'Mal'),
(214, 'Malak dd', NULL, NULL, NULL, 'Large villa with 2 floors beige color and white painted with garden and pool view with a boho living room, colorful yoga zone at home. Open kitchen', NULL, NULL, '2023-07-21 01:28:45', '2023-07-21 01:28:45', 'FACEBOOK', 'M'),
(215, 'Abdelhady kamal ashour', NULL, NULL, NULL, 'Chilling by the sea', '01015358317', NULL, '2023-07-21 04:27:49', '2023-07-21 04:27:49', 'INSTAGRAM', 'Hady.ashour'),
(216, 'Louly', NULL, NULL, NULL, 'Sitting in my bed playing on my phone', NULL, NULL, '2023-07-21 04:33:41', '2023-07-21 04:33:41', 'INSTAGRAM', 'Louly'),
(217, 'Louly', NULL, NULL, NULL, 'My friends and i watching on a huge floating TV screen', NULL, NULL, '2023-07-21 06:52:11', '2023-07-21 06:52:11', 'INSTAGRAM', 'Louly'),
(218, 'Sama', NULL, NULL, NULL, 'Natural lighted living room with colorful cozy furniture and my coffee machine! With oil paintings on walls, wooden pots of plants', NULL, NULL, '2023-07-21 08:56:52', '2023-07-21 08:56:52', 'FACEBOOK', 'Sama'),
(219, 'Abdelrahman', NULL, NULL, NULL, 'Double height bedroom with PlayStation zone and plane paints with bohemian style', NULL, NULL, '2023-07-21 08:58:03', '2023-07-21 08:58:03', 'FACEBOOK', 'Abdo'),
(220, 'Ahmed Magdy', NULL, NULL, NULL, 'One storey double height modern villa with glazing everywhere, overlooking a serene lake and greenery.', '01223400233', NULL, '2023-07-21 10:06:37', '2023-07-21 10:06:37', 'INSTAGRAM', 'ahmedmagdy.h'),
(221, 'Heba', NULL, NULL, NULL, 'Minimalistic with natural colors with greens and oranges in it and a cost space', NULL, NULL, '2023-07-21 12:57:09', '2023-07-21 12:57:09', 'FACEBOOK', 'H'),
(222, 'Hazem Abdel Kareem', NULL, NULL, NULL, 'Panoramic house on a hill 1 story with endless pool', '01005888880', NULL, '2023-07-21 13:36:36', '2023-07-21 13:36:36', 'FACEBOOK', '01005888880'),
(223, 'Hazem Abdel Kareem', NULL, NULL, NULL, 'Modern one story panoramic house on top of a hill with endless pool and minimal landscape', NULL, NULL, '2023-07-21 13:39:28', '2023-07-21 13:39:28', 'INSTAGRAM', 'Hazem'),
(224, 'Louly', NULL, NULL, NULL, 'A small house consists of 2 floors on top of the clouds', NULL, NULL, '2023-07-21 13:41:39', '2023-07-21 13:41:39', 'FACEBOOK', 'Louly'),
(225, 'Bino Roy', NULL, NULL, NULL, 'Bedroom with dark wooden floor.\r\nIndirect lighting.\r\nKing size bed and flat screen tv', NULL, NULL, '2023-07-21 14:01:15', '2023-07-21 14:01:15', 'FACEBOOK', 'iOS'),
(226, 'Bino Roy', NULL, NULL, NULL, 'Bedroom with dark wooden floor.\r\nIndirect lighting.\r\nKing size bed and flat screen tv', NULL, NULL, '2023-07-21 14:01:15', '2023-07-21 14:01:15', 'FACEBOOK', 'iOS'),
(227, 'Hazem Abdel Kareem', NULL, NULL, NULL, 'Minimal interior design with indoor pool sea view', NULL, NULL, '2023-07-21 14:01:58', '2023-07-21 14:01:58', 'FACEBOOK', 'Hazem'),
(228, 'Louly', NULL, NULL, NULL, 'A white one story house in the middle of a lake', NULL, NULL, '2023-07-21 14:14:38', '2023-07-21 14:14:38', 'FACEBOOK', 'Louly'),
(229, 'Bino Roy', NULL, NULL, NULL, 'A large ottoman style palace surrounding a lush garden', NULL, NULL, '2023-07-21 14:29:04', '2023-07-21 14:29:04', 'FACEBOOK', 'iOS'),
(230, 'Ibrahim', NULL, NULL, NULL, 'Home by the beach with a beautiful sunset and surrounded by a rain forest and lots of marine life', NULL, NULL, '2023-07-21 19:34:42', '2023-07-21 19:34:42', 'INSTAGRAM', 'imissiri'),
(231, 'Louly13', NULL, NULL, NULL, 'A one story house in a  park', NULL, NULL, '2023-07-22 06:49:45', '2023-07-22 06:49:45', 'INSTAGRAM', 'Louly'),
(232, 'Louly', NULL, NULL, NULL, 'a One story house in the middle of a park', NULL, NULL, '2023-07-22 07:22:48', '2023-07-22 07:22:48', 'INSTAGRAM', 'Louly'),
(233, 'Louly', NULL, NULL, NULL, 'a One story house in the middle of a park', NULL, NULL, '2023-07-22 07:22:49', '2023-07-22 07:22:49', 'INSTAGRAM', 'Louly'),
(234, 'HA', NULL, NULL, NULL, 'Luxurious Art deco interior with back yard sea view', NULL, NULL, '2023-07-22 07:41:06', '2023-07-22 07:41:06', 'FACEBOOK', 'Hazem h'),
(235, 'Moustafa Sarhan', NULL, NULL, NULL, 'An andalusian house on a top of a mountain at dusk', '01147767093', NULL, '2023-07-22 10:02:30', '2023-07-22 10:02:30', 'INSTAGRAM', 'Moustafa92_'),
(236, 'S', NULL, NULL, NULL, 'canvas of colorful paints of abstract flowers and trees with dark background sparks inside', NULL, NULL, '2023-07-23 17:21:13', '2023-07-23 17:21:13', 'FACEBOOK', 'f'),
(237, 'dm', NULL, NULL, NULL, 'white room full of piece of arts and planets with red pieces on walls natural lighted room', NULL, NULL, '2023-07-23 17:23:07', '2023-07-23 17:23:07', 'FACEBOOK', 'S'),
(238, 'Ahmed', NULL, NULL, NULL, 'Villa of eternity next to the pyramids', '01003754575', NULL, '2023-07-23 19:10:59', '2023-07-23 19:10:59', 'INSTAGRAM', 'ahmedshetta1'),
(239, 'Nada Hussein', NULL, NULL, NULL, 'large villa with a big garden and in front of the sea with calm and peace  of', '01225004406', NULL, '2023-07-24 10:03:48', '2023-07-24 10:03:48', 'FACEBOOK', 'large villa with a big garden and in front of the sea with calm and peace  of'),
(240, 'Nada Hussein', NULL, NULL, NULL, 'large villa with a big garden and in front of the sea with calm and peace', '01225004406', NULL, '2023-07-24 10:08:53', '2023-07-24 10:08:53', 'INSTAGRAM', 'n'),
(241, 'Hussein ElGhamrawy', NULL, NULL, NULL, 'a very simple coastal town with panromic view chalets and white sand', NULL, NULL, '2023-07-24 10:21:49', '2023-07-24 10:21:49', 'FACEBOOK', 'zzz'),
(242, 'Bassem El-Alfy', NULL, NULL, NULL, 'double heighted bungalow surrounded by lagoons and lots of greenery', '+201114449922', NULL, '2023-07-24 11:03:36', '2023-07-24 11:03:36', 'a', 'https://www.facebook.com/bassem.elalfy.3'),
(243, 'Ahmed Hakim', NULL, NULL, NULL, 'One story villa, Large pool, Green backyard with playing area for my kids, Luxury cars in front of the house.', '01002779664', NULL, '2023-07-24 11:30:51', '2023-07-24 11:30:51', 'INSTAGRAM', '@ahmedhakim2'),
(244, 'SD', NULL, NULL, NULL, 'Art of abstract sea and sunlights with a white sand with abstract floral garden reflecting', NULL, NULL, '2023-07-24 13:53:38', '2023-07-24 13:53:38', 'FACEBOOK', 'S'),
(245, 'Nour', NULL, NULL, NULL, 'On a lake in the woods looking st the stars above at night, with a boat that I can take to cross to the sea. And woods all around my house.', NULL, NULL, '2023-07-24 16:45:28', '2023-07-24 16:45:28', 'INSTAGRAM', 'Instagram'),
(246, 'mostafa abd elkhabir', NULL, NULL, NULL, 'i think we will live in small houses that full of smart systems and robotics doing everything. we will use flying cars and working from everywhere', '01060222527', NULL, '2023-07-25 00:15:57', '2023-07-25 00:15:57', 'FACEBOOK', 'https://www.facebook.com/BACK.TO.SMILE'),
(247, 'Milad Mounir', NULL, NULL, NULL, 'https://drive.google.com/drive/my-drive', '01225690407', NULL, '2023-07-25 03:29:12', '2023-07-25 03:29:12', 'FACEBOOK', 'Milad Mounir'),
(248, 'Milad Mounir', NULL, NULL, NULL, 'https://drive.google.com/drive/my-drive', '01225690407', NULL, '2023-07-25 03:29:13', '2023-07-25 03:29:13', 'FACEBOOK', 'Milad Mounir'),
(249, 'Sherif Hani', NULL, NULL, NULL, 'on a bright beach with unobstructed sea view, deconstructive architecture, with well designed landscape to complete the scene', NULL, NULL, '2023-07-25 03:32:29', '2023-07-25 03:32:29', 'INSTAGRAM', '@sherifhani23'),
(250, 'Eslam Abdelmohsen', NULL, NULL, NULL, 'Green Buildings, Rooftop Wind Turbines and solar cells\r\nFull Wi-Fi Coverage around the compound\r\nSmart Street Lighting to save more energy.', '01001380672', NULL, '2023-07-25 04:28:41', '2023-07-25 04:28:41', 'INSTAGRAM', 'b_eslam55'),
(251, 'Nada Hussein', NULL, NULL, NULL, 'Large costal castell, large garden, light colors, birds, flowers.', '01225004406', NULL, '2023-07-25 04:49:33', '2023-07-25 04:49:33', 'FACEBOOK', '/nada.hussein.334'),
(252, 'Ahmed Gaber', NULL, NULL, NULL, 'Minimal Art decor interior with sea view and infinity pool', '01125129314', NULL, '2023-07-25 05:08:01', '2023-07-25 05:08:01', 'FACEBOOK', 'Ahmed Gaber'),
(253, 'Louai Hafez', NULL, NULL, NULL, 'Smart Homes, flexibility amenities   , quite places', NULL, NULL, '2023-07-25 05:10:47', '2023-07-25 05:10:47', 'FACEBOOK', 'FB'),
(254, 'HHA', NULL, NULL, NULL, 'one story panoramic view house with infinite pool in front of a lake', NULL, NULL, '2023-07-25 05:43:46', '2023-07-25 05:43:46', 'FACEBOOK', 'HHA'),
(255, 'Ahmed El Hageen', NULL, NULL, NULL, 'vernacular architecture design for houses around the sea in south sainai mixed with little greenery areas and kite surfing activity', '01002201469', NULL, '2023-07-25 05:59:22', '2023-07-25 05:59:22', 'INSTAGRAM', 'ahageen'),
(256, 'mohamed', NULL, NULL, NULL, 'wood sea palm glass house skylight telscopic', NULL, NULL, '2023-07-25 06:15:08', '2023-07-25 06:15:08', 'FACEBOOK', 'ssa'),
(257, 'Sherien', NULL, NULL, NULL, 'Smart home with panoramic views on a sandy beach with lush greenery on a starry night.', NULL, NULL, '2023-07-25 06:16:08', '2023-07-25 06:16:08', 'INSTAGRAM', 'Sherien_Mohammed'),
(258, 'Salma Yehia', NULL, NULL, NULL, 'My dream home is a modern and cozy space with light shades, wide windows, and abstract wall art. It\'s pet-friendly for my cats with cat-friendly features. The home has a garden and private pool view.', NULL, NULL, '2023-07-25 06:17:23', '2023-07-25 06:17:23', 'INSTAGRAM', 'salamita_93'),
(259, 'Hatem Saied', NULL, NULL, NULL, 'sea view', '01001657364', NULL, '2023-07-25 06:34:52', '2023-07-25 06:34:52', 'FACEBOOK', 'Sea view'),
(260, 'Mahmoud Alaa Mahmoud Shehata', NULL, NULL, NULL, 'stand alone villa made from natural materials with sea view, soft black sand, Sailing boat, yard for arabian horses under Grape net, Green spaces, fruitful trees at background, renewable power, no car', NULL, NULL, '2023-07-25 06:34:52', '2023-07-25 06:34:52', 'FACEBOOK', 'photo'),
(261, 'Hussein ElGhamrawy', NULL, NULL, NULL, 'simple one story single family house with greeneries all around and friendly neighbours.', NULL, NULL, '2023-07-25 06:47:23', '2023-07-25 06:47:23', 'FACEBOOK', '...'),
(262, 'Hussein ElGhamrawy', NULL, NULL, NULL, 'simple one story single family house with greeneries all around and friendly neighbours.', NULL, NULL, '2023-07-25 06:47:23', '2023-07-25 06:47:23', 'FACEBOOK', '...'),
(263, 'Mohamed', NULL, NULL, NULL, 'a residential home, sea view, modern style, exposed to nature (many windows)', NULL, NULL, '2023-07-25 06:49:22', '2023-07-25 06:49:22', 'INSTAGRAM', 'fqefe'),
(264, 'salma abouldahab', NULL, NULL, NULL, 'sun nature sea alot of glass blue', '0100 301 7059', NULL, '2023-07-25 07:14:57', '2023-07-25 07:14:57', 'FACEBOOK', 'salma abouldahab'),
(265, 'M', NULL, NULL, NULL, 'V03 KARMELL SODIC', NULL, NULL, '2023-07-25 07:17:35', '2023-07-25 07:17:35', 'FACEBOOK', 'D'),
(266, 'CatMom', NULL, NULL, NULL, 'pet-friendly space suitable for multiple cats with cat-friendly features such as scratching posts, climbing trees, and perches integrated into the design of the home.', NULL, NULL, '2023-07-25 07:22:26', '2023-07-25 07:22:26', 'INSTAGRAM', 'salamita_93'),
(267, 'Hassan', NULL, NULL, NULL, 'in the sky', '01224461035', NULL, '2023-07-25 07:23:19', '2023-07-25 07:23:19', 'FACEBOOK', 'ssss'),
(268, 'Farah', NULL, NULL, NULL, 'Sea through structure', NULL, NULL, '2023-07-25 07:28:50', '2023-07-25 07:28:50', 'INSTAGRAM', 'Farahemadk'),
(269, 'hamdy abdou', NULL, NULL, NULL, 'Big family size Spanish style house with internal court. The house located within private farm with view on wide lake . The farm including lambs and horses.', NULL, NULL, '2023-07-25 07:38:12', '2023-07-25 07:38:12', 'FACEBOOK', 'Hamdy Abdou'),
(270, 'ABDULAL ABDELRAZEK', NULL, NULL, NULL, 'to be surrounded with a sustainability environments , green buildings , go green initiatives  , green house , operated with the utmost available technologies , home is controlled with internet.', NULL, NULL, '2023-07-25 07:40:58', '2023-07-25 07:40:58', 'INSTAGRAM', 'abdulal_abdelrazek'),
(271, 'Hassan Hegazi', NULL, NULL, NULL, 'One story villa on a hill with triangle roof & curtain wall all around, front wooden deck same level with the villa, then stairs down to over flow pool with open view to tropical landscape out side.', '+201001230430', NULL, '2023-07-25 07:55:19', '2023-07-25 07:55:19', 'INSTAGRAM', '@hassan_hegazi'),
(272, 'Mohamed Morgan', NULL, NULL, NULL, 'The architecture is a seamless blend of sleek, modern design and organic elements. Towering structures reach towards the sky, their exteriors adorned with luminous panels that pulse and', '+201226610001', NULL, '2023-07-25 08:02:32', '2023-07-25 08:02:32', 'FACEBOOK', 'https://www.facebook.com/mohamadmorgan/'),
(273, 'Heba Ahmed', NULL, NULL, NULL, 'Home', NULL, NULL, '2023-07-25 08:09:30', '2023-07-25 08:09:30', 'FACEBOOK', 'facebook'),
(274, 'Yasser Mohamed Taha', NULL, NULL, NULL, 'a smart community with GIS unit to manage and facilitate the different activities.\r\na Sustainable Residential Community Powered by Renewable Energy, Reducing Carbon Footprint.', '01280269721', NULL, '2023-07-25 08:32:40', '2023-07-25 08:32:40', 'INSTAGRAM', 'yasser_m_taha'),
(275, 'Kareem Mohammed Mahmoud', NULL, NULL, NULL, 'future SODIC compounds would be a truly elevated experience. it would offer a perfect blend of luxury, sustainability, and community living, creating an ideal environment for individuals and families', '01009779495', NULL, '2023-07-25 08:36:11', '2023-07-25 08:36:11', 'FACEBOOK', 'lol_nice@msn.com'),
(276, 'mariam elzomor', NULL, NULL, NULL, 'a house on a hill, seeing the sea, greenery, mountains, touching the sky\r\nhouse made of wood and a glass\r\nhaving my own garden and animals', '+201005199355', NULL, '2023-07-25 08:51:19', '2023-07-25 08:51:19', 'FACEBOOK', 'https://www.facebook.com/mariam.elzomor?mibextid=LQQJ4d'),
(277, 'Shaheda Gamal', NULL, NULL, NULL, 'Villa overlooking the sea, with a swimming pool, a Mercedes car, and a large garden for flowers & a private Yacht in the port.', '01020292969', NULL, '2023-07-25 09:17:28', '2023-07-25 09:17:28', 'INSTAGRAM', 'shahada Gamal'),
(278, 'Sally Montasser', NULL, NULL, NULL, 'Earthy interior semi open kitchen with floating counter and smart storage solutions', '01017605555', NULL, '2023-07-25 09:39:11', '2023-07-25 09:39:11', 'INSTAGRAM', 'Sally montasser'),
(279, 'Sally Montasser', NULL, NULL, NULL, 'Minimalistic vertical outdoor terrace overlooking pyramids with built in counter and seating area', '01017605555', NULL, '2023-07-25 09:41:20', '2023-07-25 09:41:20', 'INSTAGRAM', 'Sally montasser'),
(280, 'ABDULAL ABDELRAZEK', NULL, NULL, NULL, 'A sustainable Villa, smart control , front yard with fuzzy fountains , simple and attractive design , surrounded with living neighborhood, streets shaded with high trees, neighboring corner is dusk ,', '+201068866490', NULL, '2023-07-25 10:19:20', '2023-07-25 10:19:20', 'INSTAGRAM', 'abdulal_abdelrazek'),
(281, 'Hani Khattab', NULL, NULL, NULL, 'green areas, modern buildings and interiors, infinity pools, productive trees, islamic modern architecture', '+201000532220', NULL, '2023-07-25 10:25:12', '2023-07-25 10:25:12', 'INSTAGRAM', 'https://www.instagram.com/hani.khattab/'),
(282, 'Hussien Shoukry', NULL, NULL, NULL, 'standalone villa with simplicity , cubic architecture, with green overview elevated on a platform with surrounding villas having double height ceiling and glazing black framed', '11111', NULL, '2023-07-25 10:43:18', '2023-07-25 10:43:18', 'INSTAGRAM', '1'),
(283, 'Hussien Shoukry', NULL, NULL, NULL, 'standalone villa with simplicity , cubic architecture, with green overview elevated on a platform with surrounding villas having double height ceiling and glazing black framed', '11111', NULL, '2023-07-25 10:43:25', '2023-07-25 10:43:25', 'INSTAGRAM', '1'),
(284, 'Sara Mohamed', NULL, NULL, NULL, 'Louly house', NULL, NULL, '2023-07-25 10:56:42', '2023-07-25 10:56:42', 'INSTAGRAM', 'Sara_m_abdelmohsen'),
(285, 'E', NULL, NULL, NULL, 'Ea', NULL, NULL, '2023-07-25 12:16:46', '2023-07-25 12:16:46', 'FACEBOOK', 'A'),
(286, 'Hassan', NULL, NULL, NULL, 'Citruszone', NULL, NULL, '2023-07-25 12:18:37', '2023-07-25 12:18:37', 'INSTAGRAM', 'Lemon.38.hh'),
(287, 'HHA', NULL, NULL, NULL, 'Modern contemporary loft , panoramic windows, greenery, luxurious interior', NULL, NULL, '2023-07-25 12:48:23', '2023-07-25 12:48:23', 'FACEBOOK', 'Hazem'),
(288, 'HHA', NULL, NULL, NULL, 'Modern contemporary loft , panoramic windows, greenery, luxurious interior', NULL, NULL, '2023-07-25 12:48:24', '2023-07-25 12:48:24', 'FACEBOOK', 'Hazem'),
(289, 'Marwan', NULL, NULL, NULL, 'Dynamic environmentally friendly villa build from glass and wood', '01124111871', NULL, '2023-07-25 13:42:36', '2023-07-25 13:42:36', 'INSTAGRAM', 'Marwankhaled315'),
(290, 'Sara Mohamed', NULL, NULL, NULL, 'Modern, sun entering from every corner, palms and plants around the villa from outside, medium size, with outer pool.', '01117453343', NULL, '2023-07-25 14:59:13', '2023-07-25 14:59:13', 'INSTAGRAM', 'Instegram/Sara_m_abdelmohsen'),
(291, 'M', NULL, NULL, NULL, 'Techonalogy smart home relax landscape vision scope pattern', NULL, NULL, '2023-07-25 17:43:41', '2023-07-25 17:43:41', 'FACEBOOK', 'M'),
(292, 'Sherine', NULL, NULL, NULL, 'Gummy bears, colorful interior, high ceiling, bachelorette apartment, nintendo switch, natural light, blue sky', NULL, NULL, '2023-07-25 17:59:54', '2023-07-25 17:59:54', 'INSTAGRAM', 'Sherien_mohammed'),
(293, 'Radwa Khaled El-Zahaby', NULL, NULL, NULL, 'bright colours, minimalistic design, beach front house, mostly white, greenery, plants, panoramic window, a hint of colour, nature, relaxing view', NULL, NULL, '2023-07-25 18:03:23', '2023-07-25 18:03:23', 'INSTAGRAM', '@radwaelzahaby6789'),
(294, 'Osama', NULL, NULL, NULL, 'In a cave on a lake', NULL, NULL, '2023-07-25 18:25:32', '2023-07-25 18:25:32', 'FACEBOOK', 'Osama'),
(295, 'Mohamed Abo El Magd', NULL, NULL, NULL, 'Futuristic', NULL, NULL, '2023-07-25 19:57:04', '2023-07-25 19:57:04', 'FACEBOOK', 'M'),
(296, 'Mariam', NULL, NULL, NULL, 'Villa sloped cube wood garden pool bicycle lane playground kids', NULL, NULL, '2023-07-25 20:46:58', '2023-07-25 20:46:58', 'FACEBOOK', 'Mariam'),
(297, 'Radwa Khaled El-Zahaby', NULL, NULL, NULL, 'living room, home cinema, sound system, big TV screen, L shape sofa, warm colours, cozy feeling', NULL, NULL, '2023-07-25 21:17:43', '2023-07-25 21:17:43', 'INSTAGRAM', '@radwaelzahaby6789'),
(298, 'Radwa Khaled El-Zahaby', NULL, NULL, NULL, 'green mountain, panoramic view, organic architecture, skies, full moon, stars, sea view, trees, swimming pool, hammock, colors, flying vehicles, deers', NULL, NULL, '2023-07-25 21:22:47', '2023-07-25 21:22:47', 'INSTAGRAM', '@radwaelzahaby6789'),
(299, 'Mariam', NULL, NULL, NULL, 'A room made of marshemello and A room made of balloons and A room made of bubbles', NULL, NULL, '2023-07-25 21:36:54', '2023-07-25 21:36:54', 'FACEBOOK', 'Mariam'),
(300, 'Seifeldin Aly', NULL, NULL, NULL, 'Flying cars', NULL, NULL, '2023-07-26 04:09:01', '2023-07-26 04:09:01', 'FACEBOOK', 'Seifeldin'),
(301, 'Seifeldin Aly', NULL, NULL, NULL, 'Flying cars', NULL, NULL, '2023-07-26 04:09:03', '2023-07-26 04:09:03', 'FACEBOOK', 'Seifeldin'),
(302, 'Hisham Elmasry', NULL, NULL, NULL, 'villa in an island with private pool with glass cladding and large terrace with warm indirect lights surrounded by trees  private yacht in the sea', NULL, NULL, '2023-07-26 05:46:12', '2023-07-26 05:46:12', 'INSTAGRAM', 'hesham elmasry'),
(303, 'Omar Zein', NULL, NULL, NULL, 'Travel around the world and have a villa and cars', NULL, NULL, '2023-07-26 06:50:11', '2023-07-26 06:50:11', 'FACEBOOK', 'omar_legand@yahoo.com'),
(304, 'Malak Soliman', NULL, NULL, NULL, 'I want a spacious living room with clean and light shades of paint but with pop of colours in the decor. I want the living room to have comfortable and elegant seating.', NULL, NULL, '2023-07-26 10:03:02', '2023-07-26 10:03:02', 'INSTAGRAM', 'malaksoliman'),
(305, 'Shady Gerges', NULL, NULL, NULL, 'costal home with big tropical garden large pool', NULL, NULL, '2023-07-26 10:13:03', '2023-07-26 10:13:03', 'FACEBOOK', 'shady'),
(306, 'Seifeldin Aly', NULL, NULL, NULL, 'Flying cars', NULL, NULL, '2023-07-26 10:28:28', '2023-07-26 10:28:28', 'INSTAGRAM', 'seifeldint'),
(307, 'Eslam Abuali', NULL, NULL, NULL, 'A wheelchair-friendly, simple house on the beach with access to the sea, in a quiet and relaxing spot where you can enjoy the sunset.', NULL, NULL, '2023-07-26 10:36:48', '2023-07-26 10:36:48', 'INSTAGRAM', 'eslam_abuali'),
(308, 'Rasha Elwan', NULL, NULL, NULL, 'a white modern home with a pool, 1 big storey, greenery everywhere with palm, big trees, with a husky dog, a swing in the home entrance', NULL, NULL, '2023-07-26 11:24:10', '2023-07-26 11:24:10', 'FACEBOOK', 'https://www.facebook.com/roshasho?mibextid=9R9pXO'),
(309, 'Jenane Naguib', NULL, NULL, NULL, 'One-storey villa on an island, minimalistic design and earthy tones, with lots of greenery and palm trees. Sail boat docked on private jetty in front of the villa.', '01227900590', NULL, '2023-07-26 11:29:37', '2023-07-26 11:29:37', 'INSTAGRAM', 'jenanenaguib'),
(310, 'Samaa', NULL, NULL, NULL, 'Natural lighted Ancient Egyptian living room with gold Islamic arts on walls overlooking the Nile River with felucca boats at Aswan!', NULL, NULL, '2023-07-26 13:28:38', '2023-07-26 13:28:38', 'INSTAGRAM', 'S'),
(311, 'Zeinab Ahmed', NULL, NULL, NULL, 'An italian inspired exterior ground level home in a secluded area with high ceilings and sunlight coming through big windows with an axel vervoordt inspired interior design', '01113930034', NULL, '2023-07-26 15:05:11', '2023-07-26 15:05:11', 'INSTAGRAM', 'Zeinabbdawi'),
(312, 'sara', NULL, NULL, NULL, '3 story villa with a big door and a lot of windows and a backyard with an infinity pool and a lot of greenery, grey walls. and a front porch with a pond', NULL, NULL, '2023-07-26 15:15:19', '2023-07-26 15:15:19', 'FACEBOOK', 'sara'),
(313, 'Tareq Soliman', NULL, NULL, NULL, 'War, Tanks, Bullets, Zombies, Riots, Air Crafts, Anarchists, climate change and nature revenges', '0100 433 8880', NULL, '2023-07-26 16:08:57', '2023-07-26 16:08:57', 'INSTAGRAM', '@tareqsoliman'),
(314, 'HHA', NULL, NULL, NULL, 'Contemporary Penthouse , nile view, small infinity pool , fireplace, golden hour, big terrace with greenery', NULL, NULL, '2023-07-26 16:25:48', '2023-07-26 16:25:48', 'FACEBOOK', 'Hazem'),
(315, 'Koko', NULL, NULL, NULL, 'Book shop Cafe with looping staircase and walla made from books with flower shop in the middle', '444', NULL, '2023-07-26 16:53:29', '2023-07-26 16:53:29', 'INSTAGRAM', '1'),
(316, 'Youssef Fayek', NULL, NULL, NULL, 'One story villa on a hilltop with a tropical backyard with palm trees and a big pool', NULL, NULL, '2023-07-26 17:10:13', '2023-07-26 17:10:13', 'INSTAGRAM', 'Yfayek_'),
(317, 'Sz', NULL, NULL, NULL, 'Home, peaceful, greenery, minimalistic, organic, natural light, bookyard, family', NULL, NULL, '2023-07-26 18:13:31', '2023-07-26 18:13:31', 'INSTAGRAM', 'Sherien_mohammed'),
(318, 'Zomorda', NULL, NULL, NULL, 'A glass house with a lot of greenery plants, with my cats, looking to a beautiful beach and lovely music', NULL, NULL, '2023-07-26 18:42:32', '2023-07-26 18:42:32', 'INSTAGRAM', 'https://instagram.com/zomorda81?igshid=MmIzYWVlNDQ5Yg=='),
(319, 'Ahmed Maher', NULL, NULL, NULL, 'June', '01099620000', NULL, '2023-07-26 19:38:38', '2023-07-26 19:38:38', 'FACEBOOK', '+20109111152'),
(320, 'Ahmed Maher', NULL, NULL, NULL, 'June', '01099620000', NULL, '2023-07-26 19:38:39', '2023-07-26 19:38:39', 'FACEBOOK', '+20109111152'),
(321, 'Mo Salem', NULL, NULL, NULL, 'A fully finished city consists of 3 compounds ( villas, houses & apartments ) includes \r\n- mini clubhouses \r\n- activities parks \r\n- commercial mall\r\n- school \r\n- gas station', NULL, NULL, '2023-07-26 20:45:35', '2023-07-26 20:45:35', 'INSTAGRAM', 'm.salem@sodic.com'),
(322, 'S', NULL, NULL, NULL, 'Natural lighted glazed athletic hall overlooking sea and some palms and greeneries', NULL, NULL, '2023-07-26 20:50:38', '2023-07-26 20:50:38', 'FACEBOOK', 'Sama'),
(323, 'S', NULL, NULL, NULL, 'Cozy bedroom bubble candle lights, cozy furniture and candles on table centered at bedroom living area overlooking night city view abstract dark oil paint on walls', NULL, NULL, '2023-07-26 20:55:00', '2023-07-26 20:55:00', 'INSTAGRAM', 'Ss'),
(324, 'Khaled Abdeljawad', NULL, NULL, NULL, 'Old style beach house with wooden style and smart as well', NULL, NULL, '2023-07-26 21:31:22', '2023-07-26 21:31:22', 'INSTAGRAM', 'K_abdeljawad'),
(325, 'Khaled Abdeljawad', NULL, NULL, NULL, 'Double height stand alone house with car parking inside the living area with glass walls', NULL, NULL, '2023-07-26 21:33:25', '2023-07-26 21:33:25', 'INSTAGRAM', 'K_abdeljawad'),
(326, 'Lina Dissouki', NULL, NULL, NULL, 'Spacious double height living room marble flooring, brown wooden kitchen ..with white and beige warm furniture, touch of greenery and large tv, having large windows and opening to the garden and pool', NULL, NULL, '2023-07-26 23:27:11', '2023-07-26 23:27:11', 'INSTAGRAM', 'https://instagram.com/linadissouki?igshid=OGQ5ZDc2ODk2ZA=='),
(327, 'Ahmed Zidan', NULL, NULL, NULL, 'Fully smart villa on hill with panorama view on near beach, the design has a wooden theme, warm furniture, Side yard with covered pool and small Gym and palm garden with seats, Hummer car Parking.', '+201000006559', NULL, '2023-07-27 06:39:15', '2023-07-27 06:39:15', 'FACEBOOK', 'https://www.facebook.com/aazedan1'),
(328, 'Reham', NULL, NULL, NULL, 'Successful in work, happy with my marriage and kids\r\nTraveling a lot\r\nSurrounded by my friends', NULL, NULL, '2023-07-27 06:44:55', '2023-07-27 06:44:55', 'INSTAGRAM', 'Reham_Wael'),
(329, 'Reham', NULL, NULL, NULL, 'Successful in work, happy with my marriage and kids\r\nTraveling a lot\r\nSurrounded by my friends', NULL, NULL, '2023-07-27 06:44:56', '2023-07-27 06:44:56', 'INSTAGRAM', 'Reham_Wael'),
(330, 'Karim', NULL, NULL, NULL, 'Football\r\nSea\r\nMaradona\r\nAmr Diab\r\nAbdel Baset Hamouda\r\nWood', NULL, NULL, '2023-07-27 06:47:51', '2023-07-27 06:47:51', 'FACEBOOK', 'Karim Amr'),
(331, 'Wael Abdel Rahman', NULL, NULL, NULL, 'a man sitting on the mountain top, arranging random stones vertically to maintain balance.', NULL, NULL, '2023-07-27 06:58:30', '2023-07-27 06:58:30', 'INSTAGRAM', 'wmarahman'),
(332, 'Esraa', NULL, NULL, NULL, 'ان شاء الله', '01090700020', NULL, '2023-07-27 10:35:21', '2023-07-27 10:35:21', 'فيسبوك', 'mdamtarq724@gmail.com'),
(333, 'Esraa', NULL, NULL, NULL, 'ان شاء الله', '01090700020', NULL, '2023-07-27 10:35:29', '2023-07-27 10:35:29', 'فيسبوك', 'mdamtarq724@gmail.com');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `message`, `phone`, `remember_token`, `created_at`, `updated_at`, `socialmedia`, `socialhandle`) VALUES
(334, 'kareem samir', NULL, NULL, NULL, 'large land with a small villa directly to the lake, with a separate building as workshop 50 Meter square for DIY The rest of land green area with a swimming pool & a garage containing 8 cars', '01033818855', NULL, '2023-07-27 10:42:29', '2023-07-27 10:42:29', 'FACEBOOK', 'karim samir'),
(335, 'marwan', NULL, NULL, NULL, 'luxurious green architecture  with black and dark grey interior', NULL, NULL, '2023-07-27 12:26:39', '2023-07-27 12:26:39', 'INSTAGRAM', 'marwankhaled315'),
(336, 'Karim Mahrous', NULL, NULL, NULL, 'Myself by the beach on a sunny day with lots of joy on my face', NULL, NULL, '2023-07-27 14:06:22', '2023-07-27 14:06:22', 'INSTAGRAM', 'karimmahrouss'),
(337, 'sara', NULL, NULL, NULL, 'a white 3 story modern villa with back yard that has an infinity pool a lot of greenery and a pop of color in the flowers i also want a fire pit with light teal colored cushions i also want modern lig', NULL, NULL, '2023-07-27 14:37:10', '2023-07-27 14:37:10', 'INSTAGRAM', 'sara'),
(338, 'Salma Hayek Mia khalifa', NULL, NULL, NULL, 'I feel that we are going to live in a very sexy studios provide a good porn services', '+1 637 830 7190', NULL, '2023-07-27 15:48:57', '2023-07-27 15:48:57', 'INSTAGRAM', 'Mia khalifa official'),
(339, 'Kholood', NULL, NULL, NULL, 'Mountain top by the ocean, minimalistic house,wood,glass,,artwork', NULL, NULL, '2023-07-27 17:22:06', '2023-07-27 17:22:06', 'INSTAGRAM', 'kholoodelshaer'),
(340, 'Ahmed Essam', NULL, NULL, NULL, 'Sea', NULL, NULL, '2023-07-27 17:28:34', '2023-07-27 17:28:34', 'INSTAGRAM', 'Ahmed Zayton'),
(341, 'Ahmed Essam', NULL, NULL, NULL, 'Sea', NULL, NULL, '2023-07-27 17:28:34', '2023-07-27 17:28:34', 'INSTAGRAM', 'Ahmed Zayton'),
(342, 'Ahmed Amin', NULL, NULL, NULL, 'smart penthouse with a great view, located in a top of a tall building with sea, gardens and other beautiful buildings', '01005153729', NULL, '2023-07-28 12:50:25', '2023-07-28 12:50:25', 'FACEBOOK', 'https://www.facebook.com/ahmed.amin.abbas'),
(343, 'Nora Ismail', NULL, NULL, NULL, 'duplex with beautiful terrace with big garden and pool , with second floor balcony looking at the pool', NULL, NULL, '2023-07-28 20:08:06', '2023-07-28 20:08:06', 'FACEBOOK', 'https://www.facebook.com/profile.php?id=100008172674690'),
(344, 'Mohamed Elaraby', NULL, NULL, NULL, 'Living in a very sleek and modern villa, color white with greenery roof and horizon swimming pool, parking my Lamborghini in the garage for charging.', NULL, NULL, '2023-07-29 16:30:19', '2023-07-29 16:30:19', 'INSTAGRAM', 'ielaraby'),
(345, 'ALY', NULL, NULL, NULL, 'Aliens invading the world', '111', NULL, '2023-07-29 17:02:21', '2023-07-29 17:02:21', 'FACEBOOK', '3'),
(346, 'ahmad amin', NULL, NULL, NULL, 'relaxed \r\nmeditate \r\neasy and simple', NULL, NULL, '2023-07-29 17:49:23', '2023-07-29 17:49:23', 'FACEBOOK', 'ahmad amin'),
(347, 'ahmad amin', NULL, NULL, NULL, 'one story home overlooking sea with inner court and sunlight inner planting minimalism interior \r\nsexy details \r\nwater', NULL, NULL, '2023-07-29 17:51:56', '2023-07-29 17:51:56', 'FACEBOOK', 'ahmad amin'),
(348, 'ahmad amin', NULL, NULL, NULL, 'one story home overlooking sea with inner court and sunlight inner planting minimalism interior \r\nsexy details \r\nwater', NULL, NULL, '2023-07-29 17:51:56', '2023-07-29 17:51:56', 'FACEBOOK', 'ahmad amin'),
(349, 'ahmad amin', NULL, NULL, NULL, 'one story home overlooking sea with inner court and sunlight inner planting minimalism interior \r\nsexy details \r\nwater', NULL, NULL, '2023-07-29 17:51:57', '2023-07-29 17:51:57', 'FACEBOOK', 'ahmad amin'),
(350, 'ahmad amin', NULL, NULL, NULL, 'one story house \r\ninner court \r\nmodern early 60th \r\ninner pool \r\nforest and sea view', NULL, NULL, '2023-07-29 17:55:47', '2023-07-29 17:55:47', 'FACEBOOK', 'ahmad amin'),
(351, 'ahmad amin', NULL, NULL, NULL, 'small smart home that interactive with human needs yet its simple minimalism beauty \r\ninner planting sun light \r\ninner water features', NULL, NULL, '2023-07-29 17:59:49', '2023-07-29 17:59:49', 'FACEBOOK', 'ahmad amin'),
(352, 'Salah', NULL, NULL, NULL, 'One floor home with big garden', NULL, NULL, '2023-07-29 18:41:04', '2023-07-29 18:41:04', 'INSTAGRAM', 'Ahsalah'),
(353, 'Hazem Elemam', NULL, NULL, NULL, 'A House that is covered by alot of trees on a high-level mountain with a sunny weather', NULL, NULL, '2023-07-29 19:00:23', '2023-07-29 19:00:23', 'INSTAGRAM', 'hazem__emam'),
(354, 'YasserZohdy', NULL, NULL, NULL, 'Living on the sea around bright flowers in a smart house with all modern technological means', NULL, NULL, '2023-07-29 19:38:48', '2023-07-29 19:38:48', 'INSTAGRAM', 'yasserzohdy'),
(355, 'ahmad amin', NULL, NULL, NULL, 'unicorn kitty cute house kwaii with two floors sliding instade of stairs with alot of cats', NULL, NULL, '2023-07-29 21:19:48', '2023-07-29 21:19:48', 'FACEBOOK', 'ahmad amin'),
(356, 'Dalida Amin', NULL, NULL, NULL, 'a smart house that has a playground in a garden next to a quiet relaxing river and has all technologies controlled', NULL, NULL, '2023-07-29 21:27:57', '2023-07-29 21:27:57', 'FACEBOOK', 'dalida amin'),
(357, 'ahmad amin', NULL, NULL, NULL, 'a double height modern minimalist looks like airplan interior with luxuries details', NULL, NULL, '2023-07-29 21:36:59', '2023-07-29 21:36:59', 'FACEBOOK', 'ahmad amin'),
(358, 'ahmad amin', NULL, NULL, NULL, 'Building consist of alot of terraces with white colour details and minimal modern look the terraces are planted the view is from top of city glass Transparent doors overlook white minimal interior', NULL, NULL, '2023-07-30 01:32:48', '2023-07-30 01:32:48', 'INSTAGRAM', 'ahmadamin8330'),
(359, 'Dalida Ahmad', NULL, NULL, NULL, 'Glass house with zero architecture come and goes with nature with all of its elements water fire air and love', NULL, NULL, '2023-07-30 01:43:16', '2023-07-30 01:43:16', 'FACEBOOK', 'Dalida Ahmad'),
(360, 'Suha Refaat', NULL, NULL, NULL, 'Smart Homes: It\'s likely that homes will become increasingly connected and automated, such as voice-activated assistants, automated lighting, and climate control systems. Making it easier.', '01275977720', NULL, '2023-07-30 03:44:17', '2023-07-30 03:44:17', 'INSTAGRAM', 'Suha Refaat'),
(361, 'Ahmed madkour', NULL, NULL, NULL, 'Living in sustainable home , sunny, white colors', '01010765980', NULL, '2023-07-30 03:53:57', '2023-07-30 03:53:57', 'INSTAGRAM', 'Me'),
(362, 'Ahmed madkour', NULL, NULL, NULL, 'Living in sustainable home , sunny, white colors', '01010765980', NULL, '2023-07-30 03:54:21', '2023-07-30 03:54:21', 'INSTAGRAM', 'Me'),
(363, 'Amr El Karany', NULL, NULL, NULL, 'Living, beach, Red Sea, environmental control, small buildings,', '0224559775', NULL, '2023-07-30 03:55:38', '2023-07-30 03:55:38', 'INSTAGRAM', 'https://instagram.com/karany?igshid=OGQ5ZDc2ODk2ZA=='),
(364, 'shaymaa Elzayat', NULL, NULL, NULL, 'full glass walls see front penthouse with huge mangrove or palm trees in the background', NULL, NULL, '2023-07-30 05:04:54', '2023-07-30 05:04:54', 'INSTAGRAM', '@shaymaa_elzayat'),
(365, 'kholood', NULL, NULL, NULL, 'Mountain top by the ocean, minimalistic house,wood,glass,,artwork,greenery and flowers', NULL, NULL, '2023-07-30 05:07:08', '2023-07-30 05:07:08', 'INSTAGRAM', 'kholoodelshaer'),
(366, 'Shaymaa Elzayat', NULL, NULL, NULL, 'an industrial loft building with full glass front looking over ocean beach with mangrove trees in the back, 3 ginger cats, industrial modern comfy furniture, lanterns in the outdoors', NULL, NULL, '2023-07-30 05:10:37', '2023-07-30 05:10:37', 'INSTAGRAM', '@shaymaa_elzayat'),
(367, 'Ahmed Zayton', NULL, NULL, NULL, 'cozy house in the forest made from wood overlooking a lake, comfy swing on the terrace, horse stable.', '+201113162145', NULL, '2023-07-30 05:41:19', '2023-07-30 05:41:19', 'FACEBOOK', 'Ahmed Zayton'),
(368, 'Sami el Awa', NULL, NULL, NULL, 'a pop-up interactive urban theater performance on the streets inviting community members to participate by taking the place of actors and imaging a different arc to the story.', '01202708677', NULL, '2023-07-30 07:39:33', '2023-07-30 07:39:33', 'INSTAGRAM', 'https://www.instagram.com/sam3awa/'),
(369, 'Rania Ismail', NULL, NULL, NULL, 'A fully updated castle on a hill overlooking the sea with an infinity pool  , a privet beach ,and a forest as a backyards , at sunset my mom , me are sipping coffee  and enjoying  life with my cats', '01020120220', NULL, '2023-07-30 07:57:48', '2023-07-30 07:57:48', 'FACEBOOK', 'https://www.facebook.com/Rania.M.Ismael'),
(370, 'Rania Ismail', NULL, NULL, NULL, 'A fairy house with a flower garden & cove in a forest, me on my flying black horse plying with magical creatures', '01020120220', NULL, '2023-07-30 08:56:04', '2023-07-30 08:56:04', 'FACEBOOK', 'https://www.facebook.com/Rania.M.Ismael'),
(371, 'Nouran Labib', NULL, NULL, NULL, 'Nestled on a tranquil beach, my future home is a serene oasis. With floor-to-ceiling windows, it offers a panoramic view of the sparkling ocean. The minimalist design and soothing color palette create', '01124084800', NULL, '2023-07-30 09:01:23', '2023-07-30 09:01:23', 'INSTAGRAM', 'My dream home'),
(372, 'Mohamed Ehab', NULL, NULL, NULL, 'high tech eco-friendly 4 floor commercial building, solar powered.', NULL, NULL, '2023-07-30 09:21:10', '2023-07-30 09:21:10', 'FACEBOOK', 'zz'),
(373, 'Heba', NULL, NULL, NULL, 'Underwater futuristic cities that are interconnected with glass tunnels. Imagine a house in one of those cities that is an all glass minimalistic capsule', NULL, NULL, '2023-07-30 09:46:21', '2023-07-30 09:46:21', 'INSTAGRAM', 'Hebamfawzi'),
(374, 'mahmoud', NULL, NULL, NULL, 'sodic', NULL, NULL, '2023-07-30 10:06:55', '2023-07-30 10:06:55', 'INSTAGRAM', 'instagram'),
(375, 'Mallk Zedan', NULL, NULL, NULL, 'high tech highrise buliding counnected to the ocean from the bottom with glass room to see the world under ocean with composition of greens and mountains and pool and scorpio decorations', '01553227272', NULL, '2023-07-30 11:26:10', '2023-07-30 11:26:10', 'INSTAGRAM', 'malk_zedan'),
(376, 'hassan ali', NULL, NULL, NULL, 'home, fly, sweet', NULL, NULL, '2023-07-30 11:28:19', '2023-07-30 11:28:19', 'FACEBOOK', 'hassanalielzayat'),
(377, 'Amr El Karany', NULL, NULL, NULL, 'Environmental control, Red Sea, cozy, small houses, beach, Nubian,', '1224559775', NULL, '2023-07-30 11:30:02', '2023-07-30 11:30:02', 'INSTAGRAM', '@karany'),
(378, 'Loay', NULL, NULL, NULL, 'Wide space and greeneries with clear view', NULL, NULL, '2023-07-30 12:48:42', '2023-07-30 12:48:42', 'INSTAGRAM', 'Loay.m.said'),
(379, 'Jenane', NULL, NULL, NULL, 'Indoor Japanese garden with modern sculptures under double-height skylight', NULL, NULL, '2023-07-30 13:24:10', '2023-07-30 13:24:10', 'INSTAGRAM', 'jenanenaguib'),
(380, 'Waguih', NULL, NULL, NULL, 'Huge villa on a formula one track with 10 parked supercars and a massive pool', NULL, NULL, '2023-07-30 13:49:46', '2023-07-30 13:49:46', 'FACEBOOK', 'Waguih Emad Iskandar'),
(381, 'Waguih', NULL, NULL, NULL, 'Huge villa on a formula one track with 10 parked supercars and a massive pool', NULL, NULL, '2023-07-30 13:49:47', '2023-07-30 13:49:47', 'FACEBOOK', 'Waguih Emad Iskandar'),
(382, 'youssef', NULL, NULL, NULL, 'living in an open space where you can enjoy all life leisures', NULL, NULL, '2023-07-30 14:25:32', '2023-07-30 14:25:32', 'FACEBOOK', 'Youssef'),
(383, 'ahmad amy', NULL, NULL, NULL, 'Richard myer modern house with indoor pool minimalistic details with very futuristic furntire trend and maximum technology that promote relaxation and happiness', NULL, NULL, '2023-07-30 15:10:57', '2023-07-30 15:10:57', 'FACEBOOK', 'ahmad amy'),
(384, 'Amr El Karany', NULL, NULL, NULL, 'Green, futuristic, Bohemian, small home, love, white, beige, Lake', '1224559775', NULL, '2023-07-30 15:25:49', '2023-07-30 15:25:49', 'INSTAGRAM', '@karany'),
(385, 'Hosam Salah Ibrahim', NULL, NULL, NULL, 'myself residing in a sustainable development community that prioritizes various elements such as renewable energy, environmentally friendly alternative transportation, eco-conscious building', '01004094412', NULL, '2023-07-30 16:28:58', '2023-07-30 16:28:58', 'INSTAGRAM', 'https://instagram.com/hosamsalaah?utm_source=qr&igshid=ZDc4ODBmNjlmNQ%3D%3D'),
(386, 'Mahi', NULL, NULL, NULL, 'Sea water falls one floor open to nature with sunset', NULL, NULL, '2023-07-30 16:34:07', '2023-07-30 16:34:07', 'FACEBOOK', 'High'),
(387, 'spac', NULL, NULL, NULL, 'spaceship looks like house with tiny details water penterat it everywhere one open space accomdate all uses including bathroom glass everywhere and white leather furntire', NULL, NULL, '2023-07-30 16:38:05', '2023-07-30 16:38:05', 'FACEBOOK', 'space'),
(388, 'Sally Montasser', NULL, NULL, NULL, 'An eco friendly community with shared working spaces, landscape, open theatre, kids area, yoga space, shaded workout space and water park, mountain climber and funky playful benches', NULL, NULL, '2023-07-30 18:26:11', '2023-07-30 18:26:11', 'INSTAGRAM', 'Sallymontasser'),
(389, 'Mostafa Eldesokey', NULL, NULL, NULL, 'Living with my family have our daily routine into calm vibes and everything is walkin from us that’s why i choose Sodic East', '+20 101 310 8764', NULL, '2023-07-30 19:11:44', '2023-07-30 19:11:44', 'FACEBOOK', '+20 101 310 8764'),
(390, 'Nouran Abdallah', NULL, NULL, NULL, 'Living happily with my hubby', NULL, NULL, '2023-07-30 21:07:06', '2023-07-30 21:07:06', 'FACEBOOK', 'Nouran Abdallah'),
(391, 'Milad', NULL, NULL, NULL, 'dsfas', '01225690407', NULL, '2023-07-31 03:26:53', '2023-07-31 03:26:53', 'FACEBOOK', 'Milad.famounir@gmail.com'),
(392, 'mohamed adly', NULL, NULL, NULL, 'I imagine the existence of a building in the middle of a green area, which is a building in the form of glass squares scattered with plants, and the building is surrounded by other buildings', '01156006686', NULL, '2023-07-31 03:51:34', '2023-07-31 03:51:34', 'FACEBOOK', 'mohamed adly'),
(393, 'ADS', NULL, NULL, NULL, 'ADSDSA', '01123694440', NULL, '2023-07-31 05:53:20', '2023-07-31 05:53:20', 'INSTAGRAM', 'sadasdasd'),
(394, 'AA', NULL, NULL, NULL, 'one floor contemporary barbie beach house, with a backyard overlooking the beach.', NULL, NULL, '2023-07-31 06:20:23', '2023-07-31 06:20:23', 'INSTAGRAM', 'ameenaabouzeid'),
(395, 'Nour Hassan', NULL, NULL, NULL, 'A podcast series on Radical Contemporary hosted by IMAGINE.', '01028422884', NULL, '2023-07-31 06:48:12', '2023-07-31 06:48:12', 'INSTAGRAM', '@radicalcontemporary');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `imagines`
--
ALTER TABLE `imagines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `translation_keys`
--
ALTER TABLE `translation_keys`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagines`
--
ALTER TABLE `imagines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translation_keys`
--
ALTER TABLE `translation_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `imagines`
--
ALTER TABLE `imagines`
  ADD CONSTRAINT `imagines_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
