-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.5.6-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- random 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `random` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `random`;

-- 테이블 random.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `b_idx` int(11) NOT NULL AUTO_INCREMENT,
  `b_id` varchar(255) NOT NULL,
  `b_title` varchar(255) DEFAULT NULL,
  `b_text` mediumtext NOT NULL,
  `b_uploadtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`b_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 random.board:~22 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` (`b_idx`, `b_id`, `b_title`, `b_text`, `b_uploadtime`) VALUES
	(1, 'admin', '반갑습니다.', '반갑습니다. 오늘 가입하게 됐어요. 잘 부탁드립니다~', '2020-08-18 16:16:09'),
	(2, 'Lg', '안녕하세요', '오늘 가입하게 된 Lg 입니다. 앞으로 열심히 활동하겠습니다.', '2020-08-18 16:16:40'),
	(3, 'abc', 'Hello Everyone', 'I\'m so glad to find out this site. Have a good day!', '2020-08-18 16:17:31'),
	(8, 'Skt111', 'dddd', 'dadsfasdf', '2020-08-19 17:38:11'),
	(11, 'Skt111', 'agaxdcgbzxcgb', 'asdgfasdg', '2020-08-19 18:04:37'),
	(17, '1', '11', '11', '2020-09-24 16:46:38'),
	(18, '1', 'zbzb', '', '2020-10-06 16:02:57'),
	(19, 'Lg', 'asdogjadh', '정충호', '2021-01-07 17:40:16'),
	(20, 'abc', 'bbbbbb', '3333333333333333333', '2020-09-24 17:00:27'),
	(21, '1', 'zbzcvbzcbzcb', '', '2020-10-06 16:03:12'),
	(22, 'admin', 'sswewerqfdqd', 'dafgdfhbdfsagbadfgbasdg', '2020-09-24 17:01:01'),
	(23, 'abc', 'xzd1124', 'dfssdfh323215', '2020-09-28 17:22:07'),
	(24, 'Lg', '241251521', '11wesdt14', '2020-09-28 17:22:14'),
	(25, 'admin', 'gnsfgjj24', '정충호', '2021-01-07 17:40:09'),
	(26, 'when12', 'zbz1231412', 'weasdgasdg', '2020-09-28 17:22:53'),
	(27, 'HI123', 'zzxcb', 'zasfasfsadg', '2020-09-28 17:23:42'),
	(28, 'zlzz12', '김이박올림', 'ㅎㅇ 김이박 올림', '2020-09-29 16:44:08'),
	(29, 'HI123', 'ㅇㅋ콩ㅁㄴㄹ', 'ㄴㅇ머ㅜㄹㅇㅊㅋㅎㅁㄴㅇㅎ', '2020-10-05 16:30:23'),
	(30, 'when12', '정충호', '215236342', '2021-01-07 17:40:25'),
	(36, '1', '이제 댓글 기능', '댓글 기능이 있었으면 좋겠습니다!', '2020-10-06 17:29:25'),
	(37, 'Skt111', '댓글댓글', '댓댓글댓글', '2020-10-12 15:33:13'),
	(45, 'ongiggong', '댓글만 남음', '댓글만 남앗음', '2020-12-17 16:27:20');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

-- 테이블 random.comment 구조 내보내기
CREATE TABLE IF NOT EXISTS `comment` (
  `c_idx` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `c_comment` mediumtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `c_date` timestamp NULL DEFAULT current_timestamp(),
  `c_ref` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

-- 테이블 데이터 random.comment:~22 rows (대략적) 내보내기
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` (`c_idx`, `c_id`, `c_comment`, `c_date`, `c_ref`) VALUES
	(24, '1', '24414', '2020-10-12 17:56:28', 27),
	(25, '1', '24414', '2020-10-12 17:56:40', 27),
	(26, '1', ' \r\n		안녕하세요', '2020-10-13 15:11:10', 30),
	(34, '1', ' ss\r\n		', '2020-10-13 15:31:36', 21),
	(35, '1', ' \r\n		ddd', '2020-10-13 17:03:17', 19),
	(40, 'Skt111', '대앳글', '2020-12-14 17:02:37', 40),
	(41, 'Skt111', 'ㅇㅇㅇ', '2020-12-14 17:02:47', 41),
	(43, 'Skt111', '2', '2020-10-15 15:58:02', 37),
	(45, 'Skt111', '2', '2020-10-15 15:58:16', 37),
	(47, 'Skt111', ' 	가aaaaa1111', '2020-10-16 17:14:47', 36),
	(48, 'Skt111', ' 나		1111aaaaa', '2020-10-16 17:14:49', 36),
	(49, 'Skt111', 'safdasf1111', '2020-10-16 17:14:52', 36),
	(51, '1', '수정되네요', '2020-10-16 17:59:47', 36),
	(52, '1', '완료입니다.ㅁㅁㅁ', '2020-10-16 17:59:52', 36),
	(55, '1', '7777555551111', '2020-10-19 17:53:33', 37),
	(57, '1', ' \r\n		ㅇㅇ', '2020-11-25 15:43:10', 30),
	(61, 'ongiggong', ' dd\r\n', '2020-12-15 15:15:49', 41),
	(62, 'ongiggong', '수정', '2020-12-15 15:16:14', 40),
	(70, 'ongiggong', '111', '2020-12-22 16:11:51', 45),
	(71, 'ongiggong', '2222', '2020-12-23 17:02:46', 45),
	(72, 'ongiggong', 'ㅋㅋㅋㅋ', '2020-12-21 17:50:19', 45),
	(73, 'ongiggong', 'sdafasdf', '2020-12-23 17:58:14', 36);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- 테이블 random.ho_auth 구조 내보내기
