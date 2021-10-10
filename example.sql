# 테스트용 mysql


CREATE TABLE `data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `date` DATETIME NOT NULL,
  `location` text NOT NULL,
  `contents` text,
  PRIMARY KEY (`id`)
);

INSERT INTO `data` VALUES (1,'speeding','2021-09-27 12:10:11','부산 남구 용소로13번길 ','위반내용: 초과속도 22km');
INSERT INTO `data` VALUES (2,'protective gear','2021-09-28 15:10:11','부산 남구 수영로298번길 ','위반내용: 보호구[헬멧] 미착용');
INSERT INTO `data` VALUES (3,'parking','2021-09-29 09:21:51','부산 남구 용소로19번길 ','위반내용: 불법 주정차');
INSERT INTO `data` VALUES (4,'license','2021-09-30 17:05:36','부산 남구 용소로6번길 ','위반내용: 무면허 운전');

~


