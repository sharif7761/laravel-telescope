-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 08:37 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telescope`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2018_08_08_100000_create_telescope_entries_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(32, '95a1a57e-ab2a-4767-a313-2dd1c985efef', '95a1a57e-b845-4a26-b991-8ebf77d1eb5c', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:09:48'),
(33, '95a1a57e-b563-49fa-a85f-bed5cefee240', '95a1a57e-b845-4a26-b991-8ebf77d1eb5c', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:09:48'),
(34, '95a1a57e-b6fe-442a-9c92-f7d74527896b', '95a1a57e-b845-4a26-b991-8ebf77d1eb5c', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/topics\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlBHd0JUZjhtU0xyZTZISmxUU3d1U0E9PSIsInZhbHVlIjoidk1MSjZsVHNJZWNDVVU2VWFWcm14cFBrUjJucTZHQk5oUlJjYk5mY1MxODgwRUU0dnEzUndHMU5RVW5aV3FzVU9DNG8xM1Y4d3Z2THUrZGFuNlV0U3d6S25IUXRacjhOVXJ0WUdKNU5BTTZnYnZ0UTNiNGk4QnFIV3JVSmZWVVgiLCJtYWMiOiJkNGQ1ZGVkZjAyMGQxZTMwN2FjNTM0MjhmMmNjNWU5MWZhYjRiMDIxOGZmZTNiMGMyNzQ2MmM1ODIzYzA3MGNkIn0%3D; laravel_session=eyJpdiI6ImZDdXFxckVKNlZaNDIvbjFKWVpLSUE9PSIsInZhbHVlIjoiMXRlL2kvQjNEV2syZGhibEFMaEFDckJaRm9KNCs4RHFacnM1czlFVmhjMVVFMnh3VHFxSHZLdVR2UndKNTNiYzVSdisvUWFaUGYzM0tsb09ySnVzYnVOUnFLa3NTMzJNZk5PVVV0eDlXek81QmVpbUQxaFhHTkxETk9pdUtXS24iLCJtYWMiOiI4YWQ2MWM1MWU4ZmFjZDc0Yzk1OGExYWRmNmMwY2E3ODU5NWUwMDQxZTQwMGRiNzQ3YWE0Y2U3ZGE2ZDQ4ZmJkIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":987,\"memory\":4,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:09:48'),
(35, '95a1a58e-cc60-42a8-bf38-0a68728c9c49', '95a1a58e-ec64-4fc6-a469-5e3e0ad8f3bd', NULL, 1, 'view', '{\"name\":\"topics\",\"path\":\"\\\\resources\\\\views\\/topics.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:09:58'),
(36, '95a1a58e-ebc2-4205-90f4-c4b90b1a637e', '95a1a58e-ec64-4fc6-a469-5e3e0ad8f3bd', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/topics\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlFrNHJicmlIUmtDdmF5cVJzM2syUnc9PSIsInZhbHVlIjoiVzdJa3g1WXFGNERwZmphYXN3ZnA2dEhVZlVyT1MzNlZyZU5GZE50MFRidGdud20zVXZ4SHFTMXdqbm5vNFhiMUpOdzFGSzJvZ0tKQzFLQXpqdkJMRzFRaisrMWw3Vm9vTkpBSlVoOE1lV3NPVDYyWjFVZXNCMDQvRWltSjZVcjkiLCJtYWMiOiI4M2ViOWY0NTU1Nzk3OTI0ODkxN2E5NDdkMTE2ZGUwMWIyNDk5NTcyM2QyNzE3NTRkNGJhNTRiMWE5YmYwN2Y0In0%3D; laravel_session=eyJpdiI6InI2ajRiZXM1bDVEVXdYbk96NFA2alE9PSIsInZhbHVlIjoiRlNXK3hGdnFmMnlJUjBGaDEwbXUwSDJkVnZYcXd5eFVLc1U1MTNydDlodjlxbG11SGYxMThvYkRUWjBBZ21qZ3NmQ1U5eFBKZzAvaTNJK1RFd3YzKzVKTFRtQk9jQlNybDVReXloeVdiVWdFUVFyaUFmamtYL1pkdUdQd2p0cWQiLCJtYWMiOiJhODQ4ZmVkNjQ4ZGQxNjQ5NWVhMTYxZmEyZjFjNGIzODEwZTI0ODdkNjhiNDA2MTU2OWMzZTY1MjgyNzgxZWNiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"UemYMEexqZgeesYzNMdIfM3H5qcqhd87pKSynFGb\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/topics\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\resources\\\\views\\/topics.blade.php\",\"data\":[]},\"duration\":552,\"memory\":4,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:09:58'),
(37, '95a1a640-2ad3-4d11-b900-25bf6c666ac5', '95a1a640-3843-441e-9dbb-1249d46c7245', NULL, 1, 'view', '{\"name\":\"topics\",\"path\":\"\\\\resources\\\\views\\/topics.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:11:54'),
(38, '95a1a640-36dc-4d48-aa0b-8187e00dc3b0', '95a1a640-3843-441e-9dbb-1249d46c7245', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/topics\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlYrL3J2bWgvbHcrRjZaOHlKcTZBK1E9PSIsInZhbHVlIjoiL0I0ZVhVcE5lR24xWE45YjlsYS9aRzhIMjBRS0djeFBEWE81RkYxYzZtWGFkUTl3dkZWTkI1YzJvWmVaSU5qbmdTSklTOWNCeW1ZU2loTzBPbkJmaGZQZVlwRFQrVG51dkhOamE1N3pYT2VWamwyRVBOUFp5N3pUQlJJOUJKZ1IiLCJtYWMiOiI1YmQ2YjhlMGZkMjc5NmI0ZjZiMDExMzRhZTE4N2M3NjQyMWZkZWViOGVhMGE0NDNmYmZjYTJmNzJkNTQ2NjgxIn0%3D; laravel_session=eyJpdiI6IkZXSXp5Ym5CcEJIdTZDQTNkK1NUOFE9PSIsInZhbHVlIjoid2Q2U2JHTWc5YW1JS1oyN1RPeEtiRFhuWXlUcm5JTk84NlNDUWdUQWMwU05VQlBHMzJmNnZydjk3TTNpY1R6MUVRbGJIRjZqdlZ6VUZGekxwbWNmM1B4WVdWWkZwa0t3R0dLcElpL2o5VWNBY3o1SjlZSWpvZXhicTUrNVZYL3ciLCJtYWMiOiI4ZGZkYmUwM2YwMDg2ZjRhMWMzMTc1MjU2NTYyNzI5NTk2MDFiODFiMDhmZDA1MGQ4ODMwMDFmMWYyMDQ3ZGJlIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"UemYMEexqZgeesYzNMdIfM3H5qcqhd87pKSynFGb\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/topics\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\resources\\\\views\\/topics.blade.php\",\"data\":[]},\"duration\":811,\"memory\":8,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:11:54'),
(39, '95a1a648-0d14-4bb4-a575-b606005f875b', '95a1a648-33f2-4931-a5b2-5bc887b168c2', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:00'),
(40, '95a1a648-29b9-4d73-ae24-e193b43f2484', '95a1a648-33f2-4931-a5b2-5bc887b168c2', NULL, 1, 'view', '{\"name\":\"layouts.app\",\"path\":\"\\\\resources\\\\views\\/layouts\\/app.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:00'),
(41, '95a1a648-31f6-428d-9255-f525f1c5d53c', '95a1a648-33f2-4931-a5b2-5bc887b168c2', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@showLoginForm\",\"middleware\":[\"web\",\"guest\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"purpose\":\"prefetch\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InBycGpkMmZvT0h2L0RpUUhGV2daUnc9PSIsInZhbHVlIjoiTGJtbmlOb0dpNmpaTGd0YTdkZWNGL3prMjlUelcxblJMR21adEFHSk9mU2xnalhHSlA2MEJQWEJVbk5Ib0ZHekpuWXJOL0VNeFZnTnpRM1hyczZ6a3ZQVzNFa0ZKWTRxWjl2Uzh3MStaOWIxSU9sY0EwaTV1SmZZQUFTLzJmbmgiLCJtYWMiOiI1MGFiZGFkMDE1NzM3MTBjNTFmOWJlNTZjOWIwN2M4ZTNmNGVjOTA1Zjc4YzdmYTMwYzQwNmU3OWIyODdjNjJiIn0%3D; laravel_session=eyJpdiI6IklRT3pkY1BtbzlDRGNZVzFYc3AwalE9PSIsInZhbHVlIjoiN3hxN0ZOSlFvRmE0V2RaL3dXQUR3MCtBR0hUeVdpSHZWYlIwUUpWZkliL2taL0tJQUFrOWpNWnd1QTZOc293M29ENmp6VGZraEh2RmRDai9jL294T0lVRHorYU9PTkFsWllXS3drenJoeHJ6NU45ZW9zY2s3eUNWeExjWVdiMnciLCJtYWMiOiIyMzYxOTVkOTBkNTAxYjQwYTdkMTQ5YWI3ZjE0ZjZkZGMzY2FiNTRiYWVkZWExMGI4MDQ1Y2MyMzY2MTY4MTkwIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"UemYMEexqZgeesYzNMdIfM3H5qcqhd87pKSynFGb\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/topics\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":857,\"memory\":12,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:00'),
(42, '95a1a64e-d6dc-45d5-950c-14ea1231acac', '95a1a64e-f8f0-4381-a06b-ca003c0cc669', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:04'),
(43, '95a1a64e-edae-4175-93be-dcaba605b6de', '95a1a64e-f8f0-4381-a06b-ca003c0cc669', NULL, 1, 'view', '{\"name\":\"layouts.app\",\"path\":\"\\\\resources\\\\views\\/layouts\\/app.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:04'),
(44, '95a1a64e-f521-4699-8e87-c485425bb60c', '95a1a64e-f8f0-4381-a06b-ca003c0cc669', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@showLoginForm\",\"middleware\":[\"web\",\"guest\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"referer\":\"http:\\/\\/localhost:8000\\/login\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6InBKYTNnZk5EQnpxUVZlc2ptck1IZ0E9PSIsInZhbHVlIjoidVg3UDB1UFBpOXNlc3kzc05IUGlZVnM1elVOT0lXWFVqOElqSE1obXBZdHlaTjkyeUxmNURGYkRBa2FNUGI5Zld1eUlGa2JGM1BxbVpycmdpc2dXM0F1ajJXNmlVczczTVZCekVwcnFGcjFQOUNqSm92RmYyaU5IS2ZzNFNIUUgiLCJtYWMiOiI5YjgzYWI3Zjg1ZDFlOGFhODNmYTRmZTcwMDMwMjhhNDI2ODM5NjJhYWFhOTRiNzM0YzRiYWEzMGUzOWZiNWM1In0%3D; laravel_session=eyJpdiI6ImFvd01RTTVPZTZpcXcrNTBpTTU2aHc9PSIsInZhbHVlIjoianl6anFPYyt4Vk55UkxGUG91QjNnT2lJcUJWT2IxSzBDTzhoL2VyczQxNGlSazdYWE9OM2RWYkZqSmhHYXVSNVBkV20wamtJc0NKS0JIWUdZQVQ3U1VpcUR5QytScTRZcFY4cVhyTlRPODVBdHRoZkI0c2ZVZHZzbklpZldTUDgiLCJtYWMiOiJjOGMzOWIwOWMzMTlhZjdkOGVkMmI4M2ZmYTE3OGNjNGFlMDJkMTFiMGYxMTU1NTVmMzEzMWQwNWUwMTczMDI0In0%3D\"},\"payload\":[],\"session\":{\"_token\":\"UemYMEexqZgeesYzNMdIfM3H5qcqhd87pKSynFGb\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/login\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":1143,\"memory\":18,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:04'),
(45, '95a1a652-f9d0-43e8-81b5-9ae41e4b50f4', '95a1a653-9be2-4dd0-8c8e-dcf8c7c4fc01', NULL, 1, 'view', '{\"name\":\"auth.register\",\"path\":\"\\\\resources\\\\views\\/auth\\/register.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:07'),
(46, '95a1a653-9897-4b8b-8aa7-aea479dd72d6', '95a1a653-9be2-4dd0-8c8e-dcf8c7c4fc01', NULL, 1, 'view', '{\"name\":\"layouts.app\",\"path\":\"\\\\resources\\\\views\\/layouts\\/app.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:07'),
(47, '95a1a653-9ad9-475a-9dea-7b761231aba9', '95a1a653-9be2-4dd0-8c8e-dcf8c7c4fc01', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/register\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\RegisterController@showRegistrationForm\",\"middleware\":[\"web\",\"guest\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"referer\":\"http:\\/\\/localhost:8000\\/login\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IkRiUUNPQk1ubWt4bFNoR3FSZE9ib3c9PSIsInZhbHVlIjoiRWVFNEQvZUxPd2Y3L1NkUU1hYjBVOURJR0dyOTdDTGdvNDNSUURxRkxFemdteko1OHB3dlMrLzBsNUNhMW9mYnRYRGZEc0RsN0tSM1J6Q0lYNzlEVW5ZM0RLVk4rRU94UmpUemVQQXRDejlWaGR2LzB0Y1Y0b3lCVHJ2Y0M4eGwiLCJtYWMiOiI1YzFmNTFiYTMyODU1NjQ3YzZjYWIxODMyNTUxOTA1NTkzZjU5ZjgyNDk5MzYyNzZhMjYyMDg3MjA3MTlhZDBhIn0%3D; laravel_session=eyJpdiI6Im9JWUNhKzdvd2c2blJzZ0tra2ZVUEE9PSIsInZhbHVlIjoiRWRtakN1OTNINVgyK3VLb3lYaTNTSkFZUzJJMCs1R0hyOC9BL2V3NTZNaHJaNkdiSk5VUHFPYmRMV3Q3ekZERHQwMHRtNmVUZEdvUGhGMTIwUDRoUFFhRTA3c1NrOWdVZjdIcTJ4Tk1UbFdYVlRPalU3MzVtQ2xQNGxVVzUzcTUiLCJtYWMiOiJjMTMxYjQyNDc4OTM0NGQyMzU0MjcyODBiMzYxY2JjYThhZTlhOWY2MDhhY2VlOTRjMThlYmM1NTFhYjg1ZjM2In0%3D\"},\"payload\":[],\"session\":{\"_token\":\"UemYMEexqZgeesYzNMdIfM3H5qcqhd87pKSynFGb\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/register\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\resources\\\\views\\/auth\\/register.blade.php\",\"data\":[]},\"duration\":1368,\"memory\":18,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:07'),
(48, '95a1a676-57f3-4a57-9baf-2b943d8f6076', '95a1a677-44b8-4be8-ac07-d8e49889823a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `users` where `email` = \'t@gmail.com\'\",\"time\":\"1.59\",\"slow\":false,\"file\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\app\\\\Http\\\\Middleware\\\\RedirectIfAuthenticated.php\",\"line\":30,\"hash\":\"1895cb63909c7eb8e2529c4143a4c0bf\",\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:30'),
(49, '95a1a677-29d3-4c09-b7ee-c55ccce8880f', '95a1a677-44b8-4be8-ac07-d8e49889823a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `users` (`name`, `email`, `password`, `updated_at`, `created_at`) values (\'Test\', \'t@gmail.com\', \'y$W6HK8ujKFq6bp3vqTflfIOncHemn8Qy8fqtwIKkZF5hFHKwwkdyAu\', \'2022-02-18 20:12:30\', \'2022-02-18 20:12:30\')\",\"time\":\"55.11\",\"slow\":false,\"file\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\app\\\\Http\\\\Controllers\\\\Auth\\\\RegisterController.php\",\"line\":70,\"hash\":\"deb3b16f8b357711b85f0c04a8532ebd\",\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:31'),
(50, '95a1a677-2ac2-4f7e-8502-c2b122fb1e39', '95a1a677-44b8-4be8-ac07-d8e49889823a', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\User:1\",\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:31'),
(51, '95a1a677-4363-4fef-bba9-a070d6968009', '95a1a677-44b8-4be8-ac07-d8e49889823a', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/register\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\RegisterController@register\",\"middleware\":[\"web\",\"guest\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"content-length\":\"126\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/localhost:8000\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"referer\":\"http:\\/\\/localhost:8000\\/register\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Ikk4L0JFeHdBMGdvZFlaTnVLbVkwd2c9PSIsInZhbHVlIjoieHpTak5lL1NzblNHVHFPczRZTFh0WlNtR3lVRTBDa2tnODFLQmJINWxzMCt3TUpQdjdLTGhQcnhmd3lZSmdTOG9CdjVtcE5hc3I1WnBjVWcvVmdwZThiandFbUoydWgyZWJ0dEdZSlRqdEF6clNFbmdQZWI1ei94ckgva2xha0giLCJtYWMiOiI1ZTAyNjQ4NmJmN2FhMDI4ZDkxY2I5NTI0MmUyZTM0YmQ4MjIzNzFiN2ZlNjFkMmVkMjM0MTQxNGRmYWZjOGFhIn0%3D; laravel_session=eyJpdiI6IlpRc2YzOWVoVkhxZDNaVWFlMWY3OUE9PSIsInZhbHVlIjoibU9SYUFWZDUyeFY4K3pkOC82N0hrL09NcDFaRko4STd1MVJrVU1DWXlveWxTZSt4Z2tjL3ZtU2RrZGlxbTBnRzJUT21XaGI0SWkzM2VDbUh1YXhTRkl1T3FnWVdBQ2grNG1YUWFLUVFMQ1I3a1k2b2NaWHQ2blQ0bFlObVJ3bkUiLCJtYWMiOiJiZGNkMjg1MGU4ZDMwOTZlNWJjYzA5NzIzMzk2OTFmN2NkOTU3ZmEwMTYyNzZkMDE1ZWE4ZjAzZWJmNjQ5NzhkIn0%3D\"},\"payload\":{\"_token\":\"UemYMEexqZgeesYzNMdIfM3H5qcqhd87pKSynFGb\",\"name\":\"Test\",\"email\":\"t@gmail.com\",\"password\":\"********\",\"password_confirmation\":\"********\"},\"session\":{\"_token\":\"UemYMEexqZgeesYzNMdIfM3H5qcqhd87pKSynFGb\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/register\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/localhost:8000\\/home\",\"duration\":1709,\"memory\":20,\"hostname\":\"DESKTOP-C8UR0SS\",\"user\":{\"id\":1,\"name\":\"Test\",\"email\":\"t@gmail.com\"}}', '2022-02-18 20:12:31'),
(52, '95a1a678-7afb-44f7-9401-357c62958dd4', '95a1a678-9711-4b36-a154-267276cde80b', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"1.22\",\"slow\":false,\"file\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\public\\\\index.php\",\"line\":52,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:31'),
(53, '95a1a678-7f1e-433d-a189-4f70922f4581', '95a1a678-9711-4b36-a154-267276cde80b', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:12:31'),
(54, '95a1a678-8381-441e-a76b-aa7899fe381b', '95a1a678-9711-4b36-a154-267276cde80b', NULL, 1, 'view', '{\"name\":\"home\",\"path\":\"\\\\resources\\\\views\\/home.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\",\"user\":{\"id\":1,\"name\":\"Test\",\"email\":\"t@gmail.com\"}}', '2022-02-18 20:12:31'),
(55, '95a1a678-93ac-46f0-9cd8-2f226667ac73', '95a1a678-9711-4b36-a154-267276cde80b', NULL, 1, 'view', '{\"name\":\"layouts.app\",\"path\":\"\\\\resources\\\\views\\/layouts\\/app.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\",\"user\":{\"id\":1,\"name\":\"Test\",\"email\":\"t@gmail.com\"}}', '2022-02-18 20:12:31'),
(56, '95a1a678-9658-445c-a379-66cfa3a3e569', '95a1a678-9711-4b36-a154-267276cde80b', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/home\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@index\",\"middleware\":[\"web\",\"auth\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"referer\":\"http:\\/\\/localhost:8000\\/register\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImJTcktZSWxUNXROYWptRmhHTDJjUVE9PSIsInZhbHVlIjoiTGN0OGQ3c3VwVEVQYmNpLzNpeXY0YU0relVmSWJYTnpVa0NzUDdEVlhrd2hRLyt0USttMU55Z2lRYW9tMmM0S2JFOXh4bXNkZzI3Z3BzcThHazFKakRxenRXWTJKbnFiTjNaeW5lUzJkczNhUm11enkxQVRTcnAzY2FhenBLQ1QiLCJtYWMiOiJjYWQyZTFhYjlkNzNiMjljNDk3NTM0MzFlNjI1NmQ4ODViMDdjMzhjZTU1MTY0YmE1NjZiMDMyMjQ2MDUyNmI5In0%3D; laravel_session=eyJpdiI6InUwMi9SL1JWZXphSGZ1S3VPZ2NOcHc9PSIsInZhbHVlIjoicWtNMWgvai9OcTJsN1E5V2MyVXlqQUhVaEhKVE4ybHRuZVNRekZtMFZaY3dFOWQxekZpNHpmeUFGSzBJMndQN3V4V3orU0trU1VQWU5zYlBhK2txcFJ5NXR1Y2ZkNGtzdTRMSk55N2g0NXFueHhCYnUzVkF3a2tzTGhNQnRjUlkiLCJtYWMiOiJlMjczNWYxZjAwMDA5Mzk1Yjk5MDVkMDI0OWFlZGExOTcxNTk5MmIxZDJjZDA3ZTJkNDM5MWE1NjUxNTgwMWRlIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"UemYMEexqZgeesYzNMdIfM3H5qcqhd87pKSynFGb\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/home\"},\"_flash\":{\"old\":[],\"new\":[]},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":200,\"response\":{\"view\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\resources\\\\views\\/home.blade.php\",\"data\":[]},\"duration\":436,\"memory\":12,\"hostname\":\"DESKTOP-C8UR0SS\",\"user\":{\"id\":1,\"name\":\"Test\",\"email\":\"t@gmail.com\"}}', '2022-02-18 20:12:31'),
(57, '95a1a959-ccbc-4ba4-9785-daf38933d44f', '95a1a959-efbc-4122-a9c4-b24a0fd2d917', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"1.30\",\"slow\":false,\"file\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\public\\\\index.php\",\"line\":52,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:20:35'),
(58, '95a1a959-dc8a-479e-ba19-10cac273c21f', '95a1a959-efbc-4122-a9c4-b24a0fd2d917', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:20:35'),
(59, '95a1a959-ef1e-4606-8158-feac7af474f2', '95a1a959-efbc-4122-a9c4-b24a0fd2d917', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/logout\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@logout\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"content-length\":\"47\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/localhost:8000\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"referer\":\"http:\\/\\/localhost:8000\\/home\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlY3dTQ2MXQyeldJNTh2U2VuQlNmeUE9PSIsInZhbHVlIjoiVUZyMVdFY2t3UmJIM1BNbGtnSDh1ZG0rTHlnMERsdkx5YkdoSjNCNjVaN0VKVFk4U1hWQ2Y1b0hBcFJNWDlLbldYNW05TURHdnQ2MmVnVW5ENDJKZUoyOU13eG5SemQ1cy9aTGdOQmFyQmY3L1ZoWHpWcUMyRUdFTld4Mjd3eGwiLCJtYWMiOiIzZDM1ZTA1M2ZiYjI3MmJmNTI0MDllNWIwNWVkNjhkZThmOWMyMWU0ZTgyMGY0NjdmMzRhNTM4NGM0ZThjMGVjIn0%3D; laravel_session=eyJpdiI6ImFhaVlTSXk4UzlaMVpHaGppMEtYM1E9PSIsInZhbHVlIjoiWHdPaXkxc3hkQ2xKS01vT3lxZEdEZXE5VnVjWk0rZ055cGI5WGdzT0o3Y2FrTmdhblMvaWx3ZTVoN21BajhZL0JPUGhpWkMrUy94WW13VmlCanJkSGVjM0FRR1dFVktFRmIvUlY2RnJLbHUxUEpvaFBwWmljSVdvOWJhYlZXa0wiLCJtYWMiOiI2ODNjZDI1YzFkNTNmMDIzOGNlZTc1OWQ3MjhhYmI5ODQ4ZDdlMmRjODZmODkyNzUxNWE3Njk3NjBiY2NhODJhIn0%3D\"},\"payload\":{\"_token\":\"UemYMEexqZgeesYzNMdIfM3H5qcqhd87pKSynFGb\"},\"session\":{\"_token\":\"WSkkLaIbpzE2bwbglOJGKXAAKGLHtzIGcM8iQWJc\",\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/localhost:8000\",\"duration\":634,\"memory\":4,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:20:35'),
(60, '95a1a95a-ad99-4dba-8ee1-1996414f0b38', '95a1a95a-bf48-4cc1-9aa7-7615b5f1160e', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:20:35'),
(61, '95a1a95a-be4a-4f3e-b4e7-de24f917e65d', '95a1a95a-bf48-4cc1-9aa7-7615b5f1160e', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"referer\":\"http:\\/\\/localhost:8000\\/home\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IjNrbEpZbXNRSVlNcWs3dDlnQmJlRFE9PSIsInZhbHVlIjoidmhiT0JMMDRJVE5USFBLNUNVRENuQXBGRnZYbldHWmZzak4veDB4dWxzeDJoU2tKV1JGNnR0UFZJSVVRaWlGeXo2NTNRRERhSW9iU0V3ZTJFYjFtKzYyZmRCTURTYlZaSWdxbjR6dHpHcE1VODBNZDRORzV4ODRoYWlYZW5oQlIiLCJtYWMiOiI2MGMxYjcyNWRkYzRhZTJjYmE5MzQ3NWI0OTMzY2YzMzI3MzMzOTE3MGYzMDBhNzg5OTNjNTRlOTQzNjIzYjkxIn0%3D; laravel_session=eyJpdiI6ImJURTU5dTg2VVpKemtmUTBpWGVtM2c9PSIsInZhbHVlIjoiVktlbHV1MEdJZVJnOTJKRUQ0cElLOGVPRWRhc2o0bVJPSDZyWGVIUHVQdGdwY1ZTaFJCeXFHdkEyZnJaY2JnUEUrZmVhanc4MndiRllrUVBNVnpJUDQzMFVQOXhLcHN2NG1EdzZPRDRGMVVhbkZwYzcrU2RIWnFNeUtnZGp6S0giLCJtYWMiOiIyNWVkZWMwNTQyYTcyMjFlZjg0MWFmNmJiY2Y1OTAxN2YzNDgzZTFkZmUyNzZmMjg4NzVjZmY1NWIwMTkyNTM1In0%3D\"},\"payload\":[],\"session\":{\"_token\":\"WSkkLaIbpzE2bwbglOJGKXAAKGLHtzIGcM8iQWJc\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\"}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":519,\"memory\":2,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:20:35'),
(62, '95a1a970-a613-40ca-b2e6-507f154cc560', '95a1a970-aea3-4b2c-92a8-636c90e2a39e', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:20:50'),
(63, '95a1a970-addc-43ec-b22c-7ca7cc42cd72', '95a1a970-aea3-4b2c-92a8-636c90e2a39e', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlJuRlpDSlUyVmVveE04VVVZSUJnc2c9PSIsInZhbHVlIjoiMTZTWTJaamZ3QjJVVEw3RVJzb3VmZ0pDUDhnOVJ5bWl6aFhQY1pESmZZWGRVUFYrMVQyVkh3OHhSOVhJWkV6dFV4bENTWGVISHdXdUd2MHovaFFFZHg4OEgrdEo2NWpsVndQMkZCU0djY09tbUlIV1N6eTJYZWgybnhYbXl1S2UiLCJtYWMiOiI3NjM2NTEyMzAzNWYzMWY4MGZiZmIxM2JlYWJkNTg0OWY3YzkyZWJmOGM0Njk3MzhkZDllNGYwNjI1NzJjYzI1In0%3D; laravel_session=eyJpdiI6IkxnMi8xOTkxMC9IZWZHQlNZbm1sTnc9PSIsInZhbHVlIjoiRXVmbEVIVnJ5UCt2NlNYUUp5QjVZMHNrcVV6Wk1ZeTNaTmFVTnVQa3JBcXIzVjlXeW1QYnZ6VFQxR2VEbGUyY0NwVjMwMDc2VWI1Vmlwb3YxcjBJMmFkdzJWNXVRT2R4Ti93QUZXSkU2Qkxrd3I1dnFTRDgwVWpRaXJnbnNDelciLCJtYWMiOiJmN2QyZDM2NTZlYzE2MGE1Zjk4MDQ2ODFhMjkyMmExNmMzZGE4YWU2NmE5MDIyYzE3YmFlYmE3ZTA1OWFjMGIxIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"WSkkLaIbpzE2bwbglOJGKXAAKGLHtzIGcM8iQWJc\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\"}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":477,\"memory\":8,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:20:50'),
(64, '95a1aa37-8878-4cac-bcca-57d19e068113', '95a1aa37-b3e6-43bf-a35d-933b43e5d928', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:23:00'),
(65, '95a1aa37-b336-485d-87b6-e5a680b128fa', '95a1aa37-b3e6-43bf-a35d-933b43e5d928', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IjE3N040YUlnWE5mdDNyRzBqa0JiR1E9PSIsInZhbHVlIjoidFJOckFqdTRuN05PNUY1V2RySm5Ja0FmU2h2alZxUHVSZzZ6bERyTEUrckkwa0ZiT2c1OE9lOGUyMFZFODI0aDhKemlYMlB5Mk5sMDVna25UZEZrZDdTNWxpSGFuK05Hb1JRU3NwZnlmL0loZ3FjQWpwc21OVVpNTTBBQlVkRDQiLCJtYWMiOiIyODM2OWVkN2MxMTg1MjFhMjdhYTcyYWVhNGExZWI5OTY3ZTg0Y2JiZjg0N2QxNzk0ZWQ0YWQzNWMxZmNhZDAyIn0%3D; laravel_session=eyJpdiI6IlhGY2oyT0xSWk0xVkNPU1dYUThMMlE9PSIsInZhbHVlIjoiQXhwM0JlSEU4R0REdXRNaGNieEtQbFVqTEMxYUc3cXJSWVl2aUlJY0tobjdFSSt5NEM0b05NZkppOGJQZHI2ZUNTT3hKNUpPYklGNE56N3o0MDZYRUFwVVhzNFRuRUlYbmIrdEhiL0xvVjIxZXBRek1Sdk4zR1RSUnRERmdRUXQiLCJtYWMiOiI3YjkxNzQ2YmNlYjI4YjE0NzhmM2Y1OGU3Njg2YjFlZGFmM2EyNDY5Y2IzYTgzMzQ1MjhjNjNjMzc3MGU1NDQzIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"WSkkLaIbpzE2bwbglOJGKXAAKGLHtzIGcM8iQWJc\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\"}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":616,\"memory\":2,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:23:00'),
(66, '95a1accf-38be-46cb-89b8-09d876d291c3', '95a1accf-81a2-43e4-bca4-1a5ecaa8659a', NULL, 1, 'view', '{\"name\":\"auth.login\",\"path\":\"\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:30:15'),
(67, '95a1accf-75b3-471e-b7b0-6428c406170f', '95a1accf-81a2-43e4-bca4-1a5ecaa8659a', NULL, 1, 'view', '{\"name\":\"layouts.app\",\"path\":\"\\\\resources\\\\views\\/layouts\\/app.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:30:15'),
(68, '95a1accf-7e58-4d30-aead-70ba379251ab', '95a1accf-81a2-43e4-bca4-1a5ecaa8659a', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@showLoginForm\",\"middleware\":[\"web\",\"guest\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"purpose\":\"prefetch\",\"sec-fetch-site\":\"none\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IjJQUXZPWG9UTFU4K3ZuWnhrcHp4UGc9PSIsInZhbHVlIjoiUXd1cjlnNkpEc2UveXJIYWh2MGVmSWU2b1hLcVYxSlNVaHAzZVBJUkFKaHJBQUVqUjJIY2N3YlR1UE1xVitLV0VPbEE2eUtNQ2JNeG1nL1RNWERTd1ZkTnlYNGZYNFl3U245dmt0UDhQQWR6N3hYVWwzejU1U2JpSEtFUUtCelkiLCJtYWMiOiJkMWE1YjJmNmMxZThjZGJhMDU3Y2IyOWM4ZjcxZDk3ZDJiZDA2ODRmYTU2ZmZlODI2NjMzZjNhMmY1ZTdmZGJjIn0%3D; laravel_session=eyJpdiI6IlVFb3h3amw1OGZTanc4aHhLL1piVWc9PSIsInZhbHVlIjoibDhwVzRrWDFLTFBnM2tNNE4ySTVaM01ZZDR1akNDV0NtOExVSDMrT2tSTDFpM0dzOWNUQk53cCt5L3JURmREdklvYW82Y1VFaGlmTmc1bVpaV2xXL0E1a3RDa1FJSGwxNUtYY2JiTWZVajdUMGtBUlJiSjdPZVVrVHIzRDZvQnQiLCJtYWMiOiJjYjRiYTk3YmExYjMwYjIzOGYyMzZkYmE1OTIyNmEwZWRiZGUxOGYzNGIzZGY5ODczYjlmNjgzMjc1YzcxZGQyIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"WSkkLaIbpzE2bwbglOJGKXAAKGLHtzIGcM8iQWJc\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/telescope\\/requests\"}},\"response_status\":200,\"response\":{\"view\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\resources\\\\views\\/auth\\/login.blade.php\",\"data\":[]},\"duration\":1623,\"memory\":14,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:30:15'),
(69, '95a1acec-b535-4c6b-a9dc-3aae98479ceb', '95a1acee-1332-477a-889f-8c9d3a7b3ab8', NULL, 1, 'cache', '{\"type\":\"missed\",\"key\":\"t@gmail.com|127.0.0.1\",\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:30:34'),
(70, '95a1aced-1138-4fbe-af8d-69904b758e79', '95a1acee-1332-477a-889f-8c9d3a7b3ab8', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `email` = \'t@gmail.com\' limit 1\",\"time\":\"12.46\",\"slow\":false,\"file\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\app\\\\Http\\\\Middleware\\\\RedirectIfAuthenticated.php\",\"line\":30,\"hash\":\"747ef04de752900539e8a3a1aee036ac\",\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:30:34'),
(71, '95a1aced-12a7-46d9-9aa2-9c9ce6a0dfb1', '95a1acee-1332-477a-889f-8c9d3a7b3ab8', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:30:34'),
(72, '95a1acee-0bb6-45b2-908c-c537211a4a7a', '95a1acee-1332-477a-889f-8c9d3a7b3ab8', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/login\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Auth\\\\LoginController@login\",\"middleware\":[\"web\",\"guest\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"content-length\":\"85\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/localhost:8000\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"referer\":\"http:\\/\\/localhost:8000\\/login\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Im1XL0ZWbXFmNlU0NlNtaDZZMXFzQ2c9PSIsInZhbHVlIjoiUFA0YXZXOXp1N0cza0dPQ1ExNEZvN1BzVnNtZlg5V2xmdGIyMWtLTW5RV0N5UzU0d0kwS1RqOHU2aTB3YkRneXBRd2RaZGhuZE5XNEp1OXl4VjdKYStTRDFoeUpDSC9uWVRKTTBIU1JHU0JPT0dwWUdiMWRqMHNBemwySWJzNzgiLCJtYWMiOiI5MjRlNDJmMWM4YzIzZDZjNDkxODZmMzFiYzI4OGNjOTEyMWUwMWU0ODFkZWU1MWJkZjM1MDc1NDBjYmRkYzFjIn0%3D; laravel_session=eyJpdiI6ImJla0dxOUFMa0dHcTdRcDR4bTVIaGc9PSIsInZhbHVlIjoiR3A1ZDZYbDZIQ0FCT2lhd1FzK21UaGNnaGdCeEgzTHNOSU1CcWN3SDh2QTRtbGdYQzNNb2k1djAwUHBQRjJvL0Z1L1RIZGdwZkx5WkRNVkEvdWM0U00wWWV2Q0pPcUJtME5HMmxGdDhYalZrSzlvM1ZCWG8yeUtDM29ZTzZRQUgiLCJtYWMiOiI1NWRlYTQyMGNhZDNkZjcyOTU5NWI3ZDE5ZjVlMTg1ZmFiYTY5NzI2M2VjMmU2NWUzYjcyMGRiYTNmMjQ3ZDU1In0%3D\"},\"payload\":{\"_token\":\"WSkkLaIbpzE2bwbglOJGKXAAKGLHtzIGcM8iQWJc\",\"email\":\"t@gmail.com\",\"password\":\"********\"},\"session\":{\"_token\":\"ldpR2uG54YHx96dooW9PcYgEk6nqTXTP90n4rNKm\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/telescope\\/requests\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":302,\"response\":\"Redirected to http:\\/\\/localhost:8000\\/home\",\"duration\":4028,\"memory\":20,\"hostname\":\"DESKTOP-C8UR0SS\",\"user\":{\"id\":1,\"name\":\"Test\",\"email\":\"t@gmail.com\"}}', '2022-02-18 20:30:35'),
(73, '95a1acf0-9e28-4d40-a184-e67c3d326cb4', '95a1acf0-f1ba-4572-bd26-520d4d1a556b', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 1 limit 1\",\"time\":\"2.81\",\"slow\":false,\"file\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\public\\\\index.php\",\"line\":52,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:30:37'),
(74, '95a1acf0-ac97-48e7-96d9-f8d03d8c5f30', '95a1acf0-f1ba-4572-bd26-520d4d1a556b', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"DESKTOP-C8UR0SS\"}', '2022-02-18 20:30:37'),
(75, '95a1acf0-cd7e-454d-b431-1b1782bd402b', '95a1acf0-f1ba-4572-bd26-520d4d1a556b', NULL, 1, 'view', '{\"name\":\"home\",\"path\":\"\\\\resources\\\\views\\/home.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\",\"user\":{\"id\":1,\"name\":\"Test\",\"email\":\"t@gmail.com\"}}', '2022-02-18 20:30:37'),
(76, '95a1acf0-dc8b-4af9-9e20-15660c6f4ff7', '95a1acf0-f1ba-4572-bd26-520d4d1a556b', NULL, 1, 'view', '{\"name\":\"layouts.app\",\"path\":\"\\\\resources\\\\views\\/layouts\\/app.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-C8UR0SS\",\"user\":{\"id\":1,\"name\":\"Test\",\"email\":\"t@gmail.com\"}}', '2022-02-18 20:30:37'),
(77, '95a1acf0-edc9-458c-bf21-77c39c573866', '95a1acf0-f1ba-4572-bd26-520d4d1a556b', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/home\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@index\",\"middleware\":[\"web\",\"auth\"],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/98.0.4758.102 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"98\\\", \\\"Google Chrome\\\";v=\\\"98\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"referer\":\"http:\\/\\/localhost:8000\\/login\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9,es;q=0.8,bn;q=0.7\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImZBWUVBQjZSNUFWOWEvb0pFeTBpUnc9PSIsInZhbHVlIjoielIyeU1JYmxLOUtMT2RzcEtoV2g2b2JKRlp4aHk5MzVrc1BTcDNQSFNJeVhWYU9TTHQ0OHVjYkRLK2pRTkVHeDArNFFCNmV2UGZzVElVRk1Gd0crMkJ2T2t2SGFsU2h6TFlvZ3FVVEo2MHYwNVduRmxqVzNTSkp2dmhUR0Q3OVQiLCJtYWMiOiIyNmM2NWUyNDNhZDkxOTMxMTQ0NTBhNjIwMWU4OTE5YzI0ZTc0MTEzZWJmNDA1NmIzYmIxNDk3ZDU0ODkxMWZmIn0%3D; laravel_session=eyJpdiI6IjRTOEMvRW9ySmQzOVV2OUw3SjF1Y3c9PSIsInZhbHVlIjoidTJkemxjSFErWSsvVU9iamVTZWRGbHpyTkx4eWQyYU9QS2o5bWNPSzlsNmp2R2tUOGdYR3Qxd3FJcVNBM3FtU2pPWExNZUtRTWtZc2QvdHZIWkkyRnNYcHB5R3dzN0puMHM2R2VpRlJHOHlIVlRzZzRhdUpNaGZGbmQ0WVRKb1AiLCJtYWMiOiJjZjQ4MzYyNDBjMTExMDUzNWY0ZjNlODc1YWE4OGQ4MGZiOGNlMGZkZjZhNGQ3OTQwYjVhYTM3ZWYwMjU2ZjcyIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"ldpR2uG54YHx96dooW9PcYgEk6nqTXTP90n4rNKm\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/localhost:8000\\/home\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":1},\"response_status\":200,\"response\":{\"view\":\"F:\\\\new man projects\\\\laravel-telescope\\\\bitfumes-tutorials\\\\resources\\\\views\\/home.blade.php\",\"data\":[]},\"duration\":1779,\"memory\":12,\"hostname\":\"DESKTOP-C8UR0SS\",\"user\":{\"id\":1,\"name\":\"Test\",\"email\":\"t@gmail.com\"}}', '2022-02-18 20:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries_tags`
--

