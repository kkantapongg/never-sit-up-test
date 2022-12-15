# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.40)
# Database: neversitup
# Generation Time: 2022-12-15 18:13:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `status` enum('waiting','paid','cancel') DEFAULT 'waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `orderNo`, `userId`, `productId`, `quantity`, `createdAt`, `status`)
VALUES
	(1,'000324ce-04df-4810-9279-f8e2cb36191d',1,1,2,'2022-12-15','cancel'),
	(2,'000324ce-04df-4810-9279-f8e2cb36191d',1,2,3,'2022-12-15','cancel'),
	(3,'5cc7844c-5182-4312-8152-92ecedd82386',1,1,2,'2022-12-15',NULL),
	(4,'5cc7844c-5182-4312-8152-92ecedd82386',1,2,3,'2022-12-15',NULL),
	(5,'44baaf2c-4297-4f3e-8993-5b12c24adfa1',1,1,2,'2022-12-15',NULL),
	(6,'44baaf2c-4297-4f3e-8993-5b12c24adfa1',1,2,3,'2022-12-15',NULL),
	(7,'66b43f4f-3209-47ae-bba2-c50bf3271424',1,1,2,'2022-12-15',NULL),
	(8,'66b43f4f-3209-47ae-bba2-c50bf3271424',1,2,3,'2022-12-15',NULL),
	(9,'b2dfcf06-1b01-455f-91a8-a3d3946d0639',1,1,2,'2022-12-15',NULL),
	(10,'b2dfcf06-1b01-455f-91a8-a3d3946d0639',1,2,3,'2022-12-15',NULL),
	(11,'96da2801-a387-431f-9d06-074be14a0b16',1,1,2,'2022-12-15',NULL),
	(12,'96da2801-a387-431f-9d06-074be14a0b16',1,2,3,'2022-12-15',NULL);

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;

