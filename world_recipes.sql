-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: recipe_data
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'SuperAdmin','Password123'),(2,'JackieZheng','Jackie123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `recipeId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` longtext,
  `ingredients` longtext,
  `instruction` longtext,
  `preTime` varchar(45) DEFAULT NULL,
  `cookTime` varchar(45) DEFAULT NULL,
  `recipeCategory` varchar(45) DEFAULT NULL,
  `cuisine` varchar(45) DEFAULT NULL,
  `image` blob,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`recipeId`),
  KEY `userId` (`userId`),
  CONSTRAINT `userId_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (5,'BBQ Chicken Wings','BBQ chicken wings are always a winner whenever they are served. These wings with a sweet & tangy Asian inspired sauce are just great for the grill.','\r\nServes 4\r\n\r\n    1 Kilogram Chicken wings\r\n    � Cup Teriyaki sauce\r\n    1 Cup Oyster sauce\r\n    � Cup Light soy sauce\r\n    � Cup Tomato ketchup\r\n    2 Tablespoons Garlic powder\r\n    � Cup Dark rum\r\n    � Cup Sugar\r\n\r\n','Step 1\r\n\r\nWash the chicken wings, drain and pat dry .\r\n\r\nStep 2\r\n\r\nCut chicken wings into 3 sections. With a sharp knife cut down the joint separating & discard the tip. Then cut along the drummet leaving 2 sections.\n\nStep 3\n\nPut the cut chicken wings in a bowl and set aside.\n\nStep 4\n\nNext, prepare the sauce to marinate the chicken wings.\n\nStep 5\n\nStir the sauce ingredients together. Make sure its all combined.\n\nStep 6\n\nThen place the chicken wings in the sauce.\n\nStep 7\n\nPlace grilling grate over the hot coal.\n\nStep 8\n\nArrange chicken wings around the hot coal with the bone part of the wings pointed towards the flame and the fat part up.\n\nStep 9\n\nBrush the chicken wings with the honey.\n\nStep 10\n\nTransfer the grilled chicken wings to a plate and serve immediately.\n\n\n','15 mins','50 mins','Chicken','Chinese',_binary 'chicken_wings.png',32),(6,'BBQ Short Ribs','With just a little bit of forethought and very little work, you can have a delicious dish that will satisfy the cravings of any meat lover!','Garlic,knob,Beef short ribs,Green onion, Asian pear,Brown sugar','Step 1\r\nGather mise en place.\r\nStep 2\r\nMince the garlic, grate the ginger, and slice the green onions.\n\nStep 3\n\nMake the marinade by first juicing the apple (or pear - the Asian pear is more traditional but they both result in a delicious dish).\n\nStep 4\n\nSet the short ribs in a dish so that each piece can get coated evenly. Pour the marinade over top, cover, and refrigerate.\n\nStep 5\n\nDrain excess marinade. Grill short ribs on pre-heated grill to desired doneness. Flip the meat and repeat. It took us about 3-4 minutes per side.\n\nStep 6\n\nFor serving, garnish with sliced green onions and toasted sesame seeds to your heart\'s content! Enjoy!\n\r\n','20 mins','15 mins','Pork','Thai',_binary 'ribs.jpg',32),(8,'Homemade Milano Cookies','Make your favorite mint and chocolate sandwich cookie from scratch at home!',' Flour,Coarse salt,Unsalted butter, Sugar, Egg,Water','\r\nStep 1\r\n\r\nPre-heat oven to 325 degrees. In a small bowl whisk together flour and salt. In a medium bowl, using an electric mixer, beat butter and granulated sugar on high, scraping down bowl as needed, until light and fluffy, 4 minutes.\r\n\r\nStep 2\r\n\r\nAdd vanilla and beat to combine. Add egg and beat to combine. With mixer on low, gradually add flour mixture and beat just until combined. \r\n\n\nStep 3\n\nTransfer dough to a quart-size zip-top bag; with scissors, snip a  hole in one corner. Pipe 54 cookies (by 2 inches), 0.5 inch apart, onto two parchment-lined baking sheets. my dough was way too thick to pipe, so I ended up hand rolling them. \n\nStep 4\n\nBake for 15 minutes rotating half way through.\n\nStep 5\n\nMix confectioners sugar with peppermint and water\n\nStep 6\n\nMelt chocolate in a double boiler or microwave, then add chocolate to one cookie and peppermint mixture to another,\n\nStep 7\n\nAnd make into a delicious chocolate peppermint sandwich cookie!\n\n\n\nStep 4\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elementum pulvinar etiam non quam lacus suspendisse.\n\n\nStep 5\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elementum pulvinar etiam non quam lacus suspendisse.\n\n\nStep 6\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elementum pulvinar etiam non quam lacus suspendisse.\n\n\nStep 7\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elementum pulvinar etiam non quam lacus suspendisse.\n\n\n\r\n','25 mins','20 mins','Baking','Italian',_binary 'cookies.png',30),(9,'Potstickers','The nicely browned crust at the bottom of these dumplings is the key to these potstickers (Guo Tieh). Here\'s a simple recipe from my family.','Pork, Potsticker wraps, Scallions, Ginger, Light soy sauce, Garlic cloves, Napa cabbage, Egg, Sesame oil, Water','\r\nStep 1\r\n\r\nFinely chop all of the vegetables and aromatics. Scallions, onions, ginger, cilantro, garlic, napa cabbage, spinach and/or bok choy.\r\n\r\nStep 2\r\n\r\nMix ingredients together to combine well. Open potsticker wrappers and place 1 tbsp of filling and seal by pleating every 1.5 cm and pinching shut.\r\n\n\nStep 3\n\nAfter you have enough to fit into a pan, put oil into pan and let the oil become shimmering hot (almost smoking). Place dumplings in pan, cook 2 mins\n\n\nStep 4\n\nBoil off excess water from the uncovered pan if you still see a lot. Add 2 tbsp of oil evenly and cook 2-3 mins until bottoms are browned (see above)\n\nStep 5\n\nUse a thin spatula to remove (comes off as one nicely browned piece with some coaxing). Soy sauce, garlic, and sesame oil make a fine dipping sauce.\n\r\n','1 hr','15 min','Pork','Chinese',_binary 'dumplings.png',33),(10,'Halibut with leeks and mushrooms','This recipe makes a main dish and whole lotta side dish. ','Olive oil, Shallot, Crimini mushroom, Leeks, Skin-on halibuts, Lemon, Black pepper.','\r\n Step 1\r\n \r\nHeat 2 tablespoons of olive oil in a large skillet over medium heat. Add chopped shallots and leeks. \r\n \r\n Step 2\r\n \r\nSprinkle with about 0.5 teaspoon salt, and cook, stirring occasionally, about 10-15 minutes. Add mushrooms and cook, stirring, until they soften a bit, 3-4 minutes. \r\n \r\n Step 3\r\n \r\nSet mixture aside.\n\n\nStep 4\n\nSeason uncooked halibut with remaining salt and black pepper. Heat 2 tablespoons of olive oil over medium-height heat in a large skillet. Cook halibut, about 5 minutes. Flip fillets over and spoon another tablespoon of olive oil over it. Cook for about 2-3 minutes.\n\n\nStep 5\n\nTransfer halibut fillet onto a bed of leeks (about 1 to 1 ½ cup) for each serving. Serve with lemon slices (because it’s so much tastier with a touch of lemon!).\n\n\r\n \r\n \r\n ','20 mins','50 mins','Seafood','French',_binary 'halibut.png',34),(12,'Salt and Pepper Chicken','This aggressively seasoned Taiwanese snack is often sold in the night markets. It\'s a classic treat that\'s big on flavor.','Chicken, Flour, Egg, Onion, Green Pepper, \r\nChill, Garlic, Oil','Step 1\r\nCut chicken into pieces. Dissolve cornstarch into 2 tablespoons of water to make a slurry.\r\n\nStep 2\n\nMix slurry with soy sauce, rice wine, five spice, garlic powder, white pepper, Szechuan peppercorn, black pepper, salt, egg, and sugar.\n\n\nStep 3\n\nMarinate chicken pieces in spice mixture for at least an hour...Fill heavy bottomed pan with about 0.5 inch of vegetable oil. Heat pan on medium heat.\n\nStep 4\n\nCoat the marinated chicken pieces evenly on a plate of all purpose flour.\n\nStep 5\n\nFry until the bottom is golden brown.\n\nStep 6\n\nServe hot. (It pairs nicely with a ice cold bottle of Taiwan beer or a Kavalan single malt on the rocks!)\n\r\n ','20 mins','30 mins','Chicken','Chinese',_binary 'spchicken.png',35),(13,'Roasted Chicken','This roasted chicken recipe is so easy to prepare and so incredibly delicious to eat. It roasts beautifully thanks to the hint of honey on the skin. ','Chicken, Flour, Egg, Onion, Green Pepper, \r\n Chill, Garlic, Oil','\nStep 1\n\nFirst gather the ingredients needed to marinade the chicken.\n\r\n\nStep 2\n\nMix all the ingredients for the marinade in a bowl.\n\r\n  \nStep 3\n\nWash and rinse well the chicken. Pat dry with paper towels.\n\nStep 4\n\nUsing a pastry brush, apply the marinade on outer skin and inside of chicken.\n\nStep 5\n\nRoast till the skin of chicken is crispy and the meat is juicy and cooked through.\n','30 mins','1 hour','Chicken','French',_binary 'roastedchicken.png',19),(21,'Mini Pavlovas','Mini pavlovas topped with ice cream and fresh strawberries are perfect for the summer! ','Egg whites,,Cup Granulated sugar,1 Teaspoon Clear vanilla extract, 1 Pint Vanilla ice cream,1 Cup Strawberries, diced small, Dash Sprinkles\r\n','\r\nStep 1\r\n\r\n215 F Set up a double boiler by bringing 1 cup of water to a simmer in a saucepan and placing a bowl on top of the pan. Make sure the bottom of the bowl does not touch the water! Add egg whites and sugar to the bowl and whisk until the sugar has dissolved. This should take about 3-5 minutes.\r\n\r\nStep 2\r\n\r\nRemove from heat and Add vanilla extract and whisk on high speed until the meringue is glossy and forms stiff peaks\r\n\r\nStep 3\r\n\r\nPaint stripes of gel food coloring up the side of a piping bag.\r\n\r\nStep 4\r\n\r\nTo assemble, add 1 scoop of vanilla ice cream to each meringue cup and top with diced strawberries and sprinkles. Enjoy!\r\n','10 mins',' 40 mins','Baking','Japanese',_binary 'pavlovas.png',61);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `reviewId` int NOT NULL AUTO_INCREMENT,
  `recipeId` int DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `content` longtext,
  `date` date DEFAULT NULL,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`reviewId`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,5,'GuohuangTang','Brilliant recipe, greate stuff','2020-02-20',8),(2,6,'GuoyinZheng','I love it, keep it on','2020-02-19',7),(3,8,'babyhon','Delicious','2020-05-02',6),(4,9,'babyzheng','Can\'t wait to try this!','2020-05-02',9),(5,6,'babyzheng','Looking good','2020-05-02',8),(6,10,'admin','Keep it up!It is nice stuff.','2020-05-02',9),(7,9,'GuohuanTang','Nice recipe. I love it!','2020-05-02',7),(8,6,'Al','This is the best recipe ever.Thanks','2020-05-02',10),(9,8,'jzheng','I love cookies!','2020-05-03',7),(10,12,'GuoyinZheng','Amazing dish! Love it man.','2020-05-03',9),(11,9,'KittyTui','Excellent!','2020-05-04',8),(12,8,'GuoyinZheng','sfsdfsdf','2020-05-06',10),(13,15,'GuohuanTang','delicious','2020-05-06',9),(14,21,'GuoyinZheng','Is it not nice? Absolutely fantastic.','2020-05-06',8),(15,13,'GuoyinZheng','A little bit burn on the skin, otherwise it\'s perfect.','2020-05-10',7),(16,5,'admin','Nice chicken','2020-05-16',9),(17,29,'FTang','Not nice!','2020-05-16',5);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`user_name`),
  KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'kirstie123','lightfoot','UserName','kirstielightfoot@hotmail.com','password'),(19,'Guohuan1','Tang','GuohuanTang','tangguohuan@hotmail.com','password'),(29,'Adam','Lightfoot','adam','therock@email.com','password'),(30,'babyjason','Zheng','jzheng','xiaozheng@hotmail.com','password1'),(32,'Jackie1','Zheng','admin','guoyinzheng@outlook.com','admin'),(33,'baby','zheng','babyzheng','babyzheng@hotmail.com','password'),(34,'baby','Hon','babyhon','babyhon@hotmail.com','password'),(35,'Siuyin','Cheung','Hon','siuyin@hotmail.com','password'),(61,'Guoyin','Zheng','GuoyinZheng','guoyinzheng@hotmail.com','password'),(67,'Kitty1','Tui','kitty','kittytui@hotmail.com','password');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-20  0:15:59
