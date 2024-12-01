-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2024 at 06:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `game_name` varchar(50) DEFAULT NULL,
  `img_url` varchar(400) DEFAULT NULL,
  `sold_copies` int(11) DEFAULT NULL,
  `genre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"titanforgegames\",\"table\":\"review\"},{\"db\":\"titanforgegames\",\"table\":\"paid_games\"},{\"db\":\"titanforgegames\",\"table\":\"made_games\"},{\"db\":\"titanforgegames\",\"table\":\"made_ad\"},{\"db\":\"titanforgegames\",\"table\":\"gamers\"},{\"db\":\"titanforgegames\",\"table\":\"free_games\"},{\"db\":\"titanforgegames\",\"table\":\"currency_purchase\"},{\"db\":\"titanforgegames\",\"table\":\"currency_package\"},{\"db\":\"titanforgegames\",\"table\":\"buy\"},{\"db\":\"titanforgegames\",\"table\":\"ad\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'titanforgegames', 'games', '{\"sorted_col\":\"`games`.`genre` ASC\"}', '2024-08-29 13:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-08-29 17:02:01', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `titanforgegames`
--
CREATE DATABASE IF NOT EXISTS `titanforgegames` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `titanforgegames`;

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE `ad` (
  `ad_id` int(11) NOT NULL,
  `ad_img_url` varchar(300) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`ad_id`, `ad_img_url`, `company_id`) VALUES
(1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmQ6HIn_gmS9mYGTWZ4HGVzjmuZOOuEJHAQA&s', 4),
(2, 'https://upload.wikimedia.org/wikipedia/en/2/2f/Yakuza_like_a_dragon_cover_art.jpg', 3),
(13, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co7jl8.jpg', 10),
(14, 'https://upload.wikimedia.org/wikipedia/en/a/a7/Batman_Arkham_Shadow_cover_art.png', 8),
(16, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKFwo5HV2SuFutsyDqxwBGAqwOTTibgjY-Og&s', 12),
(17, 'https://upload.wikimedia.org/wikipedia/en/1/18/Ghost_of_Y%C5%8Dtei_cover_art.png', 13);

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `gamer_username` varchar(30) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `copy_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`gamer_username`, `game_id`, `copy_no`) VALUES
('user1', 1, 1),
('user5', 1, 2),
('user1', 2, 1),
('user2', 2, 2),
('user2', 3, 1),
('user3', 1, 3),
('user3', 3, 2),
('user4', 3, 3),
('user4', 4, 1),
('user5', 4, 2),
('user1', 5, 1),
('user3', 5, 2),
('user2', 6, 1),
('user3', 6, 2),
('user1', 7, 1),
('user3', 7, 2),
('user4', 7, 3),
('user2', 8, 1),
('user3', 8, 2),
('user1', 3, 4),
('user1', 6, 3),
('user2', 1, 4),
('user5', 3, 5),
('rehan', 3, 6),
('rehan', 4, 3),
('rehan', 7, 4),
('rehan', 8, 3),
('user1', 15, 1),
('user1', 16, 1),
('user1', 20, 1),
('user1', 29, 1),
('rehan123', 3, 7),
('rehan123', 1, 5),
('rehan123', 2, 3),
('rehan123', 6, 4),
('rehan123', 5, 3),
('rehan123', 4, 4),
('rehan123', 15, 2),
('rehan123', 26, 1),
('rehan123', 24, 1),
('rehan123', 7, 5),
('user2', 20, 2),
('user3', 20, 3),
('user4', 20, 4),
('rehan', 20, 5),
('rehan', 29, 2),
('rehan', 28, 1),
('rehnuma', 5, 4),
('rehnuma', 3, 8),
('rehnuma', 20, 6),
('rehnuma', 4, 5),
('rehnuma', 7, 6),
('random', 20, 7),
('random', 8, 4),
('random', 16, 2),
('random', 25, 1),
('random', 33, 1),
('user1', 33, 2),
('user1', 28, 2),
('user1', 36, 1),
('user1', 37, 1),
('user1', 24, 2),
('user1', 32, 1),
('user1', 4, 6),
('randm1', 20, 8),
('randm1', 4, 7),
('zia', 20, 9),
('zia', 7, 7),
('zia', 16, 3),
('rehan', 32, 2),
('zia', 3, 9),
('zia', 36, 2),
('zrrehan', 1, 6),
('zrrehan', 4, 8),
('zrrehan', 3, 10),
('zrrehan', 38, 1),
('zrrehan', 39, 1),
('zrrehan', 6, 5),
('zrrehan', 16, 4),
('beeboy', 30, 1),
('beeboy', 20, 10),
('beeboy', 16, 5),
('beeboy', 29, 3),
('beeboy', 27, 1),
('beeboy', 15, 3),
('beeboy', 40, 1),
('Aurthur ', 40, 2),
('Aurthur ', 41, 1),
('Aurthur ', 16, 6),
('Aurthur ', 20, 11),
('Aurthur ', 7, 8),
('proGamer123', 20, 12),
('proGamer123', 16, 7),
('proGamer123', 6, 6),
('proGamer123', 1, 7),
('proGamer123', 40, 3),
('proGamer123', 2, 4),
('proGamer123', 28, 3),
('proGamer123', 42, 1),
('proGamer123', 43, 1),
('ayon125', 3, 11),
('ayon125', 16, 8),
('zrrehan', 43, 2),
('zrrehan', 42, 2),
('zrrehan', 27, 2);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_name` varchar(30) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `revenue_share_percentage` decimal(10,2) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_name`, `company_id`, `revenue_share_percentage`, `password`, `username`) VALUES
('CD Projekt Red', 1, 20.00, '123', 'cdprojektred'),
('Ubisoft', 2, 15.00, '123', 'ubisoft'),
('Sega', 3, 20.00, '123', 'sega'),
('Rockstar', 4, 25.00, '123', 'rockstar'),
('Rocksteady', 8, 15.00, '123', 'rocksteady'),
('Santa Monica Studio ', 10, 15.00, '123', 'santamonicastudio'),
('FROM SOFTWARE ', 11, 15.00, '123', 'fromsoftware'),
('Guerrilla Games', 12, 15.00, '123', 'GuerrillaGames'),
('Sucker Punch', 13, 15.00, '123', 'SuckerPunch');

