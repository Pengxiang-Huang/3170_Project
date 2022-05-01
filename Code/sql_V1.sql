-- Updated @ 2022/4/30
-- Notice that some tables are used for django system.

-- Schema CSC3170
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `CSC3170` ;
CREATE SCHEMA IF NOT EXISTS `CSC3170` DEFAULT CHARACTER SET utf8 ;
USE `CSC3170` ;


-- Table structure for table `Our_project_user`
DROP TABLE IF EXISTS `Our_project_user`;
CREATE TABLE `Our_project_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  `grade` int DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index_user_name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table `Our_project_user`
LOCK TABLES `Our_project_user` WRITE;
INSERT INTO `Our_project_user` VALUES (1,'122010249@link.cuhk.edu.cn','qpr','35ad0d1a8496bc378ed73fc9f098e559','http://175.178.34.84/profiles/1649253091630.jpg',NULL,NULL,'2022-03-11 07:04:49.493694','2022-04-07 06:49:24.009012'),(2,'122010249@link.cuhk.edu.cn','1234','202cb962ac59075b964b07152d234b70','',NULL,NULL,'2022-03-11 07:12:25.407426','2022-03-11 07:12:25.407459'),(3,'122010249@link.cuhk.edu.cn','qqq','202cb962ac59075b964b07152d234b70','',NULL,NULL,'2022-03-11 07:13:10.849469','2022-03-11 07:13:10.849469'),(4,'122010249@link.cuhk.edu.cn','yyy','202cb962ac59075b964b07152d234b70','',NULL,NULL,'2022-03-11 07:13:51.020685','2022-03-11 07:13:51.020720'),(5,'122456789@link.cuhk.edu.cn','nobody','202cb962ac59075b964b07152d234b70','',NULL,NULL,'2022-03-17 05:24:12.726320','2022-03-17 05:24:12.726353'),(6,'122011111@link.cuhk.edu.cn','不会起名','caf1a3dfb505ffed0d024130f58c5cfa','',NULL,NULL,'2022-03-17 10:04:44.401660','2022-03-17 10:04:44.401695'),(7,'123456789@link.cuhk.edu.cn','5555','827ccb0eea8a706c4c34a16891f84e7b','',NULL,NULL,'2022-03-17 10:09:53.288498','2022-03-17 10:09:53.288530'),(8,'119010249@link.cuhk.edu.cn','qweqwe','202cb962ac59075b964b07152d234b70','',NULL,NULL,'2022-03-22 14:41:28.790265','2022-03-22 14:41:28.790332'),(9,'119010167@link.cuhk.edu.cn','lzh','202cb962ac59075b964b07152d234b70','http://175.178.34.84/profiles/1648912734658.jpg',NULL,NULL,'2022-03-23 15:17:57.395887','2022-04-02 15:18:54.962571'),(10,'119010249@link.cuhk.edu.cn','qpr_real','35ad0d1a8496bc378ed73fc9f098e559','',NULL,NULL,'2022-03-23 15:22:37.641848','2022-03-23 15:22:37.641882'),(11,'119010249@link.cuhk.edu.cn','hihi','202cb962ac59075b964b07152d234b70','',NULL,NULL,'2022-03-23 15:49:53.286947','2022-03-23 15:49:53.286978'),(12,'119010249@link.cuhk.edu.cn','123','202cb962ac59075b964b07152d234b70','',NULL,NULL,'2022-03-23 15:50:17.597738','2022-03-23 15:50:17.597785'),(13,'119010249@link.cuhk.edu.cn','1233','202cb962ac59075b964b07152d234b70','',NULL,NULL,'2022-03-23 15:50:40.549364','2022-03-23 15:50:40.549403'),(16,'119010108@link.cuhk.edu.cn','Demario_huang','9003d1df22eb4d3820015070385194c8','http://175.178.34.84/profiles/1648882656776.jpg',NULL,NULL,'2022-04-02 06:56:08.791225','2022-04-02 06:57:38.957615'),(17,'119010167@link.cuhk.edu.cn','lzh111','698d51a19d8a121ce581499d7b701668','',NULL,NULL,'2022-04-02 15:09:37.278488','2022-04-02 15:09:37.278520'),(42,'119010108@link.cuhk.edu.cn','huangwawa','ad57484016654da87125db86f4227ea3','',NULL,NULL,'2022-04-06 13:55:43.788519','2022-04-06 13:55:43.788556'),(43,'119010108@link.cuhk.edu.cn','das','ad57484016654da87125db86f4227ea3','',NULL,NULL,'2022-04-06 13:57:17.835799','2022-04-06 13:57:17.835834'),(44,'119010108@link.cuhk.edu.cn','dd','8277e0910d750195b448797616e091ad','',NULL,NULL,'2022-04-06 13:58:22.634205','2022-04-06 13:58:22.634249'),(45,'119010108@link.cuhk.edu.cn','ddddd','1aabac6d068eef6a7bad3fdf50a05cc8','',NULL,NULL,'2022-04-06 14:06:34.648143','2022-04-06 14:06:34.648190'),(46,'119010108@link.cuhk.edu.cn','demo','5f02f0889301fd7be1ac972c11bf3e7d','',NULL,NULL,'2022-04-06 14:19:15.293637','2022-04-06 14:19:15.293669'),(47,'119010108@link.cuhk.edu.cn','的点点滴滴','e34a8899ef6468b74f8a1048419ccc8b','',NULL,NULL,'2022-04-06 14:21:19.066411','2022-04-06 14:21:19.066447'),(48,'119010108@link.cuhk.edu.cn','adds','ad57484016654da87125db86f4227ea3','',NULL,NULL,'2022-04-06 14:27:21.362191','2022-04-06 14:27:21.362226'),(49,'119010108@link.cuhk.edu.cn','ddddddasd','ad57484016654da87125db86f4227ea3','',NULL,NULL,'2022-04-06 14:29:34.896173','2022-04-06 14:29:34.896209'),(50,'119010108@link.cuhk.edu.cn','dash','c389f0f28ae2d2055b0749d13edf426c','',NULL,NULL,'2022-04-06 14:31:07.780857','2022-04-06 14:31:07.780888'),(51,'119010108@link.cuhk.edu.cn','ccc','4eae35f1b35977a00ebd8086c259d4c9','',NULL,NULL,'2022-04-06 14:32:03.874752','2022-04-06 14:32:03.874784'),(52,'119010108@link.cuhk.edu.cn','aaaaa','ad57484016654da87125db86f4227ea3','',NULL,NULL,'2022-04-06 14:33:56.944176','2022-04-06 14:33:56.944218'),(53,'119010108@link.cuhk.edu.cn','dacsac','5ca2aa845c8cd5ace6b016841f100d82','',NULL,NULL,'2022-04-06 14:38:36.078721','2022-04-06 14:38:36.078754'),(54,'119010108@link.cuhk.edu.cn','casaca','3691308f2a4c2f6983f2880d32e29c84','',NULL,NULL,'2022-04-06 14:39:17.788479','2022-04-06 14:39:17.788510'),(55,'119010108@link.cuhk.edu.cn','dasdada','0cc175b9c0f1b6a831c399e269772661','',NULL,NULL,'2022-04-06 14:39:40.939626','2022-04-06 14:39:40.939660'),(56,'119010108@link.cuhk.edu.cn','dada','03c7c0ace395d80182db07ae2c30f034','',NULL,NULL,'2022-04-06 14:44:23.795160','2022-04-06 14:44:23.795200'),(57,'119010108@link.cuhk.edu.cn','dasdasdas','77963b7a931377ad4ab5ad6a9cd718aa','',NULL,NULL,'2022-04-06 15:00:22.692703','2022-04-06 15:00:22.692735'),(58,'119010108@link.cuhk.edu.cn','dasdasdasd','77963b7a931377ad4ab5ad6a9cd718aa','',NULL,NULL,'2022-04-06 15:01:05.590290','2022-04-06 15:01:05.590325'),(59,'119010108@link.cuhk.edu.cn','dhsacaa','9f6e6800cfae7749eb6c486619254b9c','',NULL,NULL,'2022-04-06 15:05:12.987036','2022-04-06 15:05:12.987082'),(60,'119010108@link.cuhk.edu.cn','dasds','ad57484016654da87125db86f4227ea3','',NULL,NULL,'2022-04-06 15:07:02.742770','2022-04-06 15:07:02.742805'),(61,'119010108@link.cuhk.edu.cn','dasdacxz','3691308f2a4c2f6983f2880d32e29c84','',NULL,NULL,'2022-04-06 15:16:43.874508','2022-04-06 15:16:43.874543'),(62,'119010108@link.cuhk.edu.cn','Huang','2ff6fa084fae5c0c94af6cd63b08f92b','',NULL,NULL,'2022-04-06 15:19:52.416868','2022-04-06 15:19:52.416899'),(63,'119010108@link.cuhk.edu.cn','Demario_Huang123','2ff6fa084fae5c0c94af6cd63b08f92b','',NULL,NULL,'2022-04-06 15:22:11.366095','2022-04-06 15:22:11.366126'),(64,'119010108@link.cuhk.edu.cn','PJL123','deabdd21fa0b246936317d461c41ee4b','',NULL,NULL,'2022-04-06 15:30:38.404877','2022-04-06 15:30:38.404911'),(65,'119010249@link.cuhk.edu.cn','QPPPPP','202cb962ac59075b964b07152d234b70','',NULL,NULL,'2022-04-06 17:31:30.353544','2022-04-06 17:31:30.353586'),(66,'119010108@link.cuhk.edu.cn','pdwa','1aabac6d068eef6a7bad3fdf50a05cc8','',NULL,NULL,'2022-04-07 01:34:02.806533','2022-04-07 01:34:02.806565'),(67,'119010108@link.cuhk.edu.cn','lllsss','c68c559d956d4ca20f435ed74a6e71e6','',NULL,NULL,'2022-04-07 01:37:26.628159','2022-04-07 01:37:26.628190'),(68,'119010108@link.cuhk.edu.cn','wa','c68c559d956d4ca20f435ed74a6e71e6','',NULL,NULL,'2022-04-07 01:37:37.592051','2022-04-07 01:37:37.592085'),(69,'119010108@link.cuhk.edu.cn','xzczcxzc','b2ca678b4c936f905fb82f2733f5297f','',NULL,NULL,'2022-04-07 01:39:09.863217','2022-04-07 01:39:09.863249'),(70,'119010108@link.cuhk.edu.cn','carrie','2ff6fa084fae5c0c94af6cd63b08f92b','',NULL,NULL,'2022-04-07 02:21:19.067398','2022-04-07 02:26:23.385475'),(71,'119010108@link.cuhk.edu.cn','HuangPengxiang','2ff6fa084fae5c0c94af6cd63b08f92b','',NULL,NULL,'2022-04-07 02:34:02.082016','2022-04-07 02:34:02.082078'),(72,'119010108@link.cuhk.edu.cn','HPX123','2ff6fa084fae5c0c94af6cd63b08f92b','',NULL,NULL,'2022-04-07 02:34:26.768676','2022-04-07 03:04:32.385030'),(73,'119010167@link.cuhk.edu.cn','l2','202cb962ac59075b964b07152d234b70','',NULL,NULL,'2022-04-07 03:56:50.334188','2022-04-07 03:56:50.334250'),(74,'119010249@link.cuhk.edu.cn','hehfei','202cb962ac59075b964b07152d234b70','',NULL,NULL,'2022-04-07 04:15:32.720849','2022-04-07 04:15:32.720883'),(75,'119010108@link.cuhk.edu.cn','Huang1234','2ff6fa084fae5c0c94af6cd63b08f92b','',NULL,NULL,'2022-04-07 06:47:44.600830','2022-04-07 06:47:44.600861'),(76,'119010108@link.cuhk.edu.cn','HuangPengxiang1234','2ff6fa084fae5c0c94af6cd63b08f92b','',NULL,NULL,'2022-04-07 06:55:37.063247','2022-04-10 13:14:27.504918'),(77,'119010249@link.cuhk.edu.cn','admin','324123','',NULL,NULL,'2022-04-10 11:53:31.047049','2022-04-10 11:54:08.193751');
UNLOCK TABLES;



-- Table structure for table `Our_project_group`
DROP TABLE IF EXISTS `Our_project_group`;

CREATE TABLE `Our_project_group` (
  `id` int DEFAULT NULL,
  `group_name` varchar(45) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `amount_of_follows` int DEFAULT NULL,
  PRIMARY KEY (`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table `Our_project_group`
