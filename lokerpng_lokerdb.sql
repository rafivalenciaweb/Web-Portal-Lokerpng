-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2023 at 04:59 AM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lokerpng_lokerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `branding_sliders`
--

CREATE TABLE `branding_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `unique_id` varchar(191) NOT NULL,
  `father_name` varchar(191) DEFAULT NULL,
  `marital_status_id` int(10) UNSIGNED DEFAULT NULL,
  `nationality` varchar(191) DEFAULT NULL,
  `national_id_card` varchar(191) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `career_level_id` int(10) UNSIGNED DEFAULT NULL,
  `industry_id` int(10) UNSIGNED DEFAULT NULL,
  `functional_area_id` int(10) UNSIGNED DEFAULT NULL,
  `current_salary` double DEFAULT NULL,
  `expected_salary` double DEFAULT NULL,
  `salary_currency` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `immediate_available` tinyint(1) NOT NULL DEFAULT 1,
  `available_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_alert` tinyint(1) NOT NULL DEFAULT 0,
  `last_change` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `user_id`, `unique_id`, `father_name`, `marital_status_id`, `nationality`, `national_id_card`, `experience`, `career_level_id`, `industry_id`, `functional_area_id`, `current_salary`, `expected_salary`, `salary_currency`, `address`, `immediate_available`, `available_at`, `created_at`, `updated_at`, `job_alert`, `last_change`) VALUES
(1, 2, 'cvpY1riFKLQk', 'Ayah Pelamar Kerja', 6, 'Indonesia', 'Indonesia', 1, 4, 3, 13, 1500000, 2000000, '45', 'Jl. Batoro Katong No.134, Ronowijayan, Kertosari, Kec. Babadan, Kabupaten Ponorogo, Jawa Timur', 1, NULL, '2023-05-18 12:23:05', '2023-05-24 18:40:06', 1, NULL),
(2, 5, 'KBvrKCOJrHU7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-05-19 02:12:18', '2023-05-21 06:01:39', 0, 1),
(4, 9, '19D8ONOamu2H', NULL, 6, 'Indonesia', 'Indonesia', 0, 24, 3, 21, 0, 0, '45', 'Jl. Sahang, No. 112, Kec. Ngebel, Kab. Ponorogo', 1, NULL, '2023-06-05 13:23:50', '2023-06-06 06:19:36', 0, NULL),
(5, 10, '7TwTbxX8qzBq', 'Ferdi', 10, 'Indonesia', 'Indonesia', NULL, 29, 2, 20, NULL, NULL, '45', 'Jl. Punto Dewo, No. 56, Kec. Sooko, Kab. Ponorogo', 1, NULL, '2023-06-06 06:15:26', '2023-06-06 06:15:26', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_educations`
--

