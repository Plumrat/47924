CREATE DATABASE  IF NOT EXISTS `47924` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `47924`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: 47924
-- ------------------------------------------------------
-- Server version	5.5.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aw2274434_karate_entity_instructors`
--

DROP TABLE IF EXISTS `aw2274434_karate_entity_instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aw2274434_karate_entity_instructors` (
  `instructor_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `bio` mediumtext,
  `image` mediumtext,
  `belt_id` int(10) DEFAULT NULL,
  `image_yn` int(1) NOT NULL,
  PRIMARY KEY (`instructor_id`),
  KEY `belt_id` (`belt_id`),
  CONSTRAINT `aw2274434_karate_entity_instructors_ibfk_1` FOREIGN KEY (`belt_id`) REFERENCES `aw2274434_karate_enum_belt` (`belt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aw2274434_karate_entity_instructors`
--

LOCK TABLES `aw2274434_karate_entity_instructors` WRITE;
/*!40000 ALTER TABLE `aw2274434_karate_entity_instructors` DISABLE KEYS */;
INSERT INTO `aw2274434_karate_entity_instructors` VALUES (1,'Master Arnold Sandubrae','See About the Dojo','arnold.png',8,1),(2,'Master Pat Mcconnell','Master Pat Mcconnell, 7th Degree Black Belt Began his training under Master Sandubrae on June 12th 1980 and was one of the first students to join the Palm Springs Dojo','pat.png',7,1),(3,'Master Tom Tweedie','Master Tom Tweedie 5th Degree Black Belt Began his training under Master Sandubrae on ','tom.png',5,1),(4,'Master Jay Doster',NULL,'jay.png',4,1),(5,'Mr. Erik Kindell',NULL,'erik.png',2,1),(6,'Mr. Jeff Manger',NULL,NULL,1,0),(7,'Mr. Marvin Peterson',NULL,'marvin.png',1,1),(8,'Mr. Daniel Caballero',NULL,'daniel.png',1,1),(9,'Mr. Angel Mota',NULL,NULL,1,0);
/*!40000 ALTER TABLE `aw2274434_karate_entity_instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aw2274434_karate_entity_terms`
--

DROP TABLE IF EXISTS `aw2274434_karate_entity_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aw2274434_karate_entity_terms` (
  `term_id` int(9) NOT NULL AUTO_INCREMENT,
  `term` varchar(50) DEFAULT NULL,
  `meaning` longtext,
  `termtype_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`term_id`),
  KEY `termtype_id` (`termtype_id`),
  CONSTRAINT `aw2274434_karate_entity_terms_ibfk_1` FOREIGN KEY (`termtype_id`) REFERENCES `aw2274434_karate_enum_termtype` (`termtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aw2274434_karate_entity_terms`
--

LOCK TABLES `aw2274434_karate_entity_terms` WRITE;
/*!40000 ALTER TABLE `aw2274434_karate_entity_terms` DISABLE KEYS */;
INSERT INTO `aw2274434_karate_entity_terms` VALUES (1,'AGE UKE','Upward Block.',1),(2,'AWASE UKE','Joined Hand Block.',1),(3,'GEDAN BARAI','Downward Block.',1),(4,'GEDAN UDE UKE','Low Forearm Block.',1),(5,'HAISHU UKE','A block using the back of the hand.',1),(6,'HIJI UKE','A blocking action using the elbow.',1),(7,'HIZA UKE','A blocking action using the knee.',1),(8,'JUJI UKE','X Block.',1),(9,'KAKE-TE','Hook Block.',1),(10,'KAKIWAKE','A two handed block using the outer surface of the wrist to neutralize a two-handed attack, such as a grab.',1),(11,'KAKUTO UKE','Wrist Joint Block. Also known as KO UKE \"Crane Block\" or \"Arch Block\". Same as KAKUTO UKE.',1),(12,'MANJI UKE','A Double block where one arm executes GEDAN BARAI to one side, while the other arm executes JODAN UCHI UKE (or JODAN SOTO YOKO TE).',1),(13,'MOROTE UKE','Augmented Block. One arm and fist support the other arm in a block.',1),(14,'OSAE UKE','Pressing Block.',1),(15,'SHUTO TE','This name was used before the advent of sport karate. Used to describe one of the techniques in BOGYO ROKU KYODO.',1),(16,'SHUTO UKE','Knife-hand Block.',1),(17,'SOTO (UDE) UKE','Outside (Forearm) Block.',1),(18,'SOTO YOKO TE','Same as UCHI UDE UKE. This name was used before the advent of sport karate. Used to describe one of the techniques in BOGYO ROKU KYODO.',1),(19,'SUKUI TE','Same as SUKUI UKE. This name was used before the advent of sport karate. Used to describe one of the techniques in BOGYO ROKU KYODO.',1),(20,'SUKUI UKE','Scooping Block.',1),(21,'TEISHO UKE','Palm Heel Block.',1),(22,'UCHI (UDE) UKE','Inside (Forearm) Block.',1),(23,'UCHI YOKO TE','Same as SOTO UDE UKE. This name was used before the advent of sport karate. Used to describe one of the techniques in BOGYO ROKU KYODO.',1),(24,'WA-UKE','A block where the path taken is similar to the yoko- uke. Imagine wiping a wall in front of you with your palm in a half-circle. At the end of the block the hand is angled slightly to the outside. This block occurs in the Shinpa kata.',1),(25,'AGE ZUKI','Rising Punch.',2),(26,'AWASE ZUKI','U Punch. Also referred to as MOROTE ZUKI.',2),(27,'CHOKU ZUKI','Straight Punch.',2),(28,'CHUDAN ZUKI','A punch to the mid-section of the opponent\'s body.',2),(29,'EMPI UCHI','elbow strike (also called HIJI-ATE)',2),(30,'GEDAN ZUKI','A punch to the lower section of the opponent\'s body.',2),(31,'GYAKU ZUKI','Reverse Punch.',2),(32,'HAISHU UCHI','A strike with the back of the hand.',2),(33,'HAITO UCHI','Ridge-hand Strike.',2),(34,'HARAI TE','Sweeping technique with the arm',2),(35,'HASAMI ZUKI','Scissor Punch.',2),(36,'HEIKO ZUKI','\"Parallel Punch\" (A double, simultaneous punch).',2),(37,'HIJI ATEMI','Elbow Strikes.',2),(38,'HIJI-ATE','Elbow strike (also called EMPI-UCHI)',2),(39,'KAGI ZUKI','Hook Punch.',2),(40,'KAKUTO UCHI','Wrist joint strike. Also known as \"KO UCHI.\"',2),(41,'KENTSUI UCHI','(Or TETTSUI UCHI) Hammer Fist Stike.',2),(42,'KIZAMI ZUKI','Jab Punch.',2),(43,'KO UCHI','Wrist joint strike. Also known as KAKUTO UCHI.',2),(44,'MAE EMPI','Forward Elbow Strike.',2),(45,'MAWASHI EMPI UCHI','Circular Elbow Strike. Also referred to as MAWASHI HIJI ATE.',2),(46,'MAWASHI HIJI ATE','Circular Elbow Strike. Also referred to as MAWASHI EMPI UCHI',2),(47,'MAWASHI ZUKI','Roundhouse Punch.',2),(48,'MOROTE ZUKI','U-Punch. Punching with both fists simultaneously. Also referred to as AWASE ZUKI.',2),(49,'OTOSHI EMPI UCHI','An elbow strike by dropping the elbow. Also referred to as Otoshi Hiji Ate.',2),(50,'TATE EMPI','Upward Elbow Strike.',2),(51,'TATE URAKEN UCHI','Vertical back-fist attack.',2),(52,'TATE ZUKI','Vertical Punch. A fist punch with the palm along a verticalplane.',2),(53,'TEISHO UCHI','Palm Heel Strike.',2),(54,'TETTSUI UCHI','Hammer Strike. Also called KENTSUI.',2),(55,'YAMA ZUKI','Mountain Punch. A wide U-shaped dual punch.',2),(56,'URA ZUKI','An upper cut punch used at close range.',2),(57,'AYUMI DACHI','A stance found in ITOSU-KAI SHITO-RYU. It is a natural \"Walking\" stance with the weight over the center.',3),(58,'FUDO DACHI','Immovable Stance. Also referred to as SOCHIN DACHI.',3),(59,'GANKAKU DACHI','Crane Stance, sometimes referred to as TSURU ASHI DACHI and SAGI ASHI DACHI.',3),(60,'HACHIJI DACHI','A natural stance, feet positioned about one shoulder width apart, with feet pointed slightly outward.',3),(61,'HANGETSU DACHI','\"Half-Moon\" Stance.',3),(62,'HEIKO DACHI','A natural stance. Feet positioned about one shoulder width apart, with feet pointed straight forward. Some Kata begin from this position.',3),(63,'HEIKO DACHI (HIGAONNA LINE)','A Heiko Dachi stance, where the front foot is turned slightly inwards while the rear foot is straight. This stance is found in the Shinpa kata.',3),(64,'HEISOKU DACHI','An informal attention stance. Feet are together and pointed straight forward.',3),(65,'HORAN NO KAMAE','\"Egg in the Nest Ready Position.\" A \"ready\" position used in some KATA where the fist in covered by the other hand.',3),(66,'KI-O-TSUKE','\"Attention\". Musubi 0 Dachi with open hands down both sides.',3),(67,'KIBA DACHI','Staddle Stance. Also known as NAIFANCHI or NAIHANCHI DACHI.',3),(68,'KOKUTSU DACHI','A stance which has most of the weight to the back. Referred to in English as Back Stance.',3),(69,'KOSA DACHI','Crossed-Leg Stance.',3),(70,'REINOJI DACHI','A stance with feet making a \'L-shape.\'',3),(71,'SAGI ASHI DACHI','One Leg Stance. Also referred to as GANKAKU DACHI or TSURU ASHI DACHI.',3),(72,'SANCHIN DACHI','Hour-glass Stance.',3),(73,'SEISAN DACHI','Forward stance with feet shoulders width apart and the back of the heal of the forward foot on a line with the front of the large toe on the rear foot',3),(74,'SHIKO DACHI','Square Stance. A stance often used in Goju-Ryu and Shito-Ryu.',3),(75,'SHIZENTAI','Natural Position. The body remains relaxed but alert.',3),(76,'SOCHIN DACHI','Immovable Stance. Also referred to as FUDO DACHI.',3),(77,'TEIJI DACHI','A Stance with the feet in a \'T-shape.\'',3),(78,'TSURU ASHI DACHI','Crane Stance, also referred to as GANKAKU DACHI and SAGI ASHI DACHI.',3),(79,'ZENKUTSU DACHI','Forward Stance.',3),(80,'ASHI BARAI','Foot Sweep',4),(81,'ASHI WAZA','Name given to all leg and foot techniques.',4),(82,'FUMIKOMI','Stomp kick, usually applied to the knee, shin, or instep of an opponent.',4),(83,'GYAKU MAWASHI GERI','Reverse Round-house Kick.',4),(84,'KEAGE','Snap Kick. (Literally, Kick upward).',4),(85,'KEKOMI','Thrust Kick ( Literally, Kick Into/Straight ).',4),(86,'MAE GERI KEAGE','Front Snap Kick. Also referred to as MAE KEAGE.',4),(87,'MAE GERI KEKOMI','Front Thrust Kick. Also referred to as MAE KEKOMI.',4),(88,'MAWASHI GERI','Roundhouse Kick.',4),(89,'MIKAZUKI GERI','Crescent Kick.',4),(90,'TOBI GERI','Jump Kick.',4),(91,'UCHI MAWASHI GERI','Inside Roundhouse Kick.',4),(92,'USHIRO GERI','Back Kick.',4),(93,'YOKO GERI KEAGE','Side Snap Kick. Also referred to as YOKO KEAGE.',4),(94,'YOKO GERI KEKOMI','Side Thrust Kick. Also referred to as YOKO KEKOMI.',4),(95,'YOKO TOBI GERI','Flying Side Kick.',4),(96,'BO Staff','A long stick used as a weapon (approximately 6 feet long).',5),(97,'EKKU','A Wooden oar used by the Okinawan\'s which was improvised as a weapon.',5),(98,'JO','Wooden staff about 4\'-5\' in length. The JO originated as a walking stick.',5),(99,'KAMA','Sickle',5),(100,'NUNCHAKU','Two 12  inch batons connected at the ends with a short cord.',5),(101,'SAI','An Okinawan weapon that is shaped like the Greek letter \'Psi\' with the middle being much longer.',5),(102,'TONFA','A farm tool (believed to have been used as a handle for a millstone) developed into a weapon by the Okinawan\'s.',5),(103,'ATEMI WAZA','Striking techniques that are normally used in conjunction with grappling and throwing techniques.',6),(104,'BOGYO ROKU KYODO','Six Defense Actions. A basic drill of the Japan Karate-Do Ryobu-Kai. Uses the old names of techniqes such as AGE TE, HARAI TE (or GEDAN BARAI), SOTO YOKO TE, UCHI YOKO TE, SHUTO TE, and SUKUI TE. ',6),(105,'BUDO','The Japanese character for \"BU\" (martial) is derived from characters meaning \"stop\" and (a weapon like a) \"halberd.\" In conjunction, then, \"BU\" may have the connotation \"to stop the halberd.\" In Karate, there is an assumption that the best way to prevent violent conflict is to emphasize the cultivation of individual character. The way (DO) of Karate is thus equivalent to the way of BU, taken in this sense of preventing or avoiding violence so far as possible.',6),(106,'CHUDAN','Mid-section. During the practice of KIHON IPPON KUMITE (one step basic sparring), the attacker will normally announce where he/she will attack JODAN, CHUDAN, or GEDAN (Upper level, Mid-level, or lower level).',6),(107,'COUNTING TO 10 IN JAPANESE','1.Ichi 2.Ni 3.San 4.Shi 5.Go 6.Roku 7.Shichi 8.Hachi 9.Kyu or Ku 10.Ju',6),(108,'BUNKAI','A study of the techniques and applications in KATA.',6),(109,'DANI','(Dan)Level, Rank or Degree. Black Belt rank. Ranks under Black Belt are called KYU ranks.',6),(110,'DO','Way/path. The Japanese character for \"DO\" is the same as the Chinese character for Tao (as in \"Taoism\"). In Karate, the connotation is that of a way of attaining enlightenment or a way of improving one\'s character through traditional training.',6),(111,'DOJO','Literally \"place of the Way.\" Also \"place of enlightenment.\" The place where we practice Karate. Traditional etiquette prescribes bowing in the direction of the designated front of the dojo (SHOMEN) whenever entering or leaving the dojo.',6),(112,'DOMO ARIGATO GOZAIMASHITA','Japanese for \"thank you very much.\" At the end of each class, it is proper to bow and thank the instructor and those with whom you\'ve trained.',6),(113,'EMBUSEN','Floor pattern of a given kata.',6),(114,'EMPI','(1) One the Black Belt level KATA, translated as \"The Flight of a Sparrow\". (2) Elbow. Sometimes referred to as HIJI.',6),(115,'GASSHUKUA','special training camp.',6),(116,'GEDAN','Lower section. During the practice of KIHON',6),(117,'IPPON KUMITE','(one step basic sparring), the attacker will normally announce where he/she will attack JODAN, CHUDAN, or GEDAN (Upper level, Mid-level, or lower level).',6),(118,'GI','(DO GI) (KEIKO GI) (KARATE GI) Training uniform. In traditional Japanese and Okinawan Karate Dojo you would see your Sensei for allowable patches and markings.',6),(119,'GO NO SEN','The tactic where one allows the opponent to attack first so to open up targets for counter attack.',6),(120,'GOHON KUMITE','Five step basic sparring. The attacker steps in five consecutive times with a striking technique with each step. The defender steps back five times, blocking each technique. After the fifth block, the defender executes a counter-strike.',6),(121,'HAI','\"Yes\".',6),(122,'HAJIME','\"Begin\". A command given to start a given drill, Kata, or Kumite.',6),(123,'HANGETSU','A Black Belt level Kata.',6),(124,'HANSHI','\"Master.\" An honorary title given to the highest Black Belts of an organization, signifying their understanding of their art.',6),(125,'HARAI WAZA','Sweeping techniques.',6),(126,'HENKA WAZA','Techniques used after OYO WAZA is applied.HENKA WAZA is varied and many, dependent on the given condition.',6),(127,'HIDARI','\"Left\".',6),(128,'HIJI','\"Elbow\", also known as Empi.',6),(129,'HIKI-TE','The retracting (pulling and twisting) arm during a technique. It gives the balance of power to the forward moving technique. It can also be used as a pulling technique after a grab, or a strike backward with the elbow.',6),(130,'HITOSASHI IPPON KEN','Forefinger Knuckle.',6),(131,'HOMBU DOJO','A term used to refer to the central dojo of an organization.',6),(132,'INASU','evasion of an on-coming attack through the course of removing the body from the line of attack.',6),(133,'IPPON KEN','\"One Knuckle Fist\".',6),(134,'IPPON KUMITE','One step sparring.',6),(135,'IRIMI','to penetrate, to enter. Usually describes moving closer to the opponent than the attack as you close in defense.',6),(136,'JIYU IPPON KUMITE','One step free sparring. The participants can attack with any technique whenever ready.',6),(137,'JIYU KUMITE','Free Sparring.',6),(138,'JODAN','Upper level. During the practice of KIHON IPPON KUMITE (one step basic sparring), the attacker will normally announce where he/she will attack JODAN, CHUDAN, or GEDAN (Upper level, Mid-level, or lower level).',6),(139,'JUN ZUKI','The WADO RYU term for OI-ZUKI. KAISHO Open hand. This refers to the type of blow which is delivered with the open palm. It can also be used to describe other hand blows in which the fist is not fully clenched.',6),(140,'KAKUSHI WAZA','\"Hidden techniques.\"',6),(141,'KAMAE','A posture or stance either with or without a weapon. KAMAE may also connote proper distance (Ma-ai) with respect to one\'s partner. Although \"KAMAE\" generally refers to a physical stance, there is an important parallel in Karate between one\'s physical and one\'s psychological bearing. Adopting a strong physical stance helps to promote the correlative adoption of a strong psychological attitude. It is important to try so far as possible to maintain a positive and strong mental bearing in Karate.',6),(142,'KAMAE-TE','A command given by the instructor for students to get into position.',6),(143,'KAPPO','Techniques of resuscitating people who have succumbed to a shock to the nervous system. KARATE \"Empty Hand\". When Karate was first introduced to Japan, it was called \"TO-DE\". The characters of TODE could be pronounced. However, the meaning of TODE is Chinese Hand.',6),(144,'KARATE-DO','\"The Way of Karate\". This implies not only the physical aspect of Karate, but also the mental and social aspects of Karate.',6),(145,'KARATEKA','A practitioner of Karate. KATA A \"form\" or prescribed pattern of movement. (But also \"shoulder\")',6),(146,'KEIKO','(1) Training. The secret to success in Karate. (2) Joined Fingertips.',6),(147,'KEMPO','\"Fist Law.\" A generic term to describe fighting systems that uses the fist. In this regard, KARATE is also KEMPO.',6),(148,'KENSEI','The technique with silent KIAI. Related to meditation.',6),(149,'KENTSUI','Hammer Fist Also known as TETTSUI. KERI Kick. KI Mind. Spirit. Energy. Vital-force. Intention. (Chinese \"chi\") The definitions presented here are very general.',6),(150,'KI','one word that cannot be translated directly into any language.',6),(151,'KIAI','A shout delivered for the purpose of focusing all of one\'s energy into a single movement. Even when audible KIAI are absent, one should try to preserve the feeling of KIAI at certain crucial points within Karate techniques. Manifestation of KI (simultaneous union of spirit and expression of physical strength).',6),(152,'KIHON','(Something which is) fundamental. Basic techniques.',6),(153,'KIME','Focus of Power.',6),(154,'KO BO ICHI','The concept of \"Attack-Defence Connection\".',6),(155,'KOHAI','A student junior to oneself.',6),(156,'KOKEN','Wrist Joint.',6),(157,'KOKORO','\"Spirit, Heart.\" In Japanese culture, the spirit dwells in the Heart.',6),(158,'KOSHIN','Rearward.',6),(159,'KUATSU','The method of resuscitating a person who has lost consciousness due to strangulation or shock.',6),(160,'KUBOTAN','A self-defense tool developed by TAKAYUKI',6),(161,'KUBOTA.','This tool serves normally as a key chain.',6),(162,'KUMADE','Bear hand.',6),(163,'KYOSHI','\"knowledgeable person,\" and usually this title is conferred at rokudan or shichidan, depending on system.',6),(164,'KYU','\"Grade\". Any rank below Shodan.',6),(165,'KYUSHO WAZA','Pressure Point techniques.',6),(166,'MA-AI','Proper distancing or timing with respect to one\'s partner. Since Karate techniques always vary according to circumstances, it is important to understand how differences in initial position affect the timing and application of techniques.',6),(167,'MAAI GA TOH','\"not proper distance\"',6),(168,'MAE','Front.',6),(169,'MAE ASHI GERI','Kicking with the front leg.',6),(170,'MAE UKEMI','forward fall/roll.',6),(171,'MAKOTO','A feeling of absolute sincerity and total frankness, which requires a pure mind, free from pressure of events.',6),(172,'MANABU','\"Learning by imitating.\" A method of studying movement and techniques by following and imitating the instructor.',6),(173,'MATTE','\"Wait\".',6),(174,'MAWAT-TE','A command given by the instructor for students to turn around.',6),(175,'MIGI','Right.',6),(176,'MOKUSO','Meditation. Practice often begins or ends with a brief period of meditation. The purpose of meditation is to clear one\'s mind and to develop cognitive equanimity. Perhaps more importantly, meditation is an opportunity to become aware of conditioned patterns of thought and behavior so that such patterns can be modified, eliminated or more efficiently put to use.',6),(177,'MUDANSHA','Students without black-belt ranking.',6),(178,'ONEGAI SHIMASU','\"I welcome you to train with me,\" or literally, \"I make a request.\" This is said to one\'s partner when initiating practice.',6),(179,'OYAYUBI IPPON KEN','Thumb Knuckle.',6),(180,'OYO WAZA','Applications interpreted from techniques in Kata, implemented according to a given condition.',6),(181,'REI','\"Respect\". A method of showing respect in Japanese culture is the Bow. It is proper for the junior person bows lower than the senior person.',6),(182,'REIGI','Etiquette. Also referred to as REISHIKI. Observance of proper etiquette at all times (but especially observance of proper DOJO etiquette) is as much a part of one\'s training as the practice of techniques. Observation of etiquette indicates one\'s sincerity, one\'s willingness to learn, and one\'s recognition of the rights and interests of others.',6),(183,'RENSEI','Practice Tournament. Competitors are critiqued on their performances.',6),(184,'RENSHI','\"A person who has mastered oneself.\" This person is considered an expert instructor. This status is prerequisite before attaining the status as KYOSHI. Renshi \"has a name.\" Renshi is no longer one of the many, so to speak. Renshi is usually given at yodan to rokudan, depending on the system.',6),(185,'SANBON KUMITE','Three Step Sparring.',6),(186,'SASHITE','Raising of the hand either to strike, grab, or block.',6),(187,'SEIKEN','Forefist.',6),(188,'SEIRYUTO','Bull Strike. A hand technique delivered with the base of the SHUTO (Knife hand).',6),(189,'SEIZA','A proper sitting position. Sitting on one\'s knees. Sitting this way requires acclimatization, but provides both a stable base and greater ease of movement than sitting cross-legged. It is used for the formal opening and closing of the class in many Dojo.',6),(190,'SEMPAI','A senior student.',6),(191,'SEN NO SEN','Attacking at the exact moment when the opponent attacks.',6),(192,'SEN SEN NO SEN','Attacking before the opponent attacks. Preemptive attack.',6),(193,'SENSEI','Teacher, \"one who has gone before\". It is usually considered proper to address the instructor during practice as \"Sensei\" rather than by his/her name. If the instructor is a permanent instructor for one\'s DOJO or for an organization, it is proper to address him/her as \"Sensei\" off the mat as well.',6),(194,'SHIAI','A match or a contest (Event).',6),(195,'SHIDOIN','Formally recognized Instructor who has not yet be recognized as a SENSEI. Assistant Instructor.',6),(196,'SHIHAN','A formal title meaning, approximately, \"master instructor.\" A \"teacher of teachers.\" Hanshi is \"wise\" or sage-like, hence the common translation of \"master.\" Shinan',6),(197,'SHOMEN','Front or top of head. Also the designated front of a Dojo.',6),(198,'SOKUTO','Edge of foot. This term is often used to refer to the side thrust kick.',6),(199,'SUWARI WAZA','Techniques from a sitting position.',6),(200,'TAI SABAKI','Body movement/shifting.',6),(201,'TAIMING GA OSOI','\"Not proper timing\"',6),(202,'TSUKAMI WAZA','Catching technique. A blocking technique by seizing the opponent\'s weapon, arm, or leg. Used often for grappling techniques. TSUKI A punch or thrust (esp. an attack to the midsection).',6),(203,'TUITE','Grappling skills.',6),(204,'UCHI DESHI','A live-in student. A student who lives in a dojo and devotes him/herself both to training and to the maintenence of the dojo (and sometimes to personal service to the SENSEI of the dojo).',6),(205,'UKE','Block.',6),(206,'UKEMI WAZA','Breakfall techniques.',6),(207,'USHIRO EMPI UCHI','Striking to the rear with the elbow.',6),(208,'WAZA','Techniques',6),(209,'YASUMI','Rest. A term used by the instructor to have the students relax, normally following a long series of drills.',6),(210,'YOI','Ready.',6),(211,'YOKO','Side.',6),(212,'YOKO MAWASHI EMPI UCHI','Striking with the elbow to the side.',6),(213,'YOWAI','\"Weak Focus\"',6),(214,'YUDANSHA','Black belt holder (any rank).',6),(215,'ZA-REI','The traditional Japanese bow from the kneeling position. ',6),(216,'ZANSHIN','Lit. \"remaining mind/heart.\" Even after a Karate technique has been completed, one should remain in a balanced and aware state. ZANSHIN thus connotes \"following through\"in a technique, as well as preservation of one\'s awareness so that one is prepared to respond to additional attacks.',6),(217,'ZENSHIN','Forward.',6),(218,'ZORI','Japanese slippers.',6),(219,'AKA AIUCHI','Red, \"Simultaneous Scoring Technique.\" No point awarded to either contestant. Referee brings fists together in front of the chest.',7),(220,'AKA (SHIRO) IPPON','\"Red (White) Scores Ippon.\" The Referee obliquely raises his arm on the side of the winner (as in ...NO KACHI).',7),(221,'AKA (SHIRO) NO KACHI','\"Red (White) Wins!\" The Referee obliquely raises his arm on the side of the winner.',7),(222,'ATENAI YONI','\"Warning without penalty.\" This may be imposed for attended minor infractions or for the first instance of a minor infraction. The Referee raises one hand in a fist with the other hand covering it at chest level and shows it to the offender.',7),(223,'ATOSHI BARAKU',' \"A little more time left.\" An audible signal will be given by the time keeper 30 seconds before the actual end of the bout.',7),(224,'ATTATE IRU','\"Contact\" ',7),(225,'CHUI','\"Warning\"',7),(226,'ENCHO-SEN','\"Extension.\" After a draw, the match goes into over-time. Referee reopens match with command',7),(227,'SHOBU HAJIME',' \"FUJUBUN Not enough power\"',7),(228,'FUKUSHIN SHUGO','\"Judges Conference\"',7),(229,'HANSOKU','\"Foul.\" This is imposed following a very serious infraction. It results in the opponent\'s score being raised to SANBON. HANSOKU is also invoked when the number of HANSOKU-CHUI and KEIKOKU imposed raise the opponent\'s score to SANBON. The Referee points with his index finger to the face of the offender at a 45 degree angle and announces a victory for the opponent.',7),(230,'HANSOKU CHUI','\"Warning with an IPPON penalty. This is a penalty in which IPPON is added to the opponent\'s score. HANSOKU-CHUI is usually imposed for infractions for which a KEIKOKU has previously been given in that bout. The Referee points with his index finger to the abdomen of the offender of the offender parallel to the floor.',7),(231,'HANTEI','\"Judgment.\" Referee calls for judgment by blowing his whistle and the Judges render their decision by flag signal.',7),(232,'HANTEI KACHI','\"Winner by decision\".',7),(233,'HIKIWAKE','\"Draw.\" Referee crosses arms over chest, then un-crosses and holds arms out from the body with the palms showing upwards.',7),(234,'IPPON SHOBU','One point match, used in tournaments.',7),(235,'JIKAN','\"Time\".',7),(236,'JOGAI','\"Exit from fighting area.\" The Referee points with his index finger at a 45 degree angle to the area boundary on the side of the offender.',7),(237,'JOGAI HANSOKU CHUI','\"Fourth and Final Exit from the fighting area.\" Fourth exit from the fighting area causes victory to the opponent. JOGAI HANSOKU CHUI \"Third exit from fighting area\". Referee uses two hand signals with announcement \"AKA (or SHIRO) JOGAI HANSOKU CHUI\". He first points with his index finger to the match boundary on the side of the offender, then to the offender\'s abdomen. An IPPON is awarded to the opponent.',7),(238,'JOGAI KEIKOKU','\"Second exit from fighting area.\" WAZA-ARI penalty is given to the opponent.',7),(239,'KACHI','Victorious. (e.g., AKA KACHI) in a tournament.',7),(240,'KEIKOKU','\"Warning with WAZA-ARI penalty in SANBON SHOBU. This is a penalty in which WAZA-ARI is added to the opponent\'s score.\nKEIKOKU is imposed for minor infractions for which a warning has previously been given in that bout, or for infractions not sufficiently serious to merit HANSOKU-CHUI. Referee points with his index finger to the feet of the offender at an angle of 45 degrees.',7),(241,'KIKEN','\"Renunciation.\" The Referee points one index finger towards the contestant.',7),(242,'MIENAI','\"I could not see.\" A call by a judge to indicate that a given technique was not visible form his/her angle.',7),(243,'MUMOBI','\"Warning for lack of regard for ones own safety.\" Referee points one index finger in the air at a 60 degree angle on the side of the offender.',7),(244,'MOTO NO ICHI','\"Original Position.\" Contestants, Referee and Judge return to their respective standing lines.',7),(245,'SANBON SHOBU','Three Point match. Used in tournaments.',7),(246,'SHIRO','White ',7),(247,'SHOBU HAJIME','\"Start the Extended Bout.\"',7),(248,'SHOBU SANBON HAJIME','\"Start the Bout\"',7),(249,'SHUGO','\"Judges Called.\" The Referee beckons with his arms to the Judges. ',7),(250,'TORANAI','\"No Point\"',7),(251,'TORIMASEN','\"Unacceptable as scoring techniques.\" As HIKIWAKE, but culminating with the palms facing downwards towards body.',7),(252,'TSUZUKETE','\"Fight On!\" Resumption of fighting ordered when unauthorized interruption occurs.',7),(253,'TSUZUKETE HAJIME','\"Resume Fighting - Begin!\" Referee standing upon his line, steps back into ZENKUTSU DACHI and brings the palms of this hands toward each other.',7),(254,'WAZA ARI','\"Half point\" YAME Stop!',7);
/*!40000 ALTER TABLE `aw2274434_karate_entity_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aw2274434_karate_enum_belt`
--

DROP TABLE IF EXISTS `aw2274434_karate_enum_belt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aw2274434_karate_enum_belt` (
  `belt_id` int(10) NOT NULL AUTO_INCREMENT,
  `belt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`belt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aw2274434_karate_enum_belt`
--

LOCK TABLES `aw2274434_karate_enum_belt` WRITE;
/*!40000 ALTER TABLE `aw2274434_karate_enum_belt` DISABLE KEYS */;
INSERT INTO `aw2274434_karate_enum_belt` VALUES (1,'1st Degree Black Belt'),(2,'2nd Degree Black Belt'),(3,'3rd Degree Black Belt'),(4,'4th Degree Black Belt'),(5,'5th Degree Black Belt'),(6,'6th Degree Black Belt'),(7,'7th Degree Black Belt'),(8,'8th Degree Black Belt');
/*!40000 ALTER TABLE `aw2274434_karate_enum_belt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aw2274434_karate_enum_termtype`
--

DROP TABLE IF EXISTS `aw2274434_karate_enum_termtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aw2274434_karate_enum_termtype` (
  `termtype_id` int(11) NOT NULL AUTO_INCREMENT,
  `termtype` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`termtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aw2274434_karate_enum_termtype`
--

LOCK TABLES `aw2274434_karate_enum_termtype` WRITE;
/*!40000 ALTER TABLE `aw2274434_karate_enum_termtype` DISABLE KEYS */;
INSERT INTO `aw2274434_karate_enum_termtype` VALUES (1,'Blocks'),(2,'Strikes and Punches'),(3,'Stances (Dachi)'),(4,'Kicks and Foot Techniques'),(5,'Weapons'),(6,'General Terminology'),(7,'Tournament Terminology');
/*!40000 ALTER TABLE `aw2274434_karate_enum_termtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aw2274434_karate_events`
--

DROP TABLE IF EXISTS `aw2274434_karate_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aw2274434_karate_events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_date` date NOT NULL,
  `title` varchar(250) COLLATE latin1_bin NOT NULL,
  `description` text COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aw2274434_karate_events`
--

LOCK TABLES `aw2274434_karate_events` WRITE;
/*!40000 ALTER TABLE `aw2274434_karate_events` DISABLE KEYS */;
INSERT INTO `aw2274434_karate_events` VALUES (1,'2013-09-17','test event 1','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec volutpat aliquet diam non tincidunt. Vivamus vitae ipsum ac justo elementum tempus.'),(2,'2013-09-19','test event 2','Aenean iaculis bibendum ullamcorper. In vulputate velit eu leo aliquet eu auctor magna vestibulum.'),(3,'2013-12-11','Party','When it\'s time to party we will party hard');
/*!40000 ALTER TABLE `aw2274434_karate_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aw2274434_karate_users`
--

DROP TABLE IF EXISTS `aw2274434_karate_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aw2274434_karate_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `first_name` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `last_name` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `pass` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `reg_date` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `user_type` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aw2274434_karate_users`
--

LOCK TABLES `aw2274434_karate_users` WRITE;
/*!40000 ALTER TABLE `aw2274434_karate_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `aw2274434_karate_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aw2274434_users`
--

DROP TABLE IF EXISTS `aw2274434_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aw2274434_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aw2274434_users`
--

LOCK TABLES `aw2274434_users` WRITE;
/*!40000 ALTER TABLE `aw2274434_users` DISABLE KEYS */;
INSERT INTO `aw2274434_users` VALUES (2,'Dylan','Adams','dadams@hotmail.com','fea7f657f56a2a448da7d4b535ee5e279caf3d9a','2013-11-20 17:15:28',NULL),(3,'mark','smith','smithm1212@gmail.com','011c945f30ce2cbafc452f39840f025693339c42','2013-11-21 10:10:21',NULL),(4,'121212','121212','121212','48058e0c99bf7d689ce71c360699a14ce2f99774','2013-11-21 10:12:01',NULL),(5,'1212123','1212123','1212123','618dcdfb0cd9ae4481164961c4796dd8e3930c8d','2013-11-21 10:12:18',NULL),(6,'111','111','111','6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2','2013-11-21 10:12:27',NULL),(7,'222','222','222','1c6637a8f2e1f75e06ff9984894d6bd16a3a36a9','2013-11-21 10:12:36',NULL),(8,'333','333','333','43814346e21444aaf4f70841bf7ed5ae93f55a9d','2013-11-21 10:12:43',NULL),(9,'444','444','444','9a3e61b6bcc8abec08f195526c3132d5a4a98cc0','2013-11-21 10:12:49',NULL),(10,'555','555','555','cfa1150f1787186742a9a884b73a43d8cf219f9b','2013-11-21 10:12:58',NULL),(12,'Allie','Fiehler','af@gmail.com','9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684','2013-11-28 00:08:23',NULL),(13,'Allison','Woods','plumrat@hotmail.com','9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684','2013-11-28 00:27:16',NULL),(14,'admin','forsite','postmaster@site.com','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','2013-12-04 13:42:19',NULL);
/*!40000 ALTER TABLE `aw2274434_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-05  9:56:33
