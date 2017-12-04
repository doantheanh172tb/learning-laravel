/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : 127.0.1.1:3306
Source Database       : myblogsite

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-12-04 13:39:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES ('1', 'Nguyen Xuan Thu', 'Vo yeu', '2017-12-03 15:50:44', '2017-12-03 15:52:50');
INSERT INTO `blogs` VALUES ('2', 'Doan GIa Thing', 'Con trai', '2017-12-03 15:53:42', '2017-12-03 15:53:42');
INSERT INTO `blogs` VALUES ('3', 'the anh doan', 'bo Bon', '2017-12-03 16:01:54', '2017-12-03 16:02:35');
INSERT INTO `blogs` VALUES ('4', 'blog testst 1', 'blog testst body', '2017-12-03 19:12:43', '2017-12-03 19:12:43');
INSERT INTO `blogs` VALUES ('5', 'test 2', 'test 22222', '2017-12-03 19:12:56', '2017-12-03 19:12:56');
INSERT INTO `blogs` VALUES ('6', 'dw etest 3', 'test 333333 333 333 333 33', '2017-12-03 19:18:41', '2017-12-03 19:18:41');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('6', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('7', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('8', '2017_12_03_153542_create_blogs_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'testapp', 'doantheanh172tb1@gmail.com', '$2y$10$1mxnBME949Fcnd/q0HzvyeOvNNtJGP0hXySgbJrQwSr7yHYcYksV.', 'WlhzoNbqeXlwrpIffqKmfDAgSkF7EwoiRjjd02ZhYnUbg6ldmEtlod32lVwt', '2017-12-04 02:58:48', '2017-12-04 02:58:48');
INSERT INTO `users` VALUES ('2', 'anh  2', 'doantheanh172tb2@gmail.com', '$2y$10$r34kv8o7Qpu.uyRkLKoZce7cgUsdyMcRh3PW8eT7W9srjyxUGrZMa', 'jE0asO0rBtaAOkXv972YyQdFS8xKg5Wug7UtwYMOQrlQKo2aZQBpZmVz9NW8', '2017-12-04 03:40:39', '2017-12-04 03:40:39');
INSERT INTO `users` VALUES ('3', 'anh  3', 'doantheanh172tb3@gmail.com', '$2y$10$Rr4cNyJfvnXwRJMsNfaH4ebltUvH6nCxw/cMhuc7Q6T65vOmlefOW', 'QVDyRsUg4meEu28p0AP3W5gebZKaxtQI22VrEcWUtRKIKlsY0gqzdjfuiml0', '2017-12-04 03:41:15', '2017-12-04 03:41:15');
INSERT INTO `users` VALUES ('4', 'anh 4', 'doantheanh172tb4@gmail.com', '$2y$10$uSXRZ1B.CqtkCn0HPt6vSuRC2DS8szth2Um6ONXzzx1MG493MOR0y', null, '2017-12-04 03:41:45', '2017-12-04 03:41:45');