LOCK TABLES `Our_project_group` WRITE;
INSERT INTO `Our_project_group` VALUES (1,'CSC3150','Operating System',NULL,'2022-04-09 15:06:25.385070',132),(2,'CSC3170','Soft Engineering course',NULL,'2022-04-08 15:24:30.602062',112);
UNLOCK TABLES;



-- Table structure for table `Our_project_sub_group`
DROP TABLE IF EXISTS `Our_project_sub_group`;
CREATE TABLE `Our_project_sub_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(45) NOT NULL,
  `sub_group_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_NAME_idx` (`group_name`),
  CONSTRAINT `group_NAME` FOREIGN KEY (`group_name`) REFERENCES `Our_project_group` (`group_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table `Our_project_sub_group`

LOCK TABLES `Our_project_sub_group` WRITE;
INSERT INTO `Our_project_sub_group` VALUES (1,'CSC3170','Project'),(2,'CSC3170','Assignment1'),(3,'CSC3150','Project1'),(4,'CSC3150','Project2'),(5,'CSC3150','Project3'),(6,'CSC3150','Project4'),(7,'CSC3170','Assignment2'),(8,'CSC3150','Final'),(9,'CSC3170','Final');
UNLOCK TABLES;



-- Table structure for table `Our_project_blog_questions`
DROP TABLE IF EXISTS `Our_project_blog_questions`;
CREATE TABLE `Our_project_blog_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `author_id` int NOT NULL,
  `group_type` varchar(45) NOT NULL,
  `sub_group_type` int NOT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `code` varchar(1400) DEFAULT NULL,
  `lang` varchar(45) DEFAULT NULL,
  `content_format` varchar(45) DEFAULT NULL,
  `like` int(10) unsigned zerofill NOT NULL,
  `follow` int(10) unsigned zerofill NOT NULL,
  `hot` int(10) unsigned zerofill NOT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `views` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_group_name_idx` (`sub_group_type`),
  KEY `email_idx` (`author_id`),
  KEY `group_type_idx` (`group_type`),
  CONSTRAINT `author_id` FOREIGN KEY (`author_id`) REFERENCES `Our_project_user` (`id`),
  CONSTRAINT `group_type` FOREIGN KEY (`group_type`) REFERENCES `Our_project_group` (`group_name`),
  CONSTRAINT `sub_group_type` FOREIGN KEY (`sub_group_type`) REFERENCES `Our_project_sub_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table `Our_project_blog_questions`
LOCK TABLES `Our_project_blog_questions` WRITE;
INSERT INTO `Our_project_blog_questions` VALUES (1,'Question about the Django setings.py',1,'CSC3170',1,'#### This question annoys me a lot  \r ---  \r + I am a neotype of Django, and I am curious about how to write my \'setting.py\' to connect to my **MySQL** Database.  \r + The below is my code:  \r  \r + I also include a snapshot below, and attach this file. I would appreciate a lot if someone could help.\r ','setting{\\n    host: localhost\\n    password: *****\\n    database: cuhksz-stackoverflow\\n}','Python','Markdown',0000000005,0000000009,0001323580,NULL,'2022-04-09 05:59:29.748478',0000000113),(2,'Anybody know how to solve this problem of npm run dev?',2,'CSC3170',1,'When I using the npm run dev, it gives me an error about `webpack-dev-server --inline --progress --config build/webp',NULL,NULL,'Markdown',0000000005,0000000006,0001013605,NULL,'2022-04-06 14:02:40.504595',0000000057),(3,'What\'s the meaning of two-direction association in UML',1,'CSC3170',2,'Actually, I don\'t know what\'s the meaning of two-direction in the description of assignment1',NULL,NULL,'Markdown',0000000002,0000000009,0000385100,NULL,'2022-03-23 16:23:39.437189',0000000060),(4,'Building Kernel fail.',3,'CSC3150',3,'When I run make, it gives me a error about `permission denied`, why?',NULL,NULL,'Markdown',0000000002,0000000009,0001079205,NULL,'2022-04-10 13:49:59.936665',0000000201),(5,'How many storage should I assign to VM?',4,'CSC3150',3,'Is 10GB assigned to VM enough? cause my computer doesn\'t have much storage left.',NULL,NULL,'Markdown',0000000013,0000000017,0002965144,NULL,'2022-04-10 13:49:47.079056',0000000055);
UNLOCK TABLES;





