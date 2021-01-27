SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DELIMITER $$
CREATE DEFINER=`twitchprogram`@`localhost` PROCEDURE `addAction` (IN `fsid` INT, IN `fstatus` VARCHAR(150) CHARSET utf8, IN `fgame` VARCHAR(150) CHARSET utf8, IN `fviewers` INT, IN `fviews` INT, IN `ffollowers` INT, IN `fupdated_at` VARCHAR(100))  NO SQL
INSERT INTO actions(SID,status,game,viewers,views,followers,updated_at) VALUES(fsid,fstatus,fgame,fviewers,fviews,ffollowers,fupdated_at)$$

CREATE DEFINER=`twitchprogram`@`localhost` PROCEDURE `getStreamers` ()  NO SQL
SELECT * FROM streamers s WHERE s.active = 1$$

DELIMITER ;

CREATE TABLE `actions` (
  `AID` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `status` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `game` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `viewers` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `followers` int(11) NOT NULL,
  `updated_at` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `added_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `actions` (`AID`, `SID`, `status`, `game`, `viewers`, `views`, `followers`, `updated_at`, `added_time`) VALUES
(17, 3, 'günaydın', 'Teamfight Tactics', 3445, 15184019, 441421, '2021-01-26 01:34:16.429571', '2021-01-26 01:49:32'),
(16, 3, 'günaydın', 'Teamfight Tactics', 3445, 15184019, 441419, '2021-01-26 01:34:16.429571', '2021-01-26 01:47:12'),
(18, 4, 'kardeşim o poketopu öyle atılmaz', 'Just Chatting', 820, 29969581, 458453, '2021-01-26 13:23:41.658404', '2021-01-26 13:41:22'),
(19, 4, 'kardeşim o poketopu öyle atılmaz', 'Bloons TD 6', 1773, 29986032, 458574, '2021-01-26 17:04:29.557962', '2021-01-26 17:17:23'),
(20, 4, 'kardeşim o poketopu öyle atılmaz', 'Bloons TD 6', 2028, 29989100, 458585, '2021-01-26 17:41:31.909122', '2021-01-26 17:56:41'),
(21, 5, 'Oyyyy heee | insta: wtcn', 'VALORANT', 10022, 97298443, 2179167, '2021-01-26 20:13:24.663954', '2021-01-26 20:42:57'),
(22, 8, 'efsane çılgın bindirim anları | social @zadekun', 'Just Chatting', 5327, 7931100, 185617, '2021-01-26 20:40:07.272678', '2021-01-26 20:42:58'),
(23, 9, 'izleyelim güzelleşelim', 'Need for Speed: Heat', 30634, 64107121, 1772269, '2021-01-26 20:37:48.065179', '2021-01-26 20:42:59'),
(24, 5, 'Oyyyy heee | insta: wtcn', 'VALORANT', 10871, 97318655, 2179400, '2021-01-26 20:54:04.732131', '2021-01-26 21:17:41'),
(25, 8, 'efsane çılgın bindirim anları | social @zadekun', 'Just Chatting', 6497, 7931100, 185693, '2021-01-26 20:40:07.272678', '2021-01-26 21:17:43'),
(26, 9, 'izleyelim güzelleşelim', 'Need for Speed: Heat', 27108, 64130923, 1772415, '2021-01-26 20:44:59.797277', '2021-01-26 21:17:43'),
(27, 5, 'Oyyyy heee | insta: wtcn', 'VALORANT', 10803, 97318655, 2179462, '2021-01-26 20:54:04.732131', '2021-01-26 21:27:13'),
(28, 8, 'efsane çılgın bindirim anları | social @zadekun', 'Just Chatting', 6201, 7936388, 185709, '2021-01-26 21:20:13.874910', '2021-01-26 21:27:14'),
(29, 9, 'izleyelim güzelleşelim', 'Need for Speed: Heat', 28712, 64157733, 1772462, '2021-01-26 21:25:21.380403', '2021-01-26 21:27:14'),
(30, 9, 'izleyelim güzelleşelim', 'Rust', 12262, 64256255, 1773271, '2021-01-27 01:23:34.129343', '2021-01-27 01:54:35'),
(31, 2, 'dgko | voRust | insta: fuatcankoseoglu', 'Rust', 133, 3243004, 65435, '2021-01-27 16:27:18.599699', '2021-01-27 16:56:00'),
(32, 3, 'kazanmaya çalışalım bakalım', 'Teamfight Tactics', 2767, 15214184, 442176, '2021-01-27 16:20:40.523779', '2021-01-27 16:56:00'),
(33, 4, 'Ne demek The Medium oynuyoruz POGGERS', 'The Medium', 1745, 30009413, 458706, '2021-01-27 16:55:08.624575', '2021-01-27 16:56:01'),
(34, 8, '???? \"Erken yayın\" ???? | social @zadekun', 'Just Chatting', 3038, 7941961, 185784, '2021-01-27 16:22:25.618928', '2021-01-27 16:56:02'),
(35, 2, 'dgko | voRust | insta: fuatcankoseoglu', 'Rust', 128, 3243355, 65438, '2021-01-27 17:03:34.777460', '2021-01-27 17:09:01'),
(36, 3, 'kazanmaya çalışalım bakalım', 'Teamfight Tactics', 3285, 15218173, 442205, '2021-01-27 16:56:10.660991', '2021-01-27 17:09:02'),
(37, 4, 'Ne demek The Medium oynuyoruz POGGERS', 'The Medium', 1638, 30009413, 458708, '2021-01-27 16:55:08.624575', '2021-01-27 17:09:02'),
(38, 8, '???? \"Erken yayın\" ???? | social @zadekun', 'Just Chatting', 3415, 7946452, 185812, '2021-01-27 16:58:06.923322', '2021-01-27 17:09:04'),
(39, 2, 'dgko | voRust | insta: fuatcankoseoglu', 'Rust', 137, 3243355, 65438, '2021-01-27 17:03:34.777460', '2021-01-27 17:17:44'),
(40, 3, 'kazanmaya çalışalım bakalım', 'Teamfight Tactics', 3447, 15218173, 442216, '2021-01-27 16:56:10.660991', '2021-01-27 17:17:44'),
(41, 4, 'Ne demek The Medium oynuyoruz POGGERS', 'The Medium', 1638, 30009413, 458710, '2021-01-27 16:55:08.624575', '2021-01-27 17:17:45'),
(42, 8, '???? \"Erken yayın\" ???? | social @zadekun', 'Just Chatting', 3161, 7946452, 185825, '2021-01-27 16:58:06.923322', '2021-01-27 17:17:46'),
(43, 2, 'dgko | voRust | insta: fuatcankoseoglu', 'Rust', 175, 3244635, 65454, '2021-01-27 18:34:03.530316', '2021-01-27 19:05:46'),
(44, 3, 'kazanmaya çalışalım bakalım', 'Teamfight Tactics', 2221, 15228840, 442315, '2021-01-27 19:01:36.445510', '2021-01-27 19:05:47'),
(45, 5, '(¬‿¬) | insta: wtcn', 'VALORANT', 7371, 97415741, 2181222, '2021-01-27 18:36:09.795466', '2021-01-27 19:05:48'),
(46, 6, 'SEN NAPTIĞN? - instagram/pqueen92', 'Just Chatting', 10980, 24599650, 1075657, '2021-01-27 18:28:32.110973', '2021-01-27 19:05:48'),
(47, 7, 'Warband Ranked !hepsiburada', 'Mount ', 24473, 48123929, 1943384, '2021-01-27 18:30:37.300770', '2021-01-27 19:05:48'),
(48, 8, '???? \"Erken yayın\" ???? | social @zadekun', 'Just Chatting', 6001, 7964997, 185964, '2021-01-27 19:02:44.594357', '2021-01-27 19:05:49');

CREATE TABLE `streamers` (
  `SID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `streamers` (`SID`, `TID`, `Name`, `username`, `active`, `added_date`) VALUES
(1, 6768122, 'Jahrein', 'jahrein', 1, '2021-01-26 01:05:31'),
(2, 105571533, 'LegatusLeman', 'legatusleman', 1, '2021-01-26 01:05:31'),
(3, 28541821, 'Uthenera', 'uthenera', 1, '2021-01-26 01:05:31'),
(4, 24233423, 'Videoyun', 'videoyun', 1, '2021-01-26 01:05:31'),
(5, 51950404, 'wtcN', 'wtcn', 1, '2021-01-26 01:05:31'),
(6, 177249859, 'pqueen', 'pqueen', 1, '2021-01-26 01:05:31'),
(7, 165080419, 'Elraenn', 'elraenn', 1, '2021-01-26 01:05:31'),
(8, 49508092, 'Zade', 'zade', 1, '2021-01-26 01:05:31'),
(9, 79087140, 'Kendine Müzisyen', 'kendinemuzisyen', 1, '2021-01-26 01:05:31'),
(10, 31921744, 'ZEON', 'zeon', 1, '2021-01-26 01:05:31'),
(11, 83399952, 'UNLOSTV', 'unlostv', 1, '2021-01-26 01:05:31'),
(12, 261720567, 'Berk Özdemir', 'berkozdemir', 1, '2021-01-26 01:05:31');


ALTER TABLE `actions`
  ADD PRIMARY KEY (`AID`);

ALTER TABLE `streamers`
  ADD PRIMARY KEY (`SID`);


ALTER TABLE `actions`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

ALTER TABLE `streamers`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