-- --------------------------------------------------------

--
-- Table structure for table `currency_package`
--

CREATE TABLE `currency_package` (
  `package_id` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currency_package`
--

INSERT INTO `currency_package` (`package_id`, `price`, `amount`) VALUES
(1, 10.00, 100.00),
(2, 20.00, 200.00),
(3, 30.00, 300.00),
(4, 50.00, 500.00),
(5, 100.00, 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `currency_purchase`
--

CREATE TABLE `currency_purchase` (
  `package_amount` double(10,2) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currency_purchase`
--

INSERT INTO `currency_purchase` (`package_amount`, `username`) VALUES
(100.00, 'user1'),
(100.00, 'user1'),
(200.00, 'user2'),
(100.00, 'user1'),
(100.00, 'user1'),
(1000.00, 'user1'),
(200.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(100.00, 'user1'),
(200.00, 'user3'),
(200.00, 'user2'),
(200.00, 'user5'),
(200.00, 'rehan'),
(300.00, 'user1'),
(1000.00, 'rehan123'),
(1000.00, 'rehan123'),
(1000.00, 'rehan123'),
(1000.00, 'rehan123'),
(1000.00, 'rehan123'),
(1000.00, 'rehan123'),
(1000.00, 'rehan123'),
(1000.00, 'rehan123'),
(300.00, 'user2'),
(500.00, 'user3'),
(1000.00, 'user4'),
(1000.00, 'rehan'),
(1000.00, 'rehnuma'),
(100.00, 'random'),
(1000.00, 'random'),
(300.00, 'user1'),
(500.00, 'user1'),
(1000.00, 'user1'),
(200.00, 'randm1'),
(1000.00, 'randm1'),
(300.00, 'randm1'),
(200.00, 'user1'),
(500.00, 'user1'),
(1000.00, 'zia'),
(1000.00, 'zrrehan'),
(300.00, 'zrrehan'),
(200.00, 'zrrehan'),
(1000.00, 'beeboy'),
(300.00, 'beeboy'),
(1000.00, 'Aurthur '),
(500.00, 'Aurthur '),
(1000.00, 'proGamer123'),
(500.00, 'proGamer123'),
(100.00, 'ayon125'),
(1000.00, 'ayon125');

-- --------------------------------------------------------

--
-- Table structure for table `free_ad_freq_counter`
--

CREATE TABLE `free_ad_freq_counter` (
  `username` varchar(30) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `free_games`
--

CREATE TABLE `free_games` (
  `game_id` int(11) NOT NULL,
  `ad_frequency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `free_games`
--

INSERT INTO `free_games` (`game_id`, `ad_frequency`) VALUES
(4, 1),
(7, 2),
(8, 3),
(15, 1),
(16, 2),
(19, 1),
(29, 2),
(39, 2),
(40, 1),
(42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gamers`
--

CREATE TABLE `gamers` (
  `username` varchar(30) NOT NULL,
  `total_games` int(11) DEFAULT NULL,
  `wallet_amount` decimal(10,2) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gamers`
--

INSERT INTO `gamers` (`username`, `total_games`, `wallet_amount`, `password`) VALUES
('Aurthur ', 5, 600.00, '123'),
('ayon125', 2, 900.00, '123'),
('beeboy', 7, 550.00, '123'),
('ChatGPT', 0, 0.00, '123'),
('GGgamer', 0, 0.00, '123'),
('proGamer123', 9, 0.00, '123'),
('randm1', 2, 1200.00, '123'),
('random', 5, 500.00, '123'),
('rehan', 8, 350.00, '123'),
('rehan123', 10, 2700.00, '123'),
('rehnuma', 5, 300.00, '123'),
('user1', 17, 1100.00, '123'),
('user2', 6, 0.00, '123'),
('user3', 7, 201.00, '123'),
('user4', 4, 700.00, '123'),
('user5', 3, 1.00, '123'),
('zia', 5, 250.00, '123'),
('zrrehan', 10, 150.00, '123');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `game_name` varchar(50) DEFAULT NULL,
  `img_url` varchar(400) DEFAULT NULL,
  `sold_copies` int(11) DEFAULT NULL,
  `genre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`game_id`, `game_name`, `img_url`, `sold_copies`, `genre`) VALUES
(1, 'Assassin\'s Creed II', 'https://howlongtobeat.com/games/Assassins_Creed_2_Box_Art.JPG', 7, 'Open World'),
(2, 'Cyberpunk 2077', 'https://digital.datablitz.com.ph/cdn/shop/products/DATABLITZ_CyberPunk.png?v=1672379201', 4, 'Open World'),
(3, 'The Witcher 3 Wild Hunt', 'https://upload.wikimedia.org/wikipedia/en/thumb/0/0c/Witcher_3_cover_art.jpg/220px-Witcher_3_cover_art.jpg', 10, 'Open World'),
(4, 'Virtual Cop 2', 'https://cdn.mobygames.com/covers/614563-virtua-cop-2-windows-front-cover.jpg', 8, 'Arcade'),
(5, 'Yakuza 0 ', 'https://assets-prd.ignimgs.com/2020/11/05/yakuza-zero-button-fin-1604543502548.jpg?width=300&crop=1%3A1%2Csmart&auto=webp', 4, 'Semi Open World'),
(6, 'Judgement ', 'https://images.igdb.com/igdb/image/upload/t_cover_big/co7q97.webp', 5, 'Semi Open World'),
(7, 'Read Dead Redemption Online ', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSq3XUpJhU3yMnZTtPnOJqEdOgVvo7EdFq3SZ31wsA4u9ztndDFCdoPOIM2pijFOP6DKAJq', 8, 'Multiplayer'),
(8, 'GTA Online', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG7-PIm8lwUjNAr9dAjk4D7Hklws2hyO1txg&s', 4, 'Multiplayer'),
(15, 'Red Dead Redemption', 'https://pcden.lk/wp-content/uploads/2024/04/GA-0468.webp', 3, 'Open World'),
(16, 'Batman Arkham Origins Blackgate', 'https://upload.wikimedia.org/wikipedia/en/5/51/Batman_Arkham_Origins_Blackgate_cover.jpg', 8, 'Action-Adventure'),
(19, 'Batman Arkham VR', 'https://upload.wikimedia.org/wikipedia/en/2/22/Batman-Arkham-VR-Cover-Art.jpg', 0, 'Action-Adventure'),
(20, 'Batman Arkham Knight', 'https://images.launchbox-app.com/116fa30d-fbd3-4555-b5a9-ec8ef96913ee.jpg', 12, 'Action-Adventure'),
(24, 'Red Dead Redemption 2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI4Gcctg3EzqR-9KMM0-kDVPY3qglCh4Y96Q&s', 2, 'Open World'),
(25, 'God of War ', 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/God_of_War_4_cover.jpg/220px-God_of_War_4_cover.jpg', 1, 'Semi Open World'),
(26, 'God of War Ragnarok', 'https://upload.wikimedia.org/wikipedia/en/e/ee/God_of_War_Ragnar%C3%B6k_cover.jpg', 1, 'Semi Open World'),
(27, 'God of War Collection', 'https://assetsio.gnwcdn.com/co2enh.jpg?width=1200&height=1200&fit=bounds&quality=70&format=jpg&auto=webp', 2, 'Semi Open World'),
(28, 'God of War III', 'https://m.media-amazon.com/images/M/MV5BZWQ2MjU0ZDEtZDJjMy00YzQwLTkzMDMtZGUwMmY1ZjM4ZTk1XkEyXkFqcGdeQXVyMTA0MTM5NjI2._V1_.jpg', 3, 'Semi Open World'),
(29, 'God of War Ghost of Sparta', 'https://cdn2.steamgriddb.com/thumb/67a0df3c2f1bb6fbc4f501515518dd21.jpg', 3, 'Semi Open World'),
(30, 'Assassin\'s Creed Valhalla', 'https://upload.wikimedia.org/wikipedia/en/f/ff/Assassin%27s_Creed_Valhalla_cover.jpg', 1, 'Open World'),
(31, 'Assassin\'s Creed Black Flag', 'https://upload.wikimedia.org/wikipedia/en/2/28/Assassin%27s_Creed_IV_-_Black_Flag_cover.jpg', 0, 'Open WOrld'),
(32, 'Assassin\'s Creed Rogue', 'https://upload.wikimedia.org/wikipedia/en/a/ae/Assassin%27s_Creed_Rogue.jpg', 2, 'Open World'),
(33, 'Assassin\'s Creed ', 'https://static.tvtropes.org/pmwiki/pub/images/s_Creed_I_for_TV_Tropes_2104.jpg', 2, 'Open World'),
(34, 'Dark Souls', 'https://upload.wikimedia.org/wikipedia/en/8/8d/Dark_Souls_Cover_Art.jpg', 0, 'Open World'),
(35, 'Dark Souls II', 'https://upload.wikimedia.org/wikipedia/en/e/ed/Dark_Souls_II_cover.jpg', 0, 'Open World'),
(36, 'Dark Souls III', 'https://upload.wikimedia.org/wikipedia/en/b/bb/Dark_souls_3_cover_art.jpg', 2, 'Open World'),
(37, 'Elden Ring', 'https://m.media-amazon.com/images/I/61Hj5BHApPL._AC_UF1000,1000_QL80_.jpg', 1, 'Open World'),
(38, 'GTA 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFYqcHj_PQyh71wn1d7oP6qi7rivq13z5wDA&s', 1, 'Open World'),
(39, 'Gta San Andreas', 'https://cdn.mobygames.com/covers/4208388-grand-theft-auto-san-andreas-playstation-2-front-cover.jpg', 1, 'Open World'),
(40, 'Horizon Zero Dawn ', 'https://image.api.playstation.com/vulcan/img/rnd/202009/2923/jAT7HjpL49A62bU7hLKXJ96b.png', 3, 'Open World'),
(41, 'Horizon Forbidden West', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/69/Horizon_Forbidden_West_cover_art.jpg/220px-Horizon_Forbidden_West_cover_art.jpg', 1, 'Open World'),
(42, 'inFAMOUS: Second Son', 'https://upload.wikimedia.org/wikipedia/en/3/34/Infamous_second_son_boxart.jpg', 2, 'Open World'),
(43, 'Ghost of Tsushima', 'https://upload.wikimedia.org/wikipedia/en/b/b6/Ghost_of_Tsushima.jpg', 2, 'Action-Adventure');

-- --------------------------------------------------------

--
-- Table structure for table `made_ad`
--

CREATE TABLE `made_ad` (
  `company_id` int(11) DEFAULT NULL,
  `ad_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `made_games`
--

CREATE TABLE `made_games` (
  `company_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `made_games`
--

INSERT INTO `made_games` (`company_id`, `game_id`) VALUES
(1, 3),
(1, 2),
(4, 8),
(4, 7),
(3, 4),
(3, 5),
(3, 6),
(2, 1),
(4, 15),
(8, 16),
(8, 16),
(8, 19),
(8, 20),
(8, 20),
(8, 20),
(8, 24),
(10, 25),
(10, 26),
(10, 27),
(10, 28),
(10, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(11, 34),
(11, 35),
(11, 36),
(11, 37),
(4, 38),
(4, 39),
(12, 40),
(12, 41),
(13, 42),
(13, 43);

-- --------------------------------------------------------

--
-- Table structure for table `paid_games`
--

CREATE TABLE `paid_games` (
  `game_id` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paid_games`
--

INSERT INTO `paid_games` (`game_id`, `price`) VALUES
(1, 200.00),
(2, 200.00),
(3, 200.00),
(5, 200.00),
(6, 200.00),
(20, 300.00),
(24, 300.00),
(25, 200.00),
(26, 400.00),
(27, 150.00),
(28, 200.00),
(30, 300.00),
(31, 200.00),
(32, 150.00),
(33, 100.00),
(34, 100.00),
(35, 199.00),
(36, 250.00),
(37, 400.00),
(38, 200.00),
(41, 600.00),
(43, 400.00);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `comment` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `username`, `game_id`, `comment`) VALUES
(1, 'rehan', 3, 'Everyone Should Try this Game!!'),
(2, 'user1', 3, 'If you are looking for the best game. Here it is. '),
(17, 'user3', 3, 'BEST GAME 10/10'),
(18, 'user3', 1, 'If you need the best Assassin\'s Creed game. You must play this one'),
(19, 'user3', 5, 'Better Than GTA'),
(20, 'user3', 20, 'So far Batman Arkham Knight is EVERYTHING I wanted it to be. I can already tell this is going to be an amazing journey'),
(22, 'rehan', 20, 'This is my favourite Batman game. Brilliant game! All the flaws and irritating things from the first few games in the Arkham series are ironed out in this game, although there are a still a tonne of collectibles.  The new feature of driving the Batmobile, which is essentially a fast supertank, is really cool.  Story is good, level design is excellent, visuals are decent and combat is satisfying.  For the 100% achievement hunters, it is quite straightforward. There are only a couple of very annoying achievements which include getting 1million points (this is a combo above 400+) in the Iceberg AR challenge which triggers the croc boss battle. It took me a lot of attempts to get this. Another annoying one is getting 4 characters all the way through the Monarch Theatre AR challenge without breaking your combo meter once. This was my toughest one to do. Sounds easy, but trust me it ain\'t!'),
(23, 'random', 20, 'One of the Best game ever'),
(24, 'random', 33, 'The first and best Assassin\'s Creed'),
(27, 'zrrehan', 1, 'comment1'),
(28, 'zrrehan', 6, 'This is a very good game'),
(29, 'beeboy', 30, 'D* banaiso bhaya shei hoise'),
(30, 'beeboy', 20, '👌'),
(31, 'Aurthur ', 20, 'It is the best batman arkham game '),
(32, 'proGamer123', 20, 'Good game ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD KEY `gamer_username` (`gamer_username`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `currency_package`
--
ALTER TABLE `currency_package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `currency_purchase`
--
ALTER TABLE `currency_purchase`
  ADD KEY `username` (`username`);

--
-- Indexes for table `free_ad_freq_counter`
--
ALTER TABLE `free_ad_freq_counter`
  ADD KEY `username` (`username`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `free_games`
--
ALTER TABLE `free_games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `gamers`
--
ALTER TABLE `gamers`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `made_ad`
--
ALTER TABLE `made_ad`
  ADD KEY `company_id` (`company_id`),
  ADD KEY `ad_id` (`ad_id`);

--
-- Indexes for table `made_games`
--
ALTER TABLE `made_games`
  ADD KEY `company_id` (`company_id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `paid_games`
--
ALTER TABLE `paid_games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `username` (`username`),
  ADD KEY `game_id` (`game_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad`
--
ALTER TABLE `ad`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ad`
--
ALTER TABLE `ad`
  ADD CONSTRAINT `ad_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`);

--
-- Constraints for table `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`gamer_username`) REFERENCES `gamers` (`username`),
  ADD CONSTRAINT `buy_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

--
-- Constraints for table `currency_purchase`
--
ALTER TABLE `currency_purchase`
  ADD CONSTRAINT `currency_purchase_ibfk_1` FOREIGN KEY (`username`) REFERENCES `gamers` (`username`);

--
-- Constraints for table `free_ad_freq_counter`
--
ALTER TABLE `free_ad_freq_counter`
  ADD CONSTRAINT `free_ad_freq_counter_ibfk_1` FOREIGN KEY (`username`) REFERENCES `gamers` (`username`),
  ADD CONSTRAINT `free_ad_freq_counter_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

--
-- Constraints for table `free_games`
--
ALTER TABLE `free_games`
  ADD CONSTRAINT `free_games_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

--
-- Constraints for table `made_ad`
--
ALTER TABLE `made_ad`
  ADD CONSTRAINT `made_ad_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `made_ad_ibfk_2` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`ad_id`);

--
-- Constraints for table `made_games`
--
ALTER TABLE `made_games`
  ADD CONSTRAINT `made_games_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `made_games_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

--
-- Constraints for table `paid_games`
--
ALTER TABLE `paid_games`
  ADD CONSTRAINT `paid_games_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`username`) REFERENCES `gamers` (`username`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
