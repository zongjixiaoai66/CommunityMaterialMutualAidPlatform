/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t327`;
CREATE DATABASE IF NOT EXISTS `t327` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t327`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 2, '收货人1', '17703786901', '地址1', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(2, 1, '收货人2', '17703786902', '地址2', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(3, 3, '收货人3', '17703786903', '地址3', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(4, 1, '收货人4', '17703786904', '地址4', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(5, 3, '收货人5', '17703786905', '地址5', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(6, 2, '收货人6', '17703786906', '地址6', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(7, 3, '收货人7', '17703786907', '地址7', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(8, 2, '收货人8', '17703786908', '地址8', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(9, 1, '收货人9', '17703786909', '地址9', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(10, 2, '收货人10', '17703786910', '地址10', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(11, 3, '收货人11', '17703786911', '地址11', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(12, 1, '收货人12', '17703786912', '地址12', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(13, 1, '收货人13', '17703786913', '地址13', 2, '2023-03-21 02:29:31', '2023-03-21 02:55:28', '2023-03-21 02:29:31'),
	(14, 1, '收货人14', '17703786914', '地址14', 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(38, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-03-21 02:29:19'),
	(39, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-03-21 02:29:19'),
	(40, 'wuzi_types', '物资类型', 1, '物资类型1', NULL, NULL, '2023-03-21 02:29:19'),
	(41, 'wuzi_types', '物资类型', 2, '物资类型2', NULL, NULL, '2023-03-21 02:29:19'),
	(42, 'wuzi_types', '物资类型', 3, '物资类型3', NULL, NULL, '2023-03-21 02:29:19'),
	(43, 'wuzi_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-21 02:29:19'),
	(44, 'wuzi_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-03-21 02:29:19'),
	(45, 'wuzi_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-03-21 02:29:19'),
	(46, 'wuzi_order_types', '订单类型', 103, '已派送', NULL, NULL, '2023-03-21 02:29:19'),
	(47, 'wuzi_order_types', '订单类型', 104, '已收货', NULL, NULL, '2023-03-21 02:29:19'),
	(48, 'wuzi_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2023-03-21 02:29:19'),
	(49, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2023-03-21 02:29:19'),
	(50, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2023-03-21 02:29:19'),
	(51, 'wuzijuanzeng_types', '捐赠类型', 1, '捐赠类型1', NULL, NULL, '2023-03-21 02:29:19'),
	(52, 'wuzijuanzeng_types', '捐赠类型', 2, '捐赠类型2', NULL, NULL, '2023-03-21 02:29:19'),
	(53, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-21 02:29:19'),
	(54, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-21 02:29:19'),
	(55, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-21 02:29:19'),
	(56, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-21 02:29:19'),
	(57, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-21 02:29:19'),
	(58, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-21 02:29:19');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, '发布内容1', 383, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(2, '帖子标题2', 1, NULL, '发布内容2', 472, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(3, '帖子标题3', 1, NULL, '发布内容3', 254, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(4, '帖子标题4', 3, NULL, '发布内容4', 30, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(5, '帖子标题5', 3, NULL, '发布内容5', 174, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(6, '帖子标题6', 1, NULL, '发布内容6', 169, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(7, '帖子标题7', 2, NULL, '发布内容7', 487, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(8, '帖子标题8', 1, NULL, '发布内容8', 30, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(9, '帖子标题9', 1, NULL, '发布内容9', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(10, '帖子标题10', 1, NULL, '发布内容10', 10, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(11, '帖子标题11', 2, NULL, '发布内容11', 353, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(12, '帖子标题12', 2, NULL, '发布内容12', 121, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(13, '帖子标题13', 3, NULL, '发布内容13', 65, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(14, '帖子标题14', 2, NULL, '发布内容14', 209, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(15, NULL, 1, NULL, '论坛讨论11111', 14, 2, '2023-03-21 02:56:39', NULL, '2023-03-21 02:56:39'),
	(16, NULL, NULL, 1, '123123', 14, 2, '2023-03-21 02:57:27', NULL, '2023-03-21 02:57:27'),
	(17, NULL, 1, NULL, '23455', 12, 2, '2024-08-04 02:07:04', NULL, '2024-08-04 02:07:04');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='求助留言板';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, '留言标题1', '留言内容1', '2023-03-21 02:29:31', '回复信息1', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(2, 3, '留言标题2', '留言内容2', '2023-03-21 02:29:31', '回复信息2', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(3, 3, '留言标题3', '留言内容3', '2023-03-21 02:29:31', '回复信息3', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(4, 1, '留言标题4', '留言内容4', '2023-03-21 02:29:31', '回复信息4', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(5, 3, '留言标题5', '留言内容5', '2023-03-21 02:29:31', '回复信息5', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(6, 3, '留言标题6', '留言内容6', '2023-03-21 02:29:31', '回复信息6', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(7, 2, '留言标题7', '留言内容7', '2023-03-21 02:29:31', '回复信息7', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(8, 3, '留言标题8', '留言内容8', '2023-03-21 02:29:31', '回复信息8', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(9, 3, '留言标题9', '留言内容9', '2023-03-21 02:29:31', '回复信息9', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(10, 2, '留言标题10', '留言内容10', '2023-03-21 02:29:31', '回复信息10', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(11, 1, '留言标题11', '留言内容11', '2023-03-21 02:29:31', '回复信息11', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(12, 1, '留言标题12', '留言内容12', '2023-03-21 02:29:31', '回复信息12', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(13, 3, '留言标题13', '留言内容13', '2023-03-21 02:29:31', '回复信息13', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(14, 1, '留言标题14', '留言内容14', '2023-03-21 02:29:31', '回复信息14', '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(15, 1, '3546', '12312', '2023-03-21 02:56:26', '12312123', '2023-03-21 02:57:34', '2023-03-21 02:56:26'),
	(16, 1, '666', '666', '2024-08-04 02:07:11', NULL, NULL, '2024-08-04 02:07:11');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 1, 'upload/news1.jpg', '2023-03-21 02:29:31', '公告详情1', '2023-03-21 02:29:31'),
	(2, '公告标题2', 1, 'upload/news2.jpg', '2023-03-21 02:29:31', '公告详情2', '2023-03-21 02:29:31'),
	(3, '公告标题3', 1, 'upload/news3.jpg', '2023-03-21 02:29:31', '公告详情3', '2023-03-21 02:29:31'),
	(4, '公告标题4', 2, 'upload/news4.jpg', '2023-03-21 02:29:31', '公告详情4', '2023-03-21 02:29:31'),
	(5, '公告标题5', 1, 'upload/news5.jpg', '2023-03-21 02:29:31', '公告详情5', '2023-03-21 02:29:31'),
	(6, '公告标题6', 1, 'upload/news6.jpg', '2023-03-21 02:29:31', '公告详情6', '2023-03-21 02:29:31'),
	(7, '公告标题7', 2, 'upload/news7.jpg', '2023-03-21 02:29:31', '公告详情7', '2023-03-21 02:29:31'),
	(8, '公告标题8', 1, 'upload/news8.jpg', '2023-03-21 02:29:31', '公告详情8', '2023-03-21 02:29:31'),
	(9, '公告标题9', 1, 'upload/news9.jpg', '2023-03-21 02:29:31', '公告详情9', '2023-03-21 02:29:31'),
	(10, '公告标题10', 2, 'upload/news10.jpg', '2023-03-21 02:29:31', '公告详情10', '2023-03-21 02:29:31'),
	(11, '公告标题11', 1, 'upload/news11.jpg', '2023-03-21 02:29:31', '公告详情11', '2023-03-21 02:29:31'),
	(12, '公告标题12', 1, 'upload/news12.jpg', '2023-03-21 02:29:31', '公告详情12', '2023-03-21 02:29:31'),
	(13, '公告标题13', 2, 'upload/news13.jpg', '2023-03-21 02:29:31', '公告详情13', '2023-03-21 02:29:31'),
	(14, '公告标题14', 2, 'upload/news14.jpg', '2023-03-21 02:29:31', '公告详情14', '2023-03-21 02:29:31');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'dh9zjjjxle9oi289wwimhceoy0iulk98', '2023-03-21 02:33:32', '2024-08-04 03:05:44'),
	(2, 1, 'a1', 'yonghu', '用户', '4oez77si4tw5slchhj5eohkvn1tz2id9', '2023-03-21 02:34:45', '2024-08-04 03:06:53');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-21 02:29:19');

DROP TABLE IF EXISTS `wuzi`;
CREATE TABLE IF NOT EXISTS `wuzi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '物资照片',
  `wuzi_types` int DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_kucun_number` int DEFAULT NULL COMMENT '物资库存',
  `wuzi_old_money` decimal(10,2) DEFAULT NULL COMMENT '原价 ',
  `wuzi_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `wuzi_clicknum` int DEFAULT NULL COMMENT '物资热度',
  `wuzi_content` longtext COMMENT '物资介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `wuzi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='物资';

DELETE FROM `wuzi`;
INSERT INTO `wuzi` (`id`, `wuzi_uuid_number`, `wuzi_name`, `wuzi_photo`, `wuzi_types`, `wuzi_kucun_number`, `wuzi_old_money`, `wuzi_new_money`, `wuzi_clicknum`, `wuzi_content`, `shangxia_types`, `wuzi_delete`, `insert_time`, `create_time`) VALUES
	(1, '1679365771292', '物资名称1', 'upload/wuzi1.jpg', 1, 100, 514.91, 89.31, 122, '物资介绍1', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(2, '1679365771360', '物资名称2', 'upload/wuzi2.jpg', 3, 102, 550.38, 228.32, 16, '物资介绍2', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(3, '1679365771311', '物资名称3', 'upload/wuzi3.jpg', 2, 103, 782.00, 206.73, 212, '物资介绍3', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(4, '1679365771283', '物资名称4', 'upload/wuzi4.jpg', 2, 104, 585.60, 163.70, 325, '物资介绍4', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(5, '1679365771320', '物资名称5', 'upload/wuzi5.jpg', 1, 105, 999.73, 370.18, 333, '物资介绍5', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(6, '1679365771351', '物资名称6', 'upload/wuzi6.jpg', 2, 106, 589.15, 101.18, 336, '物资介绍6', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(7, '1679365771283', '物资名称7', 'upload/wuzi7.jpg', 1, 107, 693.98, 245.87, 281, '物资介绍7', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(8, '1679365771328', '物资名称8', 'upload/wuzi8.jpg', 2, 108, 712.87, 255.94, 74, '物资介绍8', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(9, '1679365771353', '物资名称9', 'upload/wuzi9.jpg', 3, 109, 797.51, 10.87, 327, '物资介绍9', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(10, '1679365771325', '物资名称10', 'upload/wuzi10.jpg', 2, 1010, 824.80, 325.91, 307, '物资介绍10', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(11, '1679365771347', '物资名称11', 'upload/wuzi11.jpg', 1, 1011, 587.45, 150.93, 213, '物资介绍11', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(12, '1679365771317', '物资名称12', 'upload/wuzi12.jpg', 1, 1010, 954.64, 63.52, 486, '物资介绍12', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(13, '1679365771282', '物资名称13', 'upload/wuzi13.jpg', 1, 1013, 707.69, 314.98, 355, '物资介绍13', 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(14, '1679365771302', '物资名称14', 'upload/wuzi14.jpg', 1, 1014, 674.28, 290.95, 135, '物资介绍14', 2, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31');

DROP TABLE IF EXISTS `wuzijuanzeng`;
CREATE TABLE IF NOT EXISTS `wuzijuanzeng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzijuanzeng_name` varchar(200) DEFAULT NULL COMMENT '捐赠标题  Search111 ',
  `wuzijuanzeng_types` int DEFAULT NULL COMMENT '捐赠类型  Search111 ',
  `yonghu_id` int NOT NULL COMMENT '捐赠用户',
  `wuzijuanzeng_numb` int DEFAULT NULL COMMENT '捐赠数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `wuzijuanzeng_content` longtext COMMENT '捐赠详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='物资捐赠';

DELETE FROM `wuzijuanzeng`;
INSERT INTO `wuzijuanzeng` (`id`, `wuzijuanzeng_name`, `wuzijuanzeng_types`, `yonghu_id`, `wuzijuanzeng_numb`, `insert_time`, `wuzijuanzeng_content`, `create_time`) VALUES
	(1, '捐赠标题1', 1, 3, 149, '2023-03-21 02:29:31', '捐赠详情1', '2023-03-21 02:29:31'),
	(2, '捐赠标题2', 1, 3, 67, '2023-03-21 02:29:31', '捐赠详情2', '2023-03-21 02:29:31'),
	(3, '捐赠标题3', 2, 2, 364, '2023-03-21 02:29:31', '捐赠详情3', '2023-03-21 02:29:31'),
	(4, '捐赠标题4', 1, 1, 137, '2023-03-21 02:29:31', '捐赠详情4', '2023-03-21 02:29:31'),
	(5, '捐赠标题5', 2, 1, 484, '2023-03-21 02:29:31', '捐赠详情5', '2023-03-21 02:29:31'),
	(6, '捐赠标题6', 2, 2, 60, '2023-03-21 02:29:31', '捐赠详情6', '2023-03-21 02:29:31'),
	(7, '捐赠标题7', 2, 3, 85, '2023-03-21 02:29:31', '捐赠详情7', '2023-03-21 02:29:31'),
	(8, '捐赠标题8', 2, 1, 201, '2023-03-21 02:29:31', '捐赠详情8', '2023-03-21 02:29:31'),
	(9, '捐赠标题9', 2, 2, 500, '2023-03-21 02:29:31', '捐赠详情9', '2023-03-21 02:29:31'),
	(10, '捐赠标题10', 1, 3, 470, '2023-03-21 02:29:31', '捐赠详情10', '2023-03-21 02:29:31'),
	(11, '捐赠标题11', 1, 3, 87, '2023-03-21 02:29:31', '捐赠详情11', '2023-03-21 02:29:31'),
	(12, '捐赠标题12', 2, 1, 485, '2023-03-21 02:29:31', '捐赠详情12', '2023-03-21 02:29:31'),
	(13, '捐赠标题13', 2, 1, 273, '2023-03-21 02:29:31', '捐赠详情13', '2023-03-21 02:29:31'),
	(14, '捐赠标题14', 1, 1, 399, '2023-03-21 02:29:31', '捐赠详情14', '2023-03-21 02:29:31'),
	(16, 'xxx捐赠蔬菜1吨', 2, 1, 1, '2023-03-21 02:56:08', '1', '2023-03-21 02:56:08');

DROP TABLE IF EXISTS `wuzi_collection`;
CREATE TABLE IF NOT EXISTS `wuzi_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_id` int DEFAULT NULL COMMENT '物资',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `wuzi_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='物资收藏';

DELETE FROM `wuzi_collection`;
INSERT INTO `wuzi_collection` (`id`, `wuzi_id`, `yonghu_id`, `wuzi_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(2, 2, 2, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(3, 3, 3, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(4, 4, 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(5, 5, 3, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(6, 6, 2, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(7, 7, 2, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(8, 8, 3, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(9, 9, 2, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(10, 10, 1, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(11, 11, 3, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(12, 12, 3, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(13, 13, 2, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(14, 14, 3, 1, '2023-03-21 02:29:31', '2023-03-21 02:29:31'),
	(15, 1, 1, 1, '2024-08-04 02:07:27', '2024-08-04 02:07:27');

DROP TABLE IF EXISTS `wuzi_order`;
CREATE TABLE IF NOT EXISTS `wuzi_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `wuzi_id` int DEFAULT NULL COMMENT '物资',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `wuzi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `wuzi_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `wuzi_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='物资订单';

DELETE FROM `wuzi_order`;
INSERT INTO `wuzi_order` (`id`, `wuzi_order_uuid_number`, `address_id`, `wuzi_id`, `yonghu_id`, `buy_number`, `wuzi_order_true_price`, `wuzi_order_types`, `wuzi_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1679367307706', 12, 12, 1, 2, 127.04, 104, 1, '2023-03-21 02:55:08', '2023-03-21 02:55:08'),
	(2, '1722737251425', 13, 1, 1, 1, 89.31, 101, 1, '2024-08-04 02:07:31', '2024-08-04 02:07:31');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', 99971.35, '2023-03-21 02:29:31'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 215.00, '2023-03-21 02:29:31'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 108.99, '2023-03-21 02:29:31');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
