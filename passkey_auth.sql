-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 20 aug 2026 om 19:54
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `passkey_auth`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin_audit_log`
--

CREATE TABLE `admin_audit_log` (
  `id` int(11) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `action` varchar(100) NOT NULL,
  `target_user` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `admin_audit_log`
--

INSERT INTO `admin_audit_log` (`id`, `admin_username`, `action`, `target_user`, `ip_address`, `created_at`) VALUES
(10, 'system', 'user_registered', 'matijn@gmail.com', '127.0.0.1', '2026-08-20 12:34:55'),
(11, 'system', 'user_registered', 'evelienk@gmail.com', '127.0.0.1', '2026-08-20 12:35:19'),
(12, 'admin', 'admin_login', NULL, '127.0.0.1', '2026-08-20 12:36:00'),
(13, 'admin', 'view_users', NULL, '127.0.0.1', '2026-08-20 12:36:00'),
(14, 'admin', 'user_disabled', 'evelienk@gmail.com', '127.0.0.1', '2026-08-20 12:36:04'),
(15, 'admin', 'view_users', NULL, '127.0.0.1', '2026-08-20 12:36:04'),
(16, 'admin', 'view_users', NULL, '127.0.0.1', '2026-08-20 17:15:55'),
(17, 'admin', 'user_disabled', 'matijn@gmail.com', '127.0.0.1', '2026-08-20 17:16:09'),
(18, 'admin', 'view_users', NULL, '127.0.0.1', '2026-08-20 17:16:09'),
(19, 'admin', 'admin_login_failed', NULL, '127.0.0.1', '2026-08-20 17:17:36'),
(20, 'admin', 'admin_login_failed', NULL, '127.0.0.1', '2026-08-20 17:18:23'),
(21, 'system', 'user_registered', 'matijn.van.der.schans@gmail.com', '127.0.0.1', '2026-08-20 17:39:11');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `success` tinyint(1) DEFAULT 0,
  `ip_address` varchar(45) DEFAULT NULL,
  `attempt_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `username`, `success`, `ip_address`, `attempt_time`) VALUES