INSERT INTO `product` (`id`, `name`, `price`)
VALUES
	(1,'Gin - Gilbeys London, Dry',34.19),
	(2,'Bar Special K',72.30),
	(3,'Herb Du Provence - Primerba',70.85),
	(4,'Tea - Decaf 1 Cup',63.71),
	(5,'Sloe Gin - Mcguinness',97.44),
	(6,'Cut Wakame - Hanawakaba',72.39),
	(7,'Soup Campbells - Italian Wedding',69.49),
	(8,'Beer - Mill St Organic',67.75),
	(9,'Foil Cont Round',72.66),
	(10,'Vermouth - Sweet, Cinzano',15.74),
	(11,'V8 Splash Strawberry Kiwi',58.96),
	(12,'Cheese - Taleggio D.o.p.',6.21),
	(13,'Extract - Almond',51.21),
	(14,'Lettuce - Curly Endive',55.03),
	(15,'Bacardi Raspberry',74.28),
	(16,'Soup - Chicken And Wild Rice',71.98),
	(17,'Chevril',62.16),
	(18,'Alize Gold Passion',70.57),
	(19,'Orange Roughy 4/6 Oz',58.53),
	(20,'Juice - Ocean Spray Cranberry',7.25),
	(21,'Bols Melon Liqueur',57.65),
	(22,'Wild Boar - Tenderloin',68.21),
	(23,'Plate Pie Foil',47.80),
	(24,'Sea Bass - Fillets',77.23),
	(25,'Wine - Fino Tio Pepe Gonzalez',91.73),
	(26,'Guava',14.51),
	(27,'Soupfoamcont12oz 112con',23.24),
	(28,'Water - Spring 1.5lit',25.78),
	(29,'Veal - Bones',17.84),
	(30,'Coffee Beans - Chocolate',97.32),
	(31,'Praline Paste',85.44),
	(32,'Fenngreek Seed',48.19),
	(33,'Beets - Mini Golden',26.80),
	(34,'Table Cloth 90x90 White',76.98),
	(35,'Bulgar',40.23),
	(36,'Flounder - Fresh',40.32),
	(37,'Lemonade - Island Tea, 591 Ml',61.47),
	(38,'Pea - Snow',3.23),
	(39,'Pails With Lids',86.91),
	(40,'C - Plus, Orange',43.43),
	(41,'Pasta - Penne Primavera, Single',51.35),
	(42,'Wine - Winzer Krems Gruner',21.88),
	(43,'Wine - Red, Antinori Santa',86.24),
	(44,'Pork - Ground',74.49),
	(45,'Tea - Mint',64.08),
	(46,'Bacardi Mojito',89.99),
	(47,'Steam Pan - Half Size Deep',66.10),
	(48,'Wine - Vidal Icewine Magnotta',28.01),
	(49,'Trueblue - Blueberry',36.45),
	(50,'Muffin Batt - Ban Dream Zero',80.26),
	(51,'Wine - Chateau Timberlay',9.51),
	(52,'Beef - Roasted, Cooked',98.90),
	(53,'Puff Pastry - Slab',86.05),
	(54,'Cookies - Englishbay Oatmeal',37.42),
	(55,'Rum - Coconut, Malibu',59.60),
	(56,'The Pop Shoppe Pinapple',17.76),
	(57,'Horseradish - Prepared',47.03),
	(58,'Dooleys Toffee',49.27),
	(59,'Milkettes - 2%',19.07),
	(60,'Juice - Cranberry, 341 Ml',52.62),
	(61,'Oil - Truffle, White',6.24),
	(62,'Rice - Long Grain',86.95),
	(63,'Mushrooms - Black, Dried',58.45),
	(64,'Rice Paper',16.52),
	(65,'Beer - Blue',10.64),
	(66,'Pickles - Gherkins',61.42),
	(67,'Cheese - Perron Cheddar',63.83),
	(68,'Cloves - Whole',65.12),
	(69,'Muffin - Banana Nut Individual',70.82),
	(70,'Bread Country Roll',80.72),
	(71,'Ice Cream - Strawberry',98.47),
	(72,'Cake - Sheet Strawberry',36.05),
	(73,'Tendrils - Baby Pea, Organic',26.61),
	(74,'Grapes - Green',13.73),
	(75,'Flour - Fast / Rapid',9.48),
	(76,'Juice - Ocean Spray Kiwi',57.67),
	(77,'Beef - Cow Feet Split',84.32),
	(78,'Beef - Ox Tongue, Pickled',33.30),
	(79,'Cake - Mini Cheesecake',9.40),
	(80,'Bay Leaf Ground',5.46),
	(81,'Turnip - White, Organic',20.95),
	(82,'Wine - White, Pelee Island',35.65),
	(83,'Fuji Apples',11.12),
	(84,'Napkin - Beverge, White 2 - Ply',14.98),
	(85,'Turkey - Whole, Fresh',66.06),
	(86,'Cabbage Roll',19.27),
	(87,'Lamb Rack - Ontario',51.60),
	(88,'Pork - Ham, Virginia',53.66),
	(89,'Wine - Chateauneuf Du Pape',74.79),
	(90,'Turkey - Breast, Smoked',9.66),
	(91,'Initation Crab Meat',93.53),
	(92,'Jolt Cola - Red Eye',91.05),
	(93,'Artichokes - Knobless, White',40.89),
	(94,'Watercress',11.95),
	(95,'Wine - Sauvignon Blanc Oyster',28.12),
	(96,'Sauce - Hollandaise',9.64),
	(97,'Longan',31.40),
	(98,'Zucchini - Green',51.85),
	(99,'Oysters - Smoked',12.80),
	(100,'Tart Shells - Savory, 2',58.36);