CREATE TABLE IF NOT EXISTS `ho_auth` (
  `u_id` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `u_auth` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`u_id`,`u_auth`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 random.ho_auth:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `ho_auth` DISABLE KEYS */;
INSERT INTO `ho_auth` (`u_id`, `u_auth`) VALUES
	('aisdfasdf@sadloasdlf.com', 'ROLE_USER'),
	('choonghoe92@gmail.com', 'ROLE_USER'),
	('hong@gmail.com', 'ROLE_USER'),
	('ongiggong@naver.com', 'ROLE_ADMIN');
/*!40000 ALTER TABLE `ho_auth` ENABLE KEYS */;

-- 테이블 random.members 구조 내보내기
CREATE TABLE IF NOT EXISTS `members` (
  `no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `pw` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `date` datetime(6) DEFAULT current_timestamp(6),
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 random.members:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`no`, `id`, `username`, `pw`, `name`, `age`, `date`) VALUES
	(88, '1', NULL, '1', '1', 1, '2020-11-09 16:23:17.398777');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;

-- 테이블 random.menu 구조 내보내기
CREATE TABLE IF NOT EXISTS `menu` (
  `m_idx` varchar(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `m_name` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`m_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 random.menu:~11 rows (대략적) 내보내기
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`m_idx`, `m_name`) VALUES
	('10', '햄버거'),
	('1010', '단품 메뉴'),
	('101010', 'ㅇㅇ'),
	('1020', '세트 메뉴'),
	('20', '샌드위치'),
	('30', '드링크'),
	('3010', '커피'),
	('3020', '음료'),
	('3030', '아이스티'),
	('40', '사이드'),
	('50', '커피');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

-- 테이블 random.spring_session 구조 내보내기
CREATE TABLE IF NOT EXISTS `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 random.spring_session:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `spring_session` DISABLE KEYS */;
INSERT INTO `spring_session` (`PRIMARY_ID`, `SESSION_ID`, `CREATION_TIME`, `LAST_ACCESS_TIME`, `MAX_INACTIVE_INTERVAL`, `EXPIRY_TIME`, `PRINCIPAL_NAME`) VALUES
	('4d31a2ba-54b3-42ad-b485-3a5869f8b0b9', 'f1303993-a84f-4779-aac3-0281060cfebc', 1615279574695, 1615280121326, 7200, 1615287321326, 'ongiggong@naver.com'),
	('5b1e5f5a-a5e5-47c7-9f58-9241789bd73b', '06fa04bb-a3f6-4faf-808c-36f7a8c522a5', 1615270390606, 1615279545390, 7200, 1615286745390, 'ongiggong@naver.com');
/*!40000 ALTER TABLE `spring_session` ENABLE KEYS */;

-- 테이블 random.spring_session_attributes 구조 내보내기
CREATE TABLE IF NOT EXISTS `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 random.spring_session_attributes:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `spring_session_attributes` DISABLE KEYS */;
INSERT INTO `spring_session_attributes` (`SESSION_PRIMARY_ID`, `ATTRIBUTE_NAME`, `ATTRIBUTE_BYTES`) VALUES
	('4d31a2ba-54b3-42ad-b485-3a5869f8b0b9', 'SPRING_SECURITY_CONTEXT', _binary 0xACED00057372003D6F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E636F6E746578742E5365637572697479436F6E74657874496D706C000000000000021C0200014C000E61757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B78707372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E000000000000021C0200024C000B63726564656E7469616C737400124C6A6176612F6C616E672F4F626A6563743B4C00097072696E636970616C71007E0004787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C7371007E0004787001737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00067870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F72697479000000000000021C0200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F41444D494E7871007E000D737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C73000000000000021C0200024C000D72656D6F74654164647265737371007E000F4C000973657373696F6E496471007E000F787074000F303A303A303A303A303A303A303A3174002436353935356664382D623132352D343065652D616530342D6638353665303038353336337073720021636F6D2E686270726F6A6563742E6578616D706C652E646F6D61696E2E55736572000000000000000102000B5A001369734163636F756E744E6F6E457870697265645A001269734163636F756E744E6F6E4C6F636B65645A0017697343726564656E7469616C734E6F6E457870697265645A00096973456E61626C65644C000B617574686F72697469657371007E00064C000870617373776F726471007E000F4C00047541676571007E000F4C0005754175746871007E000F4C0005754E616D6571007E000F4C00067550686F6E6571007E000F4C0008757365726E616D6571007E000F7870010101017371007E000C0000000177040000000171007E00107874003C243261243130246A63427878516A6438344D72386B33786236396A422E645669514542675030446C7A536570565965662F565447476A526E6172304B74000639323132313670740009ECA095ECB6A9ED98B874000D3031302D333639392D313231367400136F6E676967676F6E67406E617665722E636F6D),
	('5b1e5f5a-a5e5-47c7-9f58-9241789bd73b', 'SPRING_SECURITY_CONTEXT', _binary 0xACED00057372003D6F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E636F6E746578742E5365637572697479436F6E74657874496D706C000000000000021C0200014C000E61757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B78707372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E000000000000021C0200024C000B63726564656E7469616C737400124C6A6176612F6C616E672F4F626A6563743B4C00097072696E636970616C71007E0004787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C7371007E0004787001737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00067870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F72697479000000000000021C0200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F41444D494E7871007E000D737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C73000000000000021C0200024C000D72656D6F74654164647265737371007E000F4C000973657373696F6E496471007E000F787074000F303A303A303A303A303A303A303A3174002432386133316233632D626436622D343432662D623331362D3063333833336265383966317073720021636F6D2E686270726F6A6563742E6578616D706C652E646F6D61696E2E55736572000000000000000102000B5A001369734163636F756E744E6F6E457870697265645A001269734163636F756E744E6F6E4C6F636B65645A0017697343726564656E7469616C734E6F6E457870697265645A00096973456E61626C65644C000B617574686F72697469657371007E00064C000870617373776F726471007E000F4C00047541676571007E000F4C0005754175746871007E000F4C0005754E616D6571007E000F4C00067550686F6E6571007E000F4C0008757365726E616D6571007E000F7870010101017371007E000C0000000177040000000171007E00107874003C243261243130246A63427878516A6438344D72386B33786236396A422E645669514542675030446C7A536570565965662F565447476A526E6172304B74000639323132313670740009ECA095ECB6A9ED98B874000D3031302D333639392D313231367400136F6E676967676F6E67406E617665722E636F6D);
/*!40000 ALTER TABLE `spring_session_attributes` ENABLE KEYS */;

-- 테이블 random.test 구조 내보내기
CREATE TABLE IF NOT EXISTS `test` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- 테이블 데이터 random.test:~12 rows (대략적) 내보내기
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` (`idx`, `id`, `name`, `age`) VALUES
	(1, 'a', '김에이', 22),
	(2, 'b', '김비이', 31),
	(3, 'c', '이씨이', 25),
	(4, 'd', '박디이', 44),
	(5, 'e', '김이', 51),
	(6, 'f', '최에프', 65),
	(7, 'g', '최지이', 11),
	(8, 'h', '정에치', 15),
	(9, 'i', '이아이', 52),
	(10, 'j', '김제이', 72),
	(11, 'k', '박케이', 36),
	(12, 'l', '구아이', 23);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;

-- 테이블 random.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `u_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `u_password` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `u_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `u_age` int(11) DEFAULT NULL,
  `u_phone` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `u_isAccountNonExpired` varchar(50) DEFAULT NULL,
  `u_isAccountNonLocked` varchar(50) DEFAULT NULL,
  `u_isCredentialsNonExpired` varchar(50) DEFAULT NULL,
  `u_isEnabled` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 random.user:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`u_id`, `u_password`, `u_name`, `u_age`, `u_phone`, `u_isAccountNonExpired`, `u_isAccountNonLocked`, `u_isCredentialsNonExpired`, `u_isEnabled`) VALUES
	('aisdfasdf@sadloasdlf.com', '$2a$10$Y1t3EPBUnyN9b7s9mi0h.OUibCuDIHN4a16FHuqwFr4e4RIQsglle', '김길동', 820514, '010-9874-2589', '1', '1', '1', '1'),
	('choonghoe92@gmail.com', '$2a$10$LgwiMWGGYi5wZCDgtoeLCunWKCcDtjbSLLYUvAQqGbwUh7kK2kFTu', '박민수', 620122, '010-4654-2585', '1', '1', '1', '1'),
	('hong@gmail.com', '$2a$10$TTfvslaRQQoczIPwE5if4eyPEZnw4akTmwLD/lFQtxlcp4c9U7Spy', '홍길동', 801111, '010-3698-8941', '1', '1', '1', '1'),
	('ongiggong@naver.com', '$2a$10$jcBxxQjd84Mr8k3xb69jB.dViQEBgP0DlzSepVYef/VTGGjRnar0K', '정충호', 921216, '010-3699-1216', '1', '1', '1', '1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