(10, 'evelienkoelman@gmail.com', 0, '127.0.0.1', '2026-08-20 12:34:46'),
(11, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 12:34:55'),
(12, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 12:35:11'),
(13, 'evelienk@gmail.com', 1, '127.0.0.1', '2026-08-20 12:35:19'),
(14, 'evelienk@gmail.com', 0, '127.0.0.1', '2026-08-20 12:35:25'),
(15, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 12:35:34'),
(16, 'admin', 0, '127.0.0.1', '2026-08-20 12:36:00'),
(17, 'admin', 1, '127.0.0.1', '2026-08-20 12:36:00'),
(18, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 14:03:31'),
(19, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 14:03:35'),
(20, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 14:03:36'),
(21, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 14:06:42'),
(22, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 14:09:37'),
(23, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 14:12:46'),
(24, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 14:13:11'),
(25, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 14:17:23'),
(26, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 14:17:35'),
(27, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 14:23:35'),
(28, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 14:24:44'),
(29, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 14:29:15'),
(30, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 14:40:09'),
(31, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 14:45:57'),
(32, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 15:01:29'),
(33, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 15:01:39'),
(34, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 15:09:19'),
(35, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 15:09:28'),
(36, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 15:14:31'),
(37, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 15:14:40'),
(38, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 15:16:47'),
(39, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 15:19:53'),
(40, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 15:24:18'),
(41, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 15:24:28'),
(42, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 16:33:47'),
(43, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 16:33:52'),
(44, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 16:49:36'),
(45, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 16:55:09'),
(46, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:01:11'),
(47, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:01:20'),
(48, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:17:03'),
(49, 'evelienk@gmail.com', 0, '127.0.0.1', '2026-08-20 17:17:08'),
(50, 'evelienk@gmail.com', 0, '127.0.0.1', '2026-08-20 17:17:08'),
(51, 'evelienk@gmail.com', 0, '127.0.0.1', '2026-08-20 17:17:10'),
(52, 'admin', 0, '127.0.0.1', '2026-08-20 17:17:36'),
(53, 'admin', 0, '127.0.0.1', '2026-08-20 17:18:23'),
(54, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:19:11'),
(55, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:20:37'),
(56, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:20:50'),
(57, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:29:38'),
(58, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:29:48'),
(59, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:34:07'),
(60, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:34:26'),
(61, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:37:35'),
(62, 'matijn.van.der.schans@gmail.com', 1, '127.0.0.1', '2026-08-20 17:39:11'),
(63, 'matijn.van.der.schans@gmail.com', 0, '127.0.0.1', '2026-08-20 17:39:50'),
(64, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:40:01'),
(65, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:44:25'),
(66, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:45:26'),
(67, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:45:29'),
(68, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:46:34'),
(69, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:46:37'),
(70, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:47:34'),
(71, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:47:36'),
(72, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:48:34'),
(73, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:49:14'),
(74, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:49:33'),
(75, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:49:35'),
(76, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:50:11'),
(77, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:50:35'),
(78, 'matijn@gmail.com', 1, '127.0.0.1', '2026-08-20 17:52:05'),
(79, 'matijn@gmail.com', 0, '127.0.0.1', '2026-08-20 17:52:08');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `passkeys`
--

CREATE TABLE `passkeys` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL COMMENT 'WebAuthn user ID (binary/hex)',
  `username` varchar(255) NOT NULL COMMENT 'User''s chosen username',
  `credential_id` varchar(255) NOT NULL COMMENT 'WebAuthn credential ID',
  `public_key` text NOT NULL COMMENT 'Public key for verification',
  `transports` varchar(255) DEFAULT 'internal' COMMENT 'Available transports (JSON array)',
  `status` enum('active','disabled') DEFAULT 'disabled' COMMENT 'Account status',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Account creation date',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Last update date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `passkeys`
--

INSERT INTO `passkeys` (`id`, `user_id`, `username`, `credential_id`, `public_key`, `transports`, `status`, `created_at`, `updated_at`) VALUES
(5, 'I2Q_uW8G9-OF0o-4ANWRIg', 'matijn@gmail.com', 'Pyt91JtZWYsEcp_X4rVygHwzS8zZLURBmKs8bpUZ1vE', 'o2NmbXRkbm9uZWdhdHRTdG10oGhhdXRoRGF0YVkBZ0mWDeWIDoxodDQXD2R2YFuP5K65ooYyx5lc87qDHZdjRQAAAAAAAAAAAAAAAAAAAAAAAAAAACAK33Um1lZiwRyn9fitXKAfDNLzNktREGYqzxulRnW8aQBAwM5AQAgWQEAw1y912l21VpeurGhidwGQd21HgJF64rr3Wc1AJL8DU7VdvSoSIPGreO8nOyHqTrq5pZAH5i08dFaj1gz8LAUCdtAYA8EK9ZG9n4rc1Fl0kAAnCZD6DTfTBwhtD94dNsiTh5vvGGi1d67dtsO0zxb3yn60VN5aL1fTTJWpHzNnPcvHK404S0vLdiqwoIFuJUYb6GFgRvVLyxglC3A9GdCHLzIrySWQtFJlLa5ns969cWCxmpDRBux1Gm8UoDDQqXHUVj1lYmcDvf4p01V4STg4gK0GOIXgO3rBv9pmF4zzUN2tzgNCGNnAISN4817C5Cdz8Gqr3DhRLudDWSFDAQAB', '[\"internal\"]', 'active', '2026-08-20 12:34:55', '2026-08-20 17:34:15'),
(6, '8nrd2q1f4zncYEgxzkUEfQ', 'evelienk@gmail.com', 'ifpoPYNkWOCnGLJyNHxG8zB92WSij6o41k7tzQ2clB8', 'o2NmbXRkbm9uZWdhdHRTdG10oGhhdXRoRGF0YVkBZ0mWDeWIDoxodDQXD2R2YFuP5K65ooYyx5lc87qDHZdjRQAAAAAAAAAAAAAAAAAAAAAAAAAAACCJmg9g2RY4KcYsnI0fEbzMH3ZZKKPqjjWTu3NDZyUH6QBAwM5AQAgWQEApH24Ao8BSKorYf272H7nZKHC4NssHOurAsalQU6ZglDmG0W7psc7hQkprvLf5JbhOY9orhlw7scKHXqy44w8gWkDlDLC6D6py7F1CmhNC2WBNspHZAevxPDHzqfJpSlZJl27aWn78IrPSyo3dWjlckKQpiIzeEQ80n4duDC1r3XttfJTq7xoRbRGckCn3D3TEwRyDJF6Lf1tjGZTtV0acN1tJiXSA81uvV7eRZsu7JvTauNQqr2uWctwHtkvctKECxRacS84DHtqPIqFurhKadxA2q7cCMV0HGfCx3MzT01b2EunTAlEaC2JUCkdmoDVtxJdfuytWhWABqyFDAQAB', '[\"internal\"]', 'active', '2026-08-20 12:35:19', '2026-08-20 17:34:13'),
(7, 'SKacCqYFdnVXF5yYztqzJg', 'matijn.van.der.schans@gmail.com', 'izb9cIDrymuCKpxkKBAIu7Aoo5qc0xLB-JVms4CGeWI', 'o2NmbXRkbm9uZWdhdHRTdG10oGhhdXRoRGF0YVkBZ0mWDeWIDoxodDQXD2R2YFuP5K65ooYyx5lc87qDHZdjRQAAAAAAAAAAAAAAAAAAAAAAAAAAACCLNv1wgOvKa4IqnGQoEAi7sCijmpzTEsH4lWazgIZ5YqQBAwM5AQAgWQEAqjYAxWXyN4yoeo2bUrfkEruZJDRJn0YVWhs4FF9dJVlPaLqAjWNr1bSUJgcygqVLrM918EeFMa2o9evL2GwGSKP9pdMbGiKyP7JeJF8J11EhPo1nlGZgmRhhgJb1syueuPWhBPe6JqrABVA8rHO0AobkWipZUDsIgaF04ZUkkzC7xkj9LIVFBbm8DabwQVpMT6QAIVdef5Ed9QNFhrNtup8z24X3SyTzyn6joSm19cOPbWEJWSwapNtbcFGUWf5oEhFBOpbBUEXru1hDUN53OHSSNRr5GdDTqfTmhdxOLVIgeOuDvqfutlKGIn07QUPXFVKEFZKonCBuxZkSyFDAQAA=', '[\"internal\"]', 'active', '2026-08-20 17:39:11', '2026-08-20 17:39:11');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `admin_audit_log`
--
ALTER TABLE `admin_audit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admin_username` (`admin_username`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexen voor tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`),
  ADD KEY `idx_attempt_time` (`attempt_time`);

--
-- Indexen voor tabel `passkeys`
--
ALTER TABLE `passkeys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `credential_id` (`credential_id`),
  ADD KEY `idx_username` (`username`),
  ADD KEY `idx_credential_id` (`credential_id`),
  ADD KEY `idx_status` (`status`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `admin_audit_log`
--
ALTER TABLE `admin_audit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT voor een tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT voor een tabel `passkeys`
--
ALTER TABLE `passkeys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