-- Table structure for table `Our_project_blog_answers`
DROP TABLE IF EXISTS `Our_project_blog_answers`;
CREATE TABLE `Our_project_blog_answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `father_answer_id` int DEFAULT NULL,
  `content` varchar(20000) NOT NULL,
  `code` varchar(1500) DEFAULT NULL,
  `lang` varchar(45) DEFAULT NULL, -- proramming language
  `content_format` varchar(45) DEFAULT NULL,
  `like` int(10) unsigned zerofill NOT NULL,
  `author_id` int DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id_idx` (`question_id`), -- index
  KEY `father_answer_id_idx` (`father_answer_id`),
  KEY `id_of_author_idx` (`author_id`),
  CONSTRAINT `id_of_author` FOREIGN KEY (`author_id`) REFERENCES `Our_project_user` (`id`),
  CONSTRAINT `question_id` FOREIGN KEY (`question_id`) REFERENCES `Our_project_blog_questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
-- Dumping data for table `Our_project_blog_answers`

LOCK TABLES `Our_project_blog_answers` WRITE;
INSERT INTO `Our_project_blog_answers` VALUES (1,1,NULL,'just try filling the data base name with the schema name. Then write the host with your server IP, the host as the user name of database on server  ',NULL,NULL,'Markdown',0000000007,5,NULL),(2,1,1,'Thank You!! I will try',NULL,NULL,'Markdown',0000000001,1,NULL),(3,4,NULL,'Mark一下，有答案了踢一下我',NULL,NULL,'Markdown',0000000000,2,NULL),(4,5,NULL,'亲测10GB也是没问题的',NULL,NULL,'Markdown',0000000003,1,NULL),(5,1,NULL,'你可以试试把Django升级一下',NULL,NULL,'Markdown',0000000000,6,NULL),(6,1,5,'请问要升到哪个版本比较合适呢？',NULL,NULL,'Markdown',0000000000,1,NULL),(7,1,NULL,'我也遇到了相同的问题，我是想连接服务器上的Django，但总是连不上，后来发现是shcema name输错了...','setting:{\\n    host:127.0.0.1,\\n    password:********,\\n    database: 4001_project,\\n} ','Python','Markdown',0000000003,8,NULL),(8,1,2,'Never mind~',NULL,NULL,'Markdown',0000000000,5,NULL),(9,1,6,'我是2.0.0. 你可以用pip装一下',NULL,NULL,'Markdown',0000000005,6,NULL),(10,1,5,'但是我升级之后它还是报的一样的错',NULL,NULL,'Markdown',0000000000,10,NULL);
UNLOCK TABLES;


-- Table structure for table `Our_project_file`
DROP TABLE IF EXISTS `Our_project_file`;

CREATE TABLE `Our_project_file` (
  `id` int NOT NULL,
  `url` char(100) NOT NULL,
  `corresponding_question` int DEFAULT NULL,
  `corresponding_answer` int DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id_idx` (`corresponding_question`),
  KEY `answer_id_idx` (`corresponding_answer`),
  CONSTRAINT `corresponding_answer` FOREIGN KEY (`corresponding_answer`) REFERENCES `Our_project_blog_answers` (`id`),
  CONSTRAINT `corresponding_question` FOREIGN KEY (`corresponding_question`) REFERENCES `Our_project_blog_questions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table `Our_project_file`

LOCK TABLES `Our_project_file` WRITE;
INSERT INTO `Our_project_file` VALUES (1,'http://175.178.34.84/fs/user1_settings.py',1,NULL,NULL),(2,'http://175.178.34.84/fs/4001_DB.sql',NULL,7,NULL);
UNLOCK TABLES;



-- Table structure for table `Our_project_picture`
DROP TABLE IF EXISTS `Our_project_picture`;
CREATE TABLE `Our_project_picture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `question` int DEFAULT NULL,
  `answer` int DEFAULT NULL,
  `group_name` varchar(45) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id_idx` (`question`),
  KEY `answer_id_idx` (`answer`),
  KEY `group_name_index_idx` (`group_name`),
  CONSTRAINT `answer` FOREIGN KEY (`answer`) REFERENCES `Our_project_blog_answers` (`id`),
  CONSTRAINT `group_name_index` FOREIGN KEY (`group_name`) REFERENCES `Our_project_group` (`group_name`),
  CONSTRAINT `question` FOREIGN KEY (`question`) REFERENCES `Our_project_blog_questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table `Our_project_picture`

