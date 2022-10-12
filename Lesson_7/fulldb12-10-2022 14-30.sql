#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '10', '1', 'Saepe voluptatum laborum quam ipsam reprehenderit adipisci dolorem laboriosam. Quaerat facilis nam facilis excepturi quia dolor. In voluptas sapiente rerum ullam quasi.', 'omnis', 1, NULL, '1979-08-29 04:06:00', '2006-01-11 08:03:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '1', '2', 'Nobis est omnis aut a numquam iusto esse. Aut voluptatem est iusto vel nesciunt eligendi corrupti. Consectetur et dolor a similique animi est vero soluta.', 'dolor', 0, NULL, '2017-03-13 06:48:03', '2013-10-13 05:13:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '4', '3', 'Officiis perferendis incidunt consectetur animi quisquam sit saepe. Maiores modi sunt quis. Molestiae nostrum minus nihil nulla sequi ducimus ut.', 'ab', 34, NULL, '2010-03-02 17:01:00', '1974-05-17 10:41:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '6', '4', 'Atque eius eius facilis. Temporibus molestiae natus voluptatem pariatur deleniti et. Doloremque rerum ea atque et. Voluptas fugit quia dolore unde fugiat est vero.', 'corporis', 3, NULL, '1998-02-13 00:17:10', '1994-03-24 02:14:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '4', '5', 'Aspernatur mollitia tenetur qui nobis reprehenderit vitae. Dignissimos est ducimus hic eos quia. Quam earum illum expedita culpa iusto.', 'ab', 541960433, NULL, '2008-01-04 18:22:39', '1984-07-11 17:28:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '5', '6', 'Eius consectetur sed labore et quia ea. Et dicta molestiae voluptas dolores deserunt dolor ad cum. Ab animi eum aut iste cum.', 'incidunt', 11588, NULL, '1992-04-13 11:46:16', '1977-03-22 16:23:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', '7', 'Sit quam nam itaque sit. Sit doloremque necessitatibus tenetur est numquam exercitationem. Nulla et et et impedit soluta at porro.', 'consequatur', 9595551, NULL, '1998-08-25 13:52:30', '1980-09-11 12:39:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '10', '8', 'Eum quod optio vero iusto. Omnis totam fugit esse in. Veritatis qui voluptatum cum qui molestiae.', 'velit', 21213, NULL, '2007-08-19 11:02:29', '1973-06-14 21:56:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '2', '9', 'Inventore impedit distinctio eos et beatae quasi. Itaque laborum iure iste sunt sed veniam. Aut quae et qui assumenda ex qui. Earum rerum voluptates recusandae labore.', 'suscipit', 9844956, NULL, '1975-03-30 21:55:24', '1999-11-14 19:25:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '9', '10', 'Et corrupti suscipit labore iusto nisi sunt eum. Et voluptatibus omnis similique vel. Consequuntur ad ut molestiae. Ut hic necessitatibus qui tenetur molestiae adipisci. Ullam fugiat quia cupiditate aut.', 'est', 161990, NULL, '1993-01-28 15:23:55', '1973-04-20 03:07:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '6', '11', 'Commodi non delectus voluptatem voluptas. Quam voluptas enim incidunt temporibus. Aliquid veritatis mollitia sequi nam.', 'neque', 88278566, NULL, '1998-10-18 11:43:01', '2005-03-16 14:22:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '1', '12', 'Eos rerum et maxime. Totam quisquam sequi qui suscipit. Et qui sit soluta. Id perferendis magni qui et qui quasi magnam. Dolorem magni voluptatum cupiditate aliquid voluptas sit ut sed.', 'itaque', 66, NULL, '1971-09-01 23:37:28', '1972-12-12 23:24:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '7', '13', 'Quos nobis ducimus est consequatur qui similique rerum. Dolores rerum aliquam quos ex. Nesciunt omnis et praesentium doloribus vero dolores ratione ab.', 'sapiente', 65, NULL, '2013-04-25 09:31:19', '1982-05-06 09:39:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '5', '14', 'Ducimus dolorem esse alias. Eveniet in reiciendis odit tempore harum. Sed laborum sed eaque dolorem magnam fuga.', 'eius', 34031496, NULL, '1996-02-23 10:54:31', '1971-01-16 07:52:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '4', '15', 'Placeat debitis et cumque consequuntur. Pariatur ea exercitationem magni fuga dicta ut. Eos architecto numquam quia vel.', 'nihil', 0, NULL, '2016-12-20 00:02:56', '1978-04-26 19:49:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '7', '16', 'Ea consequatur ut vitae molestiae quidem. Voluptatem nesciunt necessitatibus exercitationem voluptatem eum et rerum. Dolor in itaque quas ut et alias. Et quisquam blanditiis eveniet non omnis.', 'sint', 676, NULL, '2001-09-20 07:34:52', '1980-10-17 16:58:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '10', '17', 'Esse praesentium doloremque debitis. Vero quo enim sed sit doloribus ipsa voluptas dicta. Aut et eum omnis repudiandae aut.', 'tenetur', 364169, NULL, '1999-01-25 02:30:49', '2020-08-06 03:33:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '8', '18', 'Qui sint vel ut nihil nisi. Sed beatae consequatur totam inventore laboriosam omnis. Adipisci tempore natus totam nemo. Facilis voluptatem dolorem ad velit saepe est id.', 'est', 1, NULL, '2005-12-23 13:57:07', '1998-08-11 00:08:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '9', '19', 'Deserunt distinctio velit veritatis voluptas. Vero placeat saepe in unde quae qui sit. Dolorem qui enim commodi ut magni rerum. Voluptatem omnis suscipit nesciunt et. Tempora consequatur totam doloremque animi voluptatem.', 'impedit', 821415, NULL, '2010-06-20 08:06:29', '1999-03-28 02:18:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '1', '20', 'Ut velit laborum est voluptatum ratione iure perferendis consequatur. Assumenda sed voluptas ea occaecati amet voluptatem. Id consequuntur et voluptas. Officia quas rerum quos corrupti delectus dolor eos dolor.', 'quis', 0, NULL, '1992-09-29 17:43:55', '2012-07-22 06:27:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '7', '21', 'In dolorem voluptates sed iusto praesentium libero laborum. Cum iusto necessitatibus eaque ratione. Ut minima et harum nemo earum incidunt est. Cum consequatur autem cupiditate sit praesentium quaerat.', 'magnam', 552822, NULL, '1996-06-04 20:55:31', '2001-11-19 11:43:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '2', '22', 'Ut debitis et temporibus autem. Nesciunt voluptatibus placeat eos ut consequatur non. Minima deserunt repellendus quo sit culpa qui.', 'esse', 248, NULL, '1977-02-22 00:44:54', '1993-03-09 21:45:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '10', '23', 'Temporibus et error voluptas assumenda vitae est. Voluptas nulla voluptatem incidunt. Autem aut qui doloremque sint dolor alias.', 'ea', 9935786, NULL, '2011-09-03 17:08:32', '1994-04-27 13:22:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '7', '24', 'In dolores accusamus debitis harum sunt. Qui voluptas eum eos nobis modi. Quibusdam cum vel ut voluptatum distinctio adipisci temporibus. Voluptatem earum blanditiis enim accusantium et eveniet.', 'asperiores', 2, NULL, '2007-10-22 14:32:15', '2016-11-24 20:34:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '6', '25', 'Dolorem ea quaerat cumque unde voluptatibus quaerat consectetur facilis. Libero qui qui exercitationem illo velit. Magni minus in perferendis laborum ea sunt accusamus.', 'ea', 4461, NULL, '1987-03-22 21:59:45', '2019-04-19 12:43:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '1', '26', 'Voluptates sint quo quibusdam in ipsa porro eveniet laborum. Inventore et enim aliquam ipsam quo. Perferendis vero rerum veritatis quae sint iste excepturi.', 'labore', 9825722, NULL, '2006-01-25 09:50:00', '2018-04-11 17:43:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '2', '27', 'Molestiae illum doloribus odit quod eum tempora. Sunt ipsa eveniet sapiente perspiciatis. Deserunt ipsa culpa vel vel culpa. Qui eveniet assumenda corporis sit. Voluptatem eaque occaecati eos quisquam quia.', 'ea', 4083, NULL, '1983-07-07 00:00:33', '2015-12-22 01:10:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '5', '28', 'Ducimus quaerat dicta expedita sint at. Maiores expedita aliquam veritatis laborum eos nulla est. Vel ipsa a temporibus facere hic natus veritatis.', 'facere', 8, NULL, '1972-04-10 22:41:09', '1988-06-22 11:37:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '9', '29', 'Repudiandae ut quo id adipisci expedita ipsam. Aut ad quia praesentium deleniti voluptas et veritatis. Recusandae aliquam omnis aliquid et nesciunt blanditiis in.', 'ut', 2582, NULL, '2003-05-06 03:59:10', '1975-02-10 07:04:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '8', '30', 'Est similique quasi eos facilis. Voluptatum voluptatem architecto architecto pariatur aut. Quidem in vel ut maiores. Est unde beatae accusantium.', 'ratione', 0, NULL, '2006-12-05 18:01:16', '2001-08-26 05:24:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '6', '31', 'Explicabo ex facilis fugiat placeat illum. Fugiat et tempora esse in excepturi in ab consequatur. Eum dignissimos sed voluptas recusandae qui aliquam. Eos laudantium dolorum labore aut.', 'omnis', 43771983, NULL, '1975-09-17 02:12:57', '1997-03-02 08:13:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '8', '32', 'Dolorem ad earum consequatur. Ea ex rerum voluptatem porro qui aut. Doloribus omnis molestiae iusto necessitatibus. Enim unde ut rerum eum enim.', 'magni', 375446, NULL, '1986-01-16 03:32:52', '2005-11-05 03:56:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '9', '33', 'Odit et sit eum ad magnam ipsum. Autem ut unde qui omnis ut doloremque. Sint aspernatur explicabo fuga vitae repudiandae et.', 'occaecati', 603, NULL, '1992-04-26 13:43:25', '2008-01-26 03:32:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '9', '34', 'Itaque commodi qui temporibus aut. Quas est perferendis qui enim excepturi labore. Ut autem ab et minima non. Placeat id tempore sed iure asperiores.', 'eos', 54601731, NULL, '2005-04-20 22:16:41', '2005-07-29 17:04:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '3', '35', 'Impedit occaecati quia repellendus explicabo eos. Molestias et consectetur incidunt sunt amet. Saepe at qui saepe voluptatum eaque. In rerum quaerat magnam et hic et beatae.', 'explicabo', 738960, NULL, '2012-05-09 21:06:59', '1995-06-24 18:10:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '3', '36', 'Doloribus aperiam excepturi occaecati quis. Voluptatum nostrum magnam qui mollitia accusantium aut in culpa. Aperiam rerum labore et provident.', 'veritatis', 2162, NULL, '2007-06-16 11:35:00', '1972-05-21 19:55:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '4', '37', 'Animi eius omnis esse inventore aut modi quo maiores. Enim voluptatem sint non doloribus maxime animi. Ut totam repudiandae ut vel veritatis accusantium accusantium blanditiis.', 'ut', 1, NULL, '1977-06-04 23:31:57', '2001-05-21 17:17:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '10', '38', 'Dignissimos debitis quibusdam porro quia iusto aut accusantium eum. Voluptatem alias facere sed aut est cupiditate.', 'quod', 2, NULL, '1984-02-20 12:40:06', '1982-10-02 13:36:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '2', '39', 'Dolor consequuntur rerum aut et voluptas aut officiis. Quidem sint autem officiis nihil officia. Excepturi explicabo sit incidunt. Id ut voluptatem sunt aut hic dolores voluptatem. Cupiditate id aspernatur unde dolore.', 'qui', 706575, NULL, '1989-08-03 01:06:07', '2014-01-07 18:59:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '5', '40', 'Qui temporibus sunt ipsum dolorum dignissimos ut. Et atque eius id nihil quod optio. Eos officia natus est id quibusdam ipsum. Sed accusamus beatae sequi voluptas.', 'corporis', 217870057, NULL, '1991-06-16 09:57:24', '1985-04-09 02:10:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '9', '41', 'Cumque cupiditate ut qui accusamus deserunt voluptates est. Accusamus ut optio sint molestiae iusto. Quis deserunt vero fugiat et eaque quam quia. Minus iure deserunt omnis eum.', 'et', 9052017, NULL, '1983-09-17 05:09:53', '2003-10-08 16:09:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '8', '42', 'Corrupti a repellat rerum accusantium. Dicta nesciunt dicta voluptatem laudantium architecto. Voluptate asperiores incidunt quo veritatis quibusdam autem consequatur. Laudantium sint maxime molestias perferendis.', 'quia', 50780176, NULL, '1990-01-29 12:36:57', '2020-10-02 22:58:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '6', '43', 'Quidem et minus nisi officia unde quo. Explicabo ad sit et et expedita in aut. Praesentium veniam tempora recusandae tempora voluptatem. Numquam sequi fugit expedita dolor id facere.', 'nesciunt', 9232, NULL, '1979-03-15 19:37:29', '2005-06-30 07:39:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '5', '44', 'Rerum cumque voluptas omnis velit. Quis omnis non fuga natus.', 'voluptatum', 793, NULL, '1980-08-03 00:45:04', '1992-02-17 17:34:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '2', '45', 'Quasi quia ut quia aut. Ut ut totam quia ut tenetur. Id est dolorum dolorem quam et ut veniam.', 'doloremque', 920, NULL, '1973-07-10 07:20:29', '1970-11-22 19:08:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '9', '46', 'Amet quod cupiditate natus qui. Beatae est in ullam vel minima doloremque sint. Architecto omnis voluptatem voluptatibus ad rerum. Laboriosam libero laborum est autem asperiores.', 'repellat', 9, NULL, '1999-04-22 02:18:44', '2011-07-08 18:12:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '1', '47', 'Enim excepturi ea quo. Iure qui corporis velit et perspiciatis placeat et. Fugiat consectetur vel est assumenda ipsam qui sed. Ipsa vel repellat itaque assumenda.', 'consequatur', 65, NULL, '2005-06-11 18:47:00', '2006-12-10 01:48:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '2', '48', 'Laboriosam expedita omnis sunt debitis aut saepe. Consequatur non sunt quis deleniti a. Et voluptatibus laborum rerum deserunt et et quae.', 'est', 57543, NULL, '1994-06-27 15:16:41', '1984-03-23 17:15:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '6', '49', 'Ut ex autem exercitationem id consequatur ipsum. Quasi nulla adipisci quae architecto neque at. Optio quos quia asperiores corrupti.', 'fuga', 3314, NULL, '2006-05-09 12:32:32', '2003-12-14 01:44:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '10', '50', 'Eum dolorum ullam et accusamus nisi sed id. Nobis neque est distinctio vitae optio pariatur necessitatibus. Sint error sit eaque deleniti sed quo esse.', 'officia', 422391, NULL, '1998-12-11 17:22:43', '1996-10-25 06:12:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '3', '51', 'Fuga quaerat et minima doloremque commodi. Tenetur non minus vel ut. Est voluptatem voluptatem natus quibusdam dicta esse. Consequatur facilis eius dolorum soluta quasi voluptas quisquam.', 'dolor', 80207344, NULL, '1973-11-04 01:36:46', '1988-02-11 13:11:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '2', '52', 'Qui quibusdam a porro sunt. Autem placeat reprehenderit at quibusdam voluptatibus recusandae. Et debitis omnis natus ut.', 'et', 6431123, NULL, '1994-09-25 15:24:54', '2011-01-02 06:09:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '1', '53', 'Atque dicta rerum ullam ad in dolore dolorem et. Deserunt et non et recusandae necessitatibus. Fugiat non dolor maiores ea distinctio repellendus dignissimos eos. Voluptas ut saepe ipsa aut quos enim.', 'ut', 524213, NULL, '1988-12-04 11:36:36', '2020-04-28 18:10:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '2', '54', 'Non quidem ipsa explicabo dicta et sit. Quia quos nam nostrum omnis et et dignissimos. Consequatur dolorem rem corporis sit sit non autem. Corrupti porro voluptatem magnam nulla ut qui.', 'esse', 659, NULL, '2003-06-24 07:33:08', '2005-12-10 14:19:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '9', '55', 'Doloremque eius sunt fugiat aspernatur quas ut velit. Vero quia recusandae incidunt aut aut. Aliquid soluta in ea aperiam delectus totam fugit.', 'corporis', 14648698, NULL, '1998-04-20 11:43:14', '1995-06-24 23:57:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '6', '56', 'Dolore sint consequatur debitis laborum reprehenderit temporibus. Qui alias in sequi dolore.', 'officiis', 59, NULL, '1972-06-24 13:21:59', '1993-03-30 22:10:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '2', '57', 'Corrupti animi delectus maiores ut. Qui suscipit est beatae explicabo. Soluta modi ut illo quibusdam hic adipisci accusamus.', 'iure', 0, NULL, '1981-06-24 02:59:23', '2021-07-08 07:18:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '10', '58', 'Voluptas eveniet eveniet culpa aut sapiente. Et ad quae est quia delectus. Error itaque sed consectetur aperiam. Non aliquid hic eum distinctio. Et qui facere nihil dolorum.', 'eligendi', 36526, NULL, '2015-06-03 06:50:59', '1988-01-13 18:51:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '1', '59', 'Ducimus quia unde voluptas aut in impedit. Deleniti et et odio et. Amet numquam recusandae et veritatis.', 'praesentium', 1791, NULL, '2020-03-11 22:58:46', '1973-05-28 21:05:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '10', '60', 'Et expedita qui facilis et doloremque. Possimus blanditiis ex sed et. Quisquam sed deleniti molestiae amet blanditiis.', 'et', 2047254, NULL, '2001-05-28 00:17:52', '1979-05-24 12:07:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '8', '61', 'Et iusto eaque ea delectus asperiores. Et laudantium fugiat quis amet minus dignissimos quasi. Nihil et aut similique quas a aut. Pariatur aut nemo aut enim aliquam animi ex.', 'nihil', 7, NULL, '1978-08-17 11:18:50', '2002-06-11 21:35:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '6', '62', 'Aperiam labore aut repellendus architecto qui earum aut sit. Voluptates id culpa et. Quos similique hic excepturi odit.', 'quas', 994839760, NULL, '2005-08-22 12:26:01', '2013-12-10 11:18:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '8', '63', 'Assumenda quibusdam molestiae doloribus. Voluptates dolor sit atque. Voluptas odit rerum accusantium. Numquam dolore aut quos qui.', 'tempore', 7375, NULL, '2016-02-07 15:04:40', '1987-09-05 14:05:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '6', '64', 'Veniam nostrum cumque similique id voluptas vitae. Possimus aut beatae laudantium facilis nihil. Sequi quidem sed deserunt.', 'asperiores', 230598, NULL, '1980-09-03 20:55:50', '2017-02-07 11:32:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '4', '65', 'Ad repudiandae dolorem atque mollitia. Libero aut quia est vel nostrum provident. Repudiandae itaque consequatur quam est omnis sint cum repellat.', 'ab', 90325363, NULL, '1998-04-15 17:38:12', '2005-11-27 23:13:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '1', '66', 'Perspiciatis distinctio omnis aspernatur dolorum. Inventore sint voluptate sint sit minima et sit dolores. Natus soluta repellat consequatur fugiat dolores omnis.', 'placeat', 5, NULL, '2016-01-06 01:26:05', '1970-05-02 14:08:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '9', '67', 'Distinctio voluptate est unde sapiente aut occaecati ad beatae. Voluptatem qui et quaerat laboriosam minima dolorem molestiae. Enim ea sunt officiis velit asperiores. Adipisci molestiae consequatur numquam quis totam.', 'ab', 14553192, NULL, '1982-01-08 15:49:06', '1989-02-04 22:16:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '7', '68', 'Minima illum omnis voluptatem unde eius. At exercitationem consequatur aspernatur nisi. Autem voluptas consectetur sed deserunt expedita sed. Quisquam ut sit odio.', 'rerum', 26198137, NULL, '1983-08-22 05:47:01', '1988-01-30 04:31:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '10', '69', 'Nemo officia aut commodi quia. Pariatur aspernatur voluptatum voluptas occaecati. Assumenda et odio quae velit aut aliquid. Ut voluptas commodi voluptatem quia cum vitae.', 'amet', 476, NULL, '1972-07-24 07:06:32', '1988-06-25 11:22:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '1', '70', 'Enim dolorem dolor porro officia non velit doloribus eligendi. Placeat cumque reiciendis dignissimos sit ipsa sed officiis. Saepe dicta non molestiae sunt minus. Error maiores hic aliquam aut voluptate nam ut.', 'rerum', 4891304, NULL, '1974-03-02 20:08:04', '1980-11-28 13:35:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '2', '71', 'Autem vel dolores et laboriosam reprehenderit deserunt sed. Autem est molestiae exercitationem voluptates. Nisi voluptatem ea voluptate perspiciatis qui.', 'sint', 5251, NULL, '1999-03-25 22:14:55', '1983-06-10 04:13:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '8', '72', 'Ea assumenda sed eligendi aut reiciendis. Sunt eos voluptatibus dolore quasi vel. Vitae quia voluptatem dolorem quidem facere dolores.', 'nihil', 17, NULL, '1999-07-20 06:54:35', '1978-07-08 02:42:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '8', '73', 'Sequi molestiae quae nostrum enim inventore id. Corporis perspiciatis error tempore natus. Et quo cumque vel.', 'ut', 0, NULL, '1990-01-28 07:32:28', '2005-11-17 13:12:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '7', '74', 'Consequatur incidunt dicta libero quidem repellendus. In harum necessitatibus repudiandae qui. Et laborum facere ex dolor veritatis et.', 'aliquid', 76, NULL, '2013-12-13 16:38:22', '1977-03-08 17:50:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '2', '75', 'Sunt accusantium corrupti accusamus magnam quis vero eum. Et dolore ut eos excepturi vero eos. Eum consequatur vel tenetur voluptas excepturi voluptates sapiente.', 'beatae', 5560451, NULL, '2012-10-29 04:29:17', '2003-03-19 15:09:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '10', '76', 'Voluptatem modi quia culpa ullam ut iusto modi. Excepturi corporis quae culpa doloremque possimus ut voluptatibus. Enim eligendi necessitatibus aliquid est eos assumenda. Perferendis aut nulla fugit.', 'numquam', 930, NULL, '1978-06-10 11:20:17', '2005-09-27 00:45:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '6', '77', 'Voluptatem natus molestias laboriosam ea voluptas provident. Aut odit ea maiores iste. Accusamus tenetur nostrum illum quis.', 'qui', 453, NULL, '1977-02-21 19:20:54', '1982-12-20 13:48:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '3', '78', 'Provident fuga nisi magnam deserunt. Voluptatem ut vero ab animi. Dolorem nihil aliquam dolor consequatur maiores laboriosam.', 'maxime', 0, NULL, '1974-10-29 05:16:16', '1975-10-14 00:14:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '1', '79', 'Fuga et et incidunt quisquam. Fugit consequatur inventore quia iusto ratione nemo nam. Mollitia accusantium voluptas dolor consequatur.', 'sit', 0, NULL, '1996-03-27 14:11:44', '1973-06-13 06:09:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '1', '80', 'Quod eveniet iure officia dolores dolor. Dolor ab dolorum nihil esse rerum. Sunt dolorum aliquid provident saepe nihil enim molestiae.', 'aut', 524196, NULL, '1992-09-06 15:52:29', '1973-07-02 16:59:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '3', '81', 'Velit quam dolorem voluptas est voluptatem. Sed ex quasi quis quia ipsa dolorem ea. Debitis quo illum odio totam recusandae eaque consequatur. Neque et consectetur eos sed aut mollitia.', 'ipsa', 1473, NULL, '1973-08-13 04:17:03', '2001-07-31 00:39:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '3', '82', 'Dolor ullam delectus odit. Sit voluptatibus tenetur aut qui. Et explicabo aut voluptatem incidunt pariatur.', 'iste', 6, NULL, '2009-09-24 03:30:32', '1977-04-02 06:54:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '3', '83', 'Quod a esse distinctio velit ipsum esse. Dignissimos aliquid et fugiat in quo aspernatur pariatur. Maxime beatae et suscipit maiores sed praesentium molestias. Tempore molestiae earum officiis et.', 'et', 3586304, NULL, '2020-07-21 23:57:16', '2011-06-17 07:37:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '4', '84', 'Corrupti quasi culpa facilis eos et fugit autem. Aut eligendi voluptates laboriosam fugiat voluptatem voluptate qui. Possimus provident libero voluptas. Sit et ipsam repudiandae maxime sed.', 'id', 8, NULL, '1997-07-13 06:20:34', '2022-05-29 15:22:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '4', '85', 'Et eius nulla sed nostrum asperiores velit a. Quia vitae perspiciatis in animi laboriosam explicabo possimus culpa. Beatae consequatur et quis. Deleniti voluptas laudantium aliquam laborum dolorum nihil autem.', 'nostrum', 0, NULL, '1973-07-24 15:50:41', '2006-12-17 05:41:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '1', '86', 'Eum vel et aut quibusdam eaque in ipsam. Aut assumenda molestiae aut. Laudantium eos expedita quae provident. Aliquam ut labore voluptas quia.', 'omnis', 23293, NULL, '2005-03-22 12:10:10', '2010-03-12 06:17:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '9', '87', 'Et atque molestiae nisi consequatur incidunt consequatur fuga. Ducimus aut dolore reprehenderit officiis quo. Beatae voluptatem velit reiciendis nam facilis sit.', 'autem', 93568501, NULL, '2008-11-23 22:30:50', '1973-01-16 06:06:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '6', '88', 'Omnis quaerat voluptatem porro excepturi molestiae. Cumque voluptatem sed quo repellat eveniet dicta voluptas. Provident voluptatum ut non ipsum eum incidunt voluptas. Est aut sapiente omnis et aut modi.', 'cupiditate', 1, NULL, '2007-08-08 12:22:17', '2021-01-11 08:34:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '10', '89', 'Repellendus dignissimos voluptate sed et fugit. Cum ut omnis ut. Temporibus aut consequatur perspiciatis aspernatur corrupti sed adipisci.', 'expedita', 353, NULL, '1994-11-25 14:40:24', '1991-08-27 17:13:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '10', '90', 'Et debitis velit unde voluptates quo non. Provident quos dolores incidunt deleniti enim. Maxime est eos odit voluptatum dolores.', 'officiis', 1, NULL, '1991-07-23 03:07:19', '1981-07-12 13:41:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '5', '91', 'Voluptatum ut modi voluptas sit nesciunt. Aut aut aspernatur eos sapiente mollitia facere eum. Qui tempore vel unde quo alias ea atque libero. Occaecati harum placeat vero minus dignissimos veritatis.', 'praesentium', 2895745, NULL, '1993-10-11 13:18:46', '1980-02-09 01:04:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '8', '92', 'Voluptatem molestias eum ut quod qui cupiditate sed magni. Vel error doloribus aut sit dignissimos voluptas et quidem. Voluptatibus voluptas voluptatum sed eum eum molestiae repellat.', 'maxime', 50011, NULL, '1975-09-30 07:00:39', '1987-04-25 00:40:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '5', '93', 'Voluptatem quo fugit consequatur velit libero. Quibusdam dolores delectus consectetur voluptatem qui ex dignissimos veniam. Cupiditate aut iure maxime architecto officia. Aut quibusdam minima omnis officiis iusto nulla.', 'est', 95, NULL, '1983-09-17 19:41:37', '2012-12-27 22:53:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '3', '94', 'Consectetur qui non harum quis. Veritatis sed commodi temporibus voluptate autem. Necessitatibus odit molestiae dolor sit.', 'autem', 20042961, NULL, '1971-10-19 00:32:57', '2002-01-19 19:32:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '3', '95', 'Quae explicabo ullam qui tenetur quis. Sed est omnis ut sunt. Eveniet porro et earum et earum reprehenderit.', 'numquam', 86, NULL, '2002-10-04 13:00:07', '2008-01-03 20:55:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '9', '96', 'Tenetur vel et qui et labore. Quo aspernatur enim odio dolore. Quibusdam reiciendis alias dolorum qui voluptas distinctio. Aut perspiciatis consequatur deleniti rem quo accusantium. Debitis vitae laboriosam provident incidunt nobis quaerat quas quam.', 'non', 55840, NULL, '1994-05-21 14:36:20', '1990-01-07 05:21:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '3', '97', 'Molestiae reiciendis culpa delectus atque. Fugiat omnis voluptatem rerum aperiam. Facilis illo velit rerum beatae ut. Nulla delectus placeat soluta est qui tempora omnis. Ipsa aut recusandae consequatur soluta.', 'maiores', 5874, NULL, '1975-07-20 21:00:31', '2021-03-28 07:02:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '2', '98', 'Rerum molestiae quaerat ut est itaque. Quia laudantium esse et eum sunt atque. Alias ullam earum eius est. Iusto placeat et sed id et. Enim ducimus sequi ut suscipit molestiae.', 'dolorum', 7662, NULL, '2012-09-23 11:17:47', '1992-10-30 04:55:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '6', '99', 'Ut temporibus corrupti esse sapiente odit voluptatum ut. Repellendus minus id aut molestiae. Omnis omnis eum dolores harum voluptatum sit consequatur itaque.', 'nihil', 8, NULL, '2014-05-04 10:14:04', '2020-01-03 23:27:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '2', '100', 'Qui ducimus voluptatibus vel optio quas quos. Quae iusto commodi sunt expedita accusantium. Eius aspernatur fugit et quia ipsa. Ullam vel fugiat deleniti quam assumenda.', 'sit', 8981767, NULL, '1983-10-27 06:29:23', '2019-05-13 19:56:26');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'officia', '1988-08-23 02:34:40', '1971-12-25 22:26:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'itaque', '2006-04-22 09:40:27', '1976-05-23 19:45:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'ut', '2008-01-20 21:21:16', '1979-04-17 03:55:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'aut', '2015-09-27 09:45:19', '1986-12-28 18:48:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'vel', '2005-10-08 07:57:04', '2010-08-01 17:38:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'iste', '1970-08-06 17:04:08', '1994-06-21 20:58:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'dolore', '1992-10-05 10:29:13', '2020-08-18 01:57:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'dicta', '1988-11-15 17:53:05', '2008-09-28 08:05:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'rerum', '2018-12-26 19:20:54', '2002-09-22 12:57:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'ut', '1996-07-09 11:29:00', '2015-10-05 09:39:24');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'aut', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'error', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'voluptas', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'repellat', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'dolorum', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'recusandae', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'nam', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'voluptatibus', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'voluptate', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'occaecati', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'aliquam', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'eius', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'nobis', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'veniam', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'voluptatem', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'facilis', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'voluptatem', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'vitae', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'animi', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'architecto', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'molestiae', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'nam', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'veritatis', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'et', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'illum', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'nam', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'quod', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'est', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'ipsum', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'sed', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'provident', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'beatae', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'quia', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'laudantium', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'dolor', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'aut', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'debitis', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'ut', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'aut', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'ipsa', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'possimus', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'facere', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'minima', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'laudantium', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'sit', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'expedita', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'eligendi', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'iusto', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'temporibus', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'saepe', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'corporis', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'quasi', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'eveniet', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'vel', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'quasi', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'nemo', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'impedit', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'suscipit', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'nihil', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'ea', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'quaerat', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'soluta', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'maiores', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'non', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'quidem', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'ut', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'voluptatem', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'dolor', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'omnis', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'tenetur', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'eveniet', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'ut', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'nihil', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'perspiciatis', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'explicabo', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'autem', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'distinctio', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'non', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'amet', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'quos', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'excepturi', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'voluptas', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'culpa', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'est', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'repudiandae', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'vitae', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'facilis', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'fugit', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'et', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'odio', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'aliquam', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'suscipit', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'rerum', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'aut', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'doloremque', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'enim', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'eos', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'doloribus', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'sint', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'voluptatem', '19');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '68', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '1', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '93', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '78', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '54', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '73', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '90', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '27', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '62', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '60', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '97', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '66', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '30', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '27', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '16', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '65', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '99', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '61', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '34', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '46', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '11', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '66', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '36', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '64', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '69', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '41', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '28', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '58', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '74', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '27', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '37', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '41', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '27', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '30', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '19', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '81', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '2', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '9', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '8', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '64', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '68', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '4', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '29', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '98', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '30', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '45', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '62', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '29', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '6', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '96', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '75', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '16', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '61', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '11', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '80', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '29', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '51', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '7', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '86', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '25', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '34', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '22', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '65', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '60', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '52', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '84', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '41', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '54', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '92', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '48', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '17', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '60', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '51', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '46', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '58', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '81', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '91', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '20', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '10', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '96', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '15', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '84', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '12', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '75', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '94', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '91', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '3', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '45', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '98', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '89', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '69', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '31', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '11', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '34', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '91', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '62', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '17', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '31', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '15', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '9', '100');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', NULL, '2021-11-08', '1', '1994-11-07 17:31:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', NULL, '2005-05-28', '2', '1982-03-12 08:17:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', NULL, '2015-04-04', '3', '2021-06-28 04:55:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', NULL, '1995-02-03', '4', '1983-04-13 07:39:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', NULL, '1990-01-07', '5', '1999-08-07 23:31:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', NULL, '1998-02-23', '6', '1983-03-20 17:10:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', NULL, '2014-08-04', '7', '1999-10-23 15:29:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', NULL, '2017-12-03', '8', '2009-07-20 13:26:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', NULL, '2022-08-12', '9', '1977-07-08 06:59:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', NULL, '2008-06-09', '10', '2000-01-12 23:22:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', NULL, '1999-04-20', '11', '1979-12-09 10:07:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', NULL, '2014-12-01', '12', '2010-05-24 19:57:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', NULL, '2014-07-08', '13', '1974-03-30 09:20:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', NULL, '1999-10-08', '14', '1981-12-25 07:48:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', NULL, '2005-10-10', '15', '1977-10-29 15:34:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', NULL, '2019-03-01', '16', '2002-06-28 14:25:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', NULL, '1984-01-07', '17', '1988-12-01 04:12:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', NULL, '1984-02-22', '18', '2004-06-07 10:43:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', NULL, '1992-09-29', '19', '2001-02-27 16:13:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', NULL, '2001-01-23', '20', '2016-11-03 14:23:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', NULL, '1980-09-25', '21', '1983-08-17 04:37:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', NULL, '2021-08-18', '22', '1995-03-25 06:04:55', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', NULL, '2012-08-10', '23', '1973-04-21 22:29:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', NULL, '1971-02-25', '24', '2007-01-06 03:41:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', NULL, '2008-08-05', '25', '2017-07-10 08:26:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', NULL, '2017-02-25', '26', '2017-06-14 00:56:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', NULL, '1993-03-21', '27', '1999-12-20 06:50:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', NULL, '1999-07-07', '28', '1999-05-29 12:09:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', NULL, '1988-07-28', '29', '2014-04-01 13:28:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', NULL, '1970-03-22', '30', '1993-08-29 13:17:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', NULL, '1975-03-30', '31', '1983-05-29 12:03:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', NULL, '1995-06-01', '32', '2011-04-13 22:48:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', NULL, '2009-03-11', '33', '1985-10-01 17:18:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', NULL, '2012-05-15', '34', '2001-11-06 08:53:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', NULL, '2002-11-11', '35', '1989-01-21 20:23:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', NULL, '1982-03-12', '36', '1985-06-07 15:00:34', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', NULL, '1985-10-13', '37', '1995-08-29 14:35:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', NULL, '1988-05-22', '38', '1986-08-15 08:25:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', NULL, '2015-06-07', '39', '1982-03-24 04:37:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', NULL, '2020-12-01', '40', '2006-07-10 01:08:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', NULL, '1982-07-08', '41', '1998-07-16 23:42:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', NULL, '1995-03-30', '42', '2002-11-28 09:16:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', NULL, '2015-08-16', '43', '2002-08-21 12:02:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', NULL, '1993-12-08', '44', '2015-08-03 10:49:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', NULL, '2018-03-07', '45', '2005-04-23 09:14:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', NULL, '1995-12-04', '46', '1980-10-22 03:53:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', NULL, '1991-12-03', '47', '1978-11-27 15:30:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', NULL, '1995-09-09', '48', '1995-07-01 07:16:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', NULL, '1985-12-13', '49', '2000-02-09 20:11:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', NULL, '2005-08-03', '50', '2010-12-10 11:45:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', NULL, '1971-07-05', '51', '2009-08-09 19:30:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', NULL, '1974-07-07', '52', '1988-10-12 08:14:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', NULL, '1988-03-10', '53', '2017-03-03 04:21:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', NULL, '1988-02-23', '54', '2020-08-21 08:43:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', NULL, '2019-06-11', '55', '1988-04-21 18:52:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', NULL, '2005-08-19', '56', '1987-08-20 12:35:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', NULL, '2019-08-16', '57', '2000-05-25 04:50:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', NULL, '1984-08-28', '58', '2014-05-23 03:29:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', NULL, '2003-08-10', '59', '1987-07-18 12:32:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', NULL, '2012-02-17', '60', '1972-12-03 02:02:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', NULL, '1996-06-05', '61', '1979-10-29 21:46:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', NULL, '2014-01-27', '62', '2018-07-04 23:36:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', NULL, '1999-09-11', '63', '1992-12-07 04:01:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', NULL, '1985-03-31', '64', '2009-10-27 10:33:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', NULL, '2014-05-22', '65', '2011-01-08 17:06:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', NULL, '1984-04-01', '66', '2018-09-29 06:44:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', NULL, '2011-11-28', '67', '1987-05-18 10:44:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', NULL, '2004-08-28', '68', '2017-02-05 07:30:46', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', NULL, '2012-04-29', '69', '2015-06-29 12:11:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', NULL, '2008-02-21', '70', '1987-05-05 00:20:41', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', NULL, '2007-07-05', '71', '2012-03-25 21:05:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', NULL, '2017-12-31', '72', '1987-11-05 21:56:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', NULL, '2017-12-13', '73', '1993-04-24 19:57:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', NULL, '2015-06-10', '74', '2010-12-21 10:59:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', NULL, '1994-02-28', '75', '1987-12-31 13:10:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', NULL, '2009-07-02', '76', '2015-02-01 15:26:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', NULL, '1992-06-12', '77', '1985-09-03 10:04:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', NULL, '2022-04-24', '78', '1981-04-28 06:47:22', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', NULL, '1993-02-28', '79', '1977-03-30 05:00:34', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', NULL, '2014-04-30', '80', '2020-11-12 03:50:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', NULL, '1975-02-10', '81', '2002-03-23 19:56:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', NULL, '1985-06-28', '82', '2000-04-15 05:51:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', NULL, '2008-05-01', '83', '2013-05-06 01:46:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', NULL, '2014-08-02', '84', '1983-09-08 01:13:41', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', NULL, '1992-03-08', '85', '1984-04-17 10:01:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', NULL, '1993-12-16', '86', '1990-06-19 00:30:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', NULL, '2012-04-30', '87', '1997-01-11 18:54:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', NULL, '2009-12-25', '88', '1978-03-02 05:27:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', NULL, '1973-11-11', '89', '1983-11-30 01:51:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', NULL, '1972-03-13', '90', '1979-11-29 05:33:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', NULL, '1986-06-09', '91', '1987-01-21 18:01:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', NULL, '2016-09-10', '92', '1971-05-23 04:19:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', NULL, '1988-03-24', '93', '1984-10-12 14:47:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', NULL, '1975-08-25', '94', '1998-11-03 16:33:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', NULL, '1981-07-13', '95', '1982-10-14 12:14:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', NULL, '1994-12-02', '96', '2007-06-27 07:12:43', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', NULL, '1982-10-22', '97', '1988-02-06 02:10:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', NULL, '1990-12-16', '98', '2007-10-29 03:39:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', NULL, '1997-04-12', '99', '1981-12-07 00:14:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', NULL, '2011-04-16', '100', '2011-05-08 20:32:06', NULL);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Dallin', 'Raynor', 'jerrod26@example.org', '039373772249d744f96f9d7523acf1e866d12414', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Stanton', 'O\'Kon', 'effertz.faustino@example.org', '0c8713da99c43c1f2dd206d39582342467ac6f57', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Erin', 'Rodriguez', 'grant.meaghan@example.com', '2a51664903b2a3d31cd0757f647d720734db129d', '126744', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Opal', 'Hane', 'bins.else@example.org', '27b49dbc8deb1c945e0728ae7d35d21d6ec7bc5d', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Tavares', 'Cruickshank', 'dejah29@example.com', '3bc2ac5b0ee865b896ef332fae07d0eabae1b0cb', '518432', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Johathan', 'Morissette', 'npowlowski@example.com', 'ad3a8a48f05581d48087a01c5da613bb3994f0e6', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Anastacio', 'Rohan', 'easton49@example.net', '8f685092b211f75658a7a89f11cb304a9b659b98', '715', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Mina', 'Grant', 'monahan.laverna@example.net', '083b518e2f1d2db4b65b9450f5519aa9bbd4df31', '7888785388', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Amari', 'Rath', 'wilton40@example.org', '2931086158e00c48a34080a78c4507f090c387ad', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Violette', 'Heathcote', 'blanda.trinity@example.net', '8d18518f9d70902054bbe05090b6f06a1b271a53', '2253985129', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Shad', 'Torphy', 'gislason.mae@example.com', 'e4531233bda64e66fdc87b427adfb35311d50417', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Theresa', 'Hilpert', 'dejah.wisoky@example.com', '4c60f03b176f4ce41441dde9bb9fe7913ec0d2ec', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Domenico', 'Medhurst', 'gutkowski.sylvester@example.org', 'aa62720bfe3d39b02cbcfc709e6c056e397122eb', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Mason', 'Kris', 'bhermann@example.org', '0e0d3f56c1ec0d226aaf591a512d13f2f7899a65', '533986', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Devon', 'D\'Amore', 'uward@example.net', 'f3552dbbc7162260573dd01ea9eb6ddfd1ee4055', '753', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Janis', 'Reinger', 'tremblay.liliana@example.com', 'f3f65a4f5bff3d9d5dfcda6f491d2ee6e14ca7d0', '45', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Jamir', 'Stokes', 'sandy.jenkins@example.com', '2e7e60193e5e754b46109e1066f15a2309c8f88c', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Monica', 'Schultz', 'hudson.milton@example.org', 'a13fdba6e3d0334f5089908c45ac96025cb65f22', '216', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Cayla', 'Dickinson', 'shanon74@example.com', 'a5c2bc166d5da6b1bc60e4da0fa1ea4d3d6c9053', '443565', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Ben', 'Mohr', 'tremblay.eusebio@example.net', '8cc9cc9a3af512530f950971982507d674305bff', '227163', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Stan', 'Bahringer', 'timmy.carroll@example.net', '93657263f8fab806e30894aca6276784010846dc', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Shanny', 'Quigley', 'leilani.bruen@example.net', '33915c8dc72b987e8328cb0c048fa5abeed4a547', '460', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Sienna', 'Cartwright', 'sally18@example.net', '9e54c5c67334763f5a3a050b11e686a022b97f7e', '5043352692', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Mack', 'Keeling', 'yolanda.block@example.org', '6f8c17ac8744e199388d466fcc37b6b258f43617', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Marilou', 'Gorczany', 'malika73@example.org', '828015b014a0c7268d6d502be8ae526066cc7066', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Kayley', 'Gutkowski', 'lgoyette@example.net', '2168d9063361187529f69b893fd1d3fb8c79c22d', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Kamron', 'Schuppe', 'alexander.crist@example.net', 'c7d77951bc556a38f289f85dc093fb07a798360c', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Monserrate', 'Durgan', 'alexanne.olson@example.com', 'b53eb960907b9b3c24f3eb710224bf07182aab40', '150804', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Maegan', 'Bernier', 'tkiehn@example.org', '338795ed4d5db74daff62422ccd736c0089c23fc', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'August', 'Hegmann', 'ipollich@example.net', 'c20b7efc30a57187256c0e955e45ff5de8907e49', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Berenice', 'D\'Amore', 'volkman.jaida@example.net', 'c1c20538c5d18dfe3d661ec33446b25d4bb4036b', '39', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Marquise', 'Price', 'ismael70@example.net', '4bad421aea26b6b069f20d28a0b74b0ac48a2457', '889647', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Delpha', 'Dickens', 'wolff.adell@example.com', '520eb2518130ffc889f79c0834c977dd5f6803e6', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Ernestine', 'Rippin', 'imani98@example.com', '90271217aec91fb7651a52ec5df537a8dc94f531', '8', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Hermina', 'Kshlerin', 'camille44@example.net', '987f3124ddb9e696add6b5eb7c9a3a9239960626', '532306', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Buford', 'Howell', 'ufriesen@example.org', 'c4aee798963bd750103e7db7b275a76048c7c538', '99106', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Olaf', 'Rippin', 'aimee54@example.com', '3b2d920b6df6fb193466507e4f32bce4b3fdb82b', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Frankie', 'Borer', 'xdouglas@example.net', '87bc92b5d1a63c173a5d0c6aac70f701896d8395', '5205886281', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Eryn', 'Smitham', 'nina60@example.com', '8f8a01aa13b210863c4e8db7333b2be0bbbcef1e', '1473596587', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Susanna', 'Rodriguez', 'jaden84@example.net', '44e9c78accd61a7a8d87185cfcf394a6e512f977', '70', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Bernita', 'Stoltenberg', 'tstark@example.org', '3255de2fa79ee36f88461304b039df504a44cde5', '1580492379', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Cassandra', 'Witting', 'fmurray@example.net', 'a227a275e73692d14f4244bb2627d019d13060dc', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Lonny', 'Weissnat', 'maurine42@example.net', '29d6ad0b4fc146075fc4bcc235971c8d134e50e6', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Natalie', 'Morar', 'elise.mertz@example.com', '3838ef2b2c6d059bb9538cb128ab133f3cbe9748', '165592', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Sigrid', 'Douglas', 'lehner.brisa@example.org', '529bc39ec0c2d23102aaaaab218e1adec27f8f5a', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Tianna', 'Sipes', 'nichole54@example.net', '877f2914381d610f1417412354025857592ff9dd', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Austin', 'Carter', 'greyson37@example.com', 'ed21a164421694acfc617628a719842288c2f27f', '72', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Maud', 'Kerluke', 'destany54@example.com', 'e99acdc69b3a1e333405ad70e28931bc6c2ef031', '520', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Elenora', 'Batz', 'eldridge36@example.org', '7a9756424733968bdf8fa8524bd0dd96fec5768a', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Antoinette', 'Ortiz', 'angelina.rodriguez@example.org', '62579c410dff2fe5ee53bba3d7b2ca9a5e183855', '202300', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Modesta', 'Doyle', 'mclaughlin.gwen@example.net', '6f1e6aef3622556c1d4058aabdd959ed5861b41a', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Nathen', 'Brown', 'grant.lavina@example.com', 'e0fde1db2732c78ef8863b3110d15dda94988334', '768', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Olin', 'Block', 'kschuppe@example.org', '846dbbdb14c43a954453523b67f922b9c227b704', '422526', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Amos', 'Kassulke', 'dorn@example.com', '50d1b04f7b97fbb819fd166f7c7b7f3d73e72c32', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Jadyn', 'Littel', 'fnikolaus@example.org', '322ba08733b9b06ac7249244d8fe5df086dd36c0', '119932', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Francesco', 'Robel', 'rosina.watsica@example.net', '8851565b692e034366f43698120d48673335641d', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Syble', 'Hartmann', 'connelly.brittany@example.net', 'ca453c08aead49372cd51732d4128d58525734a6', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Ciara', 'Eichmann', 'cjones@example.net', '4839f96193f16fc89eb8a5606722e57170b5ac0f', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Paolo', 'Kerluke', 'gottlieb.kirstin@example.com', 'f7fdc7bceb86929ca9151fcf040cd682e1738814', '819906', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Kaylah', 'Miller', 'gbradtke@example.com', '3a99e11f009f1c1e1f61e3a8bb557023d3661144', '177', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Ericka', 'Emard', 'hirthe.alta@example.net', '9e4075fda08c3cfafe16d98f0845ecf44e6434ec', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Ericka', 'Pouros', 'germaine.kirlin@example.org', '23dc6fcc95b8347aa129623416707451157550ce', '5308898083', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Alessandro', 'Barrows', 'leuschke.jaiden@example.org', '6c1c6bdf97867479064cfb1c208877028663a074', '22461', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Leif', 'Grimes', 'leffler.ericka@example.net', '792726cc0087b8090faea7cd1563f05684788a5d', '144370', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Carmel', 'Kertzmann', 'dickinson.markus@example.org', 'f68861eebb8c000e10ad2659338c8922a59ae9f0', '828', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Hassan', 'Torphy', 'sam70@example.org', 'fdce832a790e0146c4a296b04057517e7580d83c', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Ila', 'Wehner', 'trystan49@example.com', 'a0871a6281850b3bb7a441b71a1cd5e24851d3a8', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Elna', 'Mertz', 'nels.christiansen@example.net', '123c8cdecd355fa675a76f0bfe09e7669abfcd95', '221', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Frederik', 'Bayer', 'mitchell.caleigh@example.org', '3b434e22d55a441ec81c84a4dc5e1b1883376795', '698308', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Mallory', 'Mante', 'jeremie.mueller@example.net', '726f06c38835d09ef7958f660085d1a4190e3b1e', '993', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Reginald', 'Rohan', 'martina70@example.org', '7f897837a3c3e379b8b0a3216ccf90cf40270fce', '2838', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Tiana', 'Crona', 'zemlak.claudie@example.org', '0192fd84de892d1710eb8a729605a075ca8b89bc', '404240', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Vivianne', 'Conn', 'moises.hermann@example.net', '7bbf41dbb1e558fb032c4f26ba607bcf2e024814', '249684', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Macy', 'Cummerata', 'roderick54@example.com', 'e691d175846264c327be032eb82398c9082a9704', '1920309573', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Kacie', 'Harris', 'dion.murray@example.com', '08f8915d02c1d408545b65d3aef6abef6e92d0c7', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Willy', 'Fahey', 'jalyn65@example.org', '76edd74c43e8732682a1717f85a799a6929b9828', '500', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Gust', 'Lockman', 'o\'keefe.cheyanne@example.org', '763d7c205596c016370d1ab90fa03b9c075f8046', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Corrine', 'Hintz', 'pollich.mallory@example.net', '0fd9158ce82afb4855b555b254853ea52d5ec27f', '554197', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Mavis', 'Gorczany', 'emely40@example.net', '78e4bd9c383d8a03045cc3856ed9c6d6f829c279', '118501', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Avery', 'Johnston', 'jeffry.bins@example.org', '4ffe254578be69857f63d96b99deb73b542637b4', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Rebeca', 'Jerde', 'qtorp@example.net', 'ccc8ca0dbecf875085a1e13f4a6c229685f558d5', '198299', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Braxton', 'Gleason', 'allison.zboncak@example.net', '048ebadcc9fe2d0679f0080cce1e423d19ea6a7f', '132', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Camron', 'Breitenberg', 'alia.reichel@example.com', 'b43178c362333f77f8ccadb78ad7ca023ac25186', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Johann', 'Botsford', 'grady05@example.org', '173ed5e5e2bd071b08d9fba0614f465d6a9e4126', '772', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Laverne', 'Raynor', 'saige.pacocha@example.net', 'b6441b79b63c352894f6ef8d3ce98b2efb494bf9', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Mustafa', 'Satterfield', 'conroy.krista@example.com', 'd6e8e2bd6fb05a0294b4913824108273ca320173', '81', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Efrain', 'Watsica', 'crunolfsdottir@example.com', 'e4eab29587108eb890b9f7d4ff514e44b1cc0ae9', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Elza', 'Lubowitz', 'do\'hara@example.com', '445663fa7a0ed5fdb29a19e1fe2db76f3d697848', '568220', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Deborah', 'Funk', 'abe23@example.net', 'ec226294431885855f2a31c4e4d87d2adfb04cd1', '473363', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Francis', 'Goodwin', 'gage26@example.com', '48f8e458218f728ea56beece3cefc2f962f1f104', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Freeda', 'West', 'ubailey@example.net', '7b18e7eca21217ad13a63430a7f0b375632324a9', '829', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Bethel', 'Ratke', 'geraldine94@example.com', 'b382ca7fe87a27fb185b6463fb47b84a827b2c89', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Carmella', 'Graham', 'kveum@example.org', '8aef1e648b3bef84b15c4090e714869812161704', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Brenda', 'Moen', 'hester99@example.org', 'be95b63012ce0a1848fc5743b29f1d4d6d69be03', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Ashleigh', 'Marquardt', 'jaskolski.timmothy@example.net', '91792a2b221563f94c8c23e041627110cdc6e3e7', '311', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Felipa', 'Dickinson', 'anastasia39@example.org', '03850a754b3996ed2eca613d90d82fd5082ca21e', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Taurean', 'Nitzsche', 'wfunk@example.net', 'dfc1e9f9ac6f23d098885988dbdae121a2984569', '631', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Walter', 'Crooks', 'marisol51@example.net', '9d7452d02f6a357b9e38e58d62a3e80445ea9fa3', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Lenny', 'Friesen', 'bbatz@example.net', '27c2f101a2b15bad3171d2c9fb909aa568e97ad0', '20', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Gregory', 'Mosciski', 'warren.bashirian@example.com', '08616032694dfa2312db445b95e089bb11f1f75d', '0', '1');