/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `password`, `age`, `userName`, `firstName`, `lastName`)
VALUES
	(1,'S5wRWN90',79,'wchick0','Wash','Chick'),
	(2,'kaWquD9',94,'rdurran1','Richart','Durran'),
	(3,'ZJImt38X',10,'mrowat2','Maxi','Rowat'),
	(4,'ce3zsFJTgVIp',83,'mcalrow3','Mil','Calrow'),
	(5,'Lmc332',14,'dadamo4','Delaney','Adamo'),
	(6,'bju3cs6xcM',25,'smcelvine5','Skell','McElvine'),
	(7,'t6lsWKq',89,'cbeadel6','Cindee','Beadel'),
	(8,'K9OITSqN',67,'abootell7','Archibaldo','Bootell'),
	(9,'VXwQ6ifNkprW',49,'jexell8','Johann','Exell'),
	(10,'gxmLzZzFy26',76,'ttaig9','Trent','Taig'),
	(11,'owRrFJ17qi',28,'dwillasa','Datha','Willas'),
	(12,'o0vj5Jg',89,'gkenwardb','Gwenni','Kenward'),
	(13,'xhurAqV',87,'kdegiovannic','Keslie','De Giovanni'),
	(14,'AOOuZiF',25,'cbrayfieldd','Cort','Brayfield'),
	(15,'VsUyM9XF',63,'amcneae','Anestassia','McNea'),
	(16,'rlfXQBq0t9',60,'wstaggef','Winnah','Stagge'),
	(17,'qtet4ulfS',32,'tvarreng','Tobias','Varren'),
	(18,'qreCEiH5o',21,'nkegleyh','Nanine','Kegley'),
	(19,'nagEqZp2UGBj',36,'hcochei','Hadlee','Coche'),
	(20,'eAquIWqjq',23,'cmcmichellj','Calli','McMichell'),
	(21,'1AKzDf68',45,'bjedrachowiczk','Bliss','Jedrachowicz'),
	(22,'c7S3wahUIQ5',3,'thuglel','Tootsie','Hugle'),
	(23,'qjimdRz2o0',32,'eocahillm','Emelyne','O\'Cahill'),
	(24,'r5A9lp',11,'obendann','Odille','Bendan'),
	(25,'j7prWVZ',62,'pjewsburyo','Pearce','Jewsbury'),
	(26,'sXpa8VxbM3',56,'smorewoodp','Stormi','Morewood'),
	(27,'BMbSqVcb',37,'fsmythinq','Francesca','Smythin'),
	(28,'XnzIAKvF',86,'ishalloor','Ilaire','Shalloo'),
	(29,'rszySN',15,'hwalmsleys','Helaina','Walmsley'),
	(30,'QPNX8m0h3',60,'rbrideaut','Rubie','Brideau'),
	(31,'djW1fJw2Ilv0',52,'akendleu','Anthony','Kendle'),
	(32,'8CfisWM6',35,'acoltonv','Andy','Colton'),
	(33,'6sqqrJXoKtB',38,'emathewsw','Elita','Mathews'),
	(34,'LydItXqT4M',3,'adonisox','Anabelle','Doniso'),
	(35,'WBlHcCz',78,'esilwoody','Elissa','Silwood'),
	(36,'7Ytt3G',52,'mmedlandz','Marnia','Medland'),
	(37,'MIdpt6b2GQiN',46,'rosheilds10','Rey','O\'Sheilds'),
	(38,'fULnqwff5Q4M',66,'rpettko11','Rosy','Pettko'),
	(39,'ru4uGBxQM',42,'fsmetoun12','Farah','Smetoun'),
	(40,'Q9NEpPcM4m',92,'hgagie13','Heather','Gagie'),
	(41,'UHT7UHEcEJz7',66,'pbernardino14','Phaedra','Bernardino'),
	(42,'5gAnidHI7',35,'hyanne15','Hedwig','Yanne'),
	(43,'gvD6OEX',51,'wpaike16','Waiter','Paike'),
	(44,'gQTmzdKI5z',38,'bbellany17','Bartolomeo','Bellany'),
	(45,'9X0W5x',8,'tschwanden18','Tibold','Schwanden'),
	(46,'0nduyu',16,'stortoise19','Saul','Tortoise'),
	(47,'6IPkAky',10,'ldigregorio1a','Lawrence','Di Gregorio'),
	(48,'pXPmICgufW0',42,'dstivani1b','Dory','Stivani'),
	(49,'2RNDDN',69,'thumpherson1c','Tate','Humpherson'),
	(50,'VZdMHyQ9y',74,'ybaudrey1d','Yuri','Baudrey'),
	(51,'6NqaaSE1wBBK',29,'dgaudin1e','Devlen','Gaudin'),
	(52,'RcgUUQS',42,'psainthill1f','Prentiss','Sainthill'),
	(53,'dIoG5traNt',49,'rtregidgo1g','Reagen','Tregidgo'),
	(54,'cPxQ3jtMyDQ',32,'wwinsiowiecki1h','Winifred','Winsiowiecki'),
	(55,'Wc43a0v',67,'acumberpatch1i','Ambrosio','Cumberpatch'),
	(56,'DclZ6r6p',98,'dscarlet1j','Darby','Scarlet'),
	(57,'r76aUX',46,'efelix1k','Even','Felix'),
	(58,'fUc06JsFD',51,'cheeron1l','Caril','Heeron'),
	(59,'aJuRn6Pn',18,'gsemiraz1m','Gerik','Semiraz'),
	(60,'91YxFtDRCN0',19,'jroake1n','Joyous','Roake'),
	(61,'MEQ1RUrbHLBQ',27,'mbreese1o','Margery','Breese'),
	(62,'Xy6NYfNZJ',5,'wkerrane1p','Wendell','Kerrane'),
	(63,'IFjBlxZyXry',49,'cbonifazio1q','Caryl','Bonifazio'),
	(64,'WBn6XBQuk',44,'kemerine1r','Korrie','Emerine'),
	(65,'owHBXiug',34,'apraundl1s','Arlen','Praundl'),
	(66,'VijMVMxiB',13,'rlowne1t','Raff','Lowne'),
	(67,'faDJE4imTZ',72,'jtunkin1u','Jesse','Tunkin'),
	(68,'otxnbmHe51',85,'tprozescky1v','Tyrone','Prozescky'),
	(69,'zAUyqPt',42,'ebiggin1w','Edmon','Biggin'),
	(70,'oKAoyLh15nB',99,'lpeters1x','Louie','Peters'),
	(71,'FBYfhtLIRD',81,'mmartignoni1y','Marne','Martignoni'),
	(72,'WiNl5YGyepV',10,'vcasa1z','Viviene','Casa'),
	(73,'a7U6U66U0yJL',50,'ftowne20','Finley','Towne'),
	(74,'XFJCXHy',22,'pfoort21','Peggy','Foort'),
	(75,'qmyDlqa8',82,'asimnor22','Allissa','Simnor'),
	(76,'XxZd6uHlbp',32,'vbentote23','Verne','Bentote'),
	(77,'YsY2ODuHo7HK',70,'bgall24','Burt','Gall'),
	(78,'BcplKtiQ',41,'bcopp25','Basil','Copp'),
	(79,'HlMVwJIt0i',50,'atheobalds26','Arabel','Theobalds'),
	(80,'euFkXS',29,'ajardin27','Ashlen','Jardin'),
	(81,'u65m3iG',20,'eprozescky28','Ely','Prozescky'),
	(82,'F01wrI4zTerV',5,'edimblebee29','Emmalynn','Dimblebee'),
	(83,'rTogo1BgSQSV',33,'fedwicker2a','Fernando','Edwicker'),
	(84,'4zC8GCL',17,'pdomotor2b','Powell','Domotor'),
	(85,'7obFSP',24,'fdelchecolo2c','Fara','Del Checolo'),
	(86,'0Mz77PeR',58,'oepine2d','Oralie','Epine'),
	(87,'YUynBfpmw',46,'lgogan2e','Lay','Gogan'),
	(88,'sVVpHaSZ',67,'csawney2f','Clive','Sawney'),
	(89,'h27Qnmd',98,'stomblin2g','Seana','Tomblin'),
	(90,'UdIgml4u7Q0',12,'jrouff2h','Jonathan','Rouff'),
	(91,'lViwGYKfvy',5,'aklimowicz2i','Antonina','Klimowicz'),
	(92,'ryC5UPGHP',58,'rscudder2j','Riane','Scudder'),
	(93,'OxH62OxLB',40,'sbursnell2k','Shandeigh','Bursnell'),
	(94,'jNN1shKmU09',38,'bdronsfield2l','Bridget','Dronsfield'),
	(95,'53XA1E',25,'dmoland2m','Doralin','Moland'),
	(96,'4YIvLEg',95,'lskerman2n','Lexy','Skerman'),
	(97,'2Jt4jt',50,'dgreenless2o','Dennie','Greenless'),
	(98,'LFerCXI0ns0V',78,'adeambrosi2p','Aharon','De Ambrosi'),
	(99,'lfJjOzq',98,'vgiraldon2q','Vidovik','Giraldon'),
	(100,'a4lFYXXlm5',49,'lreedie2r','Lelah','Reedie');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
