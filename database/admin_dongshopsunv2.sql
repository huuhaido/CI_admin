/*
Navicat MySQL Data Transfer

Source Server         : Server_JVIT
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : webtm_dongshopsunv2

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2015-05-21 08:40:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_nqt_groups`
-- ----------------------------
DROP TABLE IF EXISTS `admin_nqt_groups`;
CREATE TABLE `admin_nqt_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_nqt_groups
-- ----------------------------
INSERT INTO `admin_nqt_groups` VALUES ('1', 'Root', '0|rwd,2|rwd,1|rwd,4|rwd,3|rwd,185|rwd,12|rwd', '1', '2012-08-28 14:51:26');
INSERT INTO `admin_nqt_groups` VALUES ('2', 'Admin', '0|rwd,2|---,1|---,4|---,3|---,20|rwd,8|rwd,15|rwd,5|rwd', '1', '2015-05-12 16:54:15');

-- ----------------------------
-- Table structure for `admin_nqt_logs`
-- ----------------------------
DROP TABLE IF EXISTS `admin_nqt_logs`;
CREATE TABLE `admin_nqt_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `function` varchar(50) NOT NULL,
  `function_id` int(11) NOT NULL,
  `field` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `old_value` text NOT NULL,
  `new_value` text NOT NULL,
  `account` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=567 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_nqt_logs
-- ----------------------------
INSERT INTO `admin_nqt_logs` VALUES ('553', 'branch', '20', 'Add new', 'Add new', '', '', 'dongshopsun', '115.78.131.225', '2015-05-20 08:50:24');
INSERT INTO `admin_nqt_logs` VALUES ('554', 'branch', '21', 'Add new', 'Add new', '', '', 'dongshopsun', '115.78.131.225', '2015-05-20 08:51:02');
INSERT INTO `admin_nqt_logs` VALUES ('555', 'branch', '21', 'status', 'update', '1', '0', 'dongshopsun', '115.78.131.225', '2015-05-20 08:51:57');
INSERT INTO `admin_nqt_logs` VALUES ('556', 'branch', '20', 'status', 'update', '1', '0', 'dongshopsun', '115.78.131.225', '2015-05-20 08:51:58');
INSERT INTO `admin_nqt_logs` VALUES ('557', 'branch', '21', 'status', 'update', '0', '1', 'dongshopsun', '115.78.131.225', '2015-05-20 08:52:04');
INSERT INTO `admin_nqt_logs` VALUES ('558', 'branch', '20', 'status', 'update', '0', '1', 'dongshopsun', '115.78.131.225', '2015-05-20 08:52:39');
INSERT INTO `admin_nqt_logs` VALUES ('559', 'branch', '21', 'Delete', 'Delete', '', '', 'dongshopsun', '115.78.131.225', '2015-05-20 08:53:31');
INSERT INTO `admin_nqt_logs` VALUES ('560', 'branch', '20', 'Delete', 'Delete', '', '', 'dongshopsun', '115.78.131.225', '2015-05-20 08:53:31');
INSERT INTO `admin_nqt_logs` VALUES ('561', 'news', '11', 'status', 'update', '0', '1', 'dongshopsun', '14.161.5.37', '2015-05-20 13:30:29');
INSERT INTO `admin_nqt_logs` VALUES ('562', 'news', '11', 'status', 'update', '1', '0', 'dongshopsun', '14.161.5.37', '2015-05-20 13:30:30');
INSERT INTO `admin_nqt_logs` VALUES ('563', 'news', '11', 'status', 'update', '0', '1', 'dongshopsun', '14.161.5.37', '2015-05-20 13:30:30');
INSERT INTO `admin_nqt_logs` VALUES ('564', 'news', '11', 'status', 'update', '1', '0', 'dongshopsun', '14.161.5.37', '2015-05-20 13:30:31');
INSERT INTO `admin_nqt_logs` VALUES ('565', 'static_pages', '4', 'content', 'Update', 'Nội dung help', '<p><span style=\"font-size: 36pt;\">I. BUTTON USAGE</span></p>\r\n<p><img src=\"../../../assets/uploads/editor/button.png\" alt=\"\" border=\"0\" style=\"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;\" /></p>\r\n<p><span style=\"font-size: 36pt;\">II. General page\'s explanation</span></p>\r\n<p>&nbsp;<img src=\"../../../assets/uploads/editor/Page.png\" alt=\"\" border=\"0\" style=\"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: -webkit-xxx-large;\">III. Creat content page\'s explanation</span></p>\r\n<p><img src=\"../../../assets/uploads/editor/Content.png\" alt=\"\" border=\"0\" style=\"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;\" /></p>\r\n<p><img src=\"../../../assets/uploads/editor/Hoi dap.png\" alt=\"\" border=\"0\" style=\"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;\" /></p>', 'dongshopsun', '14.161.5.37', '2015-05-20 13:46:45');
INSERT INTO `admin_nqt_logs` VALUES ('566', 'static_pages', '4', 'created', 'Update', '2015-05-19 17:16:07', '2015-05-20 13:46:45', 'dongshopsun', '14.161.5.37', '2015-05-20 13:46:45');

-- ----------------------------
-- Table structure for `admin_nqt_modules`
-- ----------------------------
DROP TABLE IF EXISTS `admin_nqt_modules`;
CREATE TABLE `admin_nqt_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `name_function` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_nqt_modules
-- ----------------------------
INSERT INTO `admin_nqt_modules` VALUES ('1', 'Manager Account Group', 'admincp_account_groups', '1', '2012-08-16 15:53:42');
INSERT INTO `admin_nqt_modules` VALUES ('2', 'Manager Account', 'admincp_accounts', '1', '2012-08-16 15:53:42');
INSERT INTO `admin_nqt_modules` VALUES ('3', 'Manager Module', 'admincp_modules', '1', '2012-08-16 15:53:42');
INSERT INTO `admin_nqt_modules` VALUES ('4', 'Manager Logs', 'admincp_logs', '1', '2012-08-16 15:53:42');
INSERT INTO `admin_nqt_modules` VALUES ('5', 'Quản lý nội dung', 'static_pages', '1', '2014-07-02 11:24:13');
INSERT INTO `admin_nqt_modules` VALUES ('6', 'Quản lý hỏi đáp', 'faqs', '1', '2015-05-12 15:09:03');
INSERT INTO `admin_nqt_modules` VALUES ('7', 'Quản lý liên hệ & bản đồ', 'branch', '1', '2015-05-12 15:51:44');
INSERT INTO `admin_nqt_modules` VALUES ('8', 'Quản lý bài viết', 'news', '1', '2015-05-12 16:49:29');

-- ----------------------------
-- Table structure for `admin_nqt_settings`
-- ----------------------------
DROP TABLE IF EXISTS `admin_nqt_settings`;
CREATE TABLE `admin_nqt_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_nqt_settings
-- ----------------------------
INSERT INTO `admin_nqt_settings` VALUES ('1', 'title-admincp', 'aAdmin Control Panel', '2015-05-18 13:28:02');

-- ----------------------------
-- Table structure for `admin_nqt_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_nqt_users`;
CREATE TABLE `admin_nqt_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `custom_permission` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_nqt_users
-- ----------------------------
INSERT INTO `admin_nqt_users` VALUES ('1', 'root', '53fab80925e21d959402658124f71c36', '1', '2|rwd,1|rwd,4|rwd,3|rwd,185|rwd,12|rwd', '0', '1', '2012-08-28 14:52:42');
INSERT INTO `admin_nqt_users` VALUES ('2', 'admin', 'af03798e4f9010c54d2eb6f386124f7e', '1', '2|rwd,1|rwd,4|rwd,3|rwd,185|rwd,12|rwd', '0', '1', '2012-08-28 14:52:59');
INSERT INTO `admin_nqt_users` VALUES ('3', 'dongshopsun', 'e10adc3949ba59abbe56e057f20f883e', '2', '2|---,1|---,4|---,3|---,8|rwd,6|rwd,7|rwd,5|rwd', '1', '1', '2015-05-12 16:54:39');

-- ----------------------------
-- Table structure for `jv-it_branch`
-- ----------------------------
DROP TABLE IF EXISTS `jv-it_branch`;
CREATE TABLE `jv-it_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `order` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jv-it_branch
-- ----------------------------
INSERT INTO `jv-it_branch` VALUES ('1', 'Chi Nhánh Gò Vấp (New Open)', '869 Phan Văn Trị, P.7, Q.Gò Vấp, TPHCM', '08-3994-1000', '', 'hotro@dongshopsun.vn', '2015/05/4f5db7e25f73894f796fdb121d7aa034.jpg', '1', '2015-05-15 10:04:08', '0');
INSERT INTO `jv-it_branch` VALUES ('2', 'Chi Nhánh Tân Bình', '354A Trường Chinh, P.13, Q.Tân Bình', '08-3812-0212', '', 'hotro@dongshopsun.vn', '2015/05/cdd59c21a68159d0c662ee65d325916d.jpg', '1', '2015-05-15 10:26:38', '1');
INSERT INTO `jv-it_branch` VALUES ('3', 'Chi Nhánh Tân Định', '175 Bạch Đằng, P. 15, Quận Bình Thạnh', '08-3511-8111', '', 'hotro@dongshopsun.vn', '2015/05/95b4bfca83871a10ba025341107faceb.jpg', '1', '2015-05-15 10:27:45', '2');
INSERT INTO `jv-it_branch` VALUES ('4', 'Chi Nhánh Quận 6', '119 Kinh Dương Vương, P. 12, Quận 6', '08-38-777-555', '', 'hotro@dongshopsun.vn', '2015/05/fb596e3171c3916ef3536618bf18903b.jpg', '1', '2015-05-15 10:28:32', '3');
INSERT INTO `jv-it_branch` VALUES ('5', 'Chi Nhánh Nguyễn Cư Trinh', '185-187 Nguyễn Cư Trinh, Q.1, Tp.HCM', '08-3838-8383', '', 'hotro@dongshopsun.vn', '2015/05/ba940f7414d2d4eb717968e2eb91045a.jpg', '1', '2015-05-15 10:30:52', '4');

-- ----------------------------
-- Table structure for `jv-it_faqs`
-- ----------------------------
DROP TABLE IF EXISTS `jv-it_faqs`;
CREATE TABLE `jv-it_faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jv-it_faqs
-- ----------------------------
INSERT INTO `jv-it_faqs` VALUES ('1', 'Công ty có người Nhật làm việc không ?', 'Chúng tôi có người Nhật làm việc với mục đích được tư vấn và hỗ trợ chuyên nghiệp.', '1', '2015-05-14 11:30:21');
INSERT INTO `jv-it_faqs` VALUES ('2', 'Trong tên công ty có chữ “Nhật” vậy có phải là công ty Nhật không?', 'Chúng tôi là công ty có vốn đầu tư 100% của Việt Nam.\r\nCông ty được thành lập bởi sự hợp tác của công ty chứng khoán Việt Nam và công ty chứng khoán của Nhật.', '1', '2015-05-14 11:30:54');
INSERT INTO `jv-it_faqs` VALUES ('3', 'Hình thức mới là hình thức như thế nào?', 'Chúng tôi chỉ thế chấp những giấy tờ được chỉ định. Nên quý khách vẫn có thể sinh hoạt bình thường\r\n(có thể tiếp tục dùng xe máy, điện thoại, v.v...).', '1', '2015-05-14 11:31:27');
INSERT INTO `jv-it_faqs` VALUES ('4', 'Công ty có phải là tiệm cầm đồ không?', 'Chúng tôi là công ty cho cầm đồ có thể cung cấp vốn theo hình thức mới.', '1', '2015-05-14 11:31:56');
INSERT INTO `jv-it_faqs` VALUES ('5', 'Giao dịch bình thường có nghĩa là như thế nào?', 'Là những khách hàng thanh toán hàng tháng không bị chậm trễ\r\nVà là những khách hàng có thể liên lạc được trong thời gian trao đổi.', '1', '2015-05-14 11:32:21');
INSERT INTO `jv-it_faqs` VALUES ('6', 'Có thể giữ bí mật với gia đình và công ty được không?', 'Công ty chúng tôi sẽ giữ bí mật với những khách hàng giao dịch bình thường.', '1', '2015-05-14 11:32:51');
INSERT INTO `jv-it_faqs` VALUES ('7', 'Trường hợp không thể hoàn trả thì có thể giảm số tiền hoàn trả được không?', 'Chúng tôi có thể thảo luận về việc trả số tiền lãi với quý khách.', '1', '2015-05-14 11:33:17');
INSERT INTO `jv-it_faqs` VALUES ('8', 'Có thể vay thêm nữa không?', 'Chúng tôi có thể kiểm tra và cho vay quý khách vay thêm nếu không có vấn đề gì.\r\nQuý khách cần mang đến và nợp giấy tờ như lần đầu tiên.', '1', '2015-05-14 11:33:42');
INSERT INTO `jv-it_faqs` VALUES ('9', 'Tiền hoàn trả mỗi tháng là bao nhiêu?', 'Tùy thuộc vào số tiền vay của quý khách.', '1', '2015-05-14 11:34:14');
INSERT INTO `jv-it_faqs` VALUES ('10', 'Lãi vay là bao nhiêu?', '1.125%/tháng.', '1', '2015-05-14 11:34:43');
INSERT INTO `jv-it_faqs` VALUES ('11', 'Số lần trả là bao nhiêu lần?', 'Nguyên tắc thì việc hoàn trả sẽ được chia ra 30 lần nhưng chúng tôi có thể thương lượng theo yêu cầu của quý khách.', '1', '2015-05-14 11:35:08');
INSERT INTO `jv-it_faqs` VALUES ('12', 'Phương thức trả tiền như thế nào?', 'Quý khách có thể thanh toán bằng tiền mặt tại cửa hàng chúng tôi hoặc chuyển tiền qua ngân hàng.', '1', '2015-05-14 11:50:49');
INSERT INTO `jv-it_faqs` VALUES ('13', 'Làm thủ tục mất khoảng bao nhiêu thời gian?', 'Tùy thuộc vào thời gian điền đơn của quý khách. Tuy nhiên nhanh nhất là khoảng 30 phút.', '1', '2015-05-14 11:51:28');
INSERT INTO `jv-it_faqs` VALUES ('14', 'Có thể vay được bao nhiêu?', 'Tùy vào độ uy tín của quý khách và các giấy tờ thế chấp chúng tôi có thể cho vay từ 2.5 triệu đồng đến 250 triệu đồng.', '1', '2015-05-14 11:52:03');
INSERT INTO `jv-it_faqs` VALUES ('15', 'Cần mang theo những gì để vay tiền?', '<p>Quý khách có thể mang đến những giấy tờ dưới đây để làm thủ tục: </p>\r\n<p>*Có những giấy tờ chỉ cần nợp 1 bản photo cho chúng tôi.</p>\r\n<p>CMND, Hộ chiếu, Bằng lái xe, Thẻ bảo hiểm y tế.</p>\r\n<p>Giấy đăng ký xe máy, hợp đồng mua bán xe máy.</p>\r\n<p>Hợp đồng lao động.</p>\r\n<p>Bản kê khai mức lương.</p>\r\n<p>Giấy chứng nhận tạm trú.</p>\r\n<p>Hợp đồng cho thuê bất động sản.</p>\r\n<p>Giấy yêu cầu thanh toán tiền điện thoại.  </p>', '1', '2015-05-14 11:52:46');
INSERT INTO `jv-it_faqs` VALUES ('16', 'Công ty này là công ty gì?', 'Là công ty cho vay tiền với mô hình thế chấp giấy đăng ký xe máy v.v...', '1', '2015-05-14 11:53:21');
INSERT INTO `jv-it_faqs` VALUES ('17', 'Công ty làm việc đến thứ mấy?', 'Công ty làm từ thứ 2 đến thứ 6', '1', '2015-05-14 11:53:53');

-- ----------------------------
-- Table structure for `jv-it_news`
-- ----------------------------
DROP TABLE IF EXISTS `jv-it_news`;
CREATE TABLE `jv-it_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jv-it_news
-- ----------------------------
INSERT INTO `jv-it_news` VALUES ('1', '', 'Trần Thị Thanh Thư – 29 tuổi – Bán hàng tại chợ Hòa Bình – 0908226xxx', '', '', 'Tại chợ tôi bán, thường nhận được tờ rơi của công ty, tôi đã tìm cách liên hệ thử. Sau đó do việc kinh doanh gặp chút khó khăn nên tôi đã gh&eacute; công ty để tìm sự hỗ trợ vốn. Thật nhanh hơn tôi tưởng tượng. Chưa bao giờ thấy vay ở đâu mà thủ tục đơn giản và nhanh chóng như ở DONGSHOPSUN.\r\n    Nhân viên thì niềm nở, hướng dẫn viết đơn tận tình. Lúc tôi đợi duyệt hồ sơ còn mời kẹo (kẹo ở đây rất ngon), nước, đưa báo cho tôi xem. Nói chung dịch vụ ở DONGSHOPSUN tốt lắm.<br />\r\nLàm ăn thuận lợi, tôi xoay được đồng vốn nên đã thanh lý hợp đồng ở DONGSHOPSUN trước thời hạn. Quả thật công ty làm ăn rất đàng hoàng, lãi suất được tính rõ ràng đúng như cam kết ban đầu khi tôi ký hợp đồng.<br />\r\nKhi giới thiệu khách hàng mới, tôi còn được nhận chi phí cảm ơn của công ty. Tôi thấy thích nhất cái khoản này. Nếu có nhu cầu, tôi sẽ liên hệ ngay với DONGSHOPSUN.', '1', '2015-05-13 16:55:02');
INSERT INTO `jv-it_news` VALUES ('2', '', 'Cao Hữu Phúc – 56 tuổi – Tài xế xe ôm – 01226235XXX', '', '', 'Chú vốn chi tiêu tiết kiệm vì chạy xe ôm như chú thiệt tình không nghĩ sẽ tìm được nguồn hỗ trợ vốn nào ngoài mấy chỗ cầm đồ hay cho vay nặng lãi. Cho vay nặng lãi thì khỏi nói rồi, tiền đâu mà trả. Còn cầm đồ, chú chả có gì để cầm, không lẽ cầm cái xe mưu sinh. Nhận được tờ rơi từ công ty, chú cũng để đó hoặc đưa cho khách đi xe chú.<br />\r\n  Hôm nọ tự nhiên nhà có chuyện, chú cần tiền mà không biết xoay đâu, chú liên hệ thử với DONGSHOPSUN. Không ngờ là được hỗ trợ quá tận tình, chú lên thử. Chỉ trong một buổi chiều, chú đã có tiền giải quyết việc riêng.<br />\r\n  Chú thật sự cảm ơn DONGSHOPSUN. Chú sẽ giới thiệu về công ty cho người khác để có ai giống chú thì có thể tìm được sự giúp đỡ. Hơn nữa, giới thiệu khách cho DONGSHOPSUN chú cũng được một khoản phí cảm ơn kha khá, bằng cả ngày chạy xe của chú.', '1', '2015-05-13 16:25:43');
INSERT INTO `jv-it_news` VALUES ('3', '', 'Nguyễn Thị Nhung – 25 tuổi – Nhân viên văn phòng – nhung.nguyen2501@...', '', '', 'Mình tên Nhung hiện đang làm cho một công ty về đấu giá. Mình mới lấy chồng được gần 1 năm, 2 vợ chồng mình quen nhau từ khi còn là sinh viên và cùng vào TP.HCM lập nghiệp.<br />\r\n Khi mới cưới 2 vợ chồng chỉ có 1 chiếc xe máy, ngày nào chồng cũng chở mình đi làm nhưng vì công việc nhiều khi mình lại phải về trễ nên chồng mình phải đợi có lúc đến 2, 3 tiếng đồng hồ (vì nhà xa nơi 2 đứa làm việc, anh ấy phải đợi để 2 đứa cùng về). Thương chồng mình đã cùng bàn bạc với chồng mua thêm 1 chiếc xe để 2 đứa có thể tự chủ về vấn đề đi lại. Nhưng tính toán ra lương cả 2 vợ chồng trừ tất cả các khoản nhà cửa, điện nước, ăn uống,… thì không dư được bao nhiêu, muốn mua 1 chiếc xe thì cũng phải dành dụm cả năm mới mua được.<br />\r\n Rồi một hôm lướt web mình có thấy dịch vụ hỗ trợ vốn của DONGSHOPSUN, mình đã liên lạc thử. Với sự tư vấn nhiệt tình mình đã đến công ty và nhanh chóng có được số vốn tiêu dùng nho nhỏ, cũng đủ để thực hiện mong mỏi của 2 đứa mình. Vậy là từ nay mình không phải lo về chuyện đi lại, chờ đợi của chồng mình nữa...', '1', '2015-05-13 16:25:13');
INSERT INTO `jv-it_news` VALUES ('4', '', 'Trần Văn Phong – 27 tuổi – P. 12 – Q. 6 01648897XXX', '', '', 'Làm công ăn lương chật vật hoài cũng chán, tôi tập tành thử nghiệm kinh doanh với bạn bè. Xoay nhiều nơi nhưng thủ tục khá khó khăn so với công nhân không hợp đồng lao động, không bảo hiểm, lại không có hộ khẩu thành phố như tôi. <br />\r\nĐược bạn giới thiệu, tôi tìm đến DONGSHOPSUN. Tôi đã có được một khoản vốn kha khá chỉ trong một ngày. Tôi thật sự rất vui.<br />\r\nCông việc kinh doanh của tôi hiện nay cũng khá.<br />\r\nCảm ơn DONGSHOPSUN, nếu không có lẽ giờ này tôi còn chưa xoay đâu ra được tiền.', '1', '2015-05-13 16:25:11');
INSERT INTO `jv-it_news` VALUES ('5', '', 'Nguyễn Thị Nhung – 25 tuổi – Nhân viên văn phòng – nhung.nguyen2501@', '', '', 'Tôi hiện nay là một nhân viên văn phòng trong 1 công ty in ấn. Cách đây không lâu, gia đình có việc phải cần đến một số tiền lớn nhưng lại không đủ, vẫn cần thêm một khoản nữa. Tôi đã chạy khắp nơi để vay mượn người thân, bạn bè. Nhưng kinh tế đang khủng hoảng nên không ai giúp được tôi. Tôi không dám đi vay của các đối tượng cho vay nặng lại vì lại suất quá cao. Ngân hàng thì yêu cầu hồ sơ, thủ tục rất khó. Trong lúc đang bối rối và hoang mang thì may mắn thay tôi có một người bạn đã giới thiệu cho tôi về DONGSHOPSUN. <br />\r\nTôi đã được giải quyết hồ sơ nhanh chóng. Tôi đã dùng tiền đó để lo cho công việc gia đình và tôi thật sự biết ơn sự giúp đỡ của DONGSHOPSUN vào thời điểm đó. Tôi hy vọng sẽ có nhiều người như tôi sẽ nhận được giúp đỡ từ DONGSHOPSUN để có thể giải quyết các khó khăn trong cuộc sống của mình.', '1', '2015-05-13 13:45:25');
INSERT INTO `jv-it_news` VALUES ('6', '', 'Lê Trần Ngọc Trân 23 tuổi – Sinh Viên –Ngoctran2212@', '', '', 'Em tên Lê Trần Ngọc Trân hiện đang là sinh viên năm cuối Khoa đồ hoạ ứng dụng thuộc trường Đại học Kiến trúc. Cách đây 1 năm e nhận được 1 bản hợp đồng thiết kế Bộ nhận diện thương hiệu cho 1 cty may mặc. Em thật sự thiếu tự tin vì không có 1 chiếc laptop để có thể trực tiếp thực hiện sản phẩm khi đi khảo sát tại công ty này. Sau đó e được 1 người bạn giới thiệu đến dịch vụ của DONGSHOPSUN.Em thật sự đắn đo vì từ trước đến giờ em chưa từng vay tiền ,rất nhiều câu hỏi đặt ra trong đầu. Nhưng vì công việc đang cần gấp e đã quyết định gọi điện và hẹn gặp nhân viên cty. E đã thay đổi hoàn toàn vì khi biết DONGSHOPSUN là công ty cho vay tiêu dùng uy tín của Nhật. Đội ngũ nhân viên nhiệt tình đã trả lời tất cả những thắc mắc của em. Đến nay e đã trả xong khoản vay của DONGSHOPSUN , chiếc laptop đã mang đến cho e thêm nhiều khoản thu nhập và tự tin về khả năng của mình hơn trong cuộc sống sinh viên. Cảm ơn DONGSHOPSUN .', '1', '2015-05-13 16:37:07');
INSERT INTO `jv-it_news` VALUES ('7', '', 'Nguyễn Trí Nhân – 25tuổi – Nhân viên IT – trinhannguyen@...', '', '', 'Hi mọi người, Nhân đang làm việc tại 1 công ty IT của Nhật, 25 tuổi. Thời gian trước thì thật sự công việc của Nhân gặp khá nhiều trở ngại khi cùng lúc phải đưa đón em gái đi làm, thời gian thật sự không đủ vì ai cũng biết ngành IT là phải tăng ca liên tục, vì vậy nhiều khi em Nhân cứ phải đứng đợi cả tiếng đồng hồ. Hai anh em ở quê lên SG lập nghiệp thật sự không đủ điều kiện để mua liền thêm 1 chiếc xe. Nhờ chương trình cho vay tiêu dùng của DONGSHOPSUN nên Nhân đã có thể mua thêm 1 chiếc xe cho em gái từ đó giải quyết được vấn đề đưa đón. Cả quá trình từ lúc Nhân liên hệ bên phía công ty đến lúc nhận được tiền mua xe, Nhân đã nhận được sự tư vấn tận tâm và nhiệt tình của các anh chị bên phía công ty và thủ tục thì thật sự đơn giản và tiết kiệm được nhiều thời gian. Nhân sẽ tiếp tục sử dụng dịch vụ này trong tương lai nều có nhu cầu.', '1', '2015-05-13 17:18:34');
INSERT INTO `jv-it_news` VALUES ('8', '', 'Lê Quang – 30 tuổi – Nhân viên kinh doanh – quangle8201@...', '', '', 'Tôi hiện nay là một nhân viên văn phòng trong 1 công ty in ấn. Cách đây không lâu, gia đình có việc phải cần đến một số tiền lớn nhưng lại không đủ, vẫn cần thêm một khoản nữa. Tôi đã chạy khắp nơi để vay mượn người thân, bạn bè. Nhưng kinh tế đang khủng hoảng nên không ai giúp được tôi. Tôi không dám đi vay của các đối tượng cho vay nặng lại vì lại suất quá cao. Ngân hàng thì yêu cầu hồ sơ, thủ tục rất nhiêu khê. Trong lúc đang bối rối và hoang mang thì may mắn thay tôi có một người bạn đã giới thiệu cho tôi đến nhờ sự giúp đỡ của DONGSHOPSUN. Và sau khi trình bày hoàn cảnh, tôi đã được giải quyết hồ sơ nhanh chóng. Tôi đã dùng tiền đó để lo cho công việc gia đình và tôi thật sự biết ơn sự giúp đỡ của DONGSHOPSUN vào thời điểm đó. Tôi hy vọng sẽ có nhiều người như tôi sẽ nhận được giúp đỡ từ DONGSHOPSUN để có thể giải quyết các khó khăn trong cuộc sống của mình.', '1', '2015-05-13 17:19:28');
INSERT INTO `jv-it_news` VALUES ('9', '', 'Chị Nguyễn Thị Diễm Loan – Quận Tân Phú', '', '', 'Mình luôn quan tâm đến sức khoẻ của cả gia đình. Nhưng thật sự vì công việc mình không thể lo lắng chuyện ăn uống cho gia đình 1 cách tốt nhất. Thông thường mình đi chợ vào sáng sớm và sơ chế thức ăn sẵn để tối về nấu ăn,vì là nhân viên văn phòng có nhiều hôm mình về rất trễ. Với khí hậu nóng bức như thế này thức ăn thất sự không đảm bảo nữa. Vì lo cho sức khỏe và bữa ăn ngon của gia đình , tôi cần phải có 1 cái tủ lạnh để thức ăn. Nhưng giờ mà mua tủ lạnh thì khoản tiền dành dụm sẽ không đủ khi vợ chồng con cái ốm đau. Tôi đã suy nghĩ , băn khoăn rất nhiều. Sau khi đi uống cà phê với người bạn thân,cô ấy đã giới thiệu về DONGSHOPSUN. Tôi đã liên lạc và hẹn gặp tại công ty và tôi đã được nhận số tiền mong muốn, chắc chắn DONGSHOPSUN sẽ là lựa chọn đầu tiên của tôi khi muốn mua sản phẩm mắc tiền cho gia đình nhỏ của mình.', '1', '2015-05-13 17:20:01');
INSERT INTO `jv-it_news` VALUES ('10', '', 'Anh Lê Tấn Lợi - F.7- Q3 -TP.HCM', '', '', 'Là người đàn ông tôi luôn muốn làm những gì tốt nhất cho gia đình. Mọi chuyện tưởng chừng khó khăn cho đến khi tôi biết đến dịch vụ của DONGSHOPSUN. Thủ tục đơn giản,thời gian chờ nhanh chóng đã làm tôi thoải mái khi đến với dịch vụ này của công ty. DONGSHOPSUN sẽ là lựa chọn tối ưu của tôi khi gặp vấn đề về tài chính.', '1', '2015-05-13 17:20:33');
INSERT INTO `jv-it_news` VALUES ('11', '', 'Tác giả - trang chính', '', '', 'Ông bà ta thường nói có \"An cư thì mới lạc nghiệp”, ổn định nơi ăn chốn ở thì gia đình êm ấm, công việc thuận buồm xuôi gió. Có lẽ vì thế mua được một căn hộ để ổn định cuộc sống là ước mơ của rất nhiều cặp vợ chồng. Tuy nhiên, không phải cặp vợ chồng trẻ nào cũng có khả năng mua ngay căn hộ mình mong muốn, mà một trong những cản trở lớn nhất là vấn đề tài chính.', '0', '2015-05-18 09:46:40');

-- ----------------------------
-- Table structure for `jv-it_static_pages`
-- ----------------------------
DROP TABLE IF EXISTS `jv-it_static_pages`;
CREATE TABLE `jv-it_static_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jv-it_static_pages
-- ----------------------------
INSERT INTO `jv-it_static_pages` VALUES ('2', 'Giới thiệu về Dong Shop Sun', 'gioi-thieu-ve-dong-shop-sun', '<div class=\"title_main\">    \r\n \r\n \r\n \r\n \r\n	<div class=\"line-left line-homepage1\">&nbsp;</div>    <span class=\"text_label_left\">Giới thiệu về</span>    <span class=\"text_label_right\">Dong Shop Sun</span>    \r\n \r\n \r\n \r\n \r\n	<div class=\"line-right line-homepage2\">&nbsp;</div></div>\r\n<div class=\"title_main\"><span class=\"text_label_right\"></span></div>\r\n<div class=\"clearfix\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span class=\"text_label_right\" [removed]=\"\" bold;\"=\"\" style=\"text-align: center;\">DONG SHOP SUN</span><span style=\"text-align: center;\"> được thành lập với sứ mạng: trở thành đối tác hỗ trợ tài chính đáng tin cậy cho Quý khách hàng.</span></div>\r\n<div class=\"clearfix\"><span style=\"text-align: center;\">Là công ty Việt Nam, tuy nhiên chúng tôi có một quy trình quản lý và làm việc vô cùng nghiêm túc, minh bạch, tận tụy với tác phong Nhật Bản được mang đến bởi những quản lý là chuyên gia người Nhật. Chúng tôi kinh doanh với tâm nguyện mang đến những lợi ích ưu việt nhất cho Quý khách.</span></div>\r\n<div class=\"menu-main\"> \r\n \r\n \r\n	<div class=\"col-md-3 banner-left\"><a href=\"http://www.dongshopsun.vn/landingpage/\" target=\"_blank\" class=\"foo\"><img src=\"../../../assets/uploads/editor/lienhe_normal.png\" /><img src=\"../../../assets/uploads/editor/lienhe_hover.png\" /></a></div>\r\n	<div class=\"col-md-3 banner-left\"><a target=\"_blank\" href=\"http://www.dongshopsun.vn/landingpage/\" class=\"foo\"><img src=\"../../../assets/uploads/editor/cachthucthanhtoan_normal.png\" /><img src=\"../../../assets/uploads/editor/cachthucthanhtoan_hover.png\" /></a></div> \r\n \r\n	<div class=\"col-md-3 banner-left\"><a href=\"http://www.dongshopsun.vn/landingpage/\" target=\"_blank\" class=\"foo\"><img src=\"../../../assets/uploads/editor/yeucaucanthiet_normal.png\" /><img src=\"../../../assets/uploads/editor/yeucaucanthiet_hover.png\" /></a></div> \r\n \r\n	<div class=\"col-md-3 banner-left\"><a target=\"_blank\" href=\"http://www.dongshopsun.vn/landingpage/\" class=\"foo\"><img src=\"../../../assets/uploads/editor/quytrinhthutuc_normal.png\" /><img src=\"../../../assets/uploads/editor/quytrinhthutuc_hover.png\" /></a></div></div>', '0', '2015-05-19 16:01:02');
INSERT INTO `jv-it_static_pages` VALUES ('1', 'Nội dung thủ tục thực hiện', 'thu-tuc-thuc-hien', '<div class=\"procedures-content\"> \r\n \r\n \r\n \r\n	<div class=\"guide\">  \r\n  \r\n  \r\n  \r\n		<li>   \r\n   \r\n   \r\n   \r\n			<p>Quý khách sẽ được kiểm tra vay tiền theo thao tác dưới :</p></li></div> \r\n \r\n \r\n \r\n	<ul>    \r\n  \r\n  \r\n  \r\n  \r\n		<li>    \r\n   \r\n   \r\n   \r\n   \r\n			<p>Nộp Các Giấy Tờ Tùy Thân</p>    </li>    <img src=\"../../../assets/uploads/editor/arrow.png\" alt=\"\" [removed]=\"float: none; margin: 0px;\" />   \r\n  \r\n  \r\n  \r\n  \r\n		<li>    \r\n   \r\n   \r\n   \r\n   \r\n			<p>Xác Nhận Thế Chấp</p>    </li>    <img src=\"../../../assets/uploads/editor/arrow.png\" alt=\"\" [removed]=\"float: none; margin: 0px;\" />    \r\n  \r\n  \r\n  \r\n  \r\n		<li>    \r\n   \r\n   \r\n   \r\n   \r\n			<p>Giải Thích Về Việc Hoàn Trả</p>    </li>    <img src=\"../../../assets/uploads/editor/arrow.png\" alt=\"\" [removed]=\"float: none; margin: 0px;\" />    \r\n  \r\n  \r\n  \r\n  \r\n		<li>    \r\n   \r\n   \r\n   \r\n   \r\n			<p>Điền Vào Đơn Đăng Ký</p>    </li>    <img src=\"../../../assets/uploads/editor/arrow.png\" alt=\"\" [removed]=\"float: none; margin: 0px;\" />    \r\n  \r\n  \r\n  \r\n  \r\n		<li>    \r\n   \r\n   \r\n   \r\n   \r\n			<p>Kiểm Tra ( Chứng Thực Giấy Tờ )</p>    </li>    <img src=\"../../../assets/uploads/editor/arrow.png\" alt=\"\" [removed]=\"float: none; margin: 0px;\" />  \r\n  \r\n  \r\n  \r\n  \r\n		<li>    \r\n   \r\n   \r\n   \r\n   \r\n			<p>Cung Cấp Số Tiền Cho Vay</p>    </li> \r\n \r\n \r\n \r\n	</ul></div>\r\n<div class=\"box_guide\"> \r\n	<div class=\"inner procedures-content guide\">  \r\n		<li>   \r\n			<p>Hướng dẫn về những thứ cần mang theo :</p></li>  \r\n		<div class=\"guide-bring\">   \r\n			<p>Giấy tờ chứng minh bản thân: CMND, Giấy ph&eacute;p lái xe, Giấy khám sức khỏe, KT3, Hộ chiếu.</p>   \r\n			<p>Phiếu yêu cầu thanh toán tiền điện thoại (Điện thoại bàn)</p>   \r\n			<p>Giấy tờ chứng minh thu nhập : Bản kê khai mức lương, Hợp đồng lao động, Bản kê khai ngân hàng.</p>   \r\n			<p>Giấy tờ thế chấp : Giấy đăng ký xe máy, Hợp đồng mua bán xe máy.</p></div></div></div>', '0', '2015-05-19 16:47:20');
INSERT INTO `jv-it_static_pages` VALUES ('3', 'Nội dung Footer', 'noi-dung-footer', '<div class=\"col-md-2 footer-logo\">    <a href=\"&lt;?= PATH_URL ?&gt;\">        <img src=\"../../../assets/uploads/editor/logo_footer.png\" /></a></div>\r\n<div class=\"col-md-4 contact-footer\">    \r\n	<p class=\"name-branch\">DONG SHOP SUN COMPANY LIMITED</p>    \r\n	<p class=\"address-branch\">185-187 Nguyễn Cư Trinh, Q.1, Tp.HCM</p>    \r\n	<div class=\"mobile-branch custom-branch\">        <img style=\"margin-bottom: 2px;\" src=\"../../../assets/uploads/editor/phone.png\" /> 08-3838-8383 &nbsp;&nbsp;&nbsp;\r\n        <img style=\"margin-bottom: 2px;\" src=\"../../../assets/uploads/editor/website.png\" /> dongshopsun.vn\r\n    </div>    \r\n	<div class=\"email-branch custom-branch\">        \r\n		<div><img src=\"../../../assets/uploads/editor/mail.png\" /> hotro@dongshopsun.vn</div>\r\n		<div><br />\r\n			</div>    </div></div>', '0', '2015-05-19 17:38:24');
INSERT INTO `jv-it_static_pages` VALUES ('4', 'Admin Help', 'admin-help', '<p><span style=\"font-size: 36pt;\">I. BUTTON USAGE</span></p>\r\n<p><img src=\"../../../assets/uploads/editor/button.png\" alt=\"\" border=\"0\" style=\"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;\" /></p>\r\n<p><span style=\"font-size: 36pt;\">II. General page\'s explanation</span></p>\r\n<p>&nbsp;<img src=\"../../../assets/uploads/editor/Page.png\" alt=\"\" border=\"0\" style=\"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: -webkit-xxx-large;\">III. Creat content page\'s explanation</span></p>\r\n<p><img src=\"../../../assets/uploads/editor/Content.png\" alt=\"\" border=\"0\" style=\"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;\" /></p>\r\n<p><img src=\"../../../assets/uploads/editor/Hoi dap.png\" alt=\"\" border=\"0\" style=\"margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;\" /></p>', '0', '2015-05-20 13:46:45');