LOCK TABLES `Our_project_picture` WRITE;
INSERT INTO `Our_project_picture` VALUES (1,'http://175.178.34.84/pics/Django_DB.JPG',1,NULL,NULL,NULL),(2,'http://175.178.34.84/pics/double_dir.JPG',3,NULL,NULL,NULL),(3,'http://175.178.34.84/pics/npm_run_dev.png',2,NULL,NULL,NULL),(4,'http://175.178.34.84/pics/permission_deny.jpg',4,NULL,NULL,NULL),(5,'http://175.178.34.84/pics/VM_storage.jpg',5,NULL,NULL,NULL),(6,'http://175.178.34.84/pics/DB_ANSWER1.JPG',NULL,1,NULL,NULL),(7,'http://175.178.34.84/pics/CSC3170.jpg',NULL,NULL,'CSC3170',NULL),(8,'http://175.178.34.84/pics/CSC3150.JPG',NULL,NULL,'CSC3150',NULL);
UNLOCK TABLES;





--
-- Table structure for table `Our_project_user_follow_group`
--

DROP TABLE IF EXISTS `Our_project_user_follow_group`;

CREATE TABLE `Our_project_user_follow_group` (
  `id` int NOT NULL,
  `group_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`group_name`),
  KEY `fk_Our_project_user_has_Our_project_Group_Our_project_user1_idx` (`id`),
  KEY `fk_Our_project_user_has_Our_project_Group_Our_project_user2_idx` (`group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Our_project_user_follow_group`
--

LOCK TABLES `Our_project_user_follow_group` WRITE;
INSERT INTO `Our_project_user_follow_group` VALUES (1,'CSC3150'),(1,'CSC3170'),(2,'CSC3150'),(3,'CSC3170'),(4,'CSC3170'),(5,'CSC3170'),(6,'CSC3150'),(6,'CSC3170'),(9,'CSC3150');
UNLOCK TABLES;

--
-- Table structure for table `Our_project_user_follow_question`
--

DROP TABLE IF EXISTS `Our_project_user_follow_question`;

CREATE TABLE `Our_project_user_follow_question` (
  `id` int NOT NULL,
  `question_id` int NOT NULL,
  PRIMARY KEY (`id`,`question_id`),
  KEY `Index_questionid_idx` (`question_id`),
  CONSTRAINT `Index_questionid` FOREIGN KEY (`question_id`) REFERENCES `Our_project_blog_questions` (`id`),
  CONSTRAINT `Index_userid` FOREIGN KEY (`id`) REFERENCES `Our_project_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Our_project_user_follow_question`
--

LOCK TABLES `Our_project_user_follow_question` WRITE;
INSERT INTO `Our_project_user_follow_question` VALUES (1,1),(2,1),(5,1),(65,1),(1,2),(2,2),(4,2),(7,2),(1,3),(7,3),(2,4),(3,4),(1,5),(2,5),(9,5);
UNLOCK TABLES;

--
-- Table structure for table `Our_project_user_like_answer`
--

DROP TABLE IF EXISTS `Our_project_user_like_answer`;

CREATE TABLE `Our_project_user_like_answer` (
  `id` int NOT NULL,
  `answer_id` int NOT NULL,
  PRIMARY KEY (`id`,`answer_id`),
  KEY `index_a_id_idx` (`answer_id`),
  CONSTRAINT `index_a_id` FOREIGN KEY (`answer_id`) REFERENCES `Our_project_blog_answers` (`id`),
  CONSTRAINT `index_u_id` FOREIGN KEY (`id`) REFERENCES `Our_project_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Our_project_user_like_answer`
--

LOCK TABLES `Our_project_user_like_answer` WRITE;
INSERT INTO `Our_project_user_like_answer` VALUES (4,1),(5,1),(2,2),(5,2),(3,3),(1,4),(3,4),(4,4);
UNLOCK TABLES;

--
-- Table structure for table `Our_project_user_like_question`
--

DROP TABLE IF EXISTS `Our_project_user_like_question`;

CREATE TABLE `Our_project_user_like_question` (
  `id` int NOT NULL,
  `question_id` int NOT NULL,
  PRIMARY KEY (`id`,`question_id`),
  KEY `Index_question_id_idx` (`question_id`),
  CONSTRAINT `Index_question_id` FOREIGN KEY (`question_id`) REFERENCES `Our_project_blog_questions` (`id`),
  CONSTRAINT `Index_user_id` FOREIGN KEY (`id`) REFERENCES `Our_project_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Our_project_user_like_question`
--

LOCK TABLES `Our_project_user_like_question` WRITE;
INSERT INTO `Our_project_user_like_question` VALUES (1,1),(2,1),(4,1),(16,1),(1,2),(2,2),(3,2),(1,3),(2,3),(3,3),(1,4),(6,4),(1,5),(2,5),(5,5),(6,5),(16,5),(65,5);
UNLOCK TABLES;

--
-- Table structure for table `Our_project_user_view_question`
--

DROP TABLE IF EXISTS `Our_project_user_view_question`;

CREATE TABLE `Our_project_user_view_question` (
  `id` int NOT NULL,
  `question_id` int NOT NULL,
  `time` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`,`question_id`),
  KEY `iNDEX_QUESTION_idx` (`question_id`),
  CONSTRAINT `iNDEX_QUESTION` FOREIGN KEY (`question_id`) REFERENCES `Our_project_blog_questions` (`id`),
  CONSTRAINT `iNDEX_USER` FOREIGN KEY (`id`) REFERENCES `Our_project_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Our_project_user_view_question`
--

LOCK TABLES `Our_project_user_view_question` WRITE;
INSERT INTO `Our_project_user_view_question` VALUES (1,1,0000000010),(1,2,0000000004),(1,4,0000000005),(1,5,0000000017),(2,1,0000000003),(2,2,0000000020),(3,1,0000000001),(3,3,0000000004),(4,5,0000000010),(5,5,0000000010);
UNLOCK TABLES;



-- ================================================================================================
-- ================================================================================================
-- ================================================================================================

-- DROP EVENT IF EXISTS refresh_hot; 

-- CREATE EVENT refresh_hot 
-- ON SCHEDULE EVERY 1 day STARTS DATE_ADD(DATE(CURDATE() + 1),  INTERVAL 0 HOUR)
-- ON COMPLETION PRESERVE

-- DO
--   UPDATE `CSC3170`.`Our_project_blog_questions` SET `hot` = `hot`/2;