CREATE TABLE `candidate_educations` (
  `id` int(10) UNSIGNED NOT NULL,
  `candidate_id` int(10) UNSIGNED NOT NULL,
  `degree_level_id` int(10) UNSIGNED NOT NULL,
  `degree_title` varchar(191) NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `institute` varchar(191) NOT NULL,
  `result` varchar(191) NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_experiences`
--

CREATE TABLE `candidate_experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `candidate_id` int(10) UNSIGNED NOT NULL,
  `experience_title` varchar(191) NOT NULL,
  `company` varchar(191) NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `currently_working` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_language`
--

CREATE TABLE `candidate_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_language`
--

INSERT INTO `candidate_language` (`id`, `user_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 2, 10, NULL, NULL),
(2, 10, 10, NULL, NULL),
(3, 9, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_skills`
--

CREATE TABLE `candidate_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_skills`
--

INSERT INTO `candidate_skills` (`id`, `user_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(5, 2, 9, NULL, NULL),
(6, 2, 11, NULL, NULL),
(7, 2, 13, NULL, NULL),
(8, 2, 10, NULL, NULL),
(9, 2, 16, NULL, NULL),
(10, 10, 10, NULL, NULL),
(11, 10, 12, NULL, NULL),
(12, 10, 15, NULL, NULL),
(13, 9, 11, NULL, NULL),
(14, 9, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `career_levels`
--

CREATE TABLE `career_levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `level_name` varchar(170) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `career_levels`
--

INSERT INTO `career_levels` (`id`, `level_name`, `created_at`, `updated_at`, `is_default`) VALUES
(2, 'Intermediate', '2022-12-23 07:37:38', '2022-12-23 07:37:38', 1),
(4, 'Berketerampilan Tinggi', '2022-12-23 07:37:38', '2023-05-15 01:00:40', 1),
(6, 'Pengembangan', '2022-12-23 07:37:38', '2023-05-15 01:00:01', 1),
(8, 'Ahli', '2022-12-23 07:37:38', '2023-05-15 00:59:37', 1),
(17, 'Karyawan', '2023-05-19 03:07:43', '2023-05-19 03:07:43', 0),
(18, 'Pengawas', '2023-05-24 18:41:29', '2023-05-24 18:41:29', 0),
(19, 'Sr. Supervisor', '2023-05-24 18:41:45', '2023-05-24 18:41:45', 0),
(20, 'Manager', '2023-05-24 18:41:58', '2023-05-24 18:41:58', 0),
(21, 'Sr. Manager', '2023-05-24 18:42:13', '2023-05-24 18:42:13', 0),
(22, 'Director', '2023-05-24 18:42:27', '2023-05-24 18:42:27', 0),
(23, 'Sr. Director', '2023-05-24 18:42:42', '2023-05-24 18:42:42', 0),
(24, 'Advanced', '2023-05-24 18:42:54', '2023-05-24 18:42:54', 0),
(25, 'Senior', '2023-05-24 18:43:05', '2023-05-24 18:43:05', 0),
(26, 'Kepala', '2023-05-24 18:43:28', '2023-05-24 18:43:28', 0),
(27, 'Entry', '2023-05-24 18:43:47', '2023-05-24 18:43:47', 0),
(28, 'Wakil Presiden', '2023-05-24 18:44:01', '2023-05-24 18:44:01', 0),
(29, 'Spesialis', '2023-05-24 18:44:12', '2023-05-24 18:44:12', 0),
(30, 'Tidak Tergantung', '2023-06-06 06:54:25', '2023-06-06 06:54:25', 0),
(31, 'Khusus', '2023-06-06 06:54:35', '2023-06-06 06:54:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `created_at`, `updated_at`) VALUES
(48357, 4122, 'Babadan', '2023-05-09 04:36:35', '2023-05-09 04:36:35'),
(48358, 4122, 'Badegan', '2023-05-09 04:36:43', '2023-05-09 04:36:43'),
(48359, 4122, 'Balong', '2023-05-09 04:36:50', '2023-05-09 04:36:50'),
(48360, 4122, 'Bungkal', '2023-05-09 04:36:57', '2023-05-09 04:36:57'),
(48361, 4122, 'Jambon', '2023-05-09 04:37:06', '2023-05-09 04:37:06'),
(48362, 4122, 'Jenangan', '2023-05-09 04:37:19', '2023-05-09 04:37:19'),
(48363, 4122, 'Jetis', '2023-05-09 04:37:27', '2023-05-09 04:37:27'),
(48364, 4122, 'Kauman', '2023-05-09 04:37:34', '2023-05-09 04:37:34'),
(48365, 4122, 'Mlarak', '2023-05-09 04:37:40', '2023-05-09 04:37:40'),
(48366, 4122, 'Ngebel', '2023-05-09 04:37:51', '2023-05-09 04:37:51'),
(48367, 4122, 'Ngrayun', '2023-05-09 04:37:57', '2023-05-09 04:37:57'),
(48368, 4122, 'Ponorogo', '2023-05-09 04:38:05', '2023-05-09 04:38:05'),
(48369, 4122, 'Pudak', '2023-05-09 04:38:11', '2023-05-09 04:38:11'),
(48370, 4122, 'Pulung', '2023-05-09 04:38:16', '2023-05-09 04:38:16'),
(48371, 4122, 'Sambit', '2023-05-09 04:38:23', '2023-05-09 04:38:23'),
(48372, 4122, 'Sampung', '2023-05-09 04:38:29', '2023-05-09 04:38:29'),
(48373, 4122, 'Sawoo', '2023-05-09 04:38:35', '2023-05-09 04:38:35'),
(48374, 4122, 'Siman', '2023-05-09 04:38:41', '2023-05-09 04:38:41'),
(48375, 4122, 'Slahung', '2023-05-09 04:38:46', '2023-05-09 04:38:46'),
(48376, 4122, 'Sooko', '2023-05-09 04:38:52', '2023-05-09 04:38:52'),
(48377, 4122, 'Sukorejo', '2023-05-09 04:38:58', '2023-05-09 04:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `cms_services`
--

CREATE TABLE `cms_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_services`
--

INSERT INTO `cms_services` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'home_title', 'Bergabunglah Dengan Kami & Jelajahi Ribuan Pekerjaan', '2022-12-23 07:37:39', '2023-05-18 11:54:17'),
(2, 'home_description', 'Temukan Pekerjaan, Lowongan & Peluang Karir Disini', '2022-12-23 07:37:39', '2023-05-20 04:30:48'),
(3, 'home_banner', 'https://lokerpng.com/uploads/settings/24/hero-img.png', '2022-12-23 07:37:39', '2023-05-19 04:10:08'),
(4, 'about_title_one', 'Daftar', '2022-12-23 07:37:39', '2023-05-09 02:59:11'),
(5, 'about_description_one', 'Mulailah dengan membuat akun di platform kami yang luar biasa', '2022-12-23 07:37:39', '2023-05-09 02:59:11'),
(6, 'about_image_one', 'front_web/images/register.png', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(7, 'about_title_two', 'Kirim Resume', '2022-12-23 07:37:39', '2023-05-09 02:59:11'),
(8, 'about_description_two', 'Isi formulir kami dan kirimkan resume anda segera', '2022-12-23 07:37:39', '2023-05-18 12:04:11'),
(9, 'about_image_two', 'front_web/images/resume.png', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(10, 'about_title_three', 'Mulai bekerja', '2022-12-23 07:37:39', '2023-05-09 02:59:11'),
(11, 'about_description_three', 'Mulailah karir baru anda dengan bekerja di salah satu perusahaan paling sukses', '2022-12-23 07:37:39', '2023-05-18 12:04:11'),
(12, 'about_image_three', 'front_web/images/working.png', '2022-12-23 07:37:39', '2022-12-23 07:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `ceo` varchar(191) DEFAULT NULL,
  `no_of_offices` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `industry_id` int(10) UNSIGNED DEFAULT NULL,
  `ownership_type_id` int(10) UNSIGNED DEFAULT NULL,
  `company_size_id` int(10) UNSIGNED DEFAULT NULL,
  `established_in` int(11) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `location2` varchar(191) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `fax` varchar(191) DEFAULT NULL,
  `unique_id` varchar(170) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_change` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `ceo`, `no_of_offices`, `user_id`, `industry_id`, `ownership_type_id`, `company_size_id`, `established_in`, `details`, `website`, `location`, `location2`, `is_featured`, `fax`, `unique_id`, `created_at`, `updated_at`, `last_change`) VALUES
(1, 'Mohammad Rivaldo', 11, 3, 5, 6, 7, 2020, '<p>Lebih dari 1 bulan pengalaman dan keterampilan dalam industri pekerjaan, sehingga kami dapat menyediakan pekerjaan dan lowongan.</p><p>Teknologi apa pun yang kami terapkan, kami tidak hanya menyediakan pekerjaan untuk klien kami. Dan itulah alasan kami adalah satu-satunya kumpulan siswa terkemuka di Ponorogo yang memberikan lapangan pekerjaan kepada banyak pengguna. Jangan ragu untuk checkout kontak kami.</p>', NULL, 'Jl. Sultan Agung, No. 74, Nologaten, Kec. Ponorogo', NULL, 0, NULL, '7oB45CEjkx80', '2023-05-18 12:36:55', '2023-06-06 07:28:11', NULL),
(3, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'rweMqARyRB1Z', '2023-05-23 04:51:00', '2023-05-23 04:51:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_sizes`
--

CREATE TABLE `company_sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `size` varchar(170) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_sizes`
--

INSERT INTO `company_sizes` (`id`, `size`, `created_at`, `updated_at`, `is_default`) VALUES
(5, '51-100', '2023-05-24 18:35:18', '2023-05-24 18:35:18', 0),
(6, '21-50', '2023-05-24 18:35:28', '2023-05-24 18:35:28', 0),
(7, '11-20', '2023-05-24 18:35:37', '2023-05-24 18:35:37', 0),
(8, '5-10', '2023-05-24 18:35:47', '2023-05-24 18:35:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `short_code` varchar(191) NOT NULL,
  `phone_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `short_code`, `phone_code`, `created_at`, `updated_at`) VALUES
(102, 'Indonesia', 'ID', '62', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_jobs`
--

CREATE TABLE `email_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `job_url` varchar(191) NOT NULL,
  `friend_name` varchar(191) NOT NULL,
  `friend_email` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_jobs`
--

INSERT INTO `email_jobs` (`id`, `user_id`, `job_id`, `job_url`, `friend_name`, `friend_email`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'https://lokerpng.com/job-details/krkAU4jioVUs', 'Yowan', 'hhhyudha@gmail.com', '2023-06-06 08:30:06', '2023-06-06 08:30:06'),
(2, 2, 3, 'https://lokerpng.com/job-details/krkAU4jioVUs', 'Valen', 'rafiapta050605@gmail.com', '2023-06-06 08:31:38', '2023-06-06 08:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `variables` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `template_name`, `subject`, `body`, `variables`, `created_at`, `updated_at`) VALUES
(1, 'Job Notification', 'New Job Notification', '<strong style=\"text-align: left;\" class=\"text-blue-color\">\n                               Hi {{candidate_name}},\n                            </strong>\n                            <br/><br>\n                            Notification of all Job opportunities updated on {{date}} in <a target=\"_blank\" href=\"{{app_url}}\">{{from_name}}</a>\n                            <br/><br>\n                            {{jobs}}\n                            <strong style=\"display: block; margin-top: 15px;\" class=\"text-blue-color\">Regards, <br/>\n                                {{from_name}}\n                            </strong>', '{{candidate_name}}, {{app_url}}, {{from_name}}', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(2, 'Contact Us', 'Thanks For Contacting', ' <strong style=\"text-align: left;\" class=\"text-blue-color\">\n                                Hello! {{name}},\n                            </strong>\n                            <br/><br>\n                            Thanks for contacting us.\n                            <br/><br>\n                            Quaerat facere dicta<br/><br>\n                            Apart from the email, you can also contact me on my cell : {{phone_no}}<br><br>\n                            <strong style=\"display: block; margin-top: 15px;\" class=\"text-blue-color\">Regards, <br/>\n                                {{from_name}}\n                            </strong>', '{{name}}, {{phone_no}}, {{from_name}}', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(3, 'News Letter', '', '<strong style=\"text-align: left;\" class=\"text-blue-color\">\n                                Hello Dear,\n                            </strong>\n                            <br/><br>\n                            New Notice from {{from_name}}. <br/><br>\n                            {{description}}<br><br>\n                            <strong style=\"display: block; margin-top: 15px;\" class=\"text-blue-color\">Regards, <br/>\n                                {{from_name}}\n                            </strong>', '{{description}}, {{from_name}}', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(4, 'Email Job To Friend', 'Email for Job Details', ' <strong style=\"text-align: left;\" class=\"text-blue-color\">\n                                Hi {{friend_name}},\n                            </strong>\n                            <br/><br>\n                            I have send you the below job link in which you can find the relevant details for the same.\n                            <br/><br>\n                                Link : <a href=\"{{job_url}}\" target=\"_blank\">{{job_url}}</a>\n                            <br><br>\n                            <strong style=\"display: block; margin-top: 15px;\" class=\"text-blue-color\">Regards, <br/>\n                                {{from_name}}\n                            </strong>', '{{friend_name}}, {{job_url}}, {{from_name}}', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(5, 'Job Alert', 'New Job Alert', '<strong style=\"text-align: left;\" class=\"text-blue-color\">\n                               Hi {{job_name}},\n                            </strong>\n                            <br/><br>\n                            <h2>Job Title: {{job_title}}</h2>\n                            <br/><br>\n                            New job posted with {{job_title}}, if you are interested then you can apply for this job.<br><br><br>\n                            <a href=\"{{job_url}}\" target=\"_blank\" style=\"display: table; margin: 0 auto;\">View Job</a>\n                            <br><br>\n                            <strong style=\"display: block; margin-top: 15px;\" class=\"text-blue-color\">Thanks, <br/>\n                                {{from_name}}\n                            </strong>', '{{job_name}},{{job_url}}, {{job_title}}, {{from_name}}', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(6, 'Candidate Job Applied', 'Job Applied by Candidate', '<strong style=\"text-align: left;\" class=\"text-blue-color\">\n                                Hi {{employer_fullName}},\n                            </strong>\n                            <br/><br>\n                            <h2>Someone just applied for job : {{job_title}}</h2>\n                            <br/><br>\n                            My name is {{candidate_name}}<br><br>\n                            I have go through with your job details and thereby i have applied for the same. Please kindly contact me if i found suitable based on your needs.<br><br><br>\n                            <a href=\"{{candidate_details_url}}\" target=\"_blank\" style=\"display: table; margin: 0 auto;\">View Candidate Profile</a>\n                            <br><br>\n                            <strong style=\"display: block; margin-top: 15px;\" class=\"text-blue-color\">Regards, <br/>\n                                {{from_name}}\n                            </strong>', '{{employer_fullName}},{{candidate_name}},{{candidate_details_url}}, {{job_title}}, {{from_name}}', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(7, 'Verify Email', 'Verify Email Address', '<strong style=\"text-align: left;\" class=\"text-blue-color\">\n                                Hello! {{user_name}},\n                            </strong>\n                            <br/><br>\n                            Please click the button below to verify your email address.\n                            <br/><br><br>\n                                <a href=\"{{verify_url}}\" style=\"display: table; margin: 0 auto;\">Verify Email Address</a>\n                            <br><br>\n                            If you did not create an account, no further action is required.<br><br>\n                            <strong style=\"display: block; margin-top: 15px;\" class=\"text-blue-color\">Regards, <br/>\n                                {{from_name}}\n                            </strong>', '{{user_name}},{{verify_url}},{{from_name}}', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(8, 'Password Reset Email', 'Reset Password Notification', '<strong style=\"text-align: left;\" class=\"text-blue-color\">\n                                Hello!,\n                            </strong>\n                            <br/><br>\n                            You are receiving this email because we received a password reset request for your account.\n                            <br/><br><br>\n                            <a href=\"{{reset_url}}\" style=\"display: table; margin: 0 auto;\">Reset Password</a>\n                            <br><br>\n                            This password reset link will expire in 60 minutes.<br><br>\n                            If you did not request a password reset, no further action is required.<br><br>\n                            <strong style=\"display: block; margin-top: 15px;\" class=\"text-blue-color\">Regards, <br/>\n                                {{from_name}}\n                            </strong>\n                            ', '{{reset_url}},{{from_name}}', '2022-12-23 07:37:39', '2022-12-23 07:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) DEFAULT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourite_companies`
--

CREATE TABLE `favourite_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourite_companies`
--

INSERT INTO `favourite_companies` (`id`, `user_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2023-06-06 08:21:11', '2023-06-06 08:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `favourite_jobs`
--

CREATE TABLE `favourite_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourite_jobs`
--

INSERT INTO `favourite_jobs` (`id`, `user_id`, `job_id`, `created_at`, `updated_at`) VALUES
(2, 2, 4, '2023-06-06 08:20:27', '2023-06-06 08:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `featured_records`
--

CREATE TABLE `featured_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `owner_type` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `meta` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `front_settings`
--

CREATE TABLE `front_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_settings`
--

INSERT INTO `front_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'featured_jobs_price', '0', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(2, 'featured_jobs_days', '10', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(3, 'featured_jobs_quota', '10', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(4, 'featured_companies_price', '0', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(5, 'featured_companies_days', '10', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(6, 'featured_companies_quota', '10', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(7, 'featured_jobs_enable', '0', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(8, 'featured_companies_enable', '0', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(9, 'currency', '45', '2022-12-23 07:37:39', '2023-05-09 04:41:49'),
(10, 'latest_jobs_enable', '0', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(11, 'advertise_image', 'https://lokerpng.hostku.xyz/uploads/advertise_image/7/favicon-1.png', '2022-12-23 07:37:39', '2023-05-09 04:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `functional_areas`
--

CREATE TABLE `functional_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(170) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `functional_areas`
--

INSERT INTO `functional_areas` (`id`, `name`, `created_at`, `updated_at`, `is_default`) VALUES
(1, 'SDM', '2022-12-23 07:37:38', '2023-05-15 00:57:11', 1),
(12, 'Pemasaran/Promosi', '2023-05-24 18:36:15', '2023-05-24 18:36:15', 0),
(13, 'Dukungan Layanan Pelanggan', '2023-05-24 18:37:48', '2023-05-24 18:37:48', 0),
(14, 'Penjualan', '2023-05-24 18:37:59', '2023-05-24 18:37:59', 0),
(15, 'Akuntansi dan Keuangan', '2023-05-24 18:38:15', '2023-05-24 18:38:15', 0),
(16, 'Distribusi', '2023-05-24 18:38:28', '2023-05-24 18:38:28', 0),
(17, 'Penelitian dan Pengembangan', '2023-05-24 18:38:44', '2023-05-24 18:38:44', 0),
(18, 'Produksi', '2023-05-24 18:39:12', '2023-05-24 18:39:12', 0),
(19, 'Operasi', '2023-05-24 18:39:24', '2023-05-24 18:39:24', 0),
(20, 'Dukungan TI', '2023-05-24 18:39:35', '2023-05-24 18:39:35', 0),
(21, 'Administrasi/Manajemen', '2023-05-24 18:40:47', '2023-05-24 18:40:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `header_sliders`
--

CREATE TABLE `header_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_sliders`
--

CREATE TABLE `image_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(170) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `name`, `description`, `created_at`, `updated_at`, `is_default`) VALUES
(1, 'Manufaktur', '<p>Manufaktur adalah produksi produk untuk digunakan atau dijual dengan menggunakan tenaga kerja dan mesin</p>', '2022-12-23 07:37:38', '2023-05-15 00:55:16', 1),
(2, 'Periklanan', '<p>Periklanan adalah komunikasi pemasaran yang menggunakan pesan non-pribadi yang disponsori secara terbuka untuk mempromosikan atau menjual produk, layanan, atau ide.</p>', '2022-12-23 07:37:38', '2023-05-15 00:55:32', 1),
(3, 'Teknologi', '<p>Teknologi adalah jumlah dari teknik, keterampilan, metode, dan proses yang digunakan dalam produksi barang atau jasa atau dalam pencapaian tujuan</p>', '2022-12-23 07:37:38', '2023-05-15 00:55:49', 1),
(4, 'Pemasaran', '<p>Pemasaran adalah studi dan pengelolaan hubungan pertukaran.</p>', '2022-12-23 07:37:38', '2023-05-15 00:56:17', 1),
(5, 'Penjualan', '<p>Penjualan adalah kegiatan yang berkaitan dengan penjualan atau jumlah barang atau jasa yang terjual dalam target periode waktu tertentu.</p>', '2022-12-23 07:37:38', '2023-05-15 00:56:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone_no` varchar(191) DEFAULT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `name`, `email`, `phone_no`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Sharon Chan', 'sharonchan.tech@outlook.com', '9058899464', 'Question about your websites', 'Hi\n \nHow are you?\nCan we talk about the important facts of your website design and marketing?\n\nMay I have your phone number & the best time to connect?', '2023-05-19 22:35:05', '2023-05-19 22:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` varchar(191) NOT NULL,
  `job_title` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `salary_from` double NOT NULL,
  `salary_to` double NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `job_category_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `salary_period_id` int(10) UNSIGNED NOT NULL,
  `job_type_id` int(10) UNSIGNED NOT NULL,
  `career_level_id` int(10) UNSIGNED DEFAULT NULL,
  `functional_area_id` int(10) UNSIGNED NOT NULL,
  `job_shift_id` int(10) UNSIGNED DEFAULT NULL,
  `degree_level_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(11) NOT NULL,
  `job_expiry_date` date NOT NULL,
  `no_preference` int(10) UNSIGNED DEFAULT NULL,
  `hide_salary` tinyint(1) NOT NULL,
  `is_freelance` tinyint(1) NOT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_created_by_admin` int(11) NOT NULL DEFAULT 0,
  `last_change` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_id`, `job_title`, `description`, `country_id`, `state_id`, `city_id`, `salary_from`, `salary_to`, `company_id`, `job_category_id`, `currency_id`, `salary_period_id`, `job_type_id`, `career_level_id`, `functional_area_id`, `job_shift_id`, `degree_level_id`, `position`, `job_expiry_date`, `no_preference`, `hide_salary`, `is_freelance`, `is_suspended`, `status`, `created_at`, `updated_at`, `experience`, `is_default`, `is_created_by_admin`, `last_change`) VALUES
(3, 'krkAU4jioVUs', 'Lowongan Pekerjaan Salon Ida', '<p><strong>Lokasi : </strong>Salon Ida﻿</p><p><strong>Kualifikasi</strong> :</p><p>1) Wanita (Belum Menikah),</p><p>2) Lulusan SMK Kecantikan / Berpengalaman dalam Bidang Salon,</p><p>3) Komunikasi Yang Baik,</p><p>4) Jujur dan Bertanggung Jawab,</p><p>5) Bisa Bekerja Sama dengan Tim.</p>', 102, 4122, 48368, 0, 0, 1, 14, 45, 6, 12, 8, 12, 4, 16, 2, '2023-06-24', 0, 1, 0, 0, 1, '2023-05-23 06:21:13', '2023-06-06 08:01:17', 10, 0, 1, NULL),
(4, 'w0VIDWeJO5WY', 'Lowongan Kerja Barista & Waiters Origin Coffee Lab', '<p>Untuk melamar pekerjaan, langsung saja datang ke \'Origin Coffee Lab\'.</p><p>Alamat : Jl. Jend Sudirman, 44, Ponorogo</p><p>Atau hubungi nomor telp/wa : 081331458778</p>', 102, 4122, 48368, 0, 0, 1, 9, 45, 6, 9, 8, 13, 4, 16, 5, '2023-06-24', 2, 1, 0, 0, 1, '2023-06-06 06:27:07', '2023-06-06 07:48:00', 1, 0, 1, NULL),
(5, 'Fm6HmndIuzoT', 'Lowongan Kerja Barista Rindu Alam Coffee', '<p><strong>Lokasi : </strong>&nbsp;Rindu Alam Coffee﻿</p><p><strong>Kualifikasi :</strong></p><p>1) Pria / Wanita maksimal 27 tahun,</p><p>2) Discipline manners, good attitude, dan good vibes people,</p><p>3) Berpenampilan menarik,percaya diri, dan komunikasi yang baik menjadi nilai tambah,</p><p>4) Tertarik dengan dunia kopi dan (FnB), mau belajar dan bertanggung jawab,</p><p>5) Pengalaman menjadi nilai tambah, bagi yang belum mempunyai pengalaman kita terima based on character,</p><p>6) Tidak sedang menempuh pendidikan.</p>', 102, 4122, 48366, 0, 0, 1, 9, 45, 6, 9, 8, 13, 4, 26, 3, '2023-06-24', 2, 1, 0, 0, 1, '2023-06-06 06:34:32', '2023-06-06 08:00:49', 0, 0, 1, NULL),
(6, 'OHqRRe48mGTa', 'Lowongan Kerja Admin Marketing Toko Panorama Stationery', '<p><strong>Lokasi : </strong>Panorama Stationery﻿</p><p><strong>Kualifikasi :</strong></p><p>1) Pria / Wanita max. 27 tahun,</p><p>2) Pendidikan minimal SMA/SMK,</p><p>3) Komunikatif,</p><p>4) Memiliki kemampuan manajerial,</p><p>5) Memiliki kemampuan administrasi.</p>', 102, 4122, 48357, 0, 0, 1, 11, 45, 6, 14, 8, 21, 4, 16, 0, '2023-06-24', 2, 1, 0, 0, 1, '2023-06-06 06:43:15', '2023-06-06 08:00:36', 0, 0, 1, NULL),
(7, 'Vju3Lm0Ee4eh', 'Lowongan Pekerjaan Digital Marketing Baby Genius', '<p><strong>Lokasi : </strong>Baby Genius</p><p><strong>Persyaratan :</strong></p><p>1) Perempuan max. 30 tahun,</p><p>2) Sholat 5 waktu,</p><p>3) Berpenampilan rapi dan good looking,</p><p>4) Pengalaman dibidang digital marketing dan sosial media platform,</p><p>5) Menguasai Ads (FB, IG, Google, Youtube, Shopee, dan Tiktok),</p><p>6) Mampu membuat konten dan editing video,</p><p>7) Menguasai strategi penjualan dan periklanan dalam platform online,</p><p>8) Selalu mempunyai ide-ide kreatif untuk kedepan,</p><p>9) Percaya diri tampil didepan kamera,</p><p>10) Pekerja keras, bertanggung jawab, dapat bekerja di bawah tekanan.</p>', 102, 4122, 48368, 0, 0, 1, 17, 45, 6, 16, 4, 12, 5, 16, 0, '2023-06-23', 0, 1, 0, 0, 1, '2023-06-06 07:07:25', '2023-06-06 08:00:14', 1, 0, 1, NULL),
(8, 'evkZGokuWFBv', 'Lowongan Pekerjaan Desain Grafis Percetakan Gapura Jaya', '<p><strong>Lokasi : </strong>Percetakan Gapura Jaya﻿</p><p><strong>Kualifikasi :</strong></p><p>1) Wanita,</p><p>2) Jujur, disiplin, dan bertanggung jawab,</p><p>3) Mampu mengoperasikan Corel Draw dan Potoshop,</p><p>4) Mampu bekerja dalam satu tim.</p>', 102, 4122, 48357, 0, 0, 1, 18, 45, 6, 17, 4, 13, 4, 26, 0, '2023-06-24', 0, 1, 0, 0, 1, '2023-06-06 07:45:24', '2023-06-06 07:59:57', 0, 0, 1, NULL),
(9, 'w2VClDwj7RMj', 'Lowongan Kerja Administrasi Pajak Bumi Agung', '<p><strong>Lokasi : </strong>Bumi Agung</p><p><strong>Kualifikasi :</strong></p><p>1) Laki-laki / Perempuan,</p><p>2) Pendidikan minimal SMA/SMK,</p><p>3) Usia max. 35 tahun,</p><p>4) Menguasai microsoft excel,</p><p>5) Nilai ijazah SMA bagus / min. IPK 2,7,</p><p>6) Teliti dan cekapan.</p>', 102, 4122, 48368, 0, 0, 1, 13, 45, 6, 14, 17, 21, 4, 16, 0, '2023-06-23', 2, 1, 0, 0, 1, '2023-06-06 07:58:04', '2023-06-06 07:59:45', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_alerts`
--

CREATE TABLE `jobs_alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(10) UNSIGNED NOT NULL,
  `job_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_skill`
--

CREATE TABLE `jobs_skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs_skill`
--

INSERT INTO `jobs_skill` (`id`, `job_id`, `skill_id`) VALUES
(11, 3, 11),
(12, 3, 12),
(13, 3, 15),
(14, 3, 16),
(15, 4, 9),
(16, 4, 11),
(17, 4, 12),
(18, 5, 11),
(19, 5, 12),
(20, 5, 16),
(21, 6, 9),
(22, 6, 10),
(23, 6, 11),
(24, 6, 16),
(25, 7, 10),
(26, 7, 11),
(27, 7, 12),
(28, 7, 17),
(29, 7, 18),
(30, 8, 11),
(31, 8, 12),
(32, 8, 16),
(33, 8, 18),
(34, 9, 11),
(35, 9, 12),
(36, 9, 14),
(37, 9, 16);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_tag`
--

CREATE TABLE `jobs_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs_tag`
--

INSERT INTO `jobs_tag` (`id`, `job_id`, `tag_id`) VALUES
(6, 3, 14),
(7, 3, 10),
(8, 3, 15),
(9, 3, 12),
(10, 3, 13),
(11, 4, 14),
(12, 4, 10),
(13, 4, 15),
(14, 4, 13),
(15, 5, 14),
(16, 5, 10),
(17, 5, 15),
(18, 5, 12),
(19, 5, 13),
(20, 6, 16),
(21, 6, 10),
(22, 6, 12),
(23, 6, 13),
(24, 7, 16),
(25, 7, 14),
(26, 7, 10),
(27, 7, 15),
(28, 7, 12),
(29, 7, 13),
(30, 7, 17),
(31, 8, 16),
(32, 8, 10),
(33, 8, 11),
(34, 8, 13),
(35, 8, 17),
(36, 9, 16),
(37, 9, 14),
(38, 9, 15),
(39, 9, 12),
(40, 9, 13),
(41, 9, 17);

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `candidate_id` int(10) UNSIGNED NOT NULL,
  `resume_id` int(11) NOT NULL,
  `expected_salary` double NOT NULL,
  `notes` text DEFAULT NULL,
  `job_stage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `job_id`, `candidate_id`, `resume_id`, `expected_salary`, `notes`, `job_stage_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 30, 100000000, 'cuaks', NULL, 3, '2023-05-25 02:09:22', '2023-05-25 02:13:40'),
(3, 5, 1, 25, 2000000, 'Bissmillah semoga diterima, aaminnn', 2, 4, '2023-06-06 08:22:07', '2023-06-06 08:52:01'),
(4, 7, 1, 25, 1500000, 'Semoga saya diterima di sini', NULL, 1, '2023-06-07 03:16:47', '2023-06-07 03:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `job_application_schedules`
--

CREATE TABLE `job_application_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_application_id` int(10) UNSIGNED NOT NULL,
  `stage_id` bigint(20) UNSIGNED NOT NULL,
  `time` varchar(191) NOT NULL,
  `date` varchar(191) NOT NULL,
  `notes` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `rejected_slot_notes` text DEFAULT NULL,
  `employer_cancel_slot_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(170) NOT NULL,
  `description` text DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `description`, `is_featured`, `created_at`, `updated_at`, `is_default`) VALUES
(9, 'Pelayanan', '<p>Pelayanan</p>', 0, '2023-05-19 02:29:19', '2023-05-19 02:29:19', 0),
(10, 'Teknik & Industri', '<p>Teknik &amp; Industri</p>', 0, '2023-05-19 02:32:47', '2023-05-19 02:32:47', 0),
(11, 'Teknologi Informasi', '<p>TI</p>', 0, '2023-05-19 02:34:02', '2023-05-19 02:34:02', 0),
(12, 'Kesehatan', '<p>Kesehatan</p>', 0, '2023-05-19 02:34:24', '2023-05-19 02:34:24', 0),
(13, 'Keuangan', '<p>Keuangan</p>', 0, '2023-05-19 02:34:49', '2023-05-19 02:34:49', 0),
(14, 'Kecantikan', '<p>Kecantikan</p>', 0, '2023-05-19 02:34:59', '2023-05-19 02:34:59', 0),
(15, 'Broadcast / Penyiaran', '<p>Broadcast</p>', 0, '2023-05-19 02:35:30', '2023-05-19 02:35:30', 0),
(16, 'Pertanian & Peternakan', '<p>Pertanian &amp; Peternakan</p>', 0, '2023-05-19 02:36:42', '2023-05-19 02:36:42', 0),
(17, 'Marketing', '<p>Marketing</p>', 0, '2023-06-06 06:46:17', '2023-06-06 06:46:17', 0),
(18, 'Komputer / IT', '<p>Komputer / IT</p>', 0, '2023-06-06 07:33:04', '2023-06-06 07:33:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_shifts`
--

CREATE TABLE `job_shifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `shift` varchar(170) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_shifts`
--

INSERT INTO `job_shifts` (`id`, `shift`, `description`, `created_at`, `updated_at`, `is_default`) VALUES
(1, 'Shift Pertama', '<p>Shift Pertama</p>', '2022-12-23 07:37:38', '2023-05-19 02:22:52', 1),
(2, 'Shift Kedua', '<p>Shift Kedua</p>', '2022-12-23 07:37:38', '2023-05-19 02:23:10', 1),
(3, 'Shift Ketiga', '<p>Shift Ketiga</p>', '2022-12-23 07:37:38', '2023-05-19 02:23:27', 1),
(4, 'Shift Tetap', '<p>Shift Tetap</p>', '2022-12-23 07:37:38', '2023-05-19 02:29:39', 1),
(5, 'Shift Bergantian', '<p>Shift Bergantian</p>', '2022-12-23 07:37:38', '2023-05-19 02:24:37', 1),
(6, 'Shift Separuh Hari', '<p>Shift Separuh Hari</p>', '2022-12-23 07:37:38', '2023-05-19 02:29:21', 1),
(7, 'Pergeseran Panggilan', '<p>Pergeseran Panggilan</p>', '2022-12-23 07:37:38', '2023-05-19 02:26:52', 1),
(8, 'Shift hari kerja atau akhir pekan', '<p>Shift hari kerja atau akhir pekan</p>', '2022-12-23 07:37:38', '2023-05-19 02:25:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_stages`
--

CREATE TABLE `job_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_stages`
--

INSERT INTO `job_stages` (`id`, `name`, `description`, `company_id`, `created_at`, `updated_at`) VALUES
(2, 'Tahap 1', '<p>Pengenalan identitas secara lengkap</p>', 1, '2023-06-06 08:50:53', '2023-06-06 08:50:53'),
(3, 'Tahap 2', '<p>Pengenalan lingkungan kerja</p>', 1, '2023-06-06 08:51:36', '2023-06-06 08:51:36'),
(4, 'Tahap 3', '<p>Mulai Bekerja</p>', 1, '2023-06-06 08:51:47', '2023-06-06 08:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(170) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `description`, `created_at`, `updated_at`, `is_default`) VALUES
(9, 'Barista, Waiters, Koki', '<p>Kuliner</p>', '2023-05-19 02:32:38', '2023-05-19 02:41:30', 0),
(10, 'Konsultan, Pengembang, Arsitek', '<p>Konstruksi Bangunan</p>', '2023-05-19 02:36:15', '2023-05-19 02:42:25', 0),
(11, 'Buruh Tani, Perkebunan, Perawat Ternak', '<p>Pertanian &amp; Peternakan</p>', '2023-05-19 02:38:55', '2023-05-19 02:44:34', 0),
(12, 'Barber, Dokter Perawatan Kulit', '<p>Kecantikan</p>', '2023-05-19 02:46:42', '2023-05-19 02:46:56', 0),
(13, 'Teller Bank, Bendahara, Operator Kasir', '<p>Keuangan</p>', '2023-05-19 02:49:00', '2023-05-19 02:49:00', 0),
(14, 'Administrasi', '<p>Administrasi</p>', '2023-06-06 06:35:44', '2023-06-06 06:50:00', 0),
(16, 'Sosial Media Spesialis', '<p>Sosial Media Spesialis</p>', '2023-06-06 06:49:37', '2023-06-06 06:49:37', 0),
(17, 'Desain Grafis', '<p>Desain Grafis</p>', '2023-06-06 07:34:35', '2023-06-06 07:34:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language` varchar(191) NOT NULL,
  `iso_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `iso_code`, `created_at`, `updated_at`, `is_default`) VALUES
(10, 'Indonesia', 'en', '2023-05-13 08:00:35', '2023-05-15 00:44:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `marital_status`
--

CREATE TABLE `marital_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `marital_status` varchar(170) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marital_status`
--

INSERT INTO `marital_status` (`id`, `marital_status`, `description`, `created_at`, `updated_at`, `is_default`) VALUES
(6, 'Menikah', '<p>Menikah</p>', '2023-05-24 18:21:16', '2023-05-24 18:21:16', 0),
(7, 'Janda', '<p>Janda</p>', '2023-05-24 18:21:35', '2023-05-24 18:21:35', 0),
(8, 'Pisah', '<p>Pisah</p>', '2023-05-24 18:21:56', '2023-05-24 18:21:56', 0),
(9, 'Bercerai', '<p>Bercerai</p>', '2023-05-24 18:22:12', '2023-05-24 18:22:12', 0),
(10, 'Single', '<p>Single</p>', '2023-05-24 18:25:56', '2023-05-24 18:25:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `mime_type` varchar(191) DEFAULT NULL,
  `disk` varchar(191) NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` text NOT NULL,
  `custom_properties` text NOT NULL,
  `responsive_images` text NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `conversions_disk` varchar(191) DEFAULT NULL,
  `uuid` char(36) DEFAULT NULL,
  `generated_conversions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`, `conversions_disk`, `uuid`, `generated_conversions`) VALUES
(4, 'App\\Models\\Setting', 21, 'settings', 'lokerpng', 'lokerpng.png', 'image/png', 'public', 101120, '[]', '[]', '[]', 1, '2023-05-09 03:29:03', '2023-05-09 03:29:03', 'public', '47163038-0367-4e57-b604-da9b6c514c92', '[]'),
(6, 'App\\Models\\Setting', 3, 'settings', 'favicon-1', 'favicon-1.png', 'image/png', 'public', 28297, '[]', '[]', '[]', 1, '2023-05-09 03:29:03', '2023-05-09 03:29:03', 'public', 'f7d82b8e-3a8f-4689-9489-6cd055eb5a39', '[]'),
(7, 'App\\Models\\FrontSetting', 11, 'advertise_image', 'favicon-1', 'favicon-1.png', 'image/png', 'public', 28297, '[]', '[]', '[]', 1, '2023-05-09 04:41:49', '2023-05-09 04:41:49', 'public', '86ec4650-c253-4603-8809-ce3027b32954', '[]'),
(8, 'App\\Models\\Setting', 2, 'settings', 'favicon-1', 'favicon-1.png', 'image/png', 'public', 28297, '[]', '[]', '[]', 1, '2023-05-09 06:13:57', '2023-05-09 06:13:57', 'public', '3428ffab-7ec7-4077-830c-962316199493', '[]'),
(9, 'App\\Models\\User', 1, 'profile-pictures', 'favicon-1', 'favicon-1.png', 'image/png', 'public', 28297, '[]', '[]', '[]', 1, '2023-05-09 06:15:02', '2023-05-09 06:15:02', 'public', '54757773-a596-4ddd-a298-d395f5e92d76', '[]'),
(10, 'App\\Models\\JobCategory', 14, 'job_category', 'kecantikan', 'kecantikan.jpg', 'image/jpeg', 'public', 43543, '[]', '[]', '[]', 1, '2023-05-19 02:34:59', '2023-05-19 02:34:59', 'public', '1a74538c-211b-4d3c-a95c-755e630d027c', '[]'),
(11, 'App\\Models\\JobCategory', 15, 'job_category', 'Penyiaran-Broadcasting', 'Penyiaran-Broadcasting.jpg', 'image/jpeg', 'public', 30121, '[]', '[]', '[]', 1, '2023-05-19 02:42:46', '2023-05-19 02:42:46', 'public', '4a2d9870-06fb-458c-884a-1b87c90913ed', '[]'),
(12, 'App\\Models\\JobCategory', 12, 'job_category', 'caring-1', 'caring-1.png', 'image/png', 'public', 1678287, '[]', '[]', '[]', 1, '2023-05-19 02:44:12', '2023-05-19 02:44:12', 'public', 'b85ca4bd-a1ed-4cb3-8ee1-ef9708cf1740', '[]'),
(13, 'App\\Models\\JobCategory', 11, 'job_category', 'programmer-coding-software-development-working-project-it_1423-2974', 'programmer-coding-software-development-working-project-it_1423-2974.jpg', 'image/jpeg', 'public', 87704, '[]', '[]', '[]', 1, '2023-05-19 02:45:16', '2023-05-19 02:45:16', 'public', 'd672e4e9-4d57-4154-b41a-1aba0c5e98ad', '[]'),
(14, 'App\\Models\\JobCategory', 16, 'job_category', 'melon', 'melon.jpg', 'image/jpeg', 'public', 114308, '[]', '[]', '[]', 1, '2023-05-19 02:59:24', '2023-05-19 02:59:24', 'public', '6e719537-1236-40cd-b80f-061870db5c58', '[]'),
(15, 'App\\Models\\JobCategory', 13, 'job_category', 'arus-kas-bisnis-keuangan-investasi-1200x675-1-e1652868857489', 'arus-kas-bisnis-keuangan-investasi-1200x675-1-e1652868857489.jpg', 'image/jpeg', 'public', 46931, '[]', '[]', '[]', 1, '2023-05-19 03:01:11', '2023-05-19 03:01:11', 'public', '4dacefc2-24d4-40d8-b531-79e6f9a26913', '[]'),
(16, 'App\\Models\\JobCategory', 10, 'job_category', 'inilah-skill-terpenting-yang-dimiliki-lulusan-teknik-industri-vng', 'inilah-skill-terpenting-yang-dimiliki-lulusan-teknik-industri-vng.jpg', 'image/jpeg', 'public', 33441, '[]', '[]', '[]', 1, '2023-05-19 03:01:59', '2023-05-19 03:01:59', 'public', 'c6f8e91c-9fa2-4b9f-b9b0-e717df5334bc', '[]'),
(17, 'App\\Models\\JobCategory', 9, 'job_category', 'waitres-pelayan-restoran_20151019_151054', 'waitres-pelayan-restoran_20151019_151054.jpg', 'image/jpeg', 'public', 56574, '[]', '[]', '[]', 1, '2023-05-19 03:04:09', '2023-05-19 03:04:09', 'public', 'c2ce5fb0-dda9-446b-bcf7-af7f35eae8ef', '[]'),
(24, 'App\\Models\\CmsServices', 3, 'settings', 'hero-img', 'hero-img.png', 'image/png', 'public', 35679, '[]', '[]', '[]', 1, '2023-05-19 04:10:08', '2023-05-19 04:10:08', 'public', '56477fa7-dda6-46a9-aef6-63d4d4325bc1', '[]'),
(25, 'App\\Models\\Candidate', 1, 'resumes', 'BIOGRAFI AL Farabi', 'download-1684653295.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'public', 27971, '[]', '{\"is_default\":true,\"title\":\"Resume Saya\"}', '[]', 1, '2023-05-21 07:14:55', '2023-05-21 07:14:55', 'public', 'ca7e9714-85b8-4851-be6c-da7f02c76d1c', '[]'),
(26, 'App\\Models\\User', 6, 'profile-pictures', 'LOGO 2', 'LOGO-2.jpg', 'image/jpeg', 'public', 23298, '[]', '[]', '[]', 1, '2023-05-21 14:54:18', '2023-05-21 14:54:18', 'public', '9c19eb48-8460-49d3-869a-a166188f12a6', '[]'),
(30, 'App\\Models\\Candidate', 2, 'resumes', 'Resume', 'download-1684817370.pdf', 'application/pdf', 'public', 6466, '[]', '{\"is_default\":false,\"title\":\"Resume Rizal\"}', '[]', 1, '2023-05-23 04:49:30', '2023-05-23 04:49:30', 'public', '1b932374-006f-4874-972d-e0d5dd2a80b6', '[]'),
(31, 'App\\Models\\User', 2, 'profile-pictures', 'LOGO 2', 'LOGO-2.jpg', 'image/jpeg', 'public', 23298, '[]', '[]', '[]', 1, '2023-05-24 05:30:56', '2023-05-24 05:30:56', 'public', '9859d3bc-b4a3-464d-8f45-b8765452f9dc', '[]'),
(32, 'App\\Models\\Testimonial', 1, 'testimonials', 'LOGO 2', 'LOGO-2.jpg', 'image/jpeg', 'public', 23298, '[]', '[]', '[]', 1, '2023-05-24 23:46:31', '2023-05-24 23:46:31', 'public', '98b81096-f6e5-4924-8582-334c948fe385', '[]'),
(37, 'App\\Models\\JobCategory', 17, 'job_category', 'dgl', 'dgl.jpg', 'image/jpeg', 'public', 115803, '[]', '[]', '[]', 1, '2023-06-06 06:47:25', '2023-06-06 06:47:25', 'public', 'c5ea7fa6-44b4-4855-a428-d7b4bdefa135', '[]'),
(38, 'App\\Models\\Testimonial', 2, 'testimonials', 'orang_vidcall-removebg-preview', 'orang_vidcall-removebg-preview.png', 'image/png', 'public', 34080, '[]', '[]', '[]', 1, '2023-06-06 06:59:15', '2023-06-06 06:59:15', 'public', 'a2ecec8a-0c6a-41f6-9817-1debedb7c5a6', '[]'),
(39, 'App\\Models\\User', 3, 'profile-pictures', 'tim', 'tim.png', 'image/png', 'public', 24829, '[]', '[]', '[]', 1, '2023-06-06 07:20:13', '2023-06-06 07:20:13', 'public', '63d75f0e-7994-42a8-939b-34de327fbcb3', '[]'),
(40, 'App\\Models\\JobCategory', 18, 'job_category', 'cmptr', 'cmptr.jpg', 'image/jpeg', 'public', 82993, '[]', '[]', '[]', 1, '2023-06-06 07:33:04', '2023-06-06 07:33:04', 'public', '614bcc8c-be1f-479b-8490-15e99dbb8210', '[]'),
(41, 'App\\Models\\Post', 12, 'posts', 'karyawan terbaik', 'karyawan-terbaik.jpg', 'image/jpeg', 'public', 139296, '[]', '[]', '[]', 1, '2023-06-06 18:37:42', '2023-06-06 18:37:42', 'public', '9c4037b5-6a27-4c17-89fc-e21f791f59c6', '[]'),
(42, 'App\\Models\\Post', 9, 'posts', 'tkno info', 'tkno-info.jpg', 'image/jpeg', 'public', 35766, '[]', '[]', '[]', 1, '2023-06-06 18:43:01', '2023-06-06 18:43:01', 'public', '75919a7a-b61b-4b4e-a746-cb6ea9fd5072', '[]'),
(43, 'App\\Models\\Post', 11, 'posts', 'training', 'training.jpg', 'image/jpeg', 'public', 53961, '[]', '[]', '[]', 1, '2023-06-06 21:49:14', '2023-06-06 21:49:14', 'public', '7f950ee6-3968-439d-80b8-dc6c8314a27f', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_10_045631_create_countries_table', 1),
(2, '2014_10_12_045650_create_states_table', 1),
(3, '2014_10_12_045711_create_cities_table', 1),
(4, '2014_10_12_045722_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_06_19_071110_create_media_table', 1),
(8, '2020_06_19_071420_create_permission_tables', 1),
(9, '2020_06_19_102134_create_job_categories_table', 1),
(10, '2020_06_20_082711_create_settings_table', 1),
(11, '2020_06_20_121439_create_company_sizes_table', 1),
(12, '2020_06_20_134118_create_industries_table', 1),
(13, '2020_06_22_094719_create_owner_ship_types_table', 1),
(14, '2020_06_22_115654_create_job_tags_table', 1),
(15, '2020_06_22_123442_create_companies_table', 1),
(16, '2020_06_22_124347_create_job_types_table', 1),
(17, '2020_06_23_095255_create_salary_periods_table', 1),
(18, '2020_06_23_105948_create_job_shifts_table', 1),
(19, '2020_06_23_125514_create_marital_status_table', 1),
(20, '2020_06_30_123008_create_required_degree_levels_table', 1),
(21, '2020_07_03_091217_create_languages_table', 1),
(22, '2020_07_04_072608_create_functional_areas_table', 1),
(23, '2020_07_07_050739_create_career_levels_table', 1),
(24, '2020_07_07_064147_create_salary_currencies_table', 1),
(25, '2020_07_10_052359_create_skills_table', 1),
(26, '2020_07_11_102026_create_jobs_table', 1),
(27, '2020_07_11_130415_create_jobs_skill_table', 1),
(28, '2020_07_13_113119_add_suspended_and_is_featured_column_into_jobs_table', 1),
(29, '2020_07_20_054803_create_candidates_table', 1),
(30, '2020_07_22_093729_create_testimonials_table', 1),
(31, '2020_07_22_094459_create_favourite_jobs_table', 1),
(32, '2020_07_22_122321_create_reported_jobs_table', 1),
(33, '2020_07_22_133224_create_job_applications_table', 1),
(34, '2020_07_23_111237_create_candidate_experiences_table', 1),
(35, '2020_07_23_111414_create_email_jobs_table', 1),
(36, '2020_07_24_072123_create_favourite_companies_table', 1),
(37, '2020_07_24_094449_create_reported_to_companies_table', 1),
(38, '2020_07_24_112818_create_candidate_educations_table', 1),
(39, '2020_07_29_115041_create_candidate_language_table', 1),
(40, '2020_07_30_053934_create_news_letters_table', 1),
(41, '2020_07_30_081848_create_noticeboards_table', 1),
(42, '2020_07_30_084222_create_candidate_skills_table', 1),
(43, '2020_07_30_093609_create_faqs_table', 1),
(44, '2020_07_31_040917_create_inquiries_table', 1),
(45, '2020_07_31_050755_create_post_categories_table', 1),
(46, '2020_07_31_061741_create_posts_table', 1),
(47, '2020_07_31_064138_create_post_assigned_categories_table', 1),
(48, '2020_08_14_115324_remove_social_links_from_companies', 1),
(49, '2020_08_14_120001_add_social_links_to_users', 1),
(50, '2020_08_20_050324_create_reported_to_candidates_table', 1),
(51, '2020_08_20_061202_changes_on_columns_to_jobs', 1),
(52, '2020_08_22_044709_rename_job_tags_to_tags', 1),
(53, '2020_08_22_045051_create_jobs_tag_table', 1),
(54, '2020_08_22_055108_add_experience_column_to_jobs', 1),
(55, '2020_08_22_091337_add_default_flag_into_tables', 1),
(56, '2020_09_28_121913_create_plans_table', 1),
(57, '2020_09_28_121914_create_subscriptions_table', 1),
(58, '2020_09_28_122226_create_transactions_table', 1),
(59, '2020_09_29_122228_create_subscription_items_table', 1),
(60, '2020_09_30_123653_add_stripe_id_in_users_table', 1),
(61, '2020_10_01_101638_create_featured_records_table', 1),
(62, '2020_10_01_103316_create_social_accounts_table', 1),
(63, '2020_10_01_105745_create_front_settings_table', 1),
(64, '2020_10_05_130353_add_soft_deletes_to_plans_table', 1),
(65, '2020_10_06_073926_changes_on_columns_in_transactions_table', 1),
(66, '2020_10_10_053314_drop_featured_column_from_companies_and_jobs', 1),
(67, '2020_10_12_050703_nullable_stripe_id_to_featured_records_table', 1),
(68, '2020_10_16_122711_add_job_alert_field_to_candidates_table', 1),
(69, '2020_10_16_123513_create_jobs_alerts_table', 1),
(70, '2020_10_27_121154_add_region_code_to_users', 1),
(71, '2020_11_06_111241_create_image_slider_table', 1),
(72, '2020_11_23_100925_create_notifications_table', 1),
(73, '2020_11_24_113854_add_icon_in_salary_currencies_table', 1),
(74, '2020_11_28_091936_create_notification_settings_table', 1),
(75, '2020_12_11_052318_add_type_in_notification_settings_table', 1),
(76, '2020_12_16_042032_create_header_sliders_table', 1),
(77, '2020_12_18_133145_add_paypal_payment_id_into_subscriptions_table', 1),
(78, '2020_12_19_042028_create_branding_sliders_table', 1),
(79, '2020_12_26_044333_add_available_at_in_candidates_table', 1),
(80, '2021_02_09_091223_remove_provider_unique_rule_from_social_accounts', 1),
(81, '2021_04_12_103529_add_salary_currency_id_into_plans_table', 1),
(82, '2021_04_13_070142_add_currecy_code_to_salary_currencies_table', 1),
(83, '2021_06_04_051824_create_email_templates_table', 1),
(84, '2021_06_29_000000_add_uuid_to_failed_jobs_table', 1),
(85, '2021_07_08_085344_create_post_comments_table', 1),
(86, '2021_07_08_121050_add_column_is_created_by_admin_in_jobs_table', 1),
(87, '2021_07_10_070048_create_job_stages_table', 1),
(88, '2021_07_10_104206_add_job_stage_in_job_applications', 1),
(89, '2021_07_10_114138_create_job_application_schedules_table', 1),
(90, '2021_07_1_103036_add_conversions_disk_column_in_media_table', 1),
(91, '2021_08_13_060723_create_location2_in_companies_table', 1),
(92, '2021_11_23_101602_create_cms_services_table', 1),
(93, '2022_03_02_104056_add_theme_mode_to_users_table', 1),
(94, '2022_08_27_041123_add_payment_status_field_to_transactions_table', 1),
(95, '2022_08_29_090208_add_is_approved_to_transactions_table', 1),
(96, '2022_09_23_053617_add_approved_id_to_transactions_table', 1),
(97, '2022_09_23_063254_add_last_change_to_jobs_table', 1),
(98, '2022_09_23_072320_add_last_change_to_companies_table', 1),
(99, '2022_09_23_075427_add_last_change_to_candidates_table', 1),
(100, '2022_10_07_050613_add_plan_currency_id_to_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10);

-- --------------------------------------------------------

--
-- Table structure for table `news_letters`
--

CREATE TABLE `news_letters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(170) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_letters`
--

INSERT INTO `news_letters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'pelamarkerja@lokerpng.com', '2023-05-23 19:54:36', '2023-05-23 19:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards`
--

CREATE TABLE `noticeboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `notification_for` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `text` text DEFAULT NULL,
  `meta` text DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notification_for`, `user_id`, `title`, `text`, `meta`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 7, 3, 1, 'New Employer Registered', NULL, NULL, '2023-05-21 00:50:00', '2023-05-18 12:36:55', '2023-05-21 00:50:00'),
(2, 7, 3, 1, 'New Employer Registered', NULL, NULL, '2023-05-19 02:08:35', '2023-05-19 02:05:29', '2023-05-19 02:08:35'),
(3, 8, 3, 1, 'New Candidate Registered', NULL, NULL, '2023-05-21 00:50:00', '2023-05-19 02:12:18', '2023-05-21 00:50:00'),
(4, 11, 2, 3, 'Pelamar Kerja started following Lowongan Pekerjaan Salon Ida.', NULL, NULL, '2023-05-24 04:15:33', '2023-05-21 07:11:02', '2023-05-24 04:15:33'),
(6, 7, 3, 1, 'New Employer Registered', NULL, NULL, NULL, '2023-05-23 04:51:00', '2023-05-23 04:51:00'),
(7, 1, 2, 3, 'Job Application submitted for Lowongan Pekerjaan Salon Ida', NULL, NULL, NULL, '2023-05-25 02:09:22', '2023-05-25 02:09:22'),
(8, 6, 1, 5, 'Your application is Shortlisted for Lowongan Pekerjaan Salon Ida', NULL, NULL, '2023-05-25 02:13:36', '2023-05-25 02:12:26', '2023-05-25 02:13:36'),
(9, 4, 1, 5, 'You are selected for Lowongan Pekerjaan Salon Ida', NULL, NULL, NULL, '2023-05-25 02:13:40', '2023-05-25 02:13:40'),
(10, 8, 3, 1, 'New Candidate Registered', NULL, NULL, NULL, '2023-05-29 02:42:52', '2023-05-29 02:42:52'),
(11, 8, 3, 1, 'New Candidate Registered', NULL, NULL, NULL, '2023-06-05 13:23:50', '2023-06-05 13:23:50'),
(12, 11, 2, 3, 'Pelamar Kerja started following Lowongan Kerja Barista & Waiters Origin Coffee Lab.', NULL, NULL, NULL, '2023-06-06 08:20:27', '2023-06-06 08:20:27'),
(13, 10, 2, 3, 'Pelamar Kerja started following You.', NULL, NULL, NULL, '2023-06-06 08:21:11', '2023-06-06 08:21:11'),
(14, 1, 2, 3, 'Job Application submitted for Lowongan Kerja Barista Rindu Alam Coffee', NULL, NULL, NULL, '2023-06-06 08:22:07', '2023-06-06 08:22:07'),
(15, 6, 1, 2, 'Your application is Shortlisted for Lowongan Kerja Barista Rindu Alam Coffee', NULL, NULL, '2023-06-06 08:54:32', '2023-06-06 08:45:53', '2023-06-06 08:54:32'),
(16, 1, 2, 3, 'Job Application submitted for Lowongan Pekerjaan Digital Marketing Baby Genius', NULL, NULL, NULL, '2023-06-07 03:16:47', '2023-06-07 03:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `key`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'JOB_APPLICATION_SUBMITTED', 'employer', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(2, 'MARK_JOB_FEATURED', 'employer', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(3, 'MARK_COMPANY_FEATURED', 'employer', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(4, 'CANDIDATE_SELECTED_FOR_JOB', 'candidate', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(5, 'CANDIDATE_REJECTED_FOR_JOB', 'candidate', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(6, 'CANDIDATE_SHORTLISTED_FOR_JOB', 'candidate', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(7, 'NEW_EMPLOYER_REGISTERED', 'admin', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(8, 'NEW_CANDIDATE_REGISTERED', 'admin', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(9, 'EMPLOYER_PURCHASE_PLAN', 'admin', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(10, 'FOLLOW_COMPANY', 'employer', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(11, 'FOLLOW_JOB', 'employer', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(12, 'JOB_ALERT', 'candidate', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(13, 'MARK_COMPANY_FEATURED_ADMIN', 'admin', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(14, 'MARK_JOB_FEATURED_ADMIN', 'admin', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `ownership_types`
--

CREATE TABLE `ownership_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(170) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ownership_types`
--

INSERT INTO `ownership_types` (`id`, `name`, `description`, `created_at`, `updated_at`, `is_default`) VALUES
(6, 'Kepemilikan Tunggal', '<p>Kepemilikan tunggal adalah bentuk bisnis paling sederhana di mana seseorang dapat mengoperasikan bisnis.</p><p><br></p>', '2023-05-24 18:46:46', '2023-05-24 18:46:46', 0),
(7, 'Publik', '<p>Perusahaan yang sahamnya diperdagangkan secara bebas di bursa saham.</p>', '2023-05-24 18:47:01', '2023-05-24 18:47:01', 0),
(8, 'Privat', '<p>Perusahaan yang sahamnya tidak boleh ditawarkan kepada publik untuk dijual dan yang beroperasi di bawah persyaratan hukum yang tidak seketat persyaratan perusahaan publik.</p>', '2023-05-24 18:47:18', '2023-05-24 18:47:18', 0),
(9, 'Pemerintah', '<p>Perusahaan pemerintah adalah perusahaan yang 51% atau lebih modal disetornya dimiliki oleh Pemerintah atau Pemerintah Negara Bagian.</p>', '2023-05-24 18:47:36', '2023-05-24 18:47:36', 0),
(10, 'NGO', '<p>Organisasi nirlaba yang beroperasi secara independen dari pemerintah mana pun, biasanya organisasi yang tujuannya menangani masalah sosial atau politik.</p>', '2023-05-24 18:47:52', '2023-05-24 18:47:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('pelamarkerja@lokerpng.com', '$2y$10$1/llANcWCoG27ZVqYwoOW.Cs2VtNh4ln/kQ9NEmvE0bH877t0Yfee', '2023-05-23 21:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `stripe_plan_id` varchar(191) DEFAULT NULL,
  `allowed_jobs` int(11) NOT NULL,
  `amount` double NOT NULL,
  `salary_currency_id` int(10) UNSIGNED NOT NULL,
  `is_trial_plan` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `stripe_plan_id`, `allowed_jobs`, `amount`, `salary_currency_id`, `is_trial_plan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Trial Plan', NULL, 1, 5000, 45, 1, '2022-12-23 07:37:38', '2023-05-19 11:24:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `created_by`, `created_at`, `updated_at`, `is_default`) VALUES
(7, 'Manfaat Memiliki Pengalaman Saat Melamar Pekerjaan', '<p>Memiliki pengalaman bekerja dapat menjadi keuntungan bagi kita saat melamar ke suatu perusahaan. Pengalaman kerja pun merupakan salah satu poin penting yang diperhitungkan oleh perusahaan saat mencari karyawan. Seorang pelamar yang memiliki pengalaman kerja biasanya akan lebih diutamakan.</p><p><br></p><p>Pengalaman kerja memberikan kita kesempatan untuk belajar memegang tanggung jawab dan mencoba tantangan dalam pekerjaan.</p><p>1. Diutamakan</p><p>Alasan pertama pentingnya kita memiliki pengalaman kerja adalah lebih diutamakan dalam proses rekrutmen. Data yang dikeluarkan oleh Highfliers, menunjukan bahwa perusahaan akan lebih mengutamakan seseorang yang memiliki pengalaman kerja untuk bergabung. Mereka akan lebih mudah beradaptasi dalam lingkungan pekerjaan karena sudah memiliki pengalaman.</p><p>2. Bukti nyata</p><p>Alasan kedua pentingnya pengalaman kerja adalah bukti nyata yang bisa kita tunjukan kepada peruasahaan mengenai kemampuan kita. Biasanya karyawan yang memiliki pengalaman kerja dinilai lebih mampu mengerjakan pekerjaan dengan lebih cepat dan lebih baik. Memasuki bidang yang sama dengan pekerjaan sebelumnya pun akan menunjukan kepada perusahaan tentang minat kita dalam bidang tersebut. Selain itu kita dapat menuliskan pengalaman bekerja di resume kerja kita.</p><p>3. Menemukan bakat</p><p>Dengan mencoba bekerja di berbagai tempat, kita akan menemukan bakat kita yang sebenarnya. Dengan mencoba pekerjaan langsung, kita akan lebih mudah mengetahui, apakah kita cocok dan senang dengan bidang tersebut atau tidak. Kita pun akan mudah mengetahui kekurangan dan kelebihan dalam diri kita. Sehingga akan lebih mudah untuk memperbaiki diri dan menemukan karir yang tepat.</p><p>4. Memperkenalkan dunia kerja</p><p>Pengalaman kerja akan memperkenalkan kita ke dunia kerja yang sebenarnya. Kita dapat mempelajari apa yang harus dilakukan, dan apa yang tidak boleh dilakukan di tempat kerja. Selain itu kita akan mendapatkan pengetahuan di tempat kerja dan belajar untuk beradaptasi dengan budaya kerja yang akan kita hadapi.</p><p><br></p><p>Pengalaman kerja dapat kita dapatkan walaupun kita masih menjadi mahasiswa. Dengan mengikuti magang di perusahaan salah satunya. Kita pun dapat mengambil kesempatan-kesempatan yang ditawarkan saat kuliah untuk berkunjung ke perusahaan atau melakukan penelitian di perusahaan tertentu. Dengan begitu, saat lulus nanti, kita sudah memiliki pengalaman kerja yang memudahkan kita melamar ke perusahaan yang kita impikan.&nbsp;</p>', 1, '2023-05-19 03:56:02', '2023-06-06 18:50:59', 0),
(9, 'Pelajari Tentang Teknologi Informasi', '<p class=\\\\\\ql-align-justify\\\\\\><strong>Pengertian Teknologi Informasi</strong></p><p class=\\\\\\ql-align-justify\\\\\\>Secara umum pengertian teknologi Informasi adalah suatu studi perancangan, implementasi, pengembangan, dukungan atau manajemen sistem informasi berbasis komputer, khususnya perangkat keras (hardware) dan perangkat lunak (software). Menurut ITTA (Information Technology Association of America), Pengertian Teknologi Informasi adalah suatu studi, perancangan, implementasi, pengembangan, dukungan atau manajemen sistem informasi berbasis komputer, terkhususnya pada aplikasi perangkat keras dan perangkat lunak komputer. Teknologi informasi memanfaatkan komputer elektronik dan perangkat lunak komputer untuk mengubah, menyimpan, memproses, melindungi, mentransmisikan dan memperoleh informasi secara aman.</p><p class=\\\\\\ql-align-justify\\\\\\>Teknologi informasi tidak hanya penting sebagai alat komunikasi (baca: Pengertian Komunikasi) via elektronik saja, melainkan merupakan perangkat penting yang seharusnya dimiliki dalam bisnis sebagai sarana untuk berkoordinasi dan pengarsipan dokumen-dokumen penting. Teknologi Informasi diterapkan guna untuk pengelolaan informasi yang pada saat ini menjadi salah satu bagian penting karena meningkatnya kompleksitas dari tugas manajemen, pengaruh ekonomi internasional (globalisasi), perlunya waktu tanggap (response time) yang lebih cepat, tekanan akibat dari persaingan bisnis.</p><p><br></p><p><strong>Fungsi Teknologi Informasi</strong></p><p class=\\\\\\ql-align-justify\\\\\\>Tentunya adanya teknologi informasi memiliki fungsi penting. Tidak mungkin bahwa dengan adanya teknologi informasi tidak berpengaruh penting dalam kehidupan. Setidaknya terdapat enam fungsi teknologi informasi yaitu Menangkap (Capture), Menyimpan (Storage), Mengolah (Processing), Transmisi (Transmission), Mencari Kembali (Retrieval), Menghasilkan (Generating). Berikut ini terdapat penjabaran dari keenam fungsi teknologi informasi adalah :</p><p><strong>Menangkap (Capture)</strong></p><p>Menangkap disini dapat diartikan sebagai menginput. Misalnya, menerima inputan dari mic, keyboard, scanner, dan lain sebagainya. Fitur Capturing mungkin juga sudah tidak asing ketika Anda memakainya untuk menyimpan informasi tertentu.</p><p><br></p><p><strong>Fungsi Teknologi Informasi sebagai Pengolah (Processing)</strong></p><p>Fungsi teknologi informasi ini mengkompilasikan catatan rinci aktivitas, misalnya menerima input dari keyboard, scanner, mic dan sebagainya. Dengan adanya Processing Anda akan lebih mudah mengolah file maupun data Anda.</p><p><br></p><p><strong>Mengolah atau memproses data masukan yang diterima untuk menjadi informasi.</strong></p><p>Pengolahan atau pemrosesan data dapat berupa konversi (pengubahan data ke bentuk lain), analisis (analisis kondisi), perhitungan (kalkulasi), sintesis (penggabungan) segala bentuk data dan informasi. Dengan Adanya Fungsi ini pasti akan lebih memudahkan User</p><p><br></p><p><strong>Fungsi Teknologi Informasi sebagai Menghasilkan (Generating)</strong></p><p>Fungsi generating adalah dimana teknologi berperan sebagai alat untuk mengorganisasikan suatu informasi ke dalam sebuah bentuk yang lebih terarah dan mudah dipahami. Contoh sederhananya adalah grafik dan table.</p><p><br></p><p><strong>Fungsi Teknologi Informasi sebagai Penyimpan (storage)</strong></p><p>Fungsi teknologi informasi ini merekam atau menyimpan data dan informasi dalam suatu media yang dapat digunakan untuk keperluan lainnya. Misalnya saja disimpan ke harddisk, tape, disket, CD (compact disc) dan sebagainya.</p><p><br></p><p><strong>Fungsi Teknologi Informasi sebagai Pencari Kembali (Retrieval)</strong></p><p>Fungsi teknologi informasi ini menelusuri, mendapatkan kembali informasi atau menyalin data dan informasi yang sudah tersimpan, misalnya mencari supplier yang sudah lunas dan sebagainya. Adakalanya data yang tersimpan sulit untuk ditemukan karena terlalu penuh dengan adanya fungsi ini dapat memudahkan user serta menghemat waktu juga.</p><p><br></p><p><strong>Fungsi Teknologi Informasi sebagai Transmisi (Transmission)</strong></p><p>Fungsi teknologi informasi ini mengirim data dan informasi dari suatu lokasi lain melalui jaringan komputer. Misalnya saja mengirimkan data penjualan dari user A ke user lainnya. Sehingga kita tidak perlu menyalin satu persatu cukup dengan saling sharing saja.</p>', 1, '2023-05-19 03:58:10', '2023-06-06 18:47:29', 0),
(11, 'Pentingnya Pelatihan', '<p><strong>Pelatihan Kerja sebagai Contoh Pengembangan Diri untuk Karyawan</strong></p><p>Pada dunia kerja, pelatihan kerja atau training merupakan hal yang lumrah dilakukan. Hal tersebut karena karyawan perusahaan merupakan aset yang sangat penting untuk perkembangan perusahaan. Sumber daya yang berkualitas tentunya akan berpeluang besar memberikan hasil yang berkualitas juga. Maka dari itu, tidak sedikit perusahaan yang mengalokasikan dana untuk program pengembangan diri karyawannya.</p><p>Menurut PP No.31 tahun 2006 tentang Sistem Pelatihan Kerja Nasional, pelatihan kerja atau yang sekarang biasa dikenal dengan istilah training adalah seluruh kegiatan untuk memberi, memperoleh, meningkatkan, serta mengembangkan kompetensi kerja, produktivitas, disiplin, sikap, dan etos kerja pada tingkat keterampilan dan keahlian tertentu sesuai dengan jenjang dan kualifikasi jabatan atau pekerjaan.&nbsp;</p><p>Biasanya training dilakukan sebelum dimulainya kerja atau pada saat awal masuk kerja, tergantung dengan kebutuhan perusahaan. Namun, banyak juga perusahaan memberi pelatihan sepanjang masa kerja pegawai.</p><p>Pada umumnya, jenis-jenis pelatihan untuk karyawan yang diberikan oleh perusahaan dibuat sesuai dengan tujuan yang perusahaan ingin capai dari kinerja karyawannya. Berikut ini ada beberapa jenis training untuk karyawan dengan berbagai sistem pelatihan karyawan yang familiar dilakukan.</p><p><br></p><p><strong>On the job training</strong></p><p>Training ini disebut juga sistem pelatihan di luar kelas. Cara training ini digunakan untuk karyawan yang sedang bekerja sambil belajar. Dalam praktiknya, karyawan akan melakukan pelatihan di bawah supervisi para mentor sesuai dengan departemennya.</p><p><strong>Off the job training</strong></p><p>Off the job training atau sistem pelatihan di dalam kelas biasanya dilakukan di luar waktu bekerja. Beberapa contohnya seperti konferensi, seminar, kuliah, studi kusus, belajar kelompok, dan lain-lain.</p><p><strong>Apprenticeship</strong>&nbsp;</p><p>Apprenticeship adalah kegiatan magang di perusahaan yang memiliki tujuan spesifik untuk posisi tertentu di perusahaan. Perbedaannya dengan magang yang biasa kita dengar adalah tujuan dan periode pelatihannya yang lebih panjang, bisa mencapai 1-4 tahun.</p><p>Jenis training ini dapat dikatakan sebagai gabungan dari pelatihan kerja dengan pengalaman kerja. Setelah menyelesaikan program pelatihan, orang yang mengikuti program atau disebut juga apprentice, akan diangkat menjadi karyawan di perusahaan tersebut.</p><p><strong>Internship</strong></p><p>Kegiatan internship dapat diikatakan mirip dengan apprenticeship, namun perbedaannya jenis training ini memiliki waktu pelaksanaan yang relatif lebih singkat–dalam hitungan minggu atau bulan.&nbsp;</p><p>Kemudian tujuan dari magang atau internship tidak diprogram spesifik untuk menjadi suatu posisi nantinya di perusahaan tersebut. Beberapa orang yang menjalankan pelatihan ini, atau disebut juga intern, biasanya untuk keperluan kuliah.&nbsp;</p><p>Namun, sebagian lagi juga ada yang melakukan magang untuk menambah pengalaman dan juga skill di dunia kerja. Setelah menyelesaikan program, intern tidak langsung diangkat menjadi karyawan seperti apprentice, tapi tidak menutup kemungkinan untuk intern akhirnya dilanjutkan menjadi karyawan.</p><p><strong>Vestibule Training</strong></p><p>Jenis pelatihan ini seperti memberikan simulasi yang aktual pada karyawan. Training dilakukan seidentik mungkin dengan atmosfer pekerjaan yang akan dihadapi oleh karyawan nantinya, terutama dengan penggunaan alat kerja.&nbsp;</p><p>Harapannya, dengan verstibule training karyawan bisa lebih cepat beradaptasi dengan pekerjaannya sehingga pekerjaan jadi lebih efisien.</p>', 1, '2023-05-19 03:59:43', '2023-06-06 21:49:13', 0),
(12, 'Karakteristik Karyawan Terbaik', '<p><strong>Ciri-Ciri Karyawan yang Berkualitas</strong></p><p>Kali ini Pena Info akan memberikan ulasan pada anda tentang ciri-ciri karyawan yang berkualitas. Nah, jika anda seorang atasan atau karyawan, milikilah ciri-ciri seperti berikut ini.</p><p>1. Jujur</p><p>Sebaik apapun kualitas seorang karyawan, itu tidak akan sempurna tanpa adanya kejujuran. Kredibilitas seorang karyawan akan jatuh jika tidak jujur. Kejujuran dan transparansi adalah hal yang sangat penting.</p><p>2. Beretika</p><p>Setiap perusahaan memiliki aturan kerja yang dibuat untuk diikuti. Ada nilai-nilai yang harus dijaga.</p><p>Karyawan yang baik harus mengikuti kebijakan perusahaan dan mengajak rekan yang lain untuk menaati peraturan itu juga.</p><p>3. Disiplin</p><p>Setiap atasan menyukai karyawan yang disiplin, misalkan disiplin waktu. Disiplin waktu adalah hal yang penting bagi perusahaan agar dapat mencapai target yang sudah ditetapkan. Waktu adalah uang.</p><p>4. Dapat berkomunikasi dengan baik</p><p>Seorang atasan akan senang mempekerjakan karyawan yang memiliki kemampuan untuk berkomunikasi dengan baik dan mengekspresikan diri secara jelas, baik saat menulis maupun berkomunikasi.</p><p>5. Optimis</p><p>Optimisme dapat diartikan sebagai harapan dan keyakinan tentang masa depan atau hasil sukses dari sesuatu yang sudah dikerjakan saat ini.</p><p>6. Dan masih banyak lagi.</p>', 1, '2023-05-19 04:00:23', '2023-06-06 18:47:44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_assigned_categories`
--

CREATE TABLE `post_assigned_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `post_categories_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_assigned_categories`
--

INSERT INTO `post_assigned_categories` (`id`, `post_id`, `post_categories_id`) VALUES
(6, 7, 1),
(8, 9, 4),
(10, 11, 3),
(11, 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `description`, `created_at`, `updated_at`, `is_default`) VALUES
(1, 'Pengalaman kerja', '<p>Alice. \\Maka itu tidak masalah.\\ Meja itu adalah hari yang sangat indah!\' kata suara mengantuk di belakangnya. \'Kerah Dormouse itu,\' kata Ratu --\' \'Siapkan tehmu; sudah larut.\' Jadi Alice mulai.</p>', '2022-12-23 07:37:39', '2023-05-19 02:16:39', 1),
(2, 'Teknologi Baru', '<p>Dan Gryphon dengan nada tersinggung, \'Hm! Tidak memperhitungkan selera! Nyanyikan \\Turtle Soup\\ untuknya, maukah, kawan?\' Mock Turtle berkata: \'Saya terlalu kaku. Dan pesan moralnya adalah, tapi SAYA BERPIKIR saya bisa.</p>', '2022-12-23 07:37:39', '2023-05-19 02:17:26', 1),
(3, 'Terkait Pekerjaan', '<p>Garis bujur juga, tetapi mengira mereka adalah tukang kebun, atau tentara, atau anggota istana, atau tiga kali lipat untuk dirinya sendiri, \'Wah, mereka hanya sekumpulan kartu: Knave berdiri di depan mereka, dirantai, dengan.</p>', '2022-12-23 07:37:39', '2023-05-19 02:18:02', 1),
(4, 'Budaya Perusahaan', '<p>Aku akan melihat dulu,\' katanya, dengan cara berbicara padanya,\' pikirnya, \'dia pasti melakukan apa saja selain duduk dengan kelopak matanya, jadi dia dengan sendok teh di mulutnya dengan tali: ke dalam ini mereka menyelipkan .</p>', '2022-12-23 07:37:39', '2023-05-19 02:18:40', 1),
(5, 'Pelamar Kerja', '<p>Kadal saat dia berbicara, tapi sepertinya tidak ada hasil yang didengarkan, jadi dia mulai memikirkan seluruh rombongan duduk diam dan melihat ke arah Alice, dan mencoba untuk membuat kepalanya sedikit terkejut dengan melihat itu.</p>', '2022-12-23 07:37:39', '2023-05-19 02:19:19', 1),
(6, 'Lowongan', '<p>Gryphon seolah-olah dia bermaksud untuk mengeluarkan kaki kanannya, \'hidup seorang Hatter: dan di tenggorokannya,\' kata Kelinci memperhatikan Alice, sebagai March Hare dan Ratu, tetapi dia berlari melintasi taman, di mana.</p>', '2022-12-23 07:37:39', '2023-05-19 02:19:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(170) NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `name`, `email`, `comment`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Pelamar Kerja', 'pelamarkerja@lokerpng.com', 'Test', 12, 2, '2023-05-23 02:00:47', '2023-05-23 06:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `reported_jobs`
--

CREATE TABLE `reported_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reported_to_candidates`
--

CREATE TABLE `reported_to_candidates` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(10) UNSIGNED NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reported_to_candidates`
--

INSERT INTO `reported_to_candidates` (`id`, `user_id`, `candidate_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Tidak Melengkapi Data', '2023-05-21 06:04:35', '2023-05-21 06:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `reported_to_companies`
--

CREATE TABLE `reported_to_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `required_degree_levels`
--

CREATE TABLE `required_degree_levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(170) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `required_degree_levels`
--

INSERT INTO `required_degree_levels` (`id`, `name`, `created_at`, `updated_at`, `is_default`) VALUES
(16, 'SMA/MA/SMK Sederajat', '2023-05-19 02:46:47', '2023-05-19 02:46:47', 0),
(18, 'Diploma I (D1)', '2023-05-19 02:50:58', '2023-05-19 02:52:26', 0),
(20, 'Diploma II (D2)', '2023-05-19 02:52:51', '2023-05-19 02:52:51', 0),
(21, 'Diploma III (D3)', '2023-05-19 02:53:24', '2023-05-19 02:53:24', 0),
(22, 'Diploma IV (D4)', '2023-05-19 02:53:44', '2023-05-19 02:53:44', 0),
(23, 'Sarjana (S1)', '2023-05-19 02:54:50', '2023-05-19 02:54:50', 0),
(24, 'Magister (S2)', '2023-05-19 02:55:04', '2023-05-19 02:55:04', 0),
(25, 'Doktor (S3)', '2023-05-19 02:55:31', '2023-05-19 02:55:31', 0),
(26, 'Tidak Tergantung', '2023-06-06 07:46:03', '2023-06-06 07:46:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-12-23 07:37:38', '2022-12-23 07:37:38'),
(2, 'Employer', 'web', '2022-12-23 07:37:38', '2022-12-23 07:37:38'),
(3, 'Candidate', 'web', '2022-12-23 07:37:38', '2022-12-23 07:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_currencies`
--

CREATE TABLE `salary_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_name` varchar(170) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `currency_icon` varchar(191) NOT NULL DEFAULT '$',
  `currency_code` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_currencies`
--

INSERT INTO `salary_currencies` (`id`, `currency_name`, `created_at`, `updated_at`, `is_default`, `currency_icon`, `currency_code`) VALUES
(45, 'IDR Indonesia Rupiah', '2022-12-23 07:37:38', '2022-12-23 07:37:38', 1, 'Rp', 'IDR'),
(129, 'USD US Dollar', '2022-12-23 07:37:39', '2022-12-23 07:37:39', 0, '$', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `salary_periods`
--

CREATE TABLE `salary_periods` (
  `id` int(10) UNSIGNED NOT NULL,
  `period` varchar(170) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_periods`
--

INSERT INTO `salary_periods` (`id`, `period`, `description`, `created_at`, `updated_at`, `is_default`) VALUES
(5, 'Periode Pembayaran Mingguan', '<p>Periode Pembayaran Mingguan</p>', '2023-05-24 18:32:16', '2023-05-24 18:32:16', 0),
(6, 'Periode Pembayaran Bulanan', '<p>Periode Pembayaran Bulanan</p>', '2023-05-24 18:33:28', '2023-05-24 18:33:28', 0),
(7, 'Periode Pembayaran Tahunan', '<p>Periode Pembayaran Tahunan</p>', '2023-05-24 18:33:41', '2023-05-24 18:33:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'application_name', 'Loker Ponorogo', '2022-12-23 07:37:38', '2023-05-09 03:29:03'),
(2, 'logo', 'https://lokerpng.hostku.xyz/uploads/settings/8/favicon-1.png', '2022-12-23 07:37:38', '2023-05-09 06:13:57'),
(3, 'favicon', 'https://lokerpng.hostku.xyz/uploads/settings/6/favicon-1.png', '2022-12-23 07:37:38', '2023-05-09 03:29:03'),
(4, 'company_description', 'Platform penyedia pekerjaan terkemuka di Ponorogo', '2022-12-23 07:37:38', '2023-05-09 04:13:08'),
(5, 'address', 'Jl. Niken Gandini No.98, Plampitan, Setono, Kec. Jenangan, Kabupaten Ponorogo, Jawa Timur 63492', '2022-12-23 07:37:38', '2023-05-09 03:30:17'),
(6, 'phone', '0352481236', '2022-12-23 07:37:38', '2023-05-09 03:30:17'),
(7, 'email', 'support@lokerpng.com', '2022-12-23 07:37:38', '2023-05-09 03:30:17'),
(8, 'facebook_url', 'https://www.facebook.com/', '2022-12-23 07:37:38', '2023-05-09 03:30:45'),
(9, 'twitter_url', 'https://twitter.com/', '2022-12-23 07:37:38', '2023-05-09 03:30:45'),
(10, 'google_plus_url', 'https://plus.google.com/', '2022-12-23 07:37:38', '2023-05-09 03:30:45'),
(11, 'linkedIn_url', 'https://www.linkedin.com/', '2022-12-23 07:37:38', '2023-05-09 03:30:45'),
(12, 'about_us', '<p>Lebih dari 1 bulan pengalaman dan keterampilan dalam industri pekerjaan, sehingga kami dapat menyediakan pekerjaan dan lowongan.</p><p>Teknologi apa pun yang kami terapkan, kami tidak hanya menyediakan pekerjaan untuk klien kami, tetapi kami juga mencoba membuatnya tersedia untuk banyak pengguna lain di mana saja. Dan itulah alasan kami adalah satu-satunya kumpulan siswa terkemuka di Ponorogo yang memberikan lapangan pekerjaan kepada banyak pengguna. Jangan ragu untuk checkout kontak kami.</p>', '2022-12-23 07:37:38', '2023-05-09 04:13:33'),
(13, 'company_url', 'https://www.lokerpng.com', '2022-12-23 07:37:39', '2023-05-09 03:29:03'),
(14, 'region_code', '62', '2022-12-23 07:37:39', '2023-05-09 03:30:17'),
(15, 'slider_is_active', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(16, 'is_full_slider', '0', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(17, 'is_slider_active', '1', '2022-12-23 07:37:39', '2022-12-23 07:37:39'),
(18, 'privacy_policy', '<p>Kebijakan Privasi</p><p><br></p><p><br></p><p><br></p><p>Siapa kami</p><p><br></p><p><br></p><p>Alamat situs web kami adalah: https://lokerpng.com</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>Komentar</p><p><br></p><p><br></p><p>Saat pengunjung meninggalkan komentar di situs, kami mengumpulkan data yang ditampilkan di formulir komentar, dan juga alamat IP pengunjung dan string agen pengguna browser untuk membantu deteksi spam.</p><p><br></p><p>String anonim yang dibuat dari alamat email Anda (juga disebut hash) dapat diberikan ke layanan Gravatar untuk melihat apakah Anda menggunakannya. Kebijakan privasi layanan Gravatar tersedia di sini: https://automattic.com/privacy/. Setelah komentar Anda disetujui, gambar profil Anda dapat dilihat oleh publik dalam konteks komentar Anda.</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>Media</p><p><br></p><p><br></p><p>Jika Anda mengunggah gambar ke situs web, Anda harus menghindari mengunggah gambar dengan menyertakan data lokasi tertanam (GPS EXIF). Pengunjung situs web dapat mengunduh dan mengekstrak data lokasi apa pun dari gambar di situs web.</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>Cookie</p><p><br></p><p><br></p><p>Jika Anda meninggalkan komentar di situs kami, Anda dapat ikut serta untuk menyimpan nama, alamat email, dan situs web Anda di cookie. Ini untuk kenyamanan Anda sehingga Anda tidak perlu mengisi detail Anda lagi ketika Anda meninggalkan komentar lain. Cookie ini akan bertahan selama satu tahun.</p><p><br></p><p>Jika Anda mengunjungi halaman login kami, kami akan menetapkan cookie sementara untuk menentukan apakah browser Anda menerima cookie. Cookie ini tidak berisi data pribadi dan dibuang saat Anda menutup browser.</p><p><br></p><p>Saat Anda login, kami juga akan menyiapkan beberapa cookie untuk menyimpan informasi login Anda dan pilihan tampilan layar Anda. Cookie login bertahan selama dua hari, dan cookie opsi layar bertahan selama satu tahun. Jika Anda memilih “Ingat Saya”, login Anda akan bertahan selama dua minggu. Jika Anda keluar dari akun, cookie masuk akan dihapus.</p><p><br></p><p>Jika Anda mengedit atau menerbitkan artikel, cookie tambahan akan disimpan di browser Anda. Cookie ini tidak menyertakan data pribadi dan hanya menunjukkan ID kiriman dari artikel yang baru saja Anda edit. Kedaluwarsa setelah 1 hari.</p><p><br></p><p><br></p><p><br></p><p>Konten tersemat dari situs web lain</p><p><br></p><p>Artikel di situs ini mungkin berisi konten tersemat (misalnya video, gambar, artikel, dll.). Konten tersemat dari situs web lain berperilaku sama persis seperti jika pengunjung telah mengunjungi situs web lain.</p><p><br></p><p><br></p><p><br></p><p>Situs web ini dapat mengumpulkan data tentang Anda, menggunakan cookie, menyematkan pelacakan pihak ketiga tambahan, dan memantau interaksi Anda dengan konten tersemat tersebut, termasuk melacak interaksi Anda dengan konten tersemat jika Anda memiliki akun dan masuk ke situs web tersebut .</p><p><br></p><p><br></p><p><br></p><p>Dengan siapa kami berbagi data Anda</p><p><br></p><p>Jika Anda meminta penyetelan ulang sandi, alamat IP Anda akan disertakan dalam email penyetelan ulang.</p><p><br></p><p><br></p><p><br></p><p>Berapa lama kami menyimpan data Anda</p><p><br></p><p>Jika Anda meninggalkan komentar, komentar dan metadatanya dipertahankan tanpa batas. Ini agar kami dapat mengenali dan menyetujui setiap komentar tindak lanjut secara otomatis alih-alih menahannya dalam antrean moderasi.</p><p><br></p><p><br></p><p><br></p><p>Untuk pengguna yang mendaftar di situs web kami (jika ada), kami juga menyimpan informasi pribadi yang mereka berikan di profil pengguna mereka. Semua pengguna dapat melihat, mengedit, atau menghapus informasi pribadi mereka kapan saja (kecuali mereka tidak dapat mengubah nama pengguna mereka). Administrator situs web juga dapat melihat dan mengedit informasi tersebut.</p><p><br></p><p><br></p><p><br></p><p>Hak apa yang Anda miliki atas data Anda</p><p><br></p><p>Jika Anda memiliki akun di situs ini, atau telah meninggalkan komentar, Anda dapat meminta untuk menerima file yang diekspor dari data pribadi yang kami simpan tentang Anda, termasuk data apa pun yang telah Anda berikan kepada kami. Anda juga dapat meminta agar kami menghapus data pribadi apa pun yang kami miliki tentang Anda. Ini tidak termasuk data apa pun yang wajib kami simpan untuk administrasi, hukum, atau tujuan keamanan.</p><p><br></p><p><br></p><p><br></p><p>Ke mana data Anda dikirim</p><p><br></p><p>Komentar pengunjung dapat diperiksa melalui layanan deteksi spam otomatis.</p>', '2022-12-23 07:37:39', '2023-05-23 05:00:35'),
(19, 'terms_conditions', '<p>Syarat &amp; Ketentuan</p><p><br></p><p>Selamat datang di lokerpng.com</p><p><br></p><p>Syarat dan ketentuan ini menguraikan peraturan dan ketentuan untuk penggunaan Situs Web LOKERPNG, yang terletak di https://lokerpng.com/.</p><p><br></p><p>Dengan mengakses situs web ini kami menganggap Anda menerima syarat dan ketentuan ini. Jangan terus menggunakan lokerpng.com jika Anda tidak setuju untuk mengambil semua syarat dan ketentuan yang tercantum di halaman ini.</p><p><br></p><p>Terminologi berikut berlaku untuk Syarat dan Ketentuan ini, Pernyataan Privasi dan Pemberitahuan Penafian dan semua Perjanjian: “Klien”, “Anda” dan “Milik Anda” mengacu pada Anda, orang yang masuk ke situs web ini dan mematuhi syarat dan ketentuan Perusahaan. “Perusahaan”, “Diri Kita”, “Kita”, “Kita” dan “Kita”, mengacu pada Perusahaan kita. “Pihak”, “Pihak”, atau “Kami”, mengacu pada Klien dan diri kami sendiri. Semua istilah mengacu pada penawaran, penerimaan, dan pertimbangan pembayaran yang diperlukan untuk melakukan proses bantuan kami kepada Klien dengan cara yang paling tepat untuk tujuan yang jelas dalam memenuhi kebutuhan Klien sehubungan dengan penyediaan layanan yang dinyatakan Perusahaan, sesuai dengan dan tunduk pada, hukum yang berlaku di Belanda. Setiap penggunaan terminologi di atas atau kata-kata lain dalam bentuk tunggal, jamak, kapitalisasi dan/atau dia, dianggap dapat dipertukarkan dan oleh karena itu mengacu pada hal yang sama.</p><p><br></p><p>Cookie</p><p>Kami menggunakan penggunaan cookie. Dengan mengakses lokerpng.com, Anda setuju untuk menggunakan cookie sesuai dengan Kebijakan Privasi LOKERPNG.</p><p><br></p><p>Sebagian besar situs web interaktif menggunakan cookie agar kami dapat mengambil detail pengguna untuk setiap kunjungan. Cookie digunakan oleh situs web kami untuk mengaktifkan fungsionalitas area tertentu agar lebih mudah bagi orang yang mengunjungi situs web kami. Beberapa mitra afiliasi/periklanan kami juga dapat menggunakan cookie.</p><p><br></p><p>Lisensi</p><p>Kecuali dinyatakan lain, LOKER PNG dan/atau pemberi lisensinya memiliki hak kekayaan intelektual untuk semua materi di lokerpng.com. Semua hak kekayaan intelektual dilindungi undang-undang. Anda dapat mengakses ini dari lokerpng.com untuk penggunaan pribadi Anda dengan tunduk pada batasan yang ditetapkan dalam syarat dan ketentuan ini.</p><p><br></p><p>Anda tidak boleh:</p><p>Publikasikan ulang materi dari lokerpng.com</p><p>Jual, sewa, atau sub-lisensi materi dari lokerpng.com</p><p>Mereproduksi, menggandakan, atau menyalin materi dari lokerpng.com</p><p>Mendistribusikan ulang konten dari lokerpng.com</p><p>Perjanjian ini akan dimulai pada tanggal perjanjian ini. Persyaratan dan Ketentuan kami dibuat dengan bantuan Generator Persyaratan Dan Ketentuan dan Generator Kebijakan Privasi.</p><p><br></p><p>Bagian dari situs web ini menawarkan kesempatan bagi pengguna untuk memposting dan bertukar pendapat dan informasi di area situs web tertentu. LOKER PNG tidak memfilter, mengedit, menerbitkan, atau meninjau Komentar sebelum kehadirannya di situs web. Komentar tidak mencerminkan pandangan dan pendapat LOKER PNG, agen dan/atau afiliasinya. Komentar mencerminkan pandangan dan pendapat orang yang memposting pandangan dan pendapatnya. Sejauh diizinkan oleh undang-undang yang berlaku, LOKERPNG tidak akan bertanggung jawab atas Komentar atau atas tanggung jawab, kerusakan, atau pengeluaran apa pun yang disebabkan dan/atau diderita sebagai akibat dari penggunaan dan/atau pengeposan dan/atau penampilan Komentar di situs ini.</p><p><br></p><p>LOKER PNG berhak memantau semua Komentar dan menghapus Komentar apa pun yang dianggap tidak pantas, menyinggung, atau menyebabkan pelanggaran terhadap Syarat dan Ketentuan ini.</p><p><br></p><p>Anda menjamin dan menyatakan bahwa:</p><p>Anda berhak memposting Komentar di situs web kami dan memiliki semua lisensi dan persetujuan yang diperlukan untuk melakukannya;</p><p>Komentar tidak melanggar hak kekayaan intelektual apa pun, termasuk namun tidak terbatas pada hak cipta, paten, atau merek dagang pihak ketiga mana pun;</p><p>Komentar tidak mengandung materi yang memfitnah, memfitnah, menyinggung, tidak senonoh, atau melanggar hukum yang merupakan pelanggaran privasi</p><p>Komentar tidak akan digunakan untuk meminta atau mempromosikan bisnis atau kebiasaan atau menampilkan aktivitas komersial atau aktivitas yang melanggar hukum.</p><p>Anda dengan ini memberi LOKER PNG lisensi non-eksklusif untuk menggunakan, mereproduksi, mengedit, dan mengizinkan orang lain untuk menggunakan, mereproduksi, dan mengedit Komentar Anda dalam segala bentuk, format, atau media.</p><p><br></p><p>Hyperlink ke Konten kami</p><p>Organisasi berikut dapat menautkan ke Situs Web kami tanpa persetujuan tertulis sebelumnya:</p><p><br></p><p>Lembaga pemerintah;</p><p>Mesin telusur;</p><p>Organisasi berita;</p><p>Distributor direktori online dapat menautkan ke Situs web kami dengan cara yang sama seperti mereka menautkan ke Situs Web bisnis terdaftar lainnya; dan</p><p>Bisnis Terakreditasi di Seluruh Sistem kecuali meminta organisasi nirlaba, pusat perbelanjaan amal, dan kelompok penggalangan dana amal yang mungkin tidak hyperlink ke situs Web kami.</p><p>Organisasi-organisasi ini dapat menautkan ke beranda kami, ke publikasi atau ke informasi Situs Web lainnya selama tautan tersebut: (a) sama sekali tidak menipu; (b) tidak menyiratkan sponsor, dukungan, atau persetujuan penautan secara tidak benar pihak dan produk dan/atau layanannya; dan (c) sesuai dengan konteks situs pihak yang menautkan.</p><p><br></p><p>Kami dapat mempertimbangkan dan menyetujui permintaan penautan lain dari jenis organisasi berikut:</p><p>sumber informasi konsumen dan/atau bisnis yang umum dikenal;</p><p>situs komunitas dot.com;</p><p>asosiasi atau kelompok lain yang mewakili badan amal;</p><p>distributor direktori online;</p><p>portal internet;</p><p>perusahaan akuntansi, hukum, dan konsultasi; dan</p><p>lembaga pendidikan dan asosiasi perdagangan.</p><p>Kami akan menyetujui permintaan tautan dari organisasi ini jika kami memutuskan bahwa: (a) tautan tersebut tidak akan membuat kami terlihat tidak baik bagi diri kami sendiri atau bisnis terakreditasi kami; (b) organisasi tidak memiliki catatan negatif dengan kami; (c) manfaat bagi kami dari visibilitas hyperlink mengkompensasi ketiadaan LOKER PNG; dan (d) tautannya ada dalam konteks informasi sumber daya umum.</p><p><br></p><p>Organisasi-organisasi ini dapat menautkan ke beranda kami selama tautan tersebut: (a) sama sekali tidak menipu; (b) tidak menyiratkan sponsor, dukungan, atau persetujuan yang salah dari pihak yang menghubungkan dan produk atau layanannya; dan (c) sesuai dengan konteks situs pihak yang menautkan.</p><p><br></p><p>Jika Anda salah satu organisasi yang tercantum dalam paragraf 2 di atas dan tertarik untuk menautkan ke situs web kami, Anda harus memberi tahu kami dengan mengirimkan email ke LOKERPNG. Harap sertakan nama Anda, nama organisasi Anda, informasi kontak, serta URL situs Anda, daftar URL apa pun yang ingin Anda tautkan ke Situs Web kami, dan daftar URL di situs kami yang Anda inginkan tautan. Tunggu 2-3 minggu untuk tanggapan.</p><p><br></p><p>Organisasi yang disetujui dapat melakukan hyperlink ke Situs Web kami sebagai berikut:</p><p>Dengan menggunakan nama perusahaan kami; atau</p><p>Dengan menggunakan pencari sumber daya seragam yang ditautkan; atau</p><p>Dengan menggunakan deskripsi lain dari situs web kami yang ditautkan yang masuk akal dalam konteks dan format konten di situs pihak yang menautkan.</p><p>Penggunaan logo LOKER PNG atau karya seni lainnya tidak akan diizinkan untuk menghubungkan jika tidak ada perjanjian lisensi merek dagang.</p><p><br></p><p>iFrame</p><p>Tanpa persetujuan sebelumnya dan izin tertulis, Anda tidak boleh membuat bingkai di sekitar Halaman Web kami yang dengan cara apa pun mengubah presentasi visual atau tampilan Situs Web kami.</p><p><br></p><p>Kewajiban Konten</p><p>Kami tidak akan bertanggung jawab atas konten apa pun yang muncul di Situs Web Anda. Anda setuju untuk melindungi dan membela kami dari semua klaim yang muncul di Situs Web Anda. Tidak boleh ada tautan(-tautan) yang muncul di Situs Web mana pun yang dapat ditafsirkan sebagai fitnah, cabul, atau kriminal, atau yang melanggar, sebaliknya melanggar, atau mendukung pelanggaran atau pelanggaran lain terhadap, hak pihak ketiga mana pun.</p><p><br></p><p>Privasi Anda</p><p>Silakan baca Kebijakan Privasi</p><p><br></p><p>Reservasi Hak</p><p>Kami berhak untuk meminta Anda menghapus semua tautan atau tautan tertentu apa pun ke Situs Web kami. Anda menyetujui untuk segera menghapus semua tautan ke Situs Web kami berdasarkan permintaan. Kami juga berhak mengubah syarat dan ketentuan ini dan kebijakan penautannya kapan saja. Dengan terus menautkan ke Situs Web kami, Anda setuju untuk terikat dan mengikuti syarat dan ketentuan penautan ini.</p><p><br></p><p>Penghapusan tautan dari situs web kami</p><p>Jika Anda menemukan tautan apa pun di Situs Web kami yang menyinggung karena alasan apa pun, Anda bebas menghubungi dan memberi tahu kami kapan saja. Kami akan mempertimbangkan permintaan untuk menghapus tautan tetapi kami tidak berkewajiban atau lebih atau menanggapi Anda secara langsung.</p><p><br></p><p>Kami tidak memastikan bahwa informasi di situs web ini benar, kami tidak menjamin kelengkapan atau keakuratannya; kami juga tidak berjanji untuk memastikan bahwa situs web tetap tersedia atau materi di situs web selalu diperbarui.</p><p><br></p><p>Penafian</p><p>Sejauh diizinkan oleh undang-undang yang berlaku, kami mengecualikan semua representasi, jaminan, dan ketentuan yang berkaitan dengan situs web kami dan penggunaan situs web ini.</p><p><br></p><p>Tidak ada dalam penafian ini yang akan:</p><p>membatasi atau mengecualikan tanggung jawab kami atau Anda atas kematian atau cedera pribadi;</p><p>membatasi atau mengecualikan tanggung jawab kami atau Anda atas penipuan atau pernyataan keliru yang menipu;</p><p>membatasi tanggung jawab kami atau Anda dengan cara apa pun yang tidak diizinkan berdasarkan hukum yang berlaku; atau</p><p>mengecualikan kewajiban kami atau Anda yang mungkin tidak dikecualikan berdasarkan hukum yang berlaku.</p><p>Batasan dan larangan tanggung jawab yang diatur dalam Bagian ini dan di tempat lain dalam penafian ini: (a) tunduk pada paragraf sebelumnya; dan (b) mengatur semua kewajiban yang timbul berdasarkan penafian, termasuk kewajiban yang timbul dalam kontrak, gugatan, dan pelanggaran kewajiban hukum.</p><p><br></p><p>Selama situs web dan informasi serta layanan di situs web disediakan secara gratis, kami tidak akan bertanggung jawab atas kehilangan atau kerusakan apa pun.</p>', '2022-12-23 07:37:39', '2023-05-23 05:00:35'),
(20, 'enable_google_recaptcha', '0', '2022-12-23 07:37:39', '2023-05-09 06:13:57'),
(21, 'footer_logo', 'https://lokerpng.hostku.xyz/uploads/settings/4/lokerpng.png', '2022-12-23 07:37:39', '2023-05-09 03:29:03'),
(22, 'default_country_code', 'id', '2022-12-23 07:37:39', '2023-05-09 03:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `description`, `created_at`, `updated_at`, `is_default`) VALUES
(9, 'Kemampuan Interpersonal', '<p>Kemampuan Interpersonal</p>', '2023-05-24 18:27:00', '2023-05-24 18:27:00', 0),
(10, 'Keterampilan Komputer', '<p>Keterampilan Mengoperasikan Komputer</p>', '2023-05-24 18:29:06', '2023-05-24 18:29:06', 0),
(11, 'Kemampuan Berkomunikasi', '<p>Kemampuan Berkomunikasi</p>', '2023-05-24 18:29:24', '2023-05-24 18:29:24', 0),
(12, 'Keterampilan Melayani Pelanggan', '<p>Keterampilan Melayani Pelanggan</p>', '2023-05-24 18:29:54', '2023-05-24 18:29:54', 0),
(13, 'Kemampuan Kepemimpinan', '<p>Kemampuan Kepemimpinan</p>', '2023-05-24 18:30:21', '2023-05-24 18:30:21', 0),
(14, 'Keterampilan Manajemen', '<p>Keterampilan Manajemen</p>', '2023-05-24 18:30:39', '2023-05-24 18:30:39', 0),
(15, 'Keterampilan Memecahkan Masalah', '<p>Keterampilan Memecahkan Masalah</p>', '2023-05-24 18:31:09', '2023-05-24 18:31:09', 0),
(16, 'Keterampilan Manajemen Waktu', '<p>Keterampilan Manajemen Waktu</p>', '2023-05-24 18:31:30', '2023-05-24 18:31:30', 0),
(17, 'Sosial Media Spesialis', '<p>Sosial Media Spesialis</p>', '2023-06-06 06:51:32', '2023-06-06 06:51:32', 0),
(18, 'Promosi', '<p>Promosi</p>', '2023-06-06 06:51:45', '2023-06-06 06:51:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(191) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES
(4122, 102, 'Ponorogo', '2023-05-09 04:32:41', '2023-05-09 04:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `stripe_id` varchar(191) DEFAULT NULL,
  `stripe_status` varchar(191) DEFAULT NULL,
  `stripe_plan` varchar(191) DEFAULT NULL,
  `plan_id` int(10) UNSIGNED DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `current_period_start` timestamp NULL DEFAULT NULL,
  `current_period_end` timestamp NULL DEFAULT NULL,
  `cancellation_reason` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT '1',
  `paypal_payment_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `stripe_id`, `stripe_status`, `stripe_plan`, `plan_id`, `trial_ends_at`, `ends_at`, `current_period_start`, `current_period_end`, `cancellation_reason`, `created_at`, `updated_at`, `type`, `paypal_payment_id`) VALUES
(1, 3, 'Trial Plan', NULL, 'trialing', NULL, 1, '2033-05-18 12:36:55', NULL, '2023-05-18 12:36:55', '2033-05-18 12:36:55', NULL, '2023-05-18 12:36:55', '2023-05-18 12:36:55', '1', NULL),
(3, 7, 'Trial Plan', NULL, 'trialing', NULL, 1, '2033-05-23 04:51:00', NULL, '2023-05-23 04:51:00', '2033-05-23 04:51:00', NULL, '2023-05-23 04:51:00', '2023-05-23 04:51:00', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) NOT NULL,
  `stripe_plan` varchar(191) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(170) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `description`, `created_at`, `updated_at`, `is_default`) VALUES
(1, 'PHP', NULL, '2022-12-23 07:37:38', '2022-12-23 07:37:38', 1),
(2, 'Laravel', NULL, '2022-12-23 07:37:38', '2022-12-23 07:37:38', 1),
(3, 'HTML', NULL, '2022-12-23 07:37:38', '2022-12-23 07:37:38', 1),
(4, 'CSS', NULL, '2022-12-23 07:37:38', '2022-12-23 07:37:38', 1),
(5, 'Javascipt', NULL, '2022-12-23 07:37:38', '2022-12-23 07:37:38', 1),
(6, 'Java', NULL, '2022-12-23 07:37:38', '2022-12-23 07:37:38', 1),
(7, 'Python', NULL, '2022-12-23 07:37:38', '2022-12-23 07:37:38', 1),
(8, 'Ruby', NULL, '2022-12-23 07:37:38', '2022-12-23 07:37:38', 1),
(9, 'Android', NULL, '2022-12-23 07:37:38', '2022-12-23 07:37:38', 1),
(10, 'Kreatifitas', '<p>Kreatifitas</p>', '2023-05-19 02:30:13', '2023-05-19 02:30:13', 0),
(11, 'Seni', '<p>Seni</p>', '2023-05-19 02:30:26', '2023-05-19 02:30:26', 0),
(12, 'Multitasking', '<p>Multitasking</p>', '2023-05-19 02:31:05', '2023-05-19 02:31:05', 0),
(13, 'Teamwork', '<p>Teamwork</p>', '2023-05-19 02:31:23', '2023-05-19 02:31:23', 0),
(14, 'Komunikasi Yang Baik', '<p>Komunikasi Yang Baik</p>', '2023-05-19 02:31:48', '2023-05-19 02:31:48', 0),
(15, 'Layanan Pelanggan', '<p>Layanan Pelanggan</p>', '2023-05-19 02:32:07', '2023-05-19 02:32:07', 0),
(16, 'Inovatif', '<p>Inovatif</p>', '2023-05-19 02:39:27', '2023-05-19 02:39:27', 0),
(17, 'Teliti', '<p>Teliti</p>', '2023-06-06 06:36:57', '2023-06-06 06:36:57', 0);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `customer_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Pelamar Kerja', '<p>Saya rasa adanya web lowongan pekerjaan ini cukup membantu bagi seluruh masyarakat ponorogo yang sedang mencari kerja</p>', '2023-05-24 23:46:31', '2023-05-24 23:46:31'),
(2, 'Rizal Alfian', '<p>Web ini sangat membantu</p>', '2023-06-06 06:59:14', '2023-06-06 06:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_approved` int(11) NOT NULL DEFAULT 1,
  `approved_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `owner_type` varchar(191) NOT NULL,
  `plan_currency_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `email` varchar(170) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_verified` tinyint(1) NOT NULL DEFAULT 1,
  `owner_id` int(11) DEFAULT NULL,
  `owner_type` varchar(191) DEFAULT NULL,
  `language` varchar(191) NOT NULL DEFAULT 'en',
  `profile_views` bigint(20) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `theme_mode` varchar(191) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_url` varchar(191) DEFAULT NULL,
  `twitter_url` varchar(191) DEFAULT NULL,
  `linkedin_url` varchar(191) DEFAULT NULL,
  `google_plus_url` varchar(191) DEFAULT NULL,
  `pinterest_url` varchar(191) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_id` varchar(191) DEFAULT NULL,
  `region_code` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `email_verified_at`, `password`, `dob`, `gender`, `country_id`, `state_id`, `city_id`, `is_active`, `is_verified`, `owner_id`, `owner_type`, `language`, `profile_views`, `remember_token`, `theme_mode`, `created_at`, `updated_at`, `facebook_url`, `twitter_url`, `linkedin_url`, `google_plus_url`, `pinterest_url`, `is_default`, `stripe_id`, `region_code`) VALUES
(1, 'Super', 'Admin', 'admin@lokerpng.com', '7878454512', '2022-12-23 07:37:38', '$2y$10$MnGR0JciOPbXalQvmXkjSum.LduaBO.9yYCa54gxEtQ..CGW7ExV2', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 'en', 0, NULL, '0', '2022-12-23 07:37:38', '2023-05-24 04:30:58', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 'Pelamar', 'Kerja', 'pelamarkerja@lokerpng.com', '851-2365-4786', '2023-05-18 12:23:05', '$2y$10$5mCQq4vt7HF8lcDa/3auwupcGmu6YBpN67Znq2K5HSbpknsnUgTqK', '2000-04-06', 0, 102, 4122, 48357, 1, 0, 1, 'App\\Models\\Candidate', 'en', 6, 'aCIkHGHfdhXbUSm692bjNMFWC4f1STiAjT9yxcU3KoF28K1yHIU6Vh4D1slx', '0', '2023-05-18 12:23:05', '2023-06-07 03:18:46', NULL, NULL, NULL, NULL, NULL, 0, NULL, '62'),
(3, 'Pemberi Kerja', NULL, 'pemberikerja@lokerpng.com', NULL, NULL, '$2y$10$bEdRPIGG8j77pGdJ/AbsRu9HTRm00OEzmxjoYhmO2IWEkk1Cy8Iu6', NULL, NULL, 102, NULL, NULL, 1, 1, 1, 'App\\Models\\Company', 'en', 0, NULL, '0', '2023-05-18 12:36:55', '2023-05-25 01:00:31', NULL, NULL, NULL, NULL, NULL, 0, NULL, '62'),
(5, 'Rizal', 'Alfian', 'rizalalfian@lokerpng.com', NULL, '2023-05-21 06:01:39', '$2y$10$q.8VVEuTM/nzDTZ/OvvcRO8XunOMbLZOFStIX8xBT5Zy0vVWdnoMO', NULL, NULL, NULL, NULL, NULL, 1, 1, 2, 'App\\Models\\Candidate', 'en', 1, 'RYRhIF9F60LvQcn9zeCUXkjVedea3jsnNn5dQxFrMvHpW9XMZzgXGYLhcmBA', '0', '2023-05-19 02:12:18', '2023-06-06 09:01:18', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(6, 'Rafi Apta', 'Valencia', 'rafiaptavalencia@lokerpng.com', '851-2345-6768', NULL, '$2y$10$HqvZaBdcTvy0FrfdeCb3eOvTIU5/qbB4EsEhYrp1lv4zDbrm56m4.', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 'en', 0, NULL, '0', '2023-05-21 14:54:18', '2023-05-21 14:54:53', NULL, NULL, NULL, NULL, NULL, 0, NULL, '62'),
(7, 'Zoan', NULL, 'zoanfath@lokerpng.com', NULL, NULL, '$2y$10$n4ybk1kN/.C3OuntIypvNuqnVU3WXmiCzWEx432BGfXtBTlxFkwWC', NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 'App\\Models\\Company', 'en', 0, NULL, '0', '2023-05-23 04:51:00', '2023-05-23 04:51:00', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(9, 'Rivaldo', 'Totti', 'rivaldototti@lokerpng.com', '085623456754', NULL, '$2y$10$eHDAXwfFFGE2k8ibV3yqG.8aEGzbU5MiH42NaLTteo.7DtpwLSlPK', '2001-06-01', 0, 102, 4122, 48357, 1, 0, 4, 'App\\Models\\Candidate', 'en', 0, NULL, '0', '2023-06-05 13:23:50', '2023-06-06 06:19:36', NULL, NULL, NULL, NULL, NULL, 0, NULL, '62'),
(10, 'Yowan Ferdi', 'Sulthoni', 'hhhyudha@gmail.com', '086512345467', '2023-06-06 06:15:26', '$2y$10$oVxfQiz4KuuaT/FKkJ/L6O2hgiXySr66lM5Di6wOEe9jwaaHffERa', '2006-02-06', 0, 102, 4122, 48376, 1, 1, 5, 'App\\Models\\Candidate', 'en', 0, NULL, '0', '2023-06-06 06:15:26', '2023-06-06 06:15:26', NULL, NULL, NULL, NULL, NULL, 0, NULL, '62');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branding_sliders`
--
ALTER TABLE `branding_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidates_user_id_foreign` (`user_id`),
  ADD KEY `candidates_marital_status_id_foreign` (`marital_status_id`),
  ADD KEY `candidates_career_level_id_foreign` (`career_level_id`),
  ADD KEY `candidates_functional_area_id_foreign` (`functional_area_id`),
  ADD KEY `candidates_industry_id_foreign` (`industry_id`),
  ADD KEY `candidates_last_change_foreign` (`last_change`);

--
-- Indexes for table `candidate_educations`
--
ALTER TABLE `candidate_educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_educations_candidate_id_foreign` (`candidate_id`),
  ADD KEY `candidate_educations_degree_level_id_foreign` (`degree_level_id`),
  ADD KEY `candidate_educations_country_id_foreign` (`country_id`),
  ADD KEY `candidate_educations_state_id_foreign` (`state_id`),
  ADD KEY `candidate_educations_city_id_foreign` (`city_id`);

--
-- Indexes for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_experiences_candidate_id_foreign` (`candidate_id`),
  ADD KEY `candidate_experiences_country_id_foreign` (`country_id`),
  ADD KEY `candidate_experiences_state_id_foreign` (`state_id`),
  ADD KEY `candidate_experiences_city_id_foreign` (`city_id`);

--
-- Indexes for table `candidate_language`
--
ALTER TABLE `candidate_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_language_user_id_foreign` (`user_id`),
  ADD KEY `candidate_language_language_id_foreign` (`language_id`);

--
-- Indexes for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_skills_user_id_foreign` (`user_id`),
  ADD KEY `candidate_skills_skill_id_foreign` (`skill_id`);

--
-- Indexes for table `career_levels`
--
ALTER TABLE `career_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `career_levels_level_name_unique` (`level_name`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indexes for table `cms_services`
--
ALTER TABLE `cms_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_unique_id_unique` (`unique_id`),
  ADD KEY `companies_user_id_foreign` (`user_id`),
  ADD KEY `companies_industry_id_foreign` (`industry_id`),
  ADD KEY `companies_ownership_type_id_foreign` (`ownership_type_id`),
  ADD KEY `companies_company_size_id_foreign` (`company_size_id`),
  ADD KEY `companies_last_change_foreign` (`last_change`);

--
-- Indexes for table `company_sizes`
--
ALTER TABLE `company_sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_sizes_size_unique` (`size`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_jobs`
--
ALTER TABLE `email_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_jobs_user_id_foreign` (`user_id`),
  ADD KEY `email_jobs_job_id_foreign` (`job_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_companies`
--
ALTER TABLE `favourite_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourite_companies_user_id_foreign` (`user_id`),
  ADD KEY `favourite_companies_company_id_foreign` (`company_id`);

--
-- Indexes for table `favourite_jobs`
--
ALTER TABLE `favourite_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourite_jobs_user_id_foreign` (`user_id`),
  ADD KEY `favourite_jobs_job_id_foreign` (`job_id`);

--
-- Indexes for table `featured_records`
--
ALTER TABLE `featured_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_records_user_id_foreign` (`user_id`);

--
-- Indexes for table `front_settings`
--
ALTER TABLE `front_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functional_areas`
--
ALTER TABLE `functional_areas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `functional_areas_name_unique` (`name`);

--
-- Indexes for table `header_sliders`
--
ALTER TABLE `header_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_sliders`
--
ALTER TABLE `image_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `industries_name_unique` (`name`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_company_id_foreign` (`company_id`),
  ADD KEY `jobs_salary_period_id_foreign` (`salary_period_id`),
  ADD KEY `jobs_currency_id_foreign` (`currency_id`),
  ADD KEY `jobs_job_type_id_foreign` (`job_type_id`),
  ADD KEY `jobs_career_level_id_foreign` (`career_level_id`),
  ADD KEY `jobs_functional_area_id_foreign` (`functional_area_id`),
  ADD KEY `jobs_job_shift_id_foreign` (`job_shift_id`),
  ADD KEY `jobs_degree_level_id_foreign` (`degree_level_id`),
  ADD KEY `jobs_job_category_id_foreign` (`job_category_id`),
  ADD KEY `jobs_country_id_foreign` (`country_id`),
  ADD KEY `jobs_state_id_foreign` (`state_id`),
  ADD KEY `jobs_city_id_foreign` (`city_id`),
  ADD KEY `jobs_last_change_foreign` (`last_change`);

--
-- Indexes for table `jobs_alerts`
--
ALTER TABLE `jobs_alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_alerts_candidate_id_foreign` (`candidate_id`),
  ADD KEY `jobs_alerts_job_type_id_foreign` (`job_type_id`);

--
-- Indexes for table `jobs_skill`
--
ALTER TABLE `jobs_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_skill_job_id_foreign` (`job_id`),
  ADD KEY `jobs_skill_skill_id_foreign` (`skill_id`);

--
-- Indexes for table `jobs_tag`
--
ALTER TABLE `jobs_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_tag_job_id_foreign` (`job_id`),
  ADD KEY `jobs_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applications_job_id_foreign` (`job_id`),
  ADD KEY `job_applications_candidate_id_foreign` (`candidate_id`),
  ADD KEY `job_applications_job_stage_id_foreign` (`job_stage_id`);

--
-- Indexes for table `job_application_schedules`
--
ALTER TABLE `job_application_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_application_schedules_job_application_id_foreign` (`job_application_id`),
  ADD KEY `job_application_schedules_stage_id_foreign` (`stage_id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_categories_name_unique` (`name`);

--
-- Indexes for table `job_shifts`
--
ALTER TABLE `job_shifts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_shifts_shift_unique` (`shift`);

--
-- Indexes for table `job_stages`
--
ALTER TABLE `job_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_stages_company_id_foreign` (`company_id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_types_name_unique` (`name`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marital_status`
--
ALTER TABLE `marital_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `marital_status_marital_status_unique` (`marital_status`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

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
-- Indexes for table `news_letters`
--
ALTER TABLE `news_letters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_letters_email_unique` (`email`);

--
-- Indexes for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ownership_types`
--
ALTER TABLE `ownership_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ownership_types_name_unique` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_created_by_foreign` (`created_by`);

--
-- Indexes for table `post_assigned_categories`
--
ALTER TABLE `post_assigned_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_assigned_categories_post_id_foreign` (`post_id`),
  ADD KEY `post_assigned_categories_post_categories_id_foreign` (`post_categories_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `reported_jobs`
--
ALTER TABLE `reported_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reported_jobs_user_id_foreign` (`user_id`),
  ADD KEY `reported_jobs_job_id_foreign` (`job_id`);

--
-- Indexes for table `reported_to_candidates`
--
ALTER TABLE `reported_to_candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reported_to_candidates_user_id_foreign` (`user_id`),
  ADD KEY `reported_to_candidates_candidate_id_foreign` (`candidate_id`);

--
-- Indexes for table `reported_to_companies`
--
ALTER TABLE `reported_to_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reported_to_companies_user_id_foreign` (`user_id`),
  ADD KEY `reported_to_companies_company_id_foreign` (`company_id`);

--
-- Indexes for table `required_degree_levels`
--
ALTER TABLE `required_degree_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `required_degree_levels_name_unique` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `salary_currencies`
--
ALTER TABLE `salary_currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `salary_currencies_currency_name_unique` (`currency_name`);

--
-- Indexes for table `salary_periods`
--
ALTER TABLE `salary_periods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `salary_periods_period_unique` (`period`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `social_accounts_provider_id_unique` (`provider_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`),
  ADD KEY `subscriptions_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_tags_name_unique` (`name`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_approved_id_foreign` (`approved_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_state_id_foreign` (`state_id`),
  ADD KEY `users_city_id_foreign` (`city_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branding_sliders`
--
ALTER TABLE `branding_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `candidate_educations`
--
ALTER TABLE `candidate_educations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_language`
--
ALTER TABLE `candidate_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `career_levels`
--
ALTER TABLE `career_levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48378;

--
-- AUTO_INCREMENT for table `cms_services`
--
ALTER TABLE `cms_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company_sizes`
--
ALTER TABLE `company_sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `email_jobs`
--
ALTER TABLE `email_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourite_companies`
--
ALTER TABLE `favourite_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `favourite_jobs`
--
ALTER TABLE `favourite_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `featured_records`
--
ALTER TABLE `featured_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_settings`
--
ALTER TABLE `front_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `functional_areas`
--
ALTER TABLE `functional_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `header_sliders`
--
ALTER TABLE `header_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image_sliders`
--
ALTER TABLE `image_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs_alerts`
--
ALTER TABLE `jobs_alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs_skill`
--
ALTER TABLE `jobs_skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `jobs_tag`
--
ALTER TABLE `jobs_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_application_schedules`
--
ALTER TABLE `job_application_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `job_shifts`
--
ALTER TABLE `job_shifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_stages`
--
ALTER TABLE `job_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `marital_status`
--
ALTER TABLE `marital_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `news_letters`
--
ALTER TABLE `news_letters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noticeboards`
--
ALTER TABLE `noticeboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ownership_types`
--
ALTER TABLE `ownership_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post_assigned_categories`
--
ALTER TABLE `post_assigned_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reported_jobs`
--
ALTER TABLE `reported_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reported_to_candidates`
--
ALTER TABLE `reported_to_candidates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reported_to_companies`
--
ALTER TABLE `reported_to_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `required_degree_levels`
--
ALTER TABLE `required_degree_levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salary_currencies`
--
ALTER TABLE `salary_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `salary_periods`
--
ALTER TABLE `salary_periods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4123;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_career_level_id_foreign` FOREIGN KEY (`career_level_id`) REFERENCES `career_levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `candidates_functional_area_id_foreign` FOREIGN KEY (`functional_area_id`) REFERENCES `functional_areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `candidates_industry_id_foreign` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `candidates_last_change_foreign` FOREIGN KEY (`last_change`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `candidates_marital_status_id_foreign` FOREIGN KEY (`marital_status_id`) REFERENCES `marital_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `candidates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `candidate_educations`
--
ALTER TABLE `candidate_educations`
  ADD CONSTRAINT `candidate_educations_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `candidate_educations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `candidate_educations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `candidate_educations_degree_level_id_foreign` FOREIGN KEY (`degree_level_id`) REFERENCES `required_degree_levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `candidate_educations_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  ADD CONSTRAINT `candidate_experiences_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `candidate_experiences_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `candidate_experiences_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `candidate_experiences_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `candidate_language`
--
ALTER TABLE `candidate_language`
  ADD CONSTRAINT `candidate_language_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `candidate_language_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  ADD CONSTRAINT `candidate_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `candidate_skills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_company_size_id_foreign` FOREIGN KEY (`company_size_id`) REFERENCES `company_sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_industry_id_foreign` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_last_change_foreign` FOREIGN KEY (`last_change`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `companies_ownership_type_id_foreign` FOREIGN KEY (`ownership_type_id`) REFERENCES `ownership_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `email_jobs`
--
ALTER TABLE `email_jobs`
  ADD CONSTRAINT `email_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `email_jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favourite_companies`
--
ALTER TABLE `favourite_companies`
  ADD CONSTRAINT `favourite_companies_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favourite_companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favourite_jobs`
--
ALTER TABLE `favourite_jobs`
  ADD CONSTRAINT `favourite_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favourite_jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `featured_records`
--
ALTER TABLE `featured_records`
  ADD CONSTRAINT `featured_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_career_level_id_foreign` FOREIGN KEY (`career_level_id`) REFERENCES `career_levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `salary_currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_degree_level_id_foreign` FOREIGN KEY (`degree_level_id`) REFERENCES `required_degree_levels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_functional_area_id_foreign` FOREIGN KEY (`functional_area_id`) REFERENCES `functional_areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_job_category_id_foreign` FOREIGN KEY (`job_category_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_job_shift_id_foreign` FOREIGN KEY (`job_shift_id`) REFERENCES `job_shifts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_last_change_foreign` FOREIGN KEY (`last_change`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `jobs_salary_period_id_foreign` FOREIGN KEY (`salary_period_id`) REFERENCES `salary_periods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `jobs_alerts`
--
ALTER TABLE `jobs_alerts`
  ADD CONSTRAINT `jobs_alerts_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_alerts_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs_skill`
--
ALTER TABLE `jobs_skill`
  ADD CONSTRAINT `jobs_skill_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_skill_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs_tag`
--
ALTER TABLE `jobs_tag`
  ADD CONSTRAINT `jobs_tag_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobs_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_applications_job_stage_id_foreign` FOREIGN KEY (`job_stage_id`) REFERENCES `job_stages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_application_schedules`
--
ALTER TABLE `job_application_schedules`
  ADD CONSTRAINT `job_application_schedules_job_application_id_foreign` FOREIGN KEY (`job_application_id`) REFERENCES `job_applications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `job_application_schedules_stage_id_foreign` FOREIGN KEY (`stage_id`) REFERENCES `job_stages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_stages`
--
ALTER TABLE `job_stages`
  ADD CONSTRAINT `job_stages_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_assigned_categories`
--
ALTER TABLE `post_assigned_categories`
  ADD CONSTRAINT `post_assigned_categories_post_categories_id_foreign` FOREIGN KEY (`post_categories_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_assigned_categories_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reported_jobs`
--
ALTER TABLE `reported_jobs`
  ADD CONSTRAINT `reported_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reported_jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reported_to_candidates`
--
ALTER TABLE `reported_to_candidates`
  ADD CONSTRAINT `reported_to_candidates_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reported_to_candidates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reported_to_companies`
--
ALTER TABLE `reported_to_companies`
  ADD CONSTRAINT `reported_to_companies_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reported_to_companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_approved_id_foreign` FOREIGN KEY (`approved_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