INSERT INTO `telescope_entries_tags` (`entry_uuid`, `tag`) VALUES
('95a1a677-2ac2-4f7e-8502-c2b122fb1e39', 'App\\Models\\User:1'),
('95a1a677-4363-4fef-bba9-a070d6968009', 'Auth:1'),
('95a1a678-7f1e-433d-a189-4f70922f4581', 'App\\Models\\User'),
('95a1a678-8381-441e-a76b-aa7899fe381b', 'Auth:1'),
('95a1a678-93ac-46f0-9cd8-2f226667ac73', 'Auth:1'),
('95a1a678-9658-445c-a379-66cfa3a3e569', 'Auth:1'),
('95a1a959-dc8a-479e-ba19-10cac273c21f', 'App\\Models\\User'),
('95a1aced-12a7-46d9-9aa2-9c9ce6a0dfb1', 'App\\Models\\User'),
('95a1acee-0bb6-45b2-908c-c537211a4a7a', 'Auth:1'),
('95a1acf0-ac97-48e7-96d9-f8d03d8c5f30', 'App\\Models\\User'),
('95a1acf0-cd7e-454d-b431-1b1782bd402b', 'Auth:1'),
('95a1acf0-dc8b-4af9-9e20-15660c6f4ff7', 'Auth:1'),
('95a1acf0-edc9-458c-bf21-77c39c573866', 'Auth:1');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test', 't@gmail.com', NULL, '$2y$10$W6HK8ujKFq6bp3vqTflfIOncHemn8Qy8fqtwIKkZF5hFHKwwkdyAu', NULL, '2022-02-18 14:12:30', '2022-02-18 14:12:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
