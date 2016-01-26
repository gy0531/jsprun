/*
Navicat MySQL Data Transfer

Source Server         : jsprun_175
Source Server Version : 50166
Source Host           : 192.168.0.175:3306
Source Database       : jsprun

Target Server Type    : MYSQL
Target Server Version : 50166
File Encoding         : 65001

Date: 2016-01-26 11:42:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `jrun_access`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_access`;
CREATE TABLE `jrun_access` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowview` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) NOT NULL DEFAULT '0',
  `allowreply` tinyint(1) NOT NULL DEFAULT '0',
  `allowgetattach` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostattach` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_access
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_activities`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_activities`;
CREATE TABLE `jrun_activities` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `starttimefrom` int(10) unsigned NOT NULL DEFAULT '0',
  `starttimeto` int(10) unsigned NOT NULL DEFAULT '0',
  `place` char(40) NOT NULL DEFAULT '',
  `class` char(25) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `uid` (`uid`,`starttimefrom`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_activities
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_activityapplies`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_activityapplies`;
CREATE TABLE `jrun_activityapplies` (
  `applyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` char(200) NOT NULL DEFAULT '',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `payment` mediumint(8) NOT NULL DEFAULT '0',
  `contact` char(200) NOT NULL,
  PRIMARY KEY (`applyid`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `tid` (`tid`) USING BTREE,
  KEY `dateline` (`tid`,`dateline`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_activityapplies
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_adminactions`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_adminactions`;
CREATE TABLE `jrun_adminactions` (
  `admingid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `disabledactions` text NOT NULL,
  PRIMARY KEY (`admingid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_adminactions
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_admingroups`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_admingroups`;
CREATE TABLE `jrun_admingroups` (
  `admingid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `alloweditpost` tinyint(1) NOT NULL DEFAULT '0',
  `alloweditpoll` tinyint(1) NOT NULL DEFAULT '0',
  `allowstickthread` tinyint(1) NOT NULL DEFAULT '0',
  `allowmodpost` tinyint(1) NOT NULL DEFAULT '0',
  `allowdelpost` tinyint(1) NOT NULL DEFAULT '0',
  `allowmassprune` tinyint(1) NOT NULL DEFAULT '0',
  `allowrefund` tinyint(1) NOT NULL DEFAULT '0',
  `allowcensorword` tinyint(1) NOT NULL DEFAULT '0',
  `allowviewip` tinyint(1) NOT NULL DEFAULT '0',
  `allowbanip` tinyint(1) NOT NULL DEFAULT '0',
  `allowedituser` tinyint(1) NOT NULL DEFAULT '0',
  `allowmoduser` tinyint(1) NOT NULL DEFAULT '0',
  `allowbanuser` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostannounce` tinyint(1) NOT NULL DEFAULT '0',
  `allowviewlog` tinyint(1) NOT NULL DEFAULT '0',
  `allowbanpost` tinyint(1) NOT NULL DEFAULT '0',
  `disablepostctrl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admingid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_admingroups
-- ----------------------------
INSERT INTO `jrun_admingroups` VALUES ('1', '1', '1', '3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `jrun_admingroups` VALUES ('2', '1', '0', '2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `jrun_admingroups` VALUES ('3', '1', '0', '1', '1', '1', '0', '0', '0', '1', '0', '0', '1', '1', '0', '0', '1', '1');
INSERT INTO `jrun_admingroups` VALUES ('16', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for `jrun_adminnotes`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_adminnotes`;
CREATE TABLE `jrun_adminnotes` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `admin` varchar(15) NOT NULL DEFAULT '',
  `access` tinyint(3) NOT NULL DEFAULT '0',
  `adminid` tinyint(3) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_adminnotes
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_adminsessions`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_adminsessions`;
CREATE TABLE `jrun_adminsessions` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `errorcount` tinyint(1) NOT NULL DEFAULT '0',
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_adminsessions
-- ----------------------------
INSERT INTO `jrun_adminsessions` VALUES ('1', '0.0.0.0', '1453286026', '0');

-- ----------------------------
-- Table structure for `jrun_advertisements`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_advertisements`;
CREATE TABLE `jrun_advertisements` (
  `advid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `targets` text NOT NULL,
  `parameters` text NOT NULL,
  `code` text NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`advid`),
  KEY `available` (`available`,`displayorder`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_advertisements
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_announcements`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_announcements`;
CREATE TABLE `jrun_announcements` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `groups` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `timespan` (`starttime`,`endtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_announcements
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_attachments`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_attachments`;
CREATE TABLE `jrun_attachments` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) unsigned NOT NULL DEFAULT '0',
  `filename` char(100) NOT NULL DEFAULT '',
  `description` char(100) NOT NULL DEFAULT '',
  `filetype` char(50) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` char(100) NOT NULL DEFAULT '',
  `downloads` mediumint(8) NOT NULL DEFAULT '0',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`) USING BTREE,
  KEY `pid` (`pid`,`aid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_attachments
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_attachpaymentlog`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_attachpaymentlog`;
CREATE TABLE `jrun_attachpaymentlog` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `netamount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`,`uid`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `authorid` (`authorid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_attachpaymentlog
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_attachtypes`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_attachtypes`;
CREATE TABLE `jrun_attachtypes` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `extension` char(12) NOT NULL DEFAULT '',
  `maxsize` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_attachtypes
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_banned`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_banned`;
CREATE TABLE `jrun_banned` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `ip1` smallint(3) NOT NULL DEFAULT '0',
  `ip2` smallint(3) NOT NULL DEFAULT '0',
  `ip3` smallint(3) NOT NULL DEFAULT '0',
  `ip4` smallint(3) NOT NULL DEFAULT '0',
  `admin` varchar(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_banned
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_bbcodes`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_bbcodes`;
CREATE TABLE `jrun_bbcodes` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL,
  `replacement` text NOT NULL,
  `example` varchar(255) NOT NULL DEFAULT '',
  `explanation` text NOT NULL,
  `params` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `prompt` text NOT NULL,
  `nest` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_bbcodes
-- ----------------------------
INSERT INTO `jrun_bbcodes` VALUES ('1', '0', 'fly', 'bb_fly.gif', '<marquee width=\"90%\" behavior=\"alternate\" scrollamount=\"3\">{1}</marquee>', '[fly]This is sample text[/fly]', '使内容横向滚动，这个效果类似 HTML 的 marquee 标签，注意：这个效果只在 Internet Explorer 浏览器下有效。', '1', '请输入滚动显示的文字:', '1');
INSERT INTO `jrun_bbcodes` VALUES ('2', '0', 'flash', 'bb_flash.gif', '<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0\" width=\"550\" height=\"400\"><param name=\"allowScriptAccess\" value=\"sameDomain\"><param name=\"movie\" value=\"{1}\"><param name=\"quality\" value=\"high\"><param name=\"bgcolor\" value=\"#ffffff\"><embed src=\"{1}\" quality=\"high\" bgcolor=\"#ffffff\" width=\"550\" height=\"400\" allowScriptAccess=\"sameDomain\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" /></object>', 'Flash Movie', '嵌入 Flash 动画', '1', '请输入 Flash 动画的 URL:', '1');
INSERT INTO `jrun_bbcodes` VALUES ('3', '1', 'qq', 'bb_qq.gif', '<a href=\"http://wpa.qq.com/msgrd?V=1&Uin={1}&amp;Site=[JspRun!]&amp;Menu=yes\" target=\"_blank\"><img src=\"http://wpa.qq.com/pa?p=1:{1}:1\" border=\"0\"></a>', '[qq]688888[/qq]', '显示 QQ 在线状态，点这个图标可以和他（她）聊天', '1', '请输入显示在线状态 QQ 号码:', '1');
INSERT INTO `jrun_bbcodes` VALUES ('4', '0', 'sup', 'bb_sup.gif', '<sup>{1}</sup>', 'X[sup]2[/sup]', '上标', '1', '请输入上标文字：', '1');
INSERT INTO `jrun_bbcodes` VALUES ('5', '0', 'sub', 'bb_sub.gif', '<sub>{1}</sub>', 'X[sub]2[/sub]', '下标', '1', '请输入下标文字：', '1');

-- ----------------------------
-- Table structure for `jrun_buddys`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_buddys`;
CREATE TABLE `jrun_buddys` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `buddyid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `description` char(255) NOT NULL DEFAULT '',
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_buddys
-- ----------------------------
INSERT INTO `jrun_buddys` VALUES ('3', '2', '1453285547', '');

-- ----------------------------
-- Table structure for `jrun_caches`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_caches`;
CREATE TABLE `jrun_caches` (
  `cachename` varchar(32) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `expiration` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`cachename`),
  KEY `expiration` (`type`,`expiration`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_caches
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_creditslog`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_creditslog`;
CREATE TABLE `jrun_creditslog` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fromto` char(15) NOT NULL DEFAULT '',
  `sendcredits` tinyint(1) NOT NULL DEFAULT '0',
  `receivecredits` tinyint(1) NOT NULL DEFAULT '0',
  `send` int(10) unsigned NOT NULL DEFAULT '0',
  `receive` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `operation` char(3) NOT NULL DEFAULT '',
  KEY `uid` (`uid`,`dateline`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_creditslog
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_crons`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_crons`;
CREATE TABLE `jrun_crons` (
  `cronid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('user','system') NOT NULL DEFAULT 'user',
  `name` char(50) NOT NULL DEFAULT '',
  `filename` char(50) NOT NULL DEFAULT '',
  `lastrun` int(10) unsigned NOT NULL DEFAULT '0',
  `nextrun` int(10) unsigned NOT NULL DEFAULT '0',
  `weekday` tinyint(1) NOT NULL DEFAULT '0',
  `day` tinyint(2) NOT NULL DEFAULT '0',
  `hour` tinyint(2) NOT NULL DEFAULT '0',
  `minute` char(36) NOT NULL DEFAULT '',
  PRIMARY KEY (`cronid`),
  KEY `nextrun` (`available`,`nextrun`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_crons
-- ----------------------------
INSERT INTO `jrun_crons` VALUES ('1', '1', 'system', '清空今日发帖数', 'todayposts_daily.jsp', '1453775420', '1453824000', '-1', '-1', '0', '0');
INSERT INTO `jrun_crons` VALUES ('2', '1', 'system', '清空本月在线时间', 'onlinetime_monthly.jsp', '1453280977', '1454256000', '-1', '1', '0', '0');
INSERT INTO `jrun_crons` VALUES ('3', '1', 'system', '每日数据清理', 'cleanup_daily.jsp', '1453775420', '1453843800', '-1', '-1', '5', '30');
INSERT INTO `jrun_crons` VALUES ('4', '1', 'system', '生日统计与邮件祝福', 'birthdays_daily.jsp', '1453775420', '1453824000', '-1', '-1', '0', '0');
INSERT INTO `jrun_crons` VALUES ('5', '1', 'system', '主题回复通知', 'notify_daily.jsp', '1453775420', '1453842000', '-1', '-1', '5', '00');
INSERT INTO `jrun_crons` VALUES ('6', '1', 'system', '每日公告清理', 'announcements_daily.jsp', '1453775420', '1453824000', '-1', '-1', '0', '0');
INSERT INTO `jrun_crons` VALUES ('7', '1', 'system', '限时操作清理', 'threadexpiries_hourly.jsp', '1453775420', '1453842000', '-1', '-1', '5', '0');
INSERT INTO `jrun_crons` VALUES ('8', '1', 'system', '论坛推广清理', 'promotions_hourly.jsp', '1453775420', '1453824000', '-1', '-1', '0', '00');
INSERT INTO `jrun_crons` VALUES ('9', '1', 'system', '每月主题清理', 'cleanup_monthly.jsp', '1453280977', '1454277600', '-1', '1', '6', '00');
INSERT INTO `jrun_crons` VALUES ('12', '1', 'system', '道具自动补货', 'magics_daily.jsp', '1453775420', '1453824000', '-1', '-1', '0', '0');
INSERT INTO `jrun_crons` VALUES ('13', '1', 'system', '每日验证问答更新', 'secqaa_daily.jsp', '1453775420', '1453845600', '-1', '-1', '6', '0');
INSERT INTO `jrun_crons` VALUES ('14', '1', 'system', '每日标签更新', 'tags_daily.jsp', '1453775420', '1453824000', '-1', '-1', '0', '0');
INSERT INTO `jrun_crons` VALUES ('15', '0', 'system', '勋章自动授予', 'awardmedals.jsp', '0', '1170600452', '-1', '-1', '0', '0');

-- ----------------------------
-- Table structure for `jrun_debateposts`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_debateposts`;
CREATE TABLE `jrun_debateposts` (
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `stand` tinyint(1) NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `voters` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `voterids` text NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `pid` (`pid`,`stand`) USING BTREE,
  KEY `tid` (`tid`,`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_debateposts
-- ----------------------------
INSERT INTO `jrun_debateposts` VALUES ('9', '0', '4', '2', '1453289767', '0', '');

-- ----------------------------
-- Table structure for `jrun_debates`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_debates`;
CREATE TABLE `jrun_debates` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `affirmdebaters` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `negadebaters` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `affirmvotes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `negavotes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `umpire` varchar(15) NOT NULL DEFAULT '',
  `winner` tinyint(1) NOT NULL DEFAULT '0',
  `bestdebater` varchar(50) NOT NULL DEFAULT '',
  `affirmpoint` text NOT NULL,
  `negapoint` text NOT NULL,
  `umpirepoint` text NOT NULL,
  `affirmvoterids` text NOT NULL,
  `negavoterids` text NOT NULL,
  `affirmreplies` mediumint(8) unsigned NOT NULL,
  `negareplies` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `uid` (`uid`,`starttime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_debates
-- ----------------------------
INSERT INTO `jrun_debates` VALUES ('4', '2', '1453289735', '0', '0', '0', '1', '0', 'test', '0', '', 'aa', 'bb', '', '2	', '', '0', '0');

-- ----------------------------
-- Table structure for `jrun_failedlogins`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_failedlogins`;
CREATE TABLE `jrun_failedlogins` (
  `ip` char(15) NOT NULL DEFAULT '',
  `count` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_failedlogins
-- ----------------------------
INSERT INTO `jrun_failedlogins` VALUES ('0.0.0.0', '1', '1453290022');

-- ----------------------------
-- Table structure for `jrun_faqs`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_faqs`;
CREATE TABLE `jrun_faqs` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `fpid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `identifier` varchar(20) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fpid` (`fpid`,`displayorder`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_faqs
-- ----------------------------
INSERT INTO `jrun_faqs` VALUES ('1', '0', '1', '', '', '用户须知', '');
INSERT INTO `jrun_faqs` VALUES ('2', '1', '1', '', '', '我必须要注册吗？', '这取决于管理员如何设置 JspRun! 论坛的用户组权限选项，您甚至有可能必须在注册成正式用户后后才能浏览帖子。当然，在通常情况下，您至少应该是正式用户才能发新帖和回复已有帖子。请 <a href=\"register.jsp\" target=\"_blank\">点击这里</a> 免费注册成为我们的新用户！\r\n<br /><br />强烈建议您注册，这样会得到很多以游客身份无法实现的功能。');
INSERT INTO `jrun_faqs` VALUES ('3', '1', '2', 'login', '登录帮助', '我如何登录论坛？', '如果您已经注册成为该论坛的会员，哪么您只要通过访问页面右上的<a href=\"logging.jsp?action=login\" target=\"_blank\">登录</a>，进入登陆界面填写正确的用户名和密码（如果您设有安全提问，请选择正确的安全提问并输入对应的答案），点击“提交”即可完成登陆如果您还未注册请点击这里。<br /><br />\r\n如果需要保持登录，请选择相应的 Cookie 时间，在此时间范围内您可以不必输入密码而保持上次的登录状态。');
INSERT INTO `jrun_faqs` VALUES ('4', '1', '3', '', '', '忘记我的登录密码，怎么办？', '当您忘记了用户登录的密码，您可以通过注册时填写的电子邮箱重新设置一个新的密码。点击登录页面中的 <a href=\"member.jsp?action=lostpasswd\" target=\"_blank\">取回密码</a>，按照要求填写您的个人信息，系统将自动发送重置密码的邮件到您注册时填写的 Email 信箱中。如果您的 Email 已失效或无法收到信件，请与论坛管理员联系。');
INSERT INTO `jrun_faqs` VALUES ('5', '0', '2', '', '', '帖子相关操作', '');
INSERT INTO `jrun_faqs` VALUES ('6', '0', '3', '', '', '基本功能操作', '');
INSERT INTO `jrun_faqs` VALUES ('7', '0', '4', '', '', '其他相关问题', '');
INSERT INTO `jrun_faqs` VALUES ('8', '1', '4', '', '', '我如何使用个性化头像', '在<a href=\"memcp.jsp\" target=\"_blank\">控制面板</a>中的“编辑个人资料”，有一个“头像”的选项，可以使用论坛自带的头像或者自定义的头像。');
INSERT INTO `jrun_faqs` VALUES ('9', '1', '5', '', '', '我如何修改登录密码', '在<a href=\"memcp.jsp\" target=\"_blank\">控制面板</a>中的“编辑个人资料”，填写“原密码”，“新密码”，“确认新密码”。点击“提交”，即可修改。');
INSERT INTO `jrun_faqs` VALUES ('10', '1', '6', '', '', '我如何使用个性化签名和昵称', '在<a href=\"memcp.jsp\" target=\"_blank\">控制面板</a>中的“编辑个人资料”，有一个“昵称”和“个人签名”的选项，可以在此设置。');
INSERT INTO `jrun_faqs` VALUES ('11', '5', '1', '', '', '我如何发表新主题', '在论坛版块中，点“新帖”，如果有权限，您可以看到有“投票，悬赏，活动，交易”，点击即可进入功能齐全的发帖界面。\r\n<br /><br />注意：一般论坛都设置为高级别的用户组才能发布这四类特殊主题。如发布普通主题，直接点击“新帖”，当然您也可以使用版块下面的“快速发帖”发表新帖(如果此选项打开)。一般论坛都设置为需要登录后才能发帖。');
INSERT INTO `jrun_faqs` VALUES ('12', '5', '2', '', '', '我如何发表回复', '回复有分三种：第一、贴子最下方的快速回复； 第二、在您想回复的楼层点击右下方“回复”； 第三、完整回复页面，点击本页“新帖”旁边的“回复”。');
INSERT INTO `jrun_faqs` VALUES ('13', '5', '3', '', '', '我如何编辑自己的帖子', '在帖子的右下角，有编辑，回复，报告等选项，点击编辑，就可以对帖子进行编辑。');
INSERT INTO `jrun_faqs` VALUES ('14', '5', '4', '', '', '我如何出售购买主题', '<li>出售主题：\r\n当您进入发贴界面后，如果您所在的用户组有发买卖贴的权限，在“售价(金钱)”后面填写主题的价格，这样其他用户在查看这个帖子的时候就需要进入交费的过程才可以查看帖子。</li>\r\n<li>购买主题：\r\n浏览你准备购买的帖子，在帖子的相关信息的下面有[查看付款记录] [购买主题] [返回上一页] \r\n等链接，点击“购买主题”进行购买。</li>');
INSERT INTO `jrun_faqs` VALUES ('15', '5', '5', '', '', '我如何出售购买附件', '<li>上传附件一栏有个售价的输入框，填入出售价格即可实现需要支付才可下载附件的功能。</li>\r\n<li>点击帖子中[购买附件]按钮或点击附件的下载链接会跳转至附件购买页面，确认付款的相关信息后点提交按钮，即可得到附件的下载权限。只需购买一次，就有该附件的永远下载权限。</li>');
INSERT INTO `jrun_faqs` VALUES ('16', '5', '6', '', '', '我如何上传附件', '<li>发表新主题的时候上传附件，步骤为：写完帖子标题和内容后点上传附件右方的浏览，然后在本地选择要上传附件的具体文件名，最后点击发表话题。</li>\r\n<li>发表回复的时候上传附件，步骤为：写完回复楼主的内容，然后点上传附件右方的浏览，找到需要上传的附件，点击发表回复。</li>');
INSERT INTO `jrun_faqs` VALUES ('17', '5', '7', '', '', '我如何实现发帖时图文混排效果', '<li>发表新主题的时候点击上传附件左侧的“[插入]”链接把附件标记插入到帖子中适当的位置即可。</li>');
INSERT INTO `jrun_faqs` VALUES ('18', '5', '8', 'JspRuncode', 'JspRun!代码', '我如何使用JspRun!代码', '<table width=\"99%\" cellpadding=\"2\" cellspacing=\"2\">\r\n  <tr>\r\n    <th width=\"50%\">JspRun!代码</th>\r\n    <th width=\"402\">效果</th>\r\n  </tr>\r\n  <tr>\r\n    <td>[b]粗体文字 Abc[/b]</td>\r\n    <td><strong>粗体文字 Abc</strong></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[i]斜体文字 Abc[/i]</td>\r\n    <td><em>斜体文字 Abc</em></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[u]下划线文字 Abc[/u]</td>\r\n    <td><u>下划线文字 Abc</u></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[color=red]红颜色[/color]</td>\r\n    <td><font color=\"red\">红颜色</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[size=3]文字大小为 3[/size] </td>\r\n    <td><font size=\"3\">文字大小为 3</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[font=仿宋]字体为仿宋[/font] </td>\r\n    <td><font face=\"仿宋\">字体为仿宋</font></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[align=Center]内容居中[/align] </td>\r\n    <td><div align=\"center\">内容居中</div></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[url]http://www.jsprun.com[/url]</td>\r\n    <td><a href=\"http://www.jsprun.com\" target=\"_blank\">http://www.jsprun.com</a>（超级链接）</td>\r\n  </tr>\r\n  <tr>\r\n    <td>[url=http://www.JspRun.net]JspRun! 论坛[/url]</td>\r\n    <td><a href=\"http://www.JspRun.net\" target=\"_blank\">JspRun! 论坛</a>（超级链接）</td>\r\n  </tr>\r\n  <tr>\r\n    <td>[email]myname@mydomain.com[/email]</td>\r\n    <td><a href=\"mailto:myname@mydomain.com\">myname@mydomain.com</a>（E-mail链接）</td>\r\n  </tr>\r\n  <tr>\r\n    <td>[email=support@JspRun.net]JspRun! 技术支持[/email]</td>\r\n    <td><a href=\"mailto:support@JspRun.net\">JspRun! 技术支持（E-mail链接）</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[quote]JspRun! 是由北京飞速创想科技有限公司开发的论坛软件[/quote] </td>\r\n    <td><div style=\"font-size: 12px\"><br /><br /><div class=\"quote\"><h5>引用:</h5><blockquote>原帖由 <i>admin</i> 于 2006-12-26 08:45 发表<br />JspRun! 是由北京飞速创想科技有限公司开发的论坛软件</blockquote></div></td>\r\n  </tr>\r\n   <tr>\r\n    <td>[code]JspRun! 是由北京飞速创想科技有限公司开发的论坛软件[/code] </td>\r\n    <td><div style=\"font-size: 12px\"><br /><br /><div class=\"blockcode\"><h5>代码:</h5><code id=\"code0\">JspRun! 是由北京飞速创想科技有限公司开发的论坛软件</code></div></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[hide]隐藏内容 Abc[/hide]</td>\r\n    <td>效果:只有当浏览者回复本帖时，才显示其中的内容，否则显示为“<b>**** 隐藏信息 跟帖后才能显示 *****</b>”</td>\r\n  </tr>\r\n  <tr>\r\n    <td>[hide=20]隐藏内容 Abc[/hide]</td>\r\n    <td>效果:只有当浏览者积分高于 20 点时，才显示其中的内容，否则显示为“<b>**** 隐藏信息 积分高于 20 点才能显示 ****</b>”</td>\r\n  </tr>\r\n  <tr>\r\n    <td>[list][*]列表项 #1[*]列表项 #2[*]列表项 #3[/list]</td>\r\n    <td><ul>\r\n      <li>列表项 ＃1</li>\r\n      <li>列表项 ＃2</li>\r\n      <li>列表项 ＃3 </li>\r\n    </ul></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[img]http://www.JspRun.net/images/default/logo.gif[/img] </td>\r\n    <td>帖子内显示为：<img src=\"http://www.JspRun.net/images/default/logo.gif\" /></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[img=88,31]http://www.JspRun.net/images/logo.gif[/img] </td>\r\n    <td>帖子内显示为：<img src=\"http://www.JspRun.net/images/logo.gif\" /></td>\r\n  </tr> <tr>\r\n    <td>[media=400,300,1]多媒体 URL[/media]</td>\r\n    <td>帖子内嵌入多媒体，宽 400 高 300 自动播放</td>\r\n  </tr>\r\n <tr>\r\n    <td>[fly]飞行的效果[/fly]</td>\r\n    <td><marquee scrollamount=\"3\" behavior=\"alternate\" width=\"90%\">飞行的效果</marquee></td>\r\n  </tr>\r\n  <tr>\r\n    <td>[flash]Flash网页地址 [/flash] </td>\r\n    <td>帖子内嵌入 Flash 动画</td>\r\n  </tr>\r\n  <tr>\r\n    <td>[qq]123456789[/qq]</td>\r\n    <td>在帖子内显示 QQ 在线状态，点这个图标可以和他（她）聊天</td>\r\n  </tr>\r\n  <tr>\r\n    <td>X[sup]2[/sup]</td>\r\n    <td>X<sup>2</sup></td>\r\n  </tr>\r\n  <tr>\r\n    <td>X[sub]2[/sub]</td>\r\n    <td>X<sub>2</sub></td>\r\n  </tr>\r\n  \r\n</table>');
INSERT INTO `jrun_faqs` VALUES ('19', '6', '1', '', '', '我如何使用短消息功能', '您登录后，点击导航栏上的短消息按钮，即可进入短消息管理。\r\n点击[发送短消息]按钮，在\"发送到\"后输入收信人的用户名，填写完标题和内容，点提交(或按 Ctrl+Enter 发送)即可发出短消息。\r\n<br /><br />如果要保存到发件箱，以在提交前勾选\"保存到发件箱中\"前的复选框。\r\n<ul>\r\n<li>点击收件箱可打开您的收件箱查看收到的短消息。</li>\r\n<li>点击发件箱可查看保存在发件箱里的短消息。 </li>\r\n<li>点击已发送来查看对方是否已经阅读您的短消息。 </li>\r\n<li>点击搜索短消息就可通过关键字，发信人，收信人，搜索范围，排序类型等一系列条件设定来找到您需要查找的短消息。 </li>\r\n<li>点击导出短消息可以将自己的短消息导出htm文件保存在自己的电脑里。 </li>\r\n<li>点击忽略列表可以设定忽略人员，当这些被添加的忽略用户给您发送短消息时将不予接收。</li>\r\n</ul>');
INSERT INTO `jrun_faqs` VALUES ('20', '6', '2', '', '', '我如何向好友群发短消息', '登录论坛后，点击短消息，然后点发送短消息，如果有好友的话，好友群发后面点击全选，可以给所有的好友群发短消息。');
INSERT INTO `jrun_faqs` VALUES ('21', '6', '3', '', '', '我如何查看论坛会员数据', '点击导航栏上面的会员，然后显示的是此论坛的会员数据。注：需要论坛管理员开启允许你查看会员资料才可看到。');
INSERT INTO `jrun_faqs` VALUES ('22', '6', '4', '', '', '我如何使用搜索', '点击导航栏上面的搜索，输入搜索的关键字并选择一个范围，就可以检索到您有权限访问论坛中的相关的帖子。');
INSERT INTO `jrun_faqs` VALUES ('23', '6', '5', '', '', '我如何使用“我的”功能', '<li>会员必须首先<a href=\"logging.jsp?action=login\" target=\"_blank\">登录</a>，没有用户名的请先<a href=\"register.jsp\" target=\"_blank\">注册</a>；</li>\r\n<li>登录之后在论坛的左上方会出现一个“我的”的超级链接，点击这个链接之后就可进入到有关于您的信息。</li>');
INSERT INTO `jrun_faqs` VALUES ('24', '7', '1', '', '', '我如何向管理员报告帖子', '打开一个帖子，在帖子的右下角可以看到：“编辑”、“引用”、“报告”、“评分”、“回复”等等几个按钮，点击其中的“报告”按钮进入报告页面，填写好“我的意见”，单击“报告”按钮即可完成报告某个帖子的操作。');
INSERT INTO `jrun_faqs` VALUES ('25', '7', '2', '', '', '我如何“打印”，“推荐”，“订阅”，“收藏”帖子', '当你浏览一个帖子时，在它的右上角可以看到：“打印”、“推荐”、“订阅”、“收藏”，点击相对应的文字连接即可完成相关的操作。');
INSERT INTO `jrun_faqs` VALUES ('26', '7', '3', '', '', '我如何设置论坛好友', '设置论坛好友有3种简单的方法。\r\n<ul>\r\n<li>当您浏览帖子的时候可以点击“发表时间”右侧的“加为好友”设置论坛好友。</li>\r\n<li>当您浏览某用户的个人资料时，可以点击头像下方的“加为好友”设置论坛好友。</li>\r\n<li>您也可以在控制面板中的好友列表增加您的论坛好友。</li>\r\n<ul>');
INSERT INTO `jrun_faqs` VALUES ('27', '7', '4', '', '', '我如何使用RSS订阅', '在论坛的首页和进入版块的页面的右上角就会出现一个rss订阅的小图标<img src=\"images/common/xml.gif\" border=\"0\">，鼠标点击之后将出现本站点的rss地址，你可以将此rss地址放入到你的rss阅读器中进行订阅。');
INSERT INTO `jrun_faqs` VALUES ('28', '7', '5', '', '', '我如何清除Cookies', 'cookie是由浏览器保存在系统内的，在论坛的右下角提供有\"清除 Cookies\"的功能，点击后即可帮您清除系统内存储的Cookies。 <br /><br />\r\n以下介绍3种常用浏览器的Cookies清除方法(注：此方法为清除全部的Cookies,请谨慎使用)\r\n<ul>\r\n<li>Internet Explorer: 工具（选项）内的Internet选项→常规选项卡内，IE6直接可以看到删除Cookies的按钮点击即可，IE7为“浏 览历史记录”选项内的删除点击即可清空Cookies。对于Maxthon,腾讯TT等IE核心浏览器一样适用。 </li>\r\n<li>FireFox:工具→选项→隐私→Cookies→显示Cookie里可以对Cookie进行对应的删除操作。 </li>\r\n<li>Opera:工具→首选项→高级→Cookies→管理Cookies即可对Cookies进行删除的操作。</li>\r\n</ul>');
INSERT INTO `jrun_faqs` VALUES ('29', '7', '6', '', '', '我如何联系管理员', '您可以通过论坛底部右下角的“联系我们”链接快速的发送邮件与我们联系。也可以通过管理团队中的用户资料发送短消息给我们。');
INSERT INTO `jrun_faqs` VALUES ('30', '7', '7', '', '', '我如何开通个人空间', '如果您有权限开通“我的个人空间”，当用户登录论坛以后在论坛首页，用户名的右方点击开通我的个人空间，进入个人空间的申请页面。');
INSERT INTO `jrun_faqs` VALUES ('31', '7', '8', '', '', '我如何将自己的主题加入个人空间', '如果您有权限开通“我的个人空间”，在您发表的主题上方点击“加入个人空间”，您发表的主题以及回复都会加入到您空间的日志里。');
INSERT INTO `jrun_faqs` VALUES ('32', '5', '9', 'smilies', '表情', '我如何使用表情代码', '表情是一些用字符表示的表情符号，如果打开表情功能，JspRun! 会把一些符号转换成小图像，显示在帖子中，更加美观明了。目前支持下面这些表情：<br /><br />\r\n<table cellspacing=\"0\" cellpadding=\"4\" width=\"30%\" align=\"center\">\r\n<tr><th width=\"25%\" align=\"center\">表情符号</td>\r\n<th width=\"75%\" align=\"center\">对应图像</td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:)</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/smile.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:(</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/sad.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:D</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/biggrin.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:\\\'(</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/cry.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:@</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/huffy.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:o</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/shocked.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:P</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/tongue.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:#</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/shy.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">;P</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/titter.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:L</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/sweat.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:Q</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/mad.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:lol</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/lol.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:hug:</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/hug.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:victory:</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/victory.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:time:</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/time.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:kiss:</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/kiss.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:handshake</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/handshake.gif\" alt=\"\" /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"25%\" align=\"center\">:call:</td>\r\n<td width=\"75%\" align=\"center\"><img src=\"images/smilies/default/call.gif\" alt=\"\" /></td>\r\n</tr>\r\n</table>\r\n</div></div>\r\n<br />');
INSERT INTO `jrun_faqs` VALUES ('33', '0', '5', '', '', '论坛高级功能使用', '');
INSERT INTO `jrun_faqs` VALUES ('34', '33', '0', 'forwardmessagelist', '', '论坛快速跳转关键字列表', 'JspRun! 支持自定义快速跳转页面，当某些操作完成后，可以不显示提示信息，直接跳转到新的页面，从而方便用户进行下一步操作，避免等待。 在实际使用当中，您根据需要，把关键字添加到快速跳转设置里面(后台 -- 基本设置 --  界面与显示方式 -- [<a href=\"admincp.jsp?action=settings&do=styles&frames=yes\" target=\"_blank\">提示信息跳转设置</a> ])，让某些信息不显示而实现快速跳转。以下是 JspRun! 当中的一些常用信息的关键字:\r\n</br></br>\r\n\r\n<table width=\"99%\" cellpadding=\"2\" cellspacing=\"2\">\r\n  <tr>\r\n    <td width=\"50%\">关键字</td>\r\n    <td width=\"50%\">提示信息页面或者作用</td>\r\n  </tr>\r\n  <tr>\r\n    <td>login_succeed</td>\r\n    <td>登录成功</td>\r\n  </tr>\r\n  <tr>\r\n    <td>logout_succeed</td>\r\n    <td>退出登录成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>thread_poll_succeed</td>\r\n    <td>投票成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>thread_rate_succeed</td>\r\n    <td>评分成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>register_succeed</td>\r\n    <td>注册成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>usergroups_join_succeed</td>\r\n    <td>加入扩展组成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td height=\"22\">usergroups_exit_succeed</td>\r\n    <td>退出扩展组成功</td>\r\n  </tr>\r\n  <tr>\r\n    <td>usergroups_update_succeed</td>\r\n    <td>更新扩展组成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>buddy_update_succeed</td>\r\n    <td>好友更新成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>post_edit_succeed</td>\r\n    <td>编辑帖子成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>post_edit_delete_succeed</td>\r\n    <td>删除帖子成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>post_reply_succeed</td>\r\n    <td>回复成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>post_newthread_succeed</td>\r\n    <td>发表新主题成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>post_reply_blog_succeed</td>\r\n    <td>文集评论发表成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>post_newthread_blog_succeed</td>\r\n    <td>blog 发表成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>profile_avatar_succeed</td>\r\n    <td>头像设置成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>profile_succeed</td>\r\n    <td>个人资料更新成功</td>\r\n  </tr>\r\n    <tr>\r\n    <td>pm_send_succeed</td>\r\n    <td>短消息发送成功</td>\r\n  </tr>\r\n  </tr>\r\n    <tr>\r\n    <td>pm_delete_succeed</td>\r\n    <td>短消息删除成功</td>\r\n  </tr>\r\n  </tr>\r\n    <tr>\r\n    <td>pm_ignore_succeed</td>\r\n    <td>短消息忽略列表更新</td>\r\n  </tr>\r\n    <tr>\r\n    <td>admin_succeed</td>\r\n    <td>管理操作成功〔注意：设置此关键字后，所有管理操作完毕都将直接跳转〕</td>\r\n  </tr>\r\n    <tr>\r\n    <td>admin_succeed_next&nbsp;</td>\r\n    <td>管理成功并将跳转到下一个管理动作</td>\r\n  </tr> \r\n    <tr>\r\n    <td>search_redirect</td>\r\n    <td>搜索完成，进入搜索结果列表</td>\r\n  </tr>\r\n</table>');

-- ----------------------------
-- Table structure for `jrun_favorites`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_favorites`;
CREATE TABLE `jrun_favorites` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_forumfields`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_forumfields`;
CREATE TABLE `jrun_forumfields` (
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `password` varchar(12) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `postcredits` varchar(255) NOT NULL DEFAULT '',
  `replycredits` varchar(255) NOT NULL DEFAULT '',
  `getattachcredits` varchar(255) NOT NULL DEFAULT '',
  `postattachcredits` varchar(255) NOT NULL DEFAULT '',
  `digestcredits` varchar(255) NOT NULL DEFAULT '',
  `redirect` varchar(255) NOT NULL DEFAULT '',
  `attachextensions` varchar(255) NOT NULL DEFAULT '',
  `formulaperm` text NOT NULL,
  `moderators` text NOT NULL,
  `rules` text NOT NULL,
  `threadtypes` text NOT NULL,
  `viewperm` text NOT NULL,
  `postperm` text NOT NULL,
  `replyperm` text NOT NULL,
  `getattachperm` text NOT NULL,
  `postattachperm` text NOT NULL,
  `keywords` text NOT NULL,
  `modrecommend` text NOT NULL,
  `tradetypes` text NOT NULL,
  `typemodels` mediumtext NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_forumfields
-- ----------------------------
INSERT INTO `jrun_forumfields` VALUES ('1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `jrun_forumfields` VALUES ('2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `jrun_forumlinks`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_forumlinks`;
CREATE TABLE `jrun_forumlinks` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `logo` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_forumlinks
-- ----------------------------
INSERT INTO `jrun_forumlinks` VALUES ('1', '0', 'JspRun! 官方论坛', 'http://www.JspRun.net', '提供最新 JspRun! 产品新闻、软件下载与技术交流', 'images/logo.gif');

-- ----------------------------
-- Table structure for `jrun_forumrecommend`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_forumrecommend`;
CREATE TABLE `jrun_forumrecommend` (
  `fid` smallint(6) unsigned NOT NULL,
  `tid` mediumint(8) unsigned NOT NULL,
  `displayorder` tinyint(1) NOT NULL,
  `subject` char(80) NOT NULL,
  `author` char(15) NOT NULL,
  `authorid` mediumint(8) NOT NULL,
  `moderatorid` mediumint(8) NOT NULL,
  `expiration` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `displayorder` (`fid`,`displayorder`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_forumrecommend
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_forums`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_forums`;
CREATE TABLE `jrun_forums` (
  `fid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `fup` smallint(6) unsigned NOT NULL DEFAULT '0',
  `type` enum('group','forum','sub') NOT NULL DEFAULT 'forum',
  `name` char(50) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `threads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `todayposts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lastpost` char(110) NOT NULL DEFAULT '',
  `allowsmilies` tinyint(1) NOT NULL DEFAULT '0',
  `allowhtml` tinyint(1) NOT NULL DEFAULT '0',
  `allowbbcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowimgcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowmediacode` tinyint(1) NOT NULL DEFAULT '0',
  `allowanonymous` tinyint(1) NOT NULL DEFAULT '0',
  `allowshare` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostspecial` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowspecialonly` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `alloweditrules` tinyint(1) NOT NULL DEFAULT '0',
  `recyclebin` tinyint(1) NOT NULL DEFAULT '0',
  `modnewposts` tinyint(1) NOT NULL DEFAULT '0',
  `jammer` tinyint(1) NOT NULL DEFAULT '0',
  `disablewatermark` tinyint(1) NOT NULL DEFAULT '0',
  `inheritedmod` tinyint(1) NOT NULL DEFAULT '0',
  `autoclose` smallint(6) NOT NULL DEFAULT '0',
  `forumcolumns` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `threadcaches` tinyint(1) NOT NULL DEFAULT '0',
  `allowpaytoauthor` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `alloweditpost` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `simple` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `forum` (`status`,`type`,`displayorder`) USING BTREE,
  KEY `fup` (`fup`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_forums
-- ----------------------------
INSERT INTO `jrun_forums` VALUES ('1', '0', 'group', 'JspRun!', '1', '0', '0', '0', '0', '0', '', '0', '0', '1', '1', '1', '0', '1', '63', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0');
INSERT INTO `jrun_forums` VALUES ('2', '1', 'forum', '默认版块', '1', '0', '0', '4', '8', '0', '4	版权声明	1453289767	test', '1', '0', '1', '1', '1', '0', '1', '63', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0');

-- ----------------------------
-- Table structure for `jrun_imagetypes`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_imagetypes`;
CREATE TABLE `jrun_imagetypes` (
  `typeid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `type` enum('smiley','icon','avatar') NOT NULL DEFAULT 'smiley',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `directory` char(100) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_imagetypes
-- ----------------------------
INSERT INTO `jrun_imagetypes` VALUES ('1', '默认表情', 'smiley', '1', 'default');

-- ----------------------------
-- Table structure for `jrun_invites`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_invites`;
CREATE TABLE `jrun_invites` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `inviteip` char(15) NOT NULL,
  `invitecode` char(16) NOT NULL,
  `reguid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `regdateline` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  KEY `uid` (`uid`,`status`) USING BTREE,
  KEY `invitecode` (`invitecode`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_invites
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_itempool`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_itempool`;
CREATE TABLE `jrun_itempool` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL,
  `question` text NOT NULL,
  `answer` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_itempool
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_magiclog`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_magiclog`;
CREATE TABLE `jrun_magiclog` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `magicid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` smallint(6) unsigned NOT NULL DEFAULT '0',
  `price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `targettid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `targetpid` int(10) unsigned NOT NULL DEFAULT '0',
  `targetuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`dateline`) USING BTREE,
  KEY `targetuid` (`targetuid`,`dateline`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_magiclog
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_magicmarket`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_magicmarket`;
CREATE TABLE `jrun_magicmarket` (
  `mid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `magicid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL,
  `price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `num` (`magicid`,`num`) USING BTREE,
  KEY `price` (`magicid`,`price`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_magicmarket
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_magics`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_magics`;
CREATE TABLE `jrun_magics` (
  `magicid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `price` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num` smallint(6) unsigned NOT NULL DEFAULT '0',
  `salevolume` smallint(6) unsigned NOT NULL DEFAULT '0',
  `supplytype` tinyint(1) NOT NULL DEFAULT '0',
  `supplynum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `filename` varchar(50) NOT NULL,
  `magicperm` text NOT NULL,
  PRIMARY KEY (`magicid`),
  UNIQUE KEY `identifier` (`identifier`) USING BTREE,
  KEY `displayorder` (`available`,`displayorder`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_magics
-- ----------------------------
INSERT INTO `jrun_magics` VALUES ('1', '1', '1', '变色卡', 'CCK', '可以变换主题的颜色,并保存24小时', '0', '10', '999', '0', '0', '0', '20', 'magic_color.jsp', '');
INSERT INTO `jrun_magics` VALUES ('2', '1', '3', '金钱卡', 'MOK', '可以随机获得一些金币', '0', '10', '999', '0', '0', '0', '30', 'magic_money.jsp', '');
INSERT INTO `jrun_magics` VALUES ('3', '1', '1', 'IP卡', 'SEK', '可以查看帖子作者的IP', '0', '15', '999', '0', '0', '0', '30', 'magic_see.jsp', '');
INSERT INTO `jrun_magics` VALUES ('4', '1', '1', '提升卡', 'UPK', '可以提升某个主题', '0', '10', '999', '0', '0', '0', '30', 'magic_up.jsp', '');
INSERT INTO `jrun_magics` VALUES ('5', '1', '1', '置顶卡', 'TOK', '可以将主题置顶24小时', '0', '20', '999', '0', '0', '0', '40', 'magic_top.jsp', '');
INSERT INTO `jrun_magics` VALUES ('6', '1', '1', '悔悟卡', 'REK', '可以删除自己的帖子', '0', '10', '999', '0', '0', '0', '30', 'magic_del.jsp', '');
INSERT INTO `jrun_magics` VALUES ('7', '1', '2', '狗仔卡', 'RTK', '查看某个用户是否在线', '0', '15', '999', '0', '0', '0', '30', 'magic_reporter.jsp', '');
INSERT INTO `jrun_magics` VALUES ('8', '1', '1', '沉默卡', 'CLK', '24小时内不能回复', '0', '15', '999', '0', '0', '0', '30', 'magic_close.jsp', '');
INSERT INTO `jrun_magics` VALUES ('9', '1', '1', '喧嚣卡', 'OPK', '使贴子可以回复', '0', '15', '999', '0', '0', '0', '30', 'magic_open.jsp', '');
INSERT INTO `jrun_magics` VALUES ('10', '1', '1', '隐身卡', 'YSK', '可以将自己的帖子匿名', '0', '20', '999', '0', '0', '0', '30', 'magic_hidden.jsp', '');
INSERT INTO `jrun_magics` VALUES ('11', '1', '1', '恢复卡', 'CBK', '将匿名恢复为正常显示的用户名,匿名终结者', '0', '15', '999', '0', '0', '0', '20', 'magic_renew.jsp', '');
INSERT INTO `jrun_magics` VALUES ('12', '1', '1', '移动卡', 'MVK', '可将自已的帖子移动到其他版面（隐含、特殊限定版面除外）', '0', '50', '989', '0', '0', '0', '50', 'magic_move.jsp', '');

-- ----------------------------
-- Table structure for `jrun_medals`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_medals`;
CREATE TABLE `jrun_medals` (
  `medalid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`medalid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_medals
-- ----------------------------
INSERT INTO `jrun_medals` VALUES ('1', 'Medal No.1', '0', 'medal1.gif');
INSERT INTO `jrun_medals` VALUES ('2', 'Medal No.2', '0', 'medal2.gif');
INSERT INTO `jrun_medals` VALUES ('3', 'Medal No.3', '0', 'medal3.gif');
INSERT INTO `jrun_medals` VALUES ('4', 'Medal No.4', '0', 'medal4.gif');
INSERT INTO `jrun_medals` VALUES ('5', 'Medal No.5', '0', 'medal5.gif');
INSERT INTO `jrun_medals` VALUES ('6', 'Medal No.6', '0', 'medal6.gif');
INSERT INTO `jrun_medals` VALUES ('7', 'Medal No.7', '0', 'medal7.gif');
INSERT INTO `jrun_medals` VALUES ('8', 'Medal No.8', '0', 'medal8.gif');
INSERT INTO `jrun_medals` VALUES ('9', 'Medal No.9', '0', 'medal9.gif');
INSERT INTO `jrun_medals` VALUES ('10', 'Medal No.10', '0', 'medal10.gif');

-- ----------------------------
-- Table structure for `jrun_memberfields`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_memberfields`;
CREATE TABLE `jrun_memberfields` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `site` varchar(75) NOT NULL DEFAULT '',
  `alipay` varchar(50) NOT NULL DEFAULT '',
  `icq` varchar(12) NOT NULL DEFAULT '',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `yahoo` varchar(40) NOT NULL DEFAULT '',
  `msn` varchar(40) NOT NULL DEFAULT '',
  `taobao` varchar(40) NOT NULL DEFAULT '',
  `location` varchar(30) NOT NULL DEFAULT '',
  `customstatus` varchar(30) NOT NULL DEFAULT '',
  `medals` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `avatarwidth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `avatarheight` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bio` text NOT NULL,
  `sightml` text NOT NULL,
  `ignorepm` text NOT NULL,
  `groupterms` text NOT NULL,
  `authstr` varchar(20) NOT NULL DEFAULT '',
  `spacename` varchar(40) NOT NULL,
  `buyercredit` smallint(6) NOT NULL DEFAULT '0',
  `sellercredit` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_memberfields
-- ----------------------------
INSERT INTO `jrun_memberfields` VALUES ('1', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '0', '0');
INSERT INTO `jrun_memberfields` VALUES ('2', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '0', '0');
INSERT INTO `jrun_memberfields` VALUES ('3', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `jrun_membermagics`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_membermagics`;
CREATE TABLE `jrun_membermagics` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `magicid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `num` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_membermagics
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_members`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_members`;
CREATE TABLE `jrun_members` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(15) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `secques` char(8) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `adminid` tinyint(1) NOT NULL DEFAULT '0',
  `groupid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `groupexpiry` int(10) unsigned NOT NULL DEFAULT '0',
  `extgroupids` char(20) NOT NULL DEFAULT '',
  `regip` char(15) NOT NULL DEFAULT '',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` char(15) NOT NULL DEFAULT '',
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `lastactivity` int(10) unsigned NOT NULL DEFAULT '0',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `digestposts` smallint(6) unsigned NOT NULL DEFAULT '0',
  `oltime` smallint(6) unsigned NOT NULL DEFAULT '0',
  `pageviews` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `credits` int(10) NOT NULL DEFAULT '0',
  `extcredits1` int(10) NOT NULL DEFAULT '0',
  `extcredits2` int(10) NOT NULL DEFAULT '0',
  `extcredits3` int(10) NOT NULL DEFAULT '0',
  `extcredits4` int(10) NOT NULL DEFAULT '0',
  `extcredits5` int(10) NOT NULL DEFAULT '0',
  `extcredits6` int(10) NOT NULL DEFAULT '0',
  `extcredits7` int(10) NOT NULL DEFAULT '0',
  `extcredits8` int(10) NOT NULL DEFAULT '0',
  `email` char(40) NOT NULL DEFAULT '',
  `bday` date NOT NULL DEFAULT '0000-00-00',
  `sigstatus` tinyint(1) NOT NULL DEFAULT '0',
  `tpp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ppp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dateformat` tinyint(1) NOT NULL DEFAULT '0',
  `timeformat` tinyint(1) NOT NULL DEFAULT '0',
  `pmsound` tinyint(1) NOT NULL DEFAULT '0',
  `showemail` tinyint(1) NOT NULL DEFAULT '0',
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `invisible` tinyint(1) NOT NULL DEFAULT '0',
  `timeoffset` char(4) NOT NULL DEFAULT '',
  `newpm` tinyint(1) NOT NULL DEFAULT '0',
  `accessmasks` tinyint(1) NOT NULL DEFAULT '0',
  `editormode` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `customshow` tinyint(1) unsigned NOT NULL DEFAULT '26',
  `salt` char(6) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `groupid` (`groupid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_members
-- ----------------------------
INSERT INTO `jrun_members` VALUES ('1', 'admin', 'f3442271d47a5030152bf7f4df49dd38', '', '0', '1', '1', '0', '', 'hidden', '1170596852', '0.0.0.0', '1453286046', '1453286435', '1170596852', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'name@domain.com', '0000-00-00', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '9999', '0', '0', '2', '26', '2394d1');
INSERT INTO `jrun_members` VALUES ('2', 'test', '30355c83131986dbbc84811824e4b677', '', '0', '0', '10', '0', '', '0.0.0.0', '1453281046', '192.168.1.125', '1453723817', '1453723951', '1453289767', '6', '0', '1', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '362406220@qq.com', '0000-00-00', '0', '0', '0', '2', '0', '0', '1', '1', '1', '0', '9999', '0', '0', '2', '26', '183098');
INSERT INTO `jrun_members` VALUES ('3', '9527', '83971b1ee2c491f0d9ed67c2685c6253', '', '0', '0', '10', '0', '', '0.0.0.0', '1453281406', '0.0.0.0', '1453289899', '1453290034', '1453285371', '2', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '362406220@qq.com', '0000-00-00', '0', '0', '0', '7', '0', '0', '1', '1', '1', '0', '9999', '1', '0', '2', '26', '499630');

-- ----------------------------
-- Table structure for `jrun_memberspaces`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_memberspaces`;
CREATE TABLE `jrun_memberspaces` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `style` char(20) NOT NULL,
  `description` char(100) NOT NULL,
  `layout` char(200) NOT NULL,
  `side` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_memberspaces
-- ----------------------------
INSERT INTO `jrun_memberspaces` VALUES ('1', 'default', '', '[userinfo][calendar][myreplies][myfavforums]	[myblogs][mythreads]	', '1');
INSERT INTO `jrun_memberspaces` VALUES ('3', 'default3', '', '[userinfo][calendar][myreplies][myfavforums]	[myblogs][mythreads]	', '1');
INSERT INTO `jrun_memberspaces` VALUES ('2', 'default', '', '[userinfo][calendar][myreplies][myfavforums]	[myblogs][mythreads]	', '1');

-- ----------------------------
-- Table structure for `jrun_moderators`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_moderators`;
CREATE TABLE `jrun_moderators` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `inherited` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_moderators
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_modworks`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_modworks`;
CREATE TABLE `jrun_modworks` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `modaction` char(3) NOT NULL DEFAULT '',
  `dateline` date NOT NULL DEFAULT '2006-01-01',
  `count` smallint(6) unsigned NOT NULL DEFAULT '0',
  `posts` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`dateline`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_modworks
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_myposts`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_myposts`;
CREATE TABLE `jrun_myposts` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `position` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`tid`),
  KEY `tid` (`tid`,`dateline`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_myposts
-- ----------------------------
INSERT INTO `jrun_myposts` VALUES ('3', '1', '2', '1', '1453281521', '0');
INSERT INTO `jrun_myposts` VALUES ('3', '2', '4', '1', '1453285371', '0');
INSERT INTO `jrun_myposts` VALUES ('2', '3', '7', '2', '1453286745', '2');
INSERT INTO `jrun_myposts` VALUES ('2', '4', '9', '1', '1453289767', '5');

-- ----------------------------
-- Table structure for `jrun_mythreads`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_mythreads`;
CREATE TABLE `jrun_mythreads` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`tid`),
  KEY `tid` (`tid`,`dateline`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_mythreads
-- ----------------------------
INSERT INTO `jrun_mythreads` VALUES ('2', '1', '0', '1453281210');
INSERT INTO `jrun_mythreads` VALUES ('2', '2', '0', '1453285119');
INSERT INTO `jrun_mythreads` VALUES ('2', '3', '2', '1453286709');
INSERT INTO `jrun_mythreads` VALUES ('2', '4', '5', '1453289735');

-- ----------------------------
-- Table structure for `jrun_onlinelist`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_onlinelist`;
CREATE TABLE `jrun_onlinelist` (
  `groupid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_onlinelist
-- ----------------------------
INSERT INTO `jrun_onlinelist` VALUES ('1', '1', '管理员', 'online_admin.gif');
INSERT INTO `jrun_onlinelist` VALUES ('2', '2', '超级版主', 'online_supermod.gif');
INSERT INTO `jrun_onlinelist` VALUES ('3', '3', '版主', 'online_moderator.gif');
INSERT INTO `jrun_onlinelist` VALUES ('0', '4', '会员', 'online_member.gif');

-- ----------------------------
-- Table structure for `jrun_onlinetime`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_onlinetime`;
CREATE TABLE `jrun_onlinetime` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `thismonth` smallint(6) unsigned NOT NULL DEFAULT '0',
  `total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_onlinetime
-- ----------------------------
INSERT INTO `jrun_onlinetime` VALUES ('1', '0', '60', '1170601084');
INSERT INTO `jrun_onlinetime` VALUES ('3', '30', '30', '1453284898');
INSERT INTO `jrun_onlinetime` VALUES ('2', '30', '30', '1453723392');

-- ----------------------------
-- Table structure for `jrun_orders`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_orders`;
CREATE TABLE `jrun_orders` (
  `orderid` char(32) NOT NULL DEFAULT '',
  `status` char(3) NOT NULL DEFAULT '',
  `buyer` char(50) NOT NULL DEFAULT '',
  `admin` char(15) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `price` float(7,2) unsigned NOT NULL DEFAULT '0.00',
  `submitdate` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmdate` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `orderid` (`orderid`) USING BTREE,
  KEY `submitdate` (`submitdate`) USING BTREE,
  KEY `uid` (`uid`,`submitdate`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_orders
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_paymentlog`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_paymentlog`;
CREATE TABLE `jrun_paymentlog` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `netamount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`,`uid`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `authorid` (`authorid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_paymentlog
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_pluginhooks`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_pluginhooks`;
CREATE TABLE `jrun_pluginhooks` (
  `pluginhookid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pluginid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `code` mediumtext NOT NULL,
  PRIMARY KEY (`pluginhookid`),
  KEY `pluginid` (`pluginid`) USING BTREE,
  KEY `available` (`available`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_pluginhooks
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_plugins`;
CREATE TABLE `jrun_plugins` (
  `pluginid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `adminid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL DEFAULT '',
  `identifier` varchar(40) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `datatables` varchar(255) NOT NULL DEFAULT '',
  `directory` varchar(100) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  `modules` text NOT NULL,
  PRIMARY KEY (`pluginid`),
  UNIQUE KEY `identifier` (`identifier`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_pluginvars`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_pluginvars`;
CREATE TABLE `jrun_pluginvars` (
  `pluginvarid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pluginid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `variable` varchar(40) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT 'text',
  `value` text NOT NULL,
  `extra` text NOT NULL,
  PRIMARY KEY (`pluginvarid`),
  KEY `pluginid` (`pluginid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_pluginvars
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_pms`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_pms`;
CREATE TABLE `jrun_pms` (
  `pmid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msgfrom` varchar(15) NOT NULL DEFAULT '',
  `msgfromid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `msgtoid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder` enum('inbox','outbox') NOT NULL DEFAULT 'inbox',
  `new` tinyint(1) NOT NULL DEFAULT '0',
  `subject` varchar(75) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `msgtoid` (`msgtoid`,`folder`,`dateline`) USING BTREE,
  KEY `msgfromid` (`msgfromid`,`folder`,`dateline`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_pms
-- ----------------------------
INSERT INTO `jrun_pms` VALUES ('1', '9527', '3', '2', 'inbox', '0', '123123', '1453285016', ':lol :lol :lol 33啊啊打', '0');
INSERT INTO `jrun_pms` VALUES ('2', 'System Message', '0', '2', 'inbox', '0', '[系统消息] 有买家购买您的商品', '1453289933', '这是由论坛系统自动发送的通知短消息。\n\n买家 9527 购买您的商品 吼吼\n\n买家已付款，等待您发货，请[url=http://localhost/jsprunutf8/trade.jsp?orderid=20160120193837gPFv2LS6boNkqlhb0b]点击这里[/url]查看详情。', '0');
INSERT INTO `jrun_pms` VALUES ('3', 'test', '2', '3', 'inbox', '1', '已经发货', '1453289992', '已经发货', '0');
INSERT INTO `jrun_pms` VALUES ('4', 'System Message', '0', '3', 'inbox', '0', '[系统消息] 您购买的商品已经发货', '1453290012', '这是由论坛系统自动发送的通知短消息。\n\n您购买的商品 吼吼\n\n卖家 test 已发货，等待您的确认，请[url=http://localhost/jsprunutf8/trade.jsp?orderid=20160120193837gPFv2LS6boNkqlhb0b]点击这里[/url]查看详情。', '0');
INSERT INTO `jrun_pms` VALUES ('5', '9527', '3', '2', 'inbox', '0', '[议价]吼吼', '1453290067', '[url=http://localhost/jsprunutf8/viewthread.jsp?do=tradeinfo&tid=3&pid=6]吼吼[/url]\r\n商品原价:998.00\r\n商品价格:998.00\r\n物流方式:卖家承担运费,平邮 10 元,快递 10 元,EMS 10 元\r\n商品所在地:998\r\n\r\n购买数量: \r\n我期望的价格是: 99\r\n我议价的理由是: 99\r\n', '0');
INSERT INTO `jrun_pms` VALUES ('6', 'System Message', '0', '2', 'inbox', '0', '[系统消息] 商品交易已成功完成', '1453290091', '这是由论坛系统自动发送的通知短消息。\n\n商品 吼吼 已交易成功，请[url=http://localhost/jsprunutf8/trade.jsp?orderid=20160120193837gPFv2LS6boNkqlhb0b]点击这里[/url]给对方评分。', '0');
INSERT INTO `jrun_pms` VALUES ('7', 'System Message', '0', '3', 'inbox', '0', '[系统消息] 商品交易已成功完成', '1453290091', '这是由论坛系统自动发送的通知短消息。\n\n商品 吼吼 已交易成功，请[url=http://localhost/jsprunutf8/trade.jsp?orderid=20160120193837gPFv2LS6boNkqlhb0b]点击这里[/url]给对方评分。', '0');
INSERT INTO `jrun_pms` VALUES ('8', 'System Message', '0', '2', 'inbox', '0', '[系统消息] 商品交易的对方已经评价，请回评', '1453290103', '这是由论坛系统自动发送的通知短消息。\n\n[url=http://localhost/jsprunutf8/trade.jsp?orderid=20160120193837gPFv2LS6boNkqlhb0b]查看交易单[/url]\n\n与您交易的 9527 已经给您作了评价，请尽快评价对方。', '0');
INSERT INTO `jrun_pms` VALUES ('9', 'test', '2', '3', 'inbox', '1', 'Re:[议价]吼吼', '1453290238', '[b]原始短消息:[/b] [url=http://localhost/jsprunutf8/pm.jsp?action=view&folder=inbox&pmid=5][议价]吼吼[/url]\r\n[quote][url=http://localhost/jsprunutf8/viewthread.jsp?do=tradeinfo&tid=3&pid=6]吼吼[/url]\r\n商品原价:998.00\r\n商品价格:998.00\r\n物流方式:卖家承担运费,平邮 10 元,快递 10 元,EMS 10 元\r\n商品所在地:998\r\n\r\n购买数量: \r\n我期望的价格是: 99\r\n我议价的理由是: 99[/quote]', '0');

-- ----------------------------
-- Table structure for `jrun_pmsearchindex`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_pmsearchindex`;
CREATE TABLE `jrun_pmsearchindex` (
  `searchid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `searchstring` varchar(255) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `pms` smallint(6) unsigned NOT NULL DEFAULT '0',
  `pmids` text NOT NULL,
  PRIMARY KEY (`searchid`),
  KEY `uid` (`uid`,`dateline`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_pmsearchindex
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_polloptions`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_polloptions`;
CREATE TABLE `jrun_polloptions` (
  `polloptionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `votes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `polloption` varchar(80) NOT NULL DEFAULT '',
  `voterids` mediumtext NOT NULL,
  PRIMARY KEY (`polloptionid`),
  KEY `tid` (`tid`,`displayorder`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_polloptions
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_polls`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_polls`;
CREATE TABLE `jrun_polls` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `maxchoices` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_polls
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_posts`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_posts`;
CREATE TABLE `jrun_posts` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `first` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(80) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `message` mediumtext NOT NULL,
  `useip` varchar(15) NOT NULL DEFAULT '',
  `invisible` tinyint(1) NOT NULL DEFAULT '0',
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `usesig` tinyint(1) NOT NULL DEFAULT '0',
  `htmlon` tinyint(1) NOT NULL DEFAULT '0',
  `bbcodeoff` tinyint(1) NOT NULL DEFAULT '0',
  `smileyoff` tinyint(1) NOT NULL DEFAULT '0',
  `parseurloff` tinyint(1) NOT NULL DEFAULT '0',
  `attachment` tinyint(1) NOT NULL DEFAULT '0',
  `rate` smallint(6) NOT NULL DEFAULT '0',
  `ratetimes` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `fid` (`fid`) USING BTREE,
  KEY `authorid` (`authorid`) USING BTREE,
  KEY `dateline` (`dateline`) USING BTREE,
  KEY `invisible` (`invisible`) USING BTREE,
  KEY `displayorder` (`tid`,`invisible`,`dateline`) USING BTREE,
  KEY `first` (`tid`,`first`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_posts
-- ----------------------------
INSERT INTO `jrun_posts` VALUES ('1', '2', '1', '1', 'test', '2', '测测', '1453281210', '此次测测测测测', '0.0.0.0', '0', '0', '0', '0', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `jrun_posts` VALUES ('2', '2', '1', '0', '9527', '3', '犹豫不决9527', '1453281521', '犹豫不决9527', '0.0.0.0', '0', '-1', '0', '-1', '-1', '-1', '-1', '0', '0', '0', '0');
INSERT INTO `jrun_posts` VALUES ('3', '2', '2', '1', 'test', '2', '撒发顺丰', '1453285119', '尽快打水晶开了多久啊是老大', '0.0.0.0', '0', '0', '0', '0', '-1', '-1', '0', '0', '0', '0', '0');
INSERT INTO `jrun_posts` VALUES ('4', '2', '2', '0', '9527', '3', '', '1453285371', '我觉得也是', '0.0.0.0', '0', '-1', '0', '-1', '-1', '-1', '-1', '0', '0', '0', '0');
INSERT INTO `jrun_posts` VALUES ('5', '2', '3', '1', 'test', '2', '吼吼', '1453286709', '吼吼			吼吼', '0.0.0.0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0');
INSERT INTO `jrun_posts` VALUES ('6', '2', '3', '0', 'test', '2', '吼吼', '1453286709', '[table=50%][tr][td] 11[/td][td] 11[/td][/tr][tr][td] 11[/td][td] 11[/td][/tr][/table][img]https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3805817368,3714770418&fm=58[/img]\n[[i] 本帖最后由 test 于 2016-01-20  19:33 编辑 [/i]]', '0.0.0.0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `jrun_posts` VALUES ('7', '2', '3', '0', 'test', '2', '', '1453286745', '不错值得吼吼吼吼吼吼吼吼吼吼', '0.0.0.0', '0', '-1', '0', '-1', '-1', '-1', '-1', '0', '0', '0', '0');
INSERT INTO `jrun_posts` VALUES ('8', '2', '4', '1', 'test', '2', '版权声明', '1453289735', '[color=#666666][font=arial][size=13px]年9月4日 - [/size][/font][/color][color=#333333][font=arial][size=13px]版权声明:本文为博主原创文章,未经博主允许不得转载。[/size][/font][/color][color=#cc00][font=arial][size=13px]eclipse[/size][/font][/color][color=#333333][font=arial][size=13px]加速之禁用JS、[/size][/font][/color][color=#cc00][font=arial][size=13px]jsp[/size][/font][/color][color=#333333][font=arial][size=13px]等文件的语法[/size][/font][/color][color=#cc00][font=arial][size=13px]验证[/size][/font][/color][color=#333333][font=arial][size=13px]去除[/size][/font][/color][color=#cc00][font=arial][size=13px]eclipse[/size][/font][/color][color=#333333][font=arial][size=13px]的JS[/size][/font][/color][color=#cc00][font=arial][size=13px]验证[/size][/font][/color][color=#333333][font=arial][size=13px]:将windows->preference->Java Script->Validator...[/size][/font][/color]', '0.0.0.0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0');
INSERT INTO `jrun_posts` VALUES ('9', '2', '4', '0', 'test', '2', '', '1453289767', '我觉得是这样的', '0.0.0.0', '0', '-1', '0', '-1', '-1', '-1', '-1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `jrun_profilefields`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_profilefields`;
CREATE TABLE `jrun_profilefields` (
  `fieldid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `invisible` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayorder` smallint(6) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `unchangeable` tinyint(1) NOT NULL DEFAULT '0',
  `showinthread` tinyint(1) NOT NULL DEFAULT '0',
  `selective` tinyint(1) NOT NULL DEFAULT '0',
  `choices` text NOT NULL,
  PRIMARY KEY (`fieldid`),
  KEY `available` (`available`,`required`,`displayorder`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_profilefields
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_projects`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_projects`;
CREATE TABLE `jrun_projects` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_projects
-- ----------------------------
INSERT INTO `jrun_projects` VALUES ('1', '技术性论坛', 'extcredit', '如果您不希望会员通过灌水、页面访问等方式得到积分，而是需要发布一些技术性的帖子获得积分。', 'a:4:{s:10:\"savemethod\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:14:\"creditsformula\";s:49:\"posts*0.5+digestposts*5+extcredits1*2+extcredits2\";s:13:\"creditspolicy\";s:299:\"a:12:{s:4:\"post\";a:0:{}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:1;i:10;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:1:{i:3;i:2;}s:18:\"promotion_register\";a:1:{i:3;i:2;}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}\";s:10:\"extcredits\";s:1450:\"a:8:{i:1;a:8:{s:5:\"title\";s:6:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:2;a:8:{s:5:\"title\";s:6:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:3;a:8:{s:5:\"title\";s:6:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:4;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:5;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:6;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:7;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:8;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}}\";}');
INSERT INTO `jrun_projects` VALUES ('2', '娱乐性论坛', 'extcredit', '此类型论坛的会员可以通过发布一些评论、回复等获得积分，同时扩大论坛的访问量。更重要的是希望会员发布一些有价值的娱乐新闻等。', 'a:4:{s:10:\"savemethod\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:14:\"creditsformula\";s:81:\"posts+digestposts*5+oltime*5+pageviews/1000+extcredits1*2+extcredits2+extcredits3\";s:13:\"creditspolicy\";s:315:\"a:12:{s:4:\"post\";a:1:{i:1;i:1;}s:5:\"reply\";a:1:{i:2;i:1;}s:6:\"digest\";a:1:{i:1;i:10;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:1:{i:3;i:2;}s:18:\"promotion_register\";a:1:{i:3;i:2;}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}\";s:10:\"extcredits\";s:1042:\"a:8:{i:1;a:6:{s:5:\"title\";s:6:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:2;a:6:{s:5:\"title\";s:6:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:3;a:6:{s:5:\"title\";s:6:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:4;a:6:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:5;a:6:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:6;a:6:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:7;a:6:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}i:8;a:6:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;}}\";}');
INSERT INTO `jrun_projects` VALUES ('3', '动漫、摄影类论坛', 'extcredit', '此类型论坛需要更多的图片附件发布给广大会员，因此增加一项扩展积分：魅力。', 'a:4:{s:10:\"savemethod\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:14:\"creditsformula\";s:86:\"posts+digestposts*2+pageviews/2000+extcredits1*2+extcredits2+extcredits3+extcredits4*3\";s:13:\"creditspolicy\";s:324:\"a:12:{s:4:\"post\";a:1:{i:2;i:1;}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:1;i:10;}s:10:\"postattach\";a:1:{i:4;i:3;}s:9:\"getattach\";a:1:{i:2;i:-2;}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:1:{i:3;i:2;}s:18:\"promotion_register\";a:1:{i:3;i:2;}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}\";s:10:\"extcredits\";s:1462:\"a:8:{i:1;a:8:{s:5:\"title\";s:6:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:2;a:8:{s:5:\"title\";s:6:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:3;a:8:{s:5:\"title\";s:6:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:4;a:8:{s:5:\"title\";s:6:\"魅力\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:5;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:6;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:7;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:8;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}}\";}');
INSERT INTO `jrun_projects` VALUES ('4', '文章、小说类论坛', 'extcredit', '此类型的论坛更重视会员的原创文章或者是转发的文章，因此增加一项扩展积分：文采。', 'a:4:{s:10:\"savemethod\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:14:\"creditsformula\";s:57:\"posts+digestposts*8+extcredits2+extcredits3+extcredits4*2\";s:13:\"creditspolicy\";s:307:\"a:12:{s:4:\"post\";a:1:{i:2;i:1;}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:4;i:10;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:1:{i:3;i:2;}s:18:\"promotion_register\";a:1:{i:3;i:2;}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}\";s:10:\"extcredits\";s:1462:\"a:8:{i:1;a:8:{s:5:\"title\";s:6:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:2;a:8:{s:5:\"title\";s:6:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:3;a:8:{s:5:\"title\";s:6:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:4;a:8:{s:5:\"title\";s:6:\"文采\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:5;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:6;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:7;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:8;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}}\";}');
INSERT INTO `jrun_projects` VALUES ('5', '调研性论坛', 'extcredit', '此类型论坛更期望的是得到会员的建议和意见，主要是通过投票的方式体现会员的建议，因此增加一项积分策略为：参加投票，增加一项扩展积分为：积极性。', 'a:4:{s:10:\"savemethod\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:14:\"creditsformula\";s:63:\"posts*0.5+digestposts*2+extcredits1*2+extcredits3+extcredits4*2\";s:13:\"creditspolicy\";s:306:\"a:12:{s:4:\"post\";a:0:{}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:1;i:8;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:1:{i:3;i:2;}s:18:\"promotion_register\";a:1:{i:3;i:2;}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:1:{i:4;i:5;}s:10:\"lowerlimit\";a:0:{}}\";s:10:\"extcredits\";s:1465:\"a:8:{i:1;a:8:{s:5:\"title\";s:6:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:2;a:8:{s:5:\"title\";s:6:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:3;a:8:{s:5:\"title\";s:6:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:4;a:8:{s:5:\"title\";s:9:\"积极性\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:5;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:6;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:7;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:8;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}}\";}');
INSERT INTO `jrun_projects` VALUES ('6', '贸易性论坛', 'extcredit', '此类型论坛更注重的是会员之间的交易，因此使用积分策略：交易成功，增加一项扩展积分：诚信度。', 'a:4:{s:10:\"savemethod\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:14:\"creditsformula\";s:55:\"posts+digestposts+extcredits1*2+extcredits3+extcredits4\";s:13:\"creditspolicy\";s:306:\"a:12:{s:4:\"post\";a:0:{}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:1;i:5;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:1:{i:3;i:2;}s:18:\"promotion_register\";a:1:{i:3;i:2;}s:13:\"tradefinished\";a:1:{i:4;i:6;}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}\";s:10:\"extcredits\";s:1465:\"a:8:{i:1;a:8:{s:5:\"title\";s:6:\"威望\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:2;a:8:{s:5:\"title\";s:6:\"金钱\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:3;a:8:{s:5:\"title\";s:6:\"贡献\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:4;a:8:{s:5:\"title\";s:9:\"诚信度\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";s:1:\"1\";s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:5;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:6;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:7;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}i:8;a:8:{s:5:\"title\";s:0:\"\";s:4:\"unit\";s:0:\"\";s:5:\"ratio\";i:0;s:9:\"available\";N;s:10:\"lowerlimit\";i:0;s:12:\"showinthread\";N;s:15:\"allowexchangein\";N;s:16:\"allowexchangeout\";N;}}\";}');
INSERT INTO `jrun_projects` VALUES ('7', '坛内事务类版块', 'forum', '该板块设置了不允许其他模块共享，以及设置了需要很高的权限才能浏览该版块。也适合于保密性高版块。', 'a:33:{s:7:\"styleid\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowbbcode\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"0\";s:10:\"allowshare\";s:1:\"0\";s:16:\"allowpostspecial\";s:1:\"0\";s:14:\"alloweditrules\";s:1:\"1\";s:10:\"recyclebin\";s:1:\"1\";s:11:\"modnewposts\";s:1:\"0\";s:6:\"jammer\";s:1:\"0\";s:16:\"disablewatermark\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:9:\"autoclose\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"threadcaches\";s:2:\"40\";s:16:\"allowpaytoauthor\";s:1:\"0\";s:13:\"alloweditpost\";s:1:\"1\";s:6:\"simple\";s:1:\"0\";s:11:\"postcredits\";s:0:\"\";s:12:\"replycredits\";s:0:\"\";s:16:\"getattachcredits\";s:0:\"\";s:17:\"postattachcredits\";s:0:\"\";s:13:\"digestcredits\";s:0:\"\";s:16:\"attachextensions\";s:0:\"\";s:11:\"threadtypes\";s:0:\"\";s:8:\"viewperm\";s:7:\"	1	2	3	\";s:8:\"postperm\";s:7:\"	1	2	3	\";s:9:\"replyperm\";s:7:\"	1	2	3	\";s:13:\"getattachperm\";s:7:\"	1	2	3	\";s:14:\"postattachperm\";s:7:\"	1	2	3	\";}');
INSERT INTO `jrun_projects` VALUES ('8', '技术交流类版块', 'forum', '该设置开启了主题缓存系数。其他的权限设置级别较低。', 'a:32:{s:7:\"styleid\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowbbcode\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"0\";s:10:\"allowshare\";s:1:\"1\";s:16:\"allowpostspecial\";s:1:\"5\";s:14:\"alloweditrules\";s:1:\"0\";s:10:\"recyclebin\";s:1:\"1\";s:11:\"modnewposts\";s:1:\"0\";s:6:\"jammer\";s:1:\"0\";s:16:\"disablewatermark\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:9:\"autoclose\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"threadcaches\";s:2:\"40\";s:16:\"allowpaytoauthor\";s:1:\"1\";s:13:\"alloweditpost\";s:1:\"1\";s:6:\"simple\";s:1:\"0\";s:11:\"postcredits\";s:0:\"\";s:12:\"replycredits\";s:0:\"\";s:16:\"getattachcredits\";s:0:\"\";s:17:\"postattachcredits\";s:0:\"\";s:13:\"digestcredits\";s:0:\"\";s:16:\"attachextensions\";s:0:\"\";s:11:\"threadtypes\";s:0:\"\";s:8:\"viewperm\";s:0:\"\";s:8:\"postperm\";s:0:\"\";s:9:\"replyperm\";s:0:\"\";s:13:\"getattachperm\";s:0:\"\";s:14:\"postattachperm\";s:0:\"\";}');
INSERT INTO `jrun_projects` VALUES ('9', '发布公告类版块', 'forum', '该设置开启了发帖审核，限制了允许发帖的用户组。', 'a:32:{s:7:\"styleid\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowbbcode\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"0\";s:10:\"allowshare\";s:1:\"1\";s:16:\"allowpostspecial\";s:1:\"1\";s:14:\"alloweditrules\";s:1:\"0\";s:10:\"recyclebin\";s:1:\"1\";s:11:\"modnewposts\";s:1:\"1\";s:6:\"jammer\";s:1:\"1\";s:16:\"disablewatermark\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:9:\"autoclose\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"threadcaches\";s:1:\"0\";s:16:\"allowpaytoauthor\";s:1:\"1\";s:13:\"alloweditpost\";s:1:\"0\";s:6:\"simple\";s:1:\"0\";s:11:\"postcredits\";s:0:\"\";s:12:\"replycredits\";s:0:\"\";s:16:\"getattachcredits\";s:0:\"\";s:17:\"postattachcredits\";s:0:\"\";s:13:\"digestcredits\";s:0:\"\";s:16:\"attachextensions\";s:0:\"\";s:11:\"threadtypes\";s:0:\"\";s:8:\"viewperm\";s:0:\"\";s:8:\"postperm\";s:7:\"	1	2	3	\";s:9:\"replyperm\";s:0:\"\";s:13:\"getattachperm\";s:0:\"\";s:14:\"postattachperm\";s:0:\"\";}');
INSERT INTO `jrun_projects` VALUES ('10', '发起活动类版块', 'forum', '该类型设置里发起主题一个月之后会自动关闭主题。', 'a:32:{s:7:\"styleid\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowbbcode\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"0\";s:10:\"allowshare\";s:1:\"1\";s:16:\"allowpostspecial\";s:1:\"9\";s:14:\"alloweditrules\";s:1:\"0\";s:10:\"recyclebin\";s:1:\"1\";s:11:\"modnewposts\";s:1:\"0\";s:6:\"jammer\";s:1:\"0\";s:16:\"disablewatermark\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"1\";s:9:\"autoclose\";s:2:\"30\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"threadcaches\";s:2:\"40\";s:16:\"allowpaytoauthor\";s:1:\"1\";s:13:\"alloweditpost\";s:1:\"1\";s:6:\"simple\";s:1:\"0\";s:11:\"postcredits\";s:0:\"\";s:12:\"replycredits\";s:0:\"\";s:16:\"getattachcredits\";s:0:\"\";s:17:\"postattachcredits\";s:0:\"\";s:13:\"digestcredits\";s:0:\"\";s:16:\"attachextensions\";s:0:\"\";s:11:\"threadtypes\";s:0:\"\";s:8:\"viewperm\";s:0:\"\";s:8:\"postperm\";s:22:\"	1	2	3	11	12	13	14	15	\";s:9:\"replyperm\";s:0:\"\";s:13:\"getattachperm\";s:0:\"\";s:14:\"postattachperm\";s:0:\"\";}');
INSERT INTO `jrun_projects` VALUES ('11', '娱乐灌水类版块', 'forum', '该设置了主题缓存系数，开启了所有的特殊主题按钮。', 'a:32:{s:7:\"styleid\";s:1:\"0\";s:12:\"allowsmilies\";s:1:\"1\";s:9:\"allowhtml\";s:1:\"0\";s:11:\"allowbbcode\";s:1:\"1\";s:12:\"allowimgcode\";s:1:\"1\";s:14:\"allowanonymous\";s:1:\"0\";s:10:\"allowshare\";s:1:\"1\";s:16:\"allowpostspecial\";s:2:\"15\";s:14:\"alloweditrules\";s:1:\"0\";s:10:\"recyclebin\";s:1:\"1\";s:11:\"modnewposts\";s:1:\"0\";s:6:\"jammer\";s:1:\"0\";s:16:\"disablewatermark\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:9:\"autoclose\";s:1:\"0\";s:12:\"forumcolumns\";s:1:\"0\";s:12:\"threadcaches\";s:2:\"40\";s:16:\"allowpaytoauthor\";s:1:\"1\";s:13:\"alloweditpost\";s:1:\"1\";s:6:\"simple\";s:1:\"0\";s:11:\"postcredits\";s:0:\"\";s:12:\"replycredits\";s:0:\"\";s:16:\"getattachcredits\";s:0:\"\";s:17:\"postattachcredits\";s:0:\"\";s:13:\"digestcredits\";s:0:\"\";s:16:\"attachextensions\";s:0:\"\";s:11:\"threadtypes\";s:0:\"\";s:8:\"viewperm\";s:0:\"\";s:8:\"postperm\";s:0:\"\";s:9:\"replyperm\";s:0:\"\";s:13:\"getattachperm\";s:0:\"\";s:14:\"postattachperm\";s:0:\"\";}');

-- ----------------------------
-- Table structure for `jrun_promotions`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_promotions`;
CREATE TABLE `jrun_promotions` (
  `ip` char(15) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_promotions
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_ranks`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_ranks`;
CREATE TABLE `jrun_ranks` (
  `rankid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `ranktitle` varchar(30) NOT NULL DEFAULT '',
  `postshigher` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `stars` tinyint(3) NOT NULL DEFAULT '0',
  `color` varchar(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`rankid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_ranks
-- ----------------------------
INSERT INTO `jrun_ranks` VALUES ('1', '新生入学', '0', '1', '');
INSERT INTO `jrun_ranks` VALUES ('2', '小试牛刀', '50', '2', '');
INSERT INTO `jrun_ranks` VALUES ('3', '实习记者', '300', '5', '');
INSERT INTO `jrun_ranks` VALUES ('4', '自由撰稿人', '1000', '4', '');
INSERT INTO `jrun_ranks` VALUES ('5', '特聘作家', '3000', '5', '');

-- ----------------------------
-- Table structure for `jrun_ratelog`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_ratelog`;
CREATE TABLE `jrun_ratelog` (
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `extcredits` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `score` smallint(6) NOT NULL DEFAULT '0',
  `reason` char(40) NOT NULL DEFAULT '',
  KEY `pid` (`pid`,`dateline`) USING BTREE,
  KEY `dateline` (`dateline`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_ratelog
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_regips`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_regips`;
CREATE TABLE `jrun_regips` (
  `ip` char(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `count` smallint(6) NOT NULL DEFAULT '0',
  KEY `ip` (`ip`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_regips
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_relatedthreads`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_relatedthreads`;
CREATE TABLE `jrun_relatedthreads` (
  `tid` mediumint(8) NOT NULL DEFAULT '0',
  `type` enum('general','trade') NOT NULL DEFAULT 'general',
  `expiration` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `relatedthreads` text NOT NULL,
  PRIMARY KEY (`tid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_relatedthreads
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_rewardlog`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_rewardlog`;
CREATE TABLE `jrun_rewardlog` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `answererid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned DEFAULT '0',
  `netamount` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `userid` (`authorid`,`answererid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_rewardlog
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_rsscaches`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_rsscaches`;
CREATE TABLE `jrun_rsscaches` (
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `forum` char(50) NOT NULL DEFAULT '',
  `author` char(15) NOT NULL DEFAULT '',
  `subject` char(80) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  UNIQUE KEY `tid` (`tid`) USING BTREE,
  KEY `fid` (`fid`,`dateline`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_rsscaches
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_searchindex`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_searchindex`;
CREATE TABLE `jrun_searchindex` (
  `searchid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `searchstring` char(32) NOT NULL DEFAULT '',
  `useip` varchar(15) NOT NULL DEFAULT '',
  `uid` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `threadtypeid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `threads` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tids` text NOT NULL,
  PRIMARY KEY (`searchid`),
  KEY `uid` (`uid`,`dateline`) USING BTREE,
  KEY `searchstring` (`searchstring`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_searchindex
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_sessions`;
CREATE TABLE `jrun_sessions` (
  `sid` char(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `groupid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `invisible` tinyint(1) NOT NULL DEFAULT '0',
  `action` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastactivity` int(10) unsigned NOT NULL DEFAULT '0',
  `lastolupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `pageviews` smallint(6) unsigned NOT NULL DEFAULT '0',
  `seccode` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `invisible` (`invisible`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_sessions
-- ----------------------------
INSERT INTO `jrun_sessions` VALUES ('8AYkDN', '192', '168', '0', '201', '0', '', '7', '1', '0', '1', '1453724288', '0', '0', '841731', '0', '0');
INSERT INTO `jrun_sessions` VALUES ('GWcpeG', '192', '168', '1', '45', '0', '', '7', '1', '0', '1', '1453775453', '0', '0', '957095', '0', '0');
INSERT INTO `jrun_sessions` VALUES ('RVnQ6B', '192', '168', '1', '125', '2', 'test', '10', '2', '0', '1', '1453724249', '0', '31', '519425', '0', '0');

-- ----------------------------
-- Table structure for `jrun_settings`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_settings`;
CREATE TABLE `jrun_settings` (
  `variable` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_settings
-- ----------------------------
INSERT INTO `jrun_settings` VALUES ('accessemail', '');
INSERT INTO `jrun_settings` VALUES ('adminipaccess', '');
INSERT INTO `jrun_settings` VALUES ('allowcsscache', '1');
INSERT INTO `jrun_settings` VALUES ('archiverstatus', '1');
INSERT INTO `jrun_settings` VALUES ('attachbanperiods', '');
INSERT INTO `jrun_settings` VALUES ('attachimgpost', '1');
INSERT INTO `jrun_settings` VALUES ('attachrefcheck', '0');
INSERT INTO `jrun_settings` VALUES ('attachsave', '3');
INSERT INTO `jrun_settings` VALUES ('authkey', 'CrVSXaKzoyJb4Rd');
INSERT INTO `jrun_settings` VALUES ('bannedmessages', '1');
INSERT INTO `jrun_settings` VALUES ('bbclosed', '0');
INSERT INTO `jrun_settings` VALUES ('bbinsert', '1');
INSERT INTO `jrun_settings` VALUES ('bbname', 'JspRun!');
INSERT INTO `jrun_settings` VALUES ('bbrules', '0');
INSERT INTO `jrun_settings` VALUES ('bbrulestxt', '');
INSERT INTO `jrun_settings` VALUES ('bdaystatus', '0');
INSERT INTO `jrun_settings` VALUES ('boardlicensed', '0');
INSERT INTO `jrun_settings` VALUES ('censoremail', '');
INSERT INTO `jrun_settings` VALUES ('censoruser', '');
INSERT INTO `jrun_settings` VALUES ('closedreason', '');
INSERT INTO `jrun_settings` VALUES ('creditsformula', 'extcredits1');
INSERT INTO `jrun_settings` VALUES ('creditsformulaexp', '<u>总积分</u>=<u>威望</u>');
INSERT INTO `jrun_settings` VALUES ('creditsnotify', '');
INSERT INTO `jrun_settings` VALUES ('creditspolicy', 'a:12:{s:4:\"post\";a:0:{}s:5:\"reply\";a:0:{}s:6:\"digest\";a:1:{i:1;i:10;}s:10:\"postattach\";a:0:{}s:9:\"getattach\";a:0:{}s:2:\"pm\";a:0:{}s:6:\"search\";a:0:{}s:15:\"promotion_visit\";a:0:{}s:18:\"promotion_register\";a:0:{}s:13:\"tradefinished\";a:0:{}s:8:\"votepoll\";a:0:{}s:10:\"lowerlimit\";a:0:{}}');
INSERT INTO `jrun_settings` VALUES ('creditstax', '0.2');
INSERT INTO `jrun_settings` VALUES ('creditstrans', '2');
INSERT INTO `jrun_settings` VALUES ('custombackup', '');
INSERT INTO `jrun_settings` VALUES ('dateformat', 'yyyy-MM-dd');
INSERT INTO `jrun_settings` VALUES ('debug', '1');
INSERT INTO `jrun_settings` VALUES ('delayviewcount', '0');
INSERT INTO `jrun_settings` VALUES ('deletereason', '');
INSERT INTO `jrun_settings` VALUES ('doublee', '1');
INSERT INTO `jrun_settings` VALUES ('dupkarmarate', '0');
INSERT INTO `jrun_settings` VALUES ('ec_account', '');
INSERT INTO `jrun_settings` VALUES ('ec_maxcredits', '1000');
INSERT INTO `jrun_settings` VALUES ('ec_maxcreditspermonth', '0');
INSERT INTO `jrun_settings` VALUES ('ec_mincredits', '0');
INSERT INTO `jrun_settings` VALUES ('ec_ratio', '0');
INSERT INTO `jrun_settings` VALUES ('editedby', '1');
INSERT INTO `jrun_settings` VALUES ('editoroptions', '1');
INSERT INTO `jrun_settings` VALUES ('edittimelimit', '');
INSERT INTO `jrun_settings` VALUES ('exchangemincredits', '100');
INSERT INTO `jrun_settings` VALUES ('extcredits', 'a:2:{i:1;a:3:{s:5:\"title\";s:6:\"威望\";s:12:\"showinthread\";s:0:\"\";s:9:\"available\";s:1:\"1\";}i:2;a:3:{s:5:\"title\";s:6:\"金钱\";s:12:\"showinthread\";s:0:\"\";s:9:\"available\";s:1:\"1\";}}');
INSERT INTO `jrun_settings` VALUES ('fastpost', '0');
INSERT INTO `jrun_settings` VALUES ('fastreply', '1');
INSERT INTO `jrun_settings` VALUES ('floodctrl', '15');
INSERT INTO `jrun_settings` VALUES ('forumjump', '0');
INSERT INTO `jrun_settings` VALUES ('forumfounders', '');
INSERT INTO `jrun_settings` VALUES ('globalstick', '1');
INSERT INTO `jrun_settings` VALUES ('gzipcompress', '0');
INSERT INTO `jrun_settings` VALUES ('hideprivate', '1');
INSERT INTO `jrun_settings` VALUES ('honorset', '0');
INSERT INTO `jrun_settings` VALUES ('honorvalue', '');
INSERT INTO `jrun_settings` VALUES ('hottopic', '10');
INSERT INTO `jrun_settings` VALUES ('icp', '');
INSERT INTO `jrun_settings` VALUES ('initcredits', '0,0,0,0,0,0,0,0,0');
INSERT INTO `jrun_settings` VALUES ('ipaccess', '');
INSERT INTO `jrun_settings` VALUES ('ipregctrl', '');
INSERT INTO `jrun_settings` VALUES ('jscachelife', '1800');
INSERT INTO `jrun_settings` VALUES ('jsmenustatus', '15');
INSERT INTO `jrun_settings` VALUES ('jsrefdomains', '');
INSERT INTO `jrun_settings` VALUES ('jsstatus', '0');
INSERT INTO `jrun_settings` VALUES ('karmaratelimit', '0');
INSERT INTO `jrun_settings` VALUES ('loadctrl', '0');
INSERT INTO `jrun_settings` VALUES ('losslessdel', '365');
INSERT INTO `jrun_settings` VALUES ('maxavatarpixel', '120');
INSERT INTO `jrun_settings` VALUES ('maxavatarsize', '20000');
INSERT INTO `jrun_settings` VALUES ('maxbdays', '0');
INSERT INTO `jrun_settings` VALUES ('maxchargespan', '0');
INSERT INTO `jrun_settings` VALUES ('maxfavorites', '100');
INSERT INTO `jrun_settings` VALUES ('maxincperthread', '0');
INSERT INTO `jrun_settings` VALUES ('maxmodworksmonths', '3');
INSERT INTO `jrun_settings` VALUES ('maxonlinelist', '0');
INSERT INTO `jrun_settings` VALUES ('maxonlines', '5000');
INSERT INTO `jrun_settings` VALUES ('maxpolloptions', '10');
INSERT INTO `jrun_settings` VALUES ('maxpostsize', '10000');
INSERT INTO `jrun_settings` VALUES ('maxsearchresults', '500');
INSERT INTO `jrun_settings` VALUES ('maxsigrows', '100');
INSERT INTO `jrun_settings` VALUES ('maxsmilies', '10');
INSERT INTO `jrun_settings` VALUES ('maxspm', '0');
INSERT INTO `jrun_settings` VALUES ('maxsubscriptions', '100');
INSERT INTO `jrun_settings` VALUES ('backupdir', 'uXDPv6');
INSERT INTO `jrun_settings` VALUES ('membermaxpages', '100');
INSERT INTO `jrun_settings` VALUES ('memberperpage', '25');
INSERT INTO `jrun_settings` VALUES ('memliststatus', '1');
INSERT INTO `jrun_settings` VALUES ('minpostsize', '10');
INSERT INTO `jrun_settings` VALUES ('moddisplay', 'flat');
INSERT INTO `jrun_settings` VALUES ('modratelimit', '0');
INSERT INTO `jrun_settings` VALUES ('modreasons', '广告/SPAM\r\n恶意灌水\r\n违规内容\r\n文不对题\r\n重复发帖\r\n\r\n我很赞同\r\n精品文章\r\n原创内容');
INSERT INTO `jrun_settings` VALUES ('modworkstatus', '0');
INSERT INTO `jrun_settings` VALUES ('myrecorddays', '30');
INSERT INTO `jrun_settings` VALUES ('newbiespan', '0');
INSERT INTO `jrun_settings` VALUES ('newsletter', '');
INSERT INTO `jrun_settings` VALUES ('nocacheheaders', '0');
INSERT INTO `jrun_settings` VALUES ('oltimespan', '10');
INSERT INTO `jrun_settings` VALUES ('onlinerecord', '3	1453285970');
INSERT INTO `jrun_settings` VALUES ('passport_expire', '3600');
INSERT INTO `jrun_settings` VALUES ('passport_extcredits', '0');
INSERT INTO `jrun_settings` VALUES ('passport_key', '');
INSERT INTO `jrun_settings` VALUES ('passport_login_url', '');
INSERT INTO `jrun_settings` VALUES ('passport_logout_url', '');
INSERT INTO `jrun_settings` VALUES ('passport_register_url', '');
INSERT INTO `jrun_settings` VALUES ('passport_status', '');
INSERT INTO `jrun_settings` VALUES ('passport_url', '');
INSERT INTO `jrun_settings` VALUES ('postbanperiods', '');
INSERT INTO `jrun_settings` VALUES ('postmodperiods', '');
INSERT INTO `jrun_settings` VALUES ('postperpage', '10');
INSERT INTO `jrun_settings` VALUES ('pvfrequence', '60');
INSERT INTO `jrun_settings` VALUES ('qihoo', 'a:9:{s:6:\"status\";i:0;s:9:\"searchbox\";i:6;s:7:\"summary\";i:1;s:6:\"jammer\";i:1;s:9:\"maxtopics\";i:10;s:8:\"keywords\";s:0:\"\";s:10:\"adminemail\";s:0:\"\";s:8:\"validity\";i:1;s:14:\"relatedthreads\";a:6:{s:6:\"bbsnum\";i:0;s:6:\"webnum\";i:0;s:4:\"type\";a:3:{s:4:\"blog\";s:4:\"blog\";s:4:\"news\";s:4:\"news\";s:3:\"bbs\";s:3:\"bbs\";}s:6:\"banurl\";s:0:\"\";s:8:\"position\";i:1;s:8:\"validity\";i:1;}}');
INSERT INTO `jrun_settings` VALUES ('ratelogrecord', '5');
INSERT INTO `jrun_settings` VALUES ('regadvance', '0');
INSERT INTO `jrun_settings` VALUES ('regctrl', '0');
INSERT INTO `jrun_settings` VALUES ('regfloodctrl', '0');
INSERT INTO `jrun_settings` VALUES ('regstatus', '1');
INSERT INTO `jrun_settings` VALUES ('regverify', '0');
INSERT INTO `jrun_settings` VALUES ('reportpost', '1');
INSERT INTO `jrun_settings` VALUES ('rewritestatus', '0');
INSERT INTO `jrun_settings` VALUES ('rssstatus', '1');
INSERT INTO `jrun_settings` VALUES ('rssttl', '60');
INSERT INTO `jrun_settings` VALUES ('runwizard', '1');
INSERT INTO `jrun_settings` VALUES ('searchbanperiods', '');
INSERT INTO `jrun_settings` VALUES ('searchctrl', '30');
INSERT INTO `jrun_settings` VALUES ('seccodestatus', '0');
INSERT INTO `jrun_settings` VALUES ('seodescription', '');
INSERT INTO `jrun_settings` VALUES ('seohead', '');
INSERT INTO `jrun_settings` VALUES ('seokeywords', '');
INSERT INTO `jrun_settings` VALUES ('seotitle', '');
INSERT INTO `jrun_settings` VALUES ('showemail', '');
INSERT INTO `jrun_settings` VALUES ('showimages', '1');
INSERT INTO `jrun_settings` VALUES ('showsettings', '7');
INSERT INTO `jrun_settings` VALUES ('sitename', 'Jsprun Technology Ltd');
INSERT INTO `jrun_settings` VALUES ('siteurl', 'http://www.JspRun.net/');
INSERT INTO `jrun_settings` VALUES ('smcols', '4');
INSERT INTO `jrun_settings` VALUES ('smileyinsert', '1');
INSERT INTO `jrun_settings` VALUES ('starthreshold', '2');
INSERT INTO `jrun_settings` VALUES ('statscachelife', '180');
INSERT INTO `jrun_settings` VALUES ('statstatus', '');
INSERT INTO `jrun_settings` VALUES ('styleid', '1');
INSERT INTO `jrun_settings` VALUES ('stylejump', '1');
INSERT INTO `jrun_settings` VALUES ('subforumsindex', '');
INSERT INTO `jrun_settings` VALUES ('threadmaxpages', '1000');
INSERT INTO `jrun_settings` VALUES ('threadsticky', '全局置顶,分区置顶,本版置顶');
INSERT INTO `jrun_settings` VALUES ('timeformat', '2');
INSERT INTO `jrun_settings` VALUES ('timeoffset', '8');
INSERT INTO `jrun_settings` VALUES ('topicperpage', '20');
INSERT INTO `jrun_settings` VALUES ('transfermincredits', '1000');
INSERT INTO `jrun_settings` VALUES ('transsidstatus', '0');
INSERT INTO `jrun_settings` VALUES ('userstatusby', '1');
INSERT INTO `jrun_settings` VALUES ('visitbanperiods', '');
INSERT INTO `jrun_settings` VALUES ('visitedforums', '10');
INSERT INTO `jrun_settings` VALUES ('vtonlinestatus', '1');
INSERT INTO `jrun_settings` VALUES ('wapcharset', '2');
INSERT INTO `jrun_settings` VALUES ('wapdateformat', 'MM/dd');
INSERT INTO `jrun_settings` VALUES ('wapmps', '500');
INSERT INTO `jrun_settings` VALUES ('wapppp', '5');
INSERT INTO `jrun_settings` VALUES ('wapstatus', '1');
INSERT INTO `jrun_settings` VALUES ('waptpp', '10');
INSERT INTO `jrun_settings` VALUES ('watermarkquality', '80');
INSERT INTO `jrun_settings` VALUES ('watermarkstatus', '0');
INSERT INTO `jrun_settings` VALUES ('watermarktrans', '65');
INSERT INTO `jrun_settings` VALUES ('welcomemsg', '0');
INSERT INTO `jrun_settings` VALUES ('welcomemsgtxt', '尊敬的{username}，您已经注册成为{sitename}的会员，请您在发表言论时，遵守当地法律法规。\r\n如果您有什么疑问可以联系管理员，Email: {adminemail}。\r\n\r\n\r\n{bbname}\r\n{time}');
INSERT INTO `jrun_settings` VALUES ('whosonlinestatus', '1');
INSERT INTO `jrun_settings` VALUES ('indexname', 'index.jsp');
INSERT INTO `jrun_settings` VALUES ('spacedata', 'a:11:{s:9:\"cachelife\";s:3:\"900\";s:14:\"limitmythreads\";s:1:\"5\";s:14:\"limitmyreplies\";s:1:\"5\";s:14:\"limitmyrewards\";s:1:\"5\";s:13:\"limitmytrades\";s:1:\"5\";s:13:\"limitmyvideos\";s:1:\"0\";s:12:\"limitmyblogs\";s:1:\"8\";s:14:\"limitmyfriends\";s:1:\"0\";s:16:\"limitmyfavforums\";s:1:\"5\";s:17:\"limitmyfavthreads\";s:1:\"0\";s:10:\"textlength\";s:3:\"300\";}');
INSERT INTO `jrun_settings` VALUES ('thumbstatus', '0');
INSERT INTO `jrun_settings` VALUES ('thumbwidth', '400');
INSERT INTO `jrun_settings` VALUES ('thumbheight', '300');
INSERT INTO `jrun_settings` VALUES ('forumlinkstatus', '1');
INSERT INTO `jrun_settings` VALUES ('pluginjsmenu', '插件');
INSERT INTO `jrun_settings` VALUES ('magicstatus', '1');
INSERT INTO `jrun_settings` VALUES ('magicmarket', '1');
INSERT INTO `jrun_settings` VALUES ('maxmagicprice', '50');
INSERT INTO `jrun_settings` VALUES ('upgradeurl', 'http://localhost/develop/dzhead/develop/upgrade.jsp');
INSERT INTO `jrun_settings` VALUES ('ftp', 'a:10:{s:2:\"on\";s:1:\"0\";s:3:\"ssl\";s:1:\"0\";s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"21\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"attachdir\";s:1:\".\";s:9:\"attachurl\";s:0:\"\";s:7:\"hideurl\";s:1:\"0\";s:7:\"timeout\";s:1:\"0\";}');
INSERT INTO `jrun_settings` VALUES ('wapregister', '0');
INSERT INTO `jrun_settings` VALUES ('jswizard', '');
INSERT INTO `jrun_settings` VALUES ('passport_shopex', '0');
INSERT INTO `jrun_settings` VALUES ('seccodeanimator', '1');
INSERT INTO `jrun_settings` VALUES ('welcomemsgtitle', '{username}，您好，感谢您的注册，请阅读以下内容。');
INSERT INTO `jrun_settings` VALUES ('cacheindexlife', '0');
INSERT INTO `jrun_settings` VALUES ('cachethreadlife', '0');
INSERT INTO `jrun_settings` VALUES ('cachethreaddir', 'forumdata/threadcaches');
INSERT INTO `jrun_settings` VALUES ('jsdateformat', '');
INSERT INTO `jrun_settings` VALUES ('seccodedata', 'a:13:{s:8:\"minposts\";s:0:\"\";s:16:\"loginfailedcount\";i:0;s:5:\"width\";i:150;s:6:\"height\";i:60;s:4:\"type\";s:1:\"0\";s:10:\"background\";s:1:\"1\";s:10:\"adulterate\";s:1:\"1\";s:3:\"ttf\";s:1:\"0\";s:5:\"angle\";s:1:\"0\";s:5:\"color\";s:1:\"1\";s:4:\"size\";s:1:\"0\";s:6:\"shadow\";s:1:\"1\";s:8:\"animator\";s:1:\"0\";}');
INSERT INTO `jrun_settings` VALUES ('frameon', '0');
INSERT INTO `jrun_settings` VALUES ('framewidth', '180');
INSERT INTO `jrun_settings` VALUES ('smrows', '4');
INSERT INTO `jrun_settings` VALUES ('watermarktype', '0');
INSERT INTO `jrun_settings` VALUES ('secqaa', 'a:2:{s:8:\"minposts\";s:1:\"1\";s:6:\"status\";i:0;}');
INSERT INTO `jrun_settings` VALUES ('spacestatus', '1');
INSERT INTO `jrun_settings` VALUES ('whosonline_contract', '0');
INSERT INTO `jrun_settings` VALUES ('attachdir', './attachments');
INSERT INTO `jrun_settings` VALUES ('attachurl', 'attachments');
INSERT INTO `jrun_settings` VALUES ('onlinehold', '15');
INSERT INTO `jrun_settings` VALUES ('msgforward', 'a:3:{s:11:\"refreshtime\";i:3;s:5:\"quick\";i:1;s:8:\"messages\";a:13:{i:0;s:19:\"thread_poll_succeed\";i:1;s:19:\"thread_rate_succeed\";i:2;s:23:\"usergroups_join_succeed\";i:3;s:23:\"usergroups_exit_succeed\";i:4;s:25:\"usergroups_update_succeed\";i:5;s:20:\"buddy_update_succeed\";i:6;s:17:\"post_edit_succeed\";i:7;s:18:\"post_reply_succeed\";i:8;s:24:\"post_edit_delete_succeed\";i:9;s:22:\"post_newthread_succeed\";i:10;s:13:\"admin_succeed\";i:11;s:17:\"pm_delete_succeed\";i:12;s:15:\"search_redirect\";}}');
INSERT INTO `jrun_settings` VALUES ('smthumb', '20');
INSERT INTO `jrun_settings` VALUES ('tagstatus', '1');
INSERT INTO `jrun_settings` VALUES ('hottags', '20');
INSERT INTO `jrun_settings` VALUES ('viewthreadtags', '100');
INSERT INTO `jrun_settings` VALUES ('rewritecompatible', '');
INSERT INTO `jrun_settings` VALUES ('imagelib', '0');
INSERT INTO `jrun_settings` VALUES ('imageimpath', '');
INSERT INTO `jrun_settings` VALUES ('regname', 'register.jsp');
INSERT INTO `jrun_settings` VALUES ('reglinkname', '注册');
INSERT INTO `jrun_settings` VALUES ('activitytype', '朋友聚会\r\n出外郊游\r\n自驾出行\r\n公益活动\r\n线上活动');
INSERT INTO `jrun_settings` VALUES ('userdateformat', 'yyyy-MM-dd\r\nyyyy/MM/dd\r\ndd-MM-yyyy\r\ndd/MM/yyyy');
INSERT INTO `jrun_settings` VALUES ('tradetypes', '');
INSERT INTO `jrun_settings` VALUES ('tradeimagewidth', '200');
INSERT INTO `jrun_settings` VALUES ('tradeimageheight', '150');
INSERT INTO `jrun_settings` VALUES ('customauthorinfo', 'a:1:{i:0;a:9:{s:3:\"uid\";a:1:{s:4:\"menu\";s:1:\"1\";}s:5:\"posts\";a:1:{s:4:\"menu\";s:1:\"1\";}s:6:\"digest\";a:1:{s:4:\"menu\";s:1:\"1\";}s:7:\"credits\";a:1:{s:4:\"menu\";s:1:\"1\";}s:8:\"readperm\";a:1:{s:4:\"menu\";s:1:\"1\";}s:8:\"location\";a:1:{s:4:\"menu\";s:1:\"1\";}s:6:\"oltime\";a:1:{s:4:\"menu\";s:1:\"1\";}s:7:\"regtime\";a:1:{s:4:\"menu\";s:1:\"1\";}s:8:\"lastdate\";a:1:{s:4:\"menu\";s:1:\"1\";}}}');
INSERT INTO `jrun_settings` VALUES ('ec_credit', 'a:2:{s:18:\"maxcreditspermonth\";i:6;s:4:\"rank\";a:15:{i:1;i:4;i:2;i:11;i:3;i:41;i:4;i:91;i:5;i:151;i:6;i:251;i:7;i:501;i:8;i:1001;i:9;i:2001;i:10;i:5001;i:11;i:10001;i:12;i:20001;i:13;i:50001;i:14;i:100001;i:15;i:200001;}}');
INSERT INTO `jrun_settings` VALUES ('mail', 'a:10:{s:8:\"mailsend\";s:1:\"2\";s:6:\"server\";s:13:\"smtp.sina.com\";s:4:\"port\";s:2:\"25\";s:4:\"auth\";s:1:\"1\";s:4:\"from\";s:26:\"JspRun <username@sina.com>\";s:13:\"auth_username\";s:17:\"username@sina.com\";s:13:\"auth_password\";s:8:\"password\";s:13:\"maildelimiter\";s:1:\"0\";s:12:\"mailusername\";s:1:\"1\";s:15:\"sendmail_silent\";s:1:\"1\";}');
INSERT INTO `jrun_settings` VALUES ('watermarktext', '');
INSERT INTO `jrun_settings` VALUES ('watermarkminwidth', '0');
INSERT INTO `jrun_settings` VALUES ('watermarkminheight', '0');
INSERT INTO `jrun_settings` VALUES ('inviteconfig', '');
INSERT INTO `jrun_settings` VALUES ('historyposts', '0	8');
INSERT INTO `jrun_settings` VALUES ('zoomstatus', '1');
INSERT INTO `jrun_settings` VALUES ('postno', '#');
INSERT INTO `jrun_settings` VALUES ('postnocustom', '');
INSERT INTO `jrun_settings` VALUES ('maxbiotradesize', '400');
INSERT INTO `jrun_settings` VALUES ('videoinfo', 'a:9:{s:4:\"open\";i:0;s:5:\"vtype\";s:34:\"新闻 军事 音乐 影视 动漫\";s:6:\"bbname\";s:0:\"\";s:3:\"url\";s:0:\"\";s:5:\"email\";s:0:\"\";s:4:\"logo\";s:0:\"\";s:8:\"sitetype\";s:251:\"新闻	军事	音乐	影视	动漫	游戏	美女	娱乐	交友	教育	艺术	学术	技术	动物	旅游	生活	时尚	电脑	汽车	手机	摄影	戏曲	外语	公益	校园	数码	电脑	历史	天文	地理	财经	地区	人物	体育	健康	综合\";s:7:\"vsiteid\";s:0:\"\";s:9:\"vsitecode\";s:0:\"\";}');
INSERT INTO `jrun_settings` VALUES ('google', 'a:3:{s:4:\"lang\";s:0:\"\";s:9:\"searchbox\";s:1:\"1\";s:6:\"status\";s:1:\"0\";}');
INSERT INTO `jrun_settings` VALUES ('baidu', 'a:3:{s:4:\"lang\";N;s:9:\"searchbox\";s:1:\"7\";s:6:\"status\";s:1:\"0\";}');
INSERT INTO `jrun_settings` VALUES ('baidusitemap', '1');
INSERT INTO `jrun_settings` VALUES ('baidusitemap_life', '12');
INSERT INTO `jrun_settings` VALUES ('adminemail', 'admin@your.com');
INSERT INTO `jrun_settings` VALUES ('dbreport', '0');
INSERT INTO `jrun_settings` VALUES ('errorreport', '1');
INSERT INTO `jrun_settings` VALUES ('attackevasive', '0');
INSERT INTO `jrun_settings` VALUES ('admincp_forcesecques', '0');
INSERT INTO `jrun_settings` VALUES ('admincp_checkip', '1');
INSERT INTO `jrun_settings` VALUES ('admincp_tpledit', '1');
INSERT INTO `jrun_settings` VALUES ('admincp_runquery', '1');
INSERT INTO `jrun_settings` VALUES ('admincp_dbimport', '1');
INSERT INTO `jrun_settings` VALUES ('cookiepre', 'jrun_');
INSERT INTO `jrun_settings` VALUES ('cookiedomain', '');
INSERT INTO `jrun_settings` VALUES ('cookiepath', '/');
INSERT INTO `jrun_settings` VALUES ('languages', 'a:2:{i:1;a:4:{s:9:\"available\";i:1;s:7:\"default\";i:1;s:8:\"language\";s:5:\"zh_CN\";s:4:\"name\";s:12:\"中文简体\";}i:2;a:4:{s:9:\"available\";i:1;s:7:\"default\";i:0;s:8:\"language\";s:5:\"zh_TW\";s:4:\"name\";s:12:\"中文繁體\";}}');
INSERT INTO `jrun_settings` VALUES ('showjavacode', '0');
INSERT INTO `jrun_settings` VALUES ('lastupdate', '1453723393');
INSERT INTO `jrun_settings` VALUES ('status', '0');

-- ----------------------------
-- Table structure for `jrun_smilies`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_smilies`;
CREATE TABLE `jrun_smilies` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(6) unsigned NOT NULL,
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `type` enum('smiley','icon') NOT NULL DEFAULT 'smiley',
  `code` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_smilies
-- ----------------------------
INSERT INTO `jrun_smilies` VALUES ('1', '1', '0', 'smiley', ':)', 'smile.gif');
INSERT INTO `jrun_smilies` VALUES ('2', '1', '0', 'smiley', ':(', 'sad.gif');
INSERT INTO `jrun_smilies` VALUES ('3', '1', '0', 'smiley', ':D', 'biggrin.gif');
INSERT INTO `jrun_smilies` VALUES ('4', '1', '0', 'smiley', ':\'(', 'cry.gif');
INSERT INTO `jrun_smilies` VALUES ('5', '1', '0', 'smiley', ':@', 'huffy.gif');
INSERT INTO `jrun_smilies` VALUES ('6', '1', '0', 'smiley', ':o', 'shocked.gif');
INSERT INTO `jrun_smilies` VALUES ('7', '1', '0', 'smiley', ':P', 'tongue.gif');
INSERT INTO `jrun_smilies` VALUES ('8', '1', '0', 'smiley', ':#', 'shy.gif');
INSERT INTO `jrun_smilies` VALUES ('9', '1', '0', 'smiley', ';P', 'titter.gif');
INSERT INTO `jrun_smilies` VALUES ('10', '1', '0', 'smiley', ':L', 'sweat.gif');
INSERT INTO `jrun_smilies` VALUES ('11', '1', '0', 'smiley', ':Q', 'mad.gif');
INSERT INTO `jrun_smilies` VALUES ('12', '1', '0', 'smiley', ':lol', 'lol.gif');
INSERT INTO `jrun_smilies` VALUES ('13', '1', '0', 'smiley', ':hug:', 'hug.gif');
INSERT INTO `jrun_smilies` VALUES ('14', '1', '0', 'smiley', ':victory:', 'victory.gif');
INSERT INTO `jrun_smilies` VALUES ('15', '1', '0', 'smiley', ':time:', 'time.gif');
INSERT INTO `jrun_smilies` VALUES ('16', '1', '0', 'smiley', ':kiss:', 'kiss.gif');
INSERT INTO `jrun_smilies` VALUES ('17', '1', '0', 'smiley', ':handshake', 'handshake.gif');
INSERT INTO `jrun_smilies` VALUES ('18', '1', '0', 'smiley', ':call:', 'call.gif');
INSERT INTO `jrun_smilies` VALUES ('19', '0', '0', 'icon', '', 'icon1.gif');
INSERT INTO `jrun_smilies` VALUES ('20', '0', '0', 'icon', '', 'icon2.gif');
INSERT INTO `jrun_smilies` VALUES ('21', '0', '0', 'icon', '', 'icon3.gif');
INSERT INTO `jrun_smilies` VALUES ('22', '0', '0', 'icon', '', 'icon4.gif');
INSERT INTO `jrun_smilies` VALUES ('23', '0', '0', 'icon', '', 'icon5.gif');
INSERT INTO `jrun_smilies` VALUES ('24', '0', '0', 'icon', '', 'icon6.gif');
INSERT INTO `jrun_smilies` VALUES ('25', '0', '0', 'icon', '', 'icon7.gif');
INSERT INTO `jrun_smilies` VALUES ('26', '0', '0', 'icon', '', 'icon8.gif');
INSERT INTO `jrun_smilies` VALUES ('27', '0', '0', 'icon', '', 'icon9.gif');
INSERT INTO `jrun_smilies` VALUES ('28', '1', '0', 'smiley', ':loveliness:', 'loveliness.gif');
INSERT INTO `jrun_smilies` VALUES ('29', '1', '0', 'smiley', ':funk:', 'funk.gif');

-- ----------------------------
-- Table structure for `jrun_spacecaches`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_spacecaches`;
CREATE TABLE `jrun_spacecaches` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `variable` varchar(20) NOT NULL,
  `value` text NOT NULL,
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_spacecaches
-- ----------------------------
INSERT INTO `jrun_spacecaches` VALUES ('1', 'buyercredit', 'a:5:{s:8:\"thisweek\";a:4:{s:5:\"total\";i:0;s:4:\"soso\";i:0;s:4:\"good\";i:0;s:3:\"bad\";i:0;}s:6:\"before\";a:4:{s:5:\"total\";i:0;s:4:\"soso\";i:0;s:4:\"good\";i:0;s:3:\"bad\";i:0;}s:9:\"thismonth\";a:4:{s:5:\"total\";i:0;s:4:\"soso\";i:0;s:4:\"good\";i:0;s:3:\"bad\";i:0;}s:8:\"halfyear\";a:4:{s:5:\"total\";i:0;s:4:\"soso\";i:0;s:4:\"good\";i:0;s:3:\"bad\";i:0;}s:3:\"all\";a:4:{s:5:\"total\";i:0;s:4:\"soso\";i:0;s:4:\"good\";i:0;s:3:\"bad\";i:0;}}', '1453372509');
INSERT INTO `jrun_spacecaches` VALUES ('1', 'sellercredit', 'a:5:{s:8:\"thisweek\";a:4:{s:5:\"total\";i:0;s:4:\"soso\";i:0;s:4:\"good\";i:0;s:3:\"bad\";i:0;}s:6:\"before\";a:4:{s:5:\"total\";i:0;s:4:\"soso\";i:0;s:4:\"good\";i:0;s:3:\"bad\";i:0;}s:9:\"thismonth\";a:4:{s:5:\"total\";i:0;s:4:\"soso\";i:0;s:4:\"good\";i:0;s:3:\"bad\";i:0;}s:8:\"halfyear\";a:4:{s:5:\"total\";i:0;s:4:\"soso\";i:0;s:4:\"good\";i:0;s:3:\"bad\";i:0;}s:3:\"all\";a:4:{s:5:\"total\";i:0;s:4:\"soso\";i:0;s:4:\"good\";i:0;s:3:\"bad\";i:0;}}', '1453372509');

-- ----------------------------
-- Table structure for `jrun_stats`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_stats`;
CREATE TABLE `jrun_stats` (
  `type` char(10) NOT NULL DEFAULT '',
  `variable` char(10) NOT NULL DEFAULT '',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`,`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_stats
-- ----------------------------
INSERT INTO `jrun_stats` VALUES ('total', 'hits', '1');
INSERT INTO `jrun_stats` VALUES ('total', 'members', '0');
INSERT INTO `jrun_stats` VALUES ('total', 'guests', '1');
INSERT INTO `jrun_stats` VALUES ('os', 'Windows', '1');
INSERT INTO `jrun_stats` VALUES ('os', 'Mac', '0');
INSERT INTO `jrun_stats` VALUES ('os', 'Linux', '0');
INSERT INTO `jrun_stats` VALUES ('os', 'FreeBSD', '0');
INSERT INTO `jrun_stats` VALUES ('os', 'SunOS', '0');
INSERT INTO `jrun_stats` VALUES ('os', 'OS/2', '0');
INSERT INTO `jrun_stats` VALUES ('os', 'AIX', '0');
INSERT INTO `jrun_stats` VALUES ('os', 'Spiders', '0');
INSERT INTO `jrun_stats` VALUES ('os', 'Other', '0');
INSERT INTO `jrun_stats` VALUES ('browser', 'MSIE', '1');
INSERT INTO `jrun_stats` VALUES ('browser', 'Netscape', '0');
INSERT INTO `jrun_stats` VALUES ('browser', 'Mozilla', '0');
INSERT INTO `jrun_stats` VALUES ('browser', 'Lynx', '0');
INSERT INTO `jrun_stats` VALUES ('browser', 'Opera', '0');
INSERT INTO `jrun_stats` VALUES ('browser', 'Konqueror', '0');
INSERT INTO `jrun_stats` VALUES ('browser', 'Other', '0');
INSERT INTO `jrun_stats` VALUES ('week', '0', '0');
INSERT INTO `jrun_stats` VALUES ('week', '1', '1');
INSERT INTO `jrun_stats` VALUES ('week', '2', '0');
INSERT INTO `jrun_stats` VALUES ('week', '3', '0');
INSERT INTO `jrun_stats` VALUES ('week', '4', '0');
INSERT INTO `jrun_stats` VALUES ('week', '5', '0');
INSERT INTO `jrun_stats` VALUES ('week', '6', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '00', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '01', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '02', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '03', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '04', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '05', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '06', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '07', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '08', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '09', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '10', '1');
INSERT INTO `jrun_stats` VALUES ('hour', '11', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '12', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '13', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '14', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '15', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '16', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '17', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '18', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '19', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '20', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '21', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '22', '0');
INSERT INTO `jrun_stats` VALUES ('hour', '23', '0');

-- ----------------------------
-- Table structure for `jrun_statvars`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_statvars`;
CREATE TABLE `jrun_statvars` (
  `type` varchar(20) NOT NULL DEFAULT '',
  `variable` varchar(20) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`type`,`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_statvars
-- ----------------------------
INSERT INTO `jrun_statvars` VALUES ('main', 'lastupdate', '1453285985');
INSERT INTO `jrun_statvars` VALUES ('main', 'forums', '1');
INSERT INTO `jrun_statvars` VALUES ('main', 'threads', '2');
INSERT INTO `jrun_statvars` VALUES ('main', 'runtime', '0.0482');
INSERT INTO `jrun_statvars` VALUES ('main', 'posts', '4');
INSERT INTO `jrun_statvars` VALUES ('main', 'members', '3');
INSERT INTO `jrun_statvars` VALUES ('main', 'postsaddtoday', '4');
INSERT INTO `jrun_statvars` VALUES ('main', 'membersaddtoday', '2');
INSERT INTO `jrun_statvars` VALUES ('main', 'admins', '1');
INSERT INTO `jrun_statvars` VALUES ('main', 'memnonpost', '1');
INSERT INTO `jrun_statvars` VALUES ('main', 'hotforum', 'a:4:{s:3:\"fid\";s:1:\"2\";s:5:\"posts\";s:1:\"4\";s:7:\"threads\";s:1:\"2\";s:4:\"name\";s:12:\"默认版块\";}');
INSERT INTO `jrun_statvars` VALUES ('main', 'bestmem', '<a href=\"space.jsp?username=test\"><strong>test</strong></a>');
INSERT INTO `jrun_statvars` VALUES ('main', 'bestmemposts', '2');
INSERT INTO `jrun_statvars` VALUES ('monthposts', 'starttime', '2016-01-01');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20151221', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20151222', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20151223', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20151224', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20151225', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20151226', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20151227', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20151228', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20151229', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20151230', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20151231', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160101', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160102', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160103', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160104', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160105', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160106', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160107', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160108', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160109', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160110', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160111', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160112', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160113', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160114', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160115', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160116', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160117', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160118', '0');
INSERT INTO `jrun_statvars` VALUES ('dayposts', '20160119', '0');
INSERT INTO `jrun_statvars` VALUES ('forumsrank', 'lastupdate', '1453285992');
INSERT INTO `jrun_statvars` VALUES ('forumsrank', 'threads', 'a:1:{i:0;a:3:{s:3:\"fid\";s:1:\"2\";s:7:\"threads\";s:1:\"2\";s:4:\"name\";s:12:\"默认版块\";}}');
INSERT INTO `jrun_statvars` VALUES ('forumsrank', 'forums', '1');
INSERT INTO `jrun_statvars` VALUES ('forumsrank', 'posts', 'a:1:{i:0;a:3:{s:5:\"posts\";s:1:\"4\";s:3:\"fid\";s:1:\"2\";s:4:\"name\";s:12:\"默认版块\";}}');
INSERT INTO `jrun_statvars` VALUES ('forumsrank', 'thismonth', 'a:1:{i:0;a:3:{s:5:\"posts\";s:1:\"4\";s:3:\"fid\";s:1:\"2\";s:4:\"name\";s:12:\"默认版块\";}}');
INSERT INTO `jrun_statvars` VALUES ('forumsrank', 'today', 'a:1:{i:0;a:3:{s:5:\"posts\";s:1:\"4\";s:3:\"fid\";s:1:\"2\";s:4:\"name\";s:12:\"默认版块\";}}');
INSERT INTO `jrun_statvars` VALUES ('postsrank', 'lastupdate', '1453285997');
INSERT INTO `jrun_statvars` VALUES ('postsrank', 'posts', 'a:3:{i:0;a:3:{s:5:\"posts\";s:1:\"2\";s:3:\"uid\";s:1:\"2\";s:8:\"username\";s:4:\"test\";}i:1;a:3:{s:5:\"posts\";s:1:\"2\";s:3:\"uid\";s:1:\"3\";s:8:\"username\";s:4:\"9527\";}i:2;a:3:{s:5:\"posts\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";}}');
INSERT INTO `jrun_statvars` VALUES ('postsrank', 'digestposts', 'a:3:{i:0;a:3:{s:3:\"uid\";s:1:\"1\";s:11:\"digestposts\";s:1:\"0\";s:8:\"username\";s:5:\"admin\";}i:1;a:3:{s:3:\"uid\";s:1:\"2\";s:11:\"digestposts\";s:1:\"0\";s:8:\"username\";s:4:\"test\";}i:2;a:3:{s:3:\"uid\";s:1:\"3\";s:11:\"digestposts\";s:1:\"0\";s:8:\"username\";s:4:\"9527\";}}');
INSERT INTO `jrun_statvars` VALUES ('postsrank', 'thismonth', 'a:2:{i:0;a:2:{s:5:\"posts\";s:1:\"2\";s:8:\"username\";s:4:\"test\";}i:1;a:2:{s:5:\"posts\";s:1:\"2\";s:8:\"username\";s:4:\"9527\";}}');
INSERT INTO `jrun_statvars` VALUES ('postsrank', 'today', 'a:2:{i:0;a:2:{s:5:\"posts\";s:1:\"2\";s:8:\"username\";s:4:\"test\";}i:1;a:2:{s:5:\"posts\";s:1:\"2\";s:8:\"username\";s:4:\"9527\";}}');
INSERT INTO `jrun_statvars` VALUES ('creditsrank', 'lastupdate', '1453286000');
INSERT INTO `jrun_statvars` VALUES ('creditsrank', 'credits', 'a:3:{i:0;a:3:{s:3:\"uid\";s:1:\"1\";s:7:\"credits\";s:1:\"0\";s:8:\"username\";s:5:\"admin\";}i:1;a:3:{s:3:\"uid\";s:1:\"2\";s:7:\"credits\";s:1:\"0\";s:8:\"username\";s:4:\"test\";}i:2;a:3:{s:3:\"uid\";s:1:\"3\";s:7:\"credits\";s:1:\"0\";s:8:\"username\";s:4:\"9527\";}}');
INSERT INTO `jrun_statvars` VALUES ('creditsrank', 'extendedcredits', 'a:2:{i:1;a:3:{i:0;a:3:{s:3:\"uid\";s:1:\"1\";s:7:\"credits\";s:1:\"0\";s:8:\"username\";s:5:\"admin\";}i:1;a:3:{s:3:\"uid\";s:1:\"2\";s:7:\"credits\";s:1:\"0\";s:8:\"username\";s:4:\"test\";}i:2;a:3:{s:3:\"uid\";s:1:\"3\";s:7:\"credits\";s:1:\"0\";s:8:\"username\";s:4:\"9527\";}}i:2;a:3:{i:0;a:3:{s:3:\"uid\";s:1:\"1\";s:7:\"credits\";s:1:\"0\";s:8:\"username\";s:5:\"admin\";}i:1;a:3:{s:3:\"uid\";s:1:\"2\";s:7:\"credits\";s:1:\"0\";s:8:\"username\";s:4:\"test\";}i:2;a:3:{s:3:\"uid\";s:1:\"3\";s:7:\"credits\";s:1:\"0\";s:8:\"username\";s:4:\"9527\";}}}');
INSERT INTO `jrun_statvars` VALUES ('trade', 'lastupdate', '1453286001');
INSERT INTO `jrun_statvars` VALUES ('trade', 'tradesums', 'a:0:{}');
INSERT INTO `jrun_statvars` VALUES ('trade', 'totalitems', 'a:0:{}');
INSERT INTO `jrun_statvars` VALUES ('onlines', 'lastupdate', '1453286004');
INSERT INTO `jrun_statvars` VALUES ('onlines', 'total', 'a:2:{i:0;a:3:{s:3:\"uid\";s:1:\"1\";s:4:\"time\";s:3:\"1.0\";s:8:\"username\";s:5:\"admin\";}i:1;a:3:{s:3:\"uid\";s:1:\"3\";s:4:\"time\";s:3:\"0.5\";s:8:\"username\";s:4:\"9527\";}}');
INSERT INTO `jrun_statvars` VALUES ('onlines', 'thismonth', 'a:2:{i:0;a:3:{s:3:\"uid\";s:1:\"3\";s:4:\"time\";s:3:\"0.5\";s:8:\"username\";s:4:\"9527\";}i:1;a:3:{s:3:\"uid\";s:1:\"1\";s:4:\"time\";s:3:\"0.0\";s:8:\"username\";s:5:\"admin\";}}');
INSERT INTO `jrun_statvars` VALUES ('team', 'lastupdate', '1453286005');
INSERT INTO `jrun_statvars` VALUES ('team', 'team', 'a:10:{s:6:\"forums\";a:1:{i:1;a:2:{i:1;a:6:{s:10:\"moderators\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:3:\"fid\";s:1:\"1\";s:3:\"fup\";s:1:\"0\";s:4:\"type\";s:5:\"group\";s:4:\"name\";s:7:\"JspRun!\";}i:2;a:6:{s:10:\"moderators\";s:1:\"0\";s:12:\"inheritedmod\";s:1:\"0\";s:3:\"fid\";s:1:\"2\";s:3:\"fup\";s:1:\"1\";s:4:\"type\";s:5:\"forum\";s:4:\"name\";s:12:\"默认版块\";}}}s:13:\"avgmodactions\";d:0.0;s:10:\"avgoffdays\";d:0.0;s:14:\"avgthismonthol\";d:0.0;s:10:\"moderators\";a:0:{}s:10:\"categories\";a:0:{}s:6:\"admins\";a:1:{i:0;s:1:\"1\";}s:10:\"avgtotalol\";d:1.0;s:7:\"members\";a:1:{i:1;a:9:{s:3:\"uid\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:5:\"posts\";s:1:\"0\";s:7:\"credits\";s:1:\"0\";s:7:\"totalol\";s:3:\"1.0\";s:12:\"lastactivity\";s:10:\"1453285965\";s:7:\"offdays\";s:1:\"0\";s:7:\"adminid\";s:1:\"1\";s:11:\"thismonthol\";s:3:\"0.0\";}}s:17:\"avgthismonthposts\";d:0.0;}');

-- ----------------------------
-- Table structure for `jrun_styles`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_styles`;
CREATE TABLE `jrun_styles` (
  `styleid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `templateid` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`styleid`),
  KEY `available` (`available`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_styles
-- ----------------------------
INSERT INTO `jrun_styles` VALUES ('1', '默认模板', '1', '1');
INSERT INTO `jrun_styles` VALUES ('2', '经典风格', '1', '2');
INSERT INTO `jrun_styles` VALUES ('3', '喝彩奥运', '1', '3');
INSERT INTO `jrun_styles` VALUES ('4', '深邃永恒', '1', '4');
INSERT INTO `jrun_styles` VALUES ('5', '粉妆精灵', '1', '5');
INSERT INTO `jrun_styles` VALUES ('6', '诗意田园', '1', '2');
INSERT INTO `jrun_styles` VALUES ('7', '春意盎然', '1', '2');

-- ----------------------------
-- Table structure for `jrun_stylevars`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_stylevars`;
CREATE TABLE `jrun_stylevars` (
  `stylevarid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `styleid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `variable` text NOT NULL,
  `substitute` text NOT NULL,
  PRIMARY KEY (`stylevarid`),
  KEY `styleid` (`styleid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=329 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_stylevars
-- ----------------------------
INSERT INTO `jrun_stylevars` VALUES ('42', '1', 'available', '');
INSERT INTO `jrun_stylevars` VALUES ('43', '1', 'commonboxborder', '#1e3647');
INSERT INTO `jrun_stylevars` VALUES ('44', '1', 'noticebg', '#FAFAFA');
INSERT INTO `jrun_stylevars` VALUES ('45', '1', 'tablebg', '#F7F7F7');
INSERT INTO `jrun_stylevars` VALUES ('46', '1', 'highlightlink', '#FF9D25');
INSERT INTO `jrun_stylevars` VALUES ('47', '1', 'commonboxbg', '#FAFAFA');
INSERT INTO `jrun_stylevars` VALUES ('48', '1', 'bgcolor', '#F7F7F7');
INSERT INTO `jrun_stylevars` VALUES ('49', '1', 'altbg1', '#F7F7F7');
INSERT INTO `jrun_stylevars` VALUES ('50', '1', 'altbg2', '#FFFFFF');
INSERT INTO `jrun_stylevars` VALUES ('51', '1', 'link', '#123456');
INSERT INTO `jrun_stylevars` VALUES ('52', '1', 'bordercolor', '#D7D7D7');
INSERT INTO `jrun_stylevars` VALUES ('53', '1', 'headercolor', '#FAFAFA forumbox_head.gif');
INSERT INTO `jrun_stylevars` VALUES ('54', '1', 'headertext', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('55', '1', 'tabletext', '#184057');
INSERT INTO `jrun_stylevars` VALUES ('56', '1', 'text', '#1e3647');
INSERT INTO `jrun_stylevars` VALUES ('57', '1', 'catcolor', '#457590');
INSERT INTO `jrun_stylevars` VALUES ('58', '1', 'borderwidth', '1px');
INSERT INTO `jrun_stylevars` VALUES ('59', '1', 'fontsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('60', '1', 'tablespace', '0px');
INSERT INTO `jrun_stylevars` VALUES ('61', '1', 'msgfontsize', '14px');
INSERT INTO `jrun_stylevars` VALUES ('62', '1', 'msgbigsize', '16px');
INSERT INTO `jrun_stylevars` VALUES ('63', '1', 'msgsmallsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('64', '1', 'font', 'Arial,Helvetica,sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('65', '1', 'smfontsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('66', '1', 'smfont', 'Arial,Helvetica,sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('67', '1', 'bgborder', '#1e3647');
INSERT INTO `jrun_stylevars` VALUES ('68', '1', 'maintablewidth', '');
INSERT INTO `jrun_stylevars` VALUES ('69', '1', 'imgdir', 'images/default');
INSERT INTO `jrun_stylevars` VALUES ('70', '1', 'boardimg', 'logo.gif');
INSERT INTO `jrun_stylevars` VALUES ('71', '1', 'inputborder', '#1e3647');
INSERT INTO `jrun_stylevars` VALUES ('72', '1', 'catborder', '#1e3647');
INSERT INTO `jrun_stylevars` VALUES ('73', '1', 'lighttext', '#000000');
INSERT INTO `jrun_stylevars` VALUES ('74', '1', 'framebgcolor', '');
INSERT INTO `jrun_stylevars` VALUES ('75', '1', 'headermenu', '');
INSERT INTO `jrun_stylevars` VALUES ('76', '1', 'headermenutext', '#fff');
INSERT INTO `jrun_stylevars` VALUES ('77', '1', 'boxspace', '10px');
INSERT INTO `jrun_stylevars` VALUES ('78', '1', 'portalboxbgcode', '#FFF portalbox_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('79', '1', 'noticeborder', '#1e3647');
INSERT INTO `jrun_stylevars` VALUES ('80', '1', 'noticetext', '#FF8800');
INSERT INTO `jrun_stylevars` VALUES ('81', '1', 'PBG', '#4d7c96');
INSERT INTO `jrun_stylevars` VALUES ('82', '1', 'MENUCONTEXTCOLOR', '#DEDEDE');
INSERT INTO `jrun_stylevars` VALUES ('83', '1', 'JPBG', '#FFF {IMGDIR/jpbg.gif}');
INSERT INTO `jrun_stylevars` VALUES ('84', '1', 'INFOTEXT', '#FAFAFA');
INSERT INTO `jrun_stylevars` VALUES ('85', '1', 'OBG', '#F4F4F4');
INSERT INTO `jrun_stylevars` VALUES ('86', '1', 'OTHERBG', '#1e3647');
INSERT INTO `jrun_stylevars` VALUES ('87', '1', 'stypeid', '1');
INSERT INTO `jrun_stylevars` VALUES ('88', '2', 'available', '');
INSERT INTO `jrun_stylevars` VALUES ('89', '2', 'commonboxborder', '#E8E8E8');
INSERT INTO `jrun_stylevars` VALUES ('90', '2', 'noticebg', '#FFFFF2');
INSERT INTO `jrun_stylevars` VALUES ('91', '2', 'tablebg', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('92', '2', 'highlightlink', '#069');
INSERT INTO `jrun_stylevars` VALUES ('93', '2', 'commonboxbg', '#F7F7F7');
INSERT INTO `jrun_stylevars` VALUES ('94', '2', 'bgcolor', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('95', '2', 'altbg1', '#F5FAFE');
INSERT INTO `jrun_stylevars` VALUES ('96', '2', 'altbg2', '#E8F3FD');
INSERT INTO `jrun_stylevars` VALUES ('97', '2', 'link', '#000');
INSERT INTO `jrun_stylevars` VALUES ('98', '2', 'bordercolor', '#9DB3C5');
INSERT INTO `jrun_stylevars` VALUES ('99', '2', 'headercolor', '#2F589C header_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('100', '2', 'headertext', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('101', '2', 'tabletext', '#000');
INSERT INTO `jrun_stylevars` VALUES ('102', '2', 'text', '#666');
INSERT INTO `jrun_stylevars` VALUES ('103', '2', 'catcolor', '#E8F3FD cat_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('104', '2', 'borderwidth', '1px');
INSERT INTO `jrun_stylevars` VALUES ('105', '2', 'fontsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('106', '2', 'tablespace', '1px');
INSERT INTO `jrun_stylevars` VALUES ('107', '2', 'msgfontsize', '14px');
INSERT INTO `jrun_stylevars` VALUES ('108', '2', 'msgbigsize', '16px');
INSERT INTO `jrun_stylevars` VALUES ('109', '2', 'msgsmallsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('110', '2', 'font', 'Helvetica, Arial, sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('111', '2', 'smfontsize', '0.83em');
INSERT INTO `jrun_stylevars` VALUES ('112', '2', 'smfont', 'Verdana, Arial, Helvetica, sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('113', '2', 'bgborder', '#CAD9EA');
INSERT INTO `jrun_stylevars` VALUES ('114', '2', 'maintablewidth', '98%');
INSERT INTO `jrun_stylevars` VALUES ('115', '2', 'imgdir', 'images/Classic');
INSERT INTO `jrun_stylevars` VALUES ('116', '2', 'boardimg', 'logo.gif');
INSERT INTO `jrun_stylevars` VALUES ('117', '2', 'inputborder', '#DDD');
INSERT INTO `jrun_stylevars` VALUES ('118', '2', 'catborder', '#CAD9EA');
INSERT INTO `jrun_stylevars` VALUES ('119', '2', 'lighttext', '#999');
INSERT INTO `jrun_stylevars` VALUES ('120', '2', 'framebgcolor', 'frame_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('121', '2', 'headermenu', '#FFF menu_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('122', '2', 'headermenutext', '#333');
INSERT INTO `jrun_stylevars` VALUES ('123', '2', 'boxspace', '10px');
INSERT INTO `jrun_stylevars` VALUES ('124', '2', 'portalboxbgcode', '#FFF portalbox_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('125', '2', 'noticeborder', '#EDEDCE');
INSERT INTO `jrun_stylevars` VALUES ('126', '2', 'noticetext', '#090');
INSERT INTO `jrun_stylevars` VALUES ('127', '2', 'stypeid', '1');
INSERT INTO `jrun_stylevars` VALUES ('128', '3', 'available', '');
INSERT INTO `jrun_stylevars` VALUES ('129', '3', 'bgcolor', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('130', '3', 'altbg1', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('131', '3', 'altbg2', '#F7F7F3');
INSERT INTO `jrun_stylevars` VALUES ('132', '3', 'link', '#262626');
INSERT INTO `jrun_stylevars` VALUES ('133', '3', 'bordercolor', '#C1C1C1');
INSERT INTO `jrun_stylevars` VALUES ('134', '3', 'headercolor', '#FFF forumbox_head.gif');
INSERT INTO `jrun_stylevars` VALUES ('135', '3', 'headertext', '#D00');
INSERT INTO `jrun_stylevars` VALUES ('136', '3', 'catcolor', '#F90 cat_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('137', '3', 'tabletext', '#535353');
INSERT INTO `jrun_stylevars` VALUES ('138', '3', 'text', '#535353');
INSERT INTO `jrun_stylevars` VALUES ('139', '3', 'borderwidth', '1px');
INSERT INTO `jrun_stylevars` VALUES ('140', '3', 'tablespace', '1px');
INSERT INTO `jrun_stylevars` VALUES ('141', '3', 'fontsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('142', '3', 'msgfontsize', '14px');
INSERT INTO `jrun_stylevars` VALUES ('143', '3', 'msgbigsize', '16px');
INSERT INTO `jrun_stylevars` VALUES ('144', '3', 'msgsmallsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('145', '3', 'font', 'Arial,Helvetica,sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('146', '3', 'smfontsize', '11px');
INSERT INTO `jrun_stylevars` VALUES ('147', '3', 'smfont', 'Arial,Helvetica,sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('148', '3', 'boardimg', 'logo.gif');
INSERT INTO `jrun_stylevars` VALUES ('149', '3', 'imgdir', './images/Beijing2008');
INSERT INTO `jrun_stylevars` VALUES ('150', '3', 'maintablewidth', '98%');
INSERT INTO `jrun_stylevars` VALUES ('151', '3', 'bgborder', '#C1C1C1');
INSERT INTO `jrun_stylevars` VALUES ('152', '3', 'catborder', '#E2E2E2');
INSERT INTO `jrun_stylevars` VALUES ('153', '3', 'inputborder', '#D7D7D7');
INSERT INTO `jrun_stylevars` VALUES ('154', '3', 'lighttext', '#535353');
INSERT INTO `jrun_stylevars` VALUES ('155', '3', 'headermenu', '#FFF menu_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('156', '3', 'headermenutext', '#54564C');
INSERT INTO `jrun_stylevars` VALUES ('157', '3', 'framebgcolor', '');
INSERT INTO `jrun_stylevars` VALUES ('158', '3', 'noticebg', '');
INSERT INTO `jrun_stylevars` VALUES ('159', '3', 'commonboxborder', '#F0F0ED');
INSERT INTO `jrun_stylevars` VALUES ('160', '3', 'tablebg', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('161', '3', 'highlightlink', '#535353');
INSERT INTO `jrun_stylevars` VALUES ('162', '3', 'commonboxbg', '#F5F5F0');
INSERT INTO `jrun_stylevars` VALUES ('163', '3', 'boxspace', '8px');
INSERT INTO `jrun_stylevars` VALUES ('164', '3', 'portalboxbgcode', '#FFF portalbox_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('165', '3', 'noticeborder', '');
INSERT INTO `jrun_stylevars` VALUES ('166', '3', 'noticetext', '#DD0000');
INSERT INTO `jrun_stylevars` VALUES ('167', '3', 'stypeid', '1');
INSERT INTO `jrun_stylevars` VALUES ('168', '4', 'available', '');
INSERT INTO `jrun_stylevars` VALUES ('169', '4', 'bgcolor', '#222D2D');
INSERT INTO `jrun_stylevars` VALUES ('170', '4', 'altbg1', '#3E4F4F');
INSERT INTO `jrun_stylevars` VALUES ('171', '4', 'altbg2', '#384747');
INSERT INTO `jrun_stylevars` VALUES ('172', '4', 'link', '#CEEBEB');
INSERT INTO `jrun_stylevars` VALUES ('173', '4', 'bordercolor', '#1B2424');
INSERT INTO `jrun_stylevars` VALUES ('174', '4', 'headercolor', '#1B2424');
INSERT INTO `jrun_stylevars` VALUES ('175', '4', 'headertext', '#94B3C5');
INSERT INTO `jrun_stylevars` VALUES ('176', '4', 'catcolor', '#293838');
INSERT INTO `jrun_stylevars` VALUES ('177', '4', 'tabletext', '#CEEBEB');
INSERT INTO `jrun_stylevars` VALUES ('178', '4', 'text', '#999');
INSERT INTO `jrun_stylevars` VALUES ('179', '4', 'borderwidth', '6px');
INSERT INTO `jrun_stylevars` VALUES ('180', '4', 'tablespace', '0');
INSERT INTO `jrun_stylevars` VALUES ('181', '4', 'fontsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('182', '4', 'msgfontsize', '14px');
INSERT INTO `jrun_stylevars` VALUES ('183', '4', 'msgbigsize', '16px');
INSERT INTO `jrun_stylevars` VALUES ('184', '4', 'msgsmallsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('185', '4', 'font', 'Arial');
INSERT INTO `jrun_stylevars` VALUES ('186', '4', 'smfontsize', '11px');
INSERT INTO `jrun_stylevars` VALUES ('187', '4', 'smfont', 'Arial,sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('188', '4', 'boardimg', 'logo.gif');
INSERT INTO `jrun_stylevars` VALUES ('189', '4', 'imgdir', './images/Overcast');
INSERT INTO `jrun_stylevars` VALUES ('190', '4', 'maintablewidth', '98%');
INSERT INTO `jrun_stylevars` VALUES ('191', '4', 'bgborder', '#384747');
INSERT INTO `jrun_stylevars` VALUES ('192', '4', 'catborder', '#1B2424');
INSERT INTO `jrun_stylevars` VALUES ('193', '4', 'inputborder', '#EEE');
INSERT INTO `jrun_stylevars` VALUES ('194', '4', 'lighttext', '#74898E');
INSERT INTO `jrun_stylevars` VALUES ('195', '4', 'headermenu', '#3E4F4F');
INSERT INTO `jrun_stylevars` VALUES ('196', '4', 'headermenutext', '#CEEBEB');
INSERT INTO `jrun_stylevars` VALUES ('197', '4', 'framebgcolor', '#222D2D');
INSERT INTO `jrun_stylevars` VALUES ('198', '4', 'noticebg', '#3E4F4F');
INSERT INTO `jrun_stylevars` VALUES ('199', '4', 'commonboxborder', '#384747');
INSERT INTO `jrun_stylevars` VALUES ('200', '4', 'tablebg', '#3E4F4F');
INSERT INTO `jrun_stylevars` VALUES ('201', '4', 'highlightlink', '#9CB2A0');
INSERT INTO `jrun_stylevars` VALUES ('202', '4', 'commonboxbg', '#384747');
INSERT INTO `jrun_stylevars` VALUES ('203', '4', 'boxspace', '6px');
INSERT INTO `jrun_stylevars` VALUES ('204', '4', 'portalboxbgcode', '#293838');
INSERT INTO `jrun_stylevars` VALUES ('205', '4', 'noticeborder', '#384747');
INSERT INTO `jrun_stylevars` VALUES ('206', '4', 'noticetext', '#C7E001');
INSERT INTO `jrun_stylevars` VALUES ('207', '4', 'stypeid', '1');
INSERT INTO `jrun_stylevars` VALUES ('208', '5', 'noticetext', '#C44D4D');
INSERT INTO `jrun_stylevars` VALUES ('209', '5', 'noticeborder', '#D6D6D6');
INSERT INTO `jrun_stylevars` VALUES ('210', '5', 'portalboxbgcode', '#FFF portalbox_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('211', '5', 'boxspace', '6px');
INSERT INTO `jrun_stylevars` VALUES ('212', '5', 'commonboxbg', '#FAFAFA');
INSERT INTO `jrun_stylevars` VALUES ('213', '5', 'highlightlink', '#C44D4D');
INSERT INTO `jrun_stylevars` VALUES ('214', '5', 'tablebg', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('215', '5', 'commonboxborder', '#DEDEDE');
INSERT INTO `jrun_stylevars` VALUES ('216', '5', 'noticebg', '#FAFAFA');
INSERT INTO `jrun_stylevars` VALUES ('217', '5', 'framebgcolor', '#FFECF9');
INSERT INTO `jrun_stylevars` VALUES ('218', '5', 'headermenu', '#FBFBFB');
INSERT INTO `jrun_stylevars` VALUES ('219', '5', 'headermenutext', '');
INSERT INTO `jrun_stylevars` VALUES ('220', '5', 'lighttext', '#999');
INSERT INTO `jrun_stylevars` VALUES ('221', '5', 'catborder', '#D7D7D7');
INSERT INTO `jrun_stylevars` VALUES ('222', '5', 'inputborder', '');
INSERT INTO `jrun_stylevars` VALUES ('223', '5', 'bgborder', '#CECECE');
INSERT INTO `jrun_stylevars` VALUES ('224', '5', 'stypeid', '1');
INSERT INTO `jrun_stylevars` VALUES ('225', '5', 'maintablewidth', '920px');
INSERT INTO `jrun_stylevars` VALUES ('226', '5', 'imgdir', 'images/PinkDresser');
INSERT INTO `jrun_stylevars` VALUES ('227', '5', 'boardimg', 'logo.gif');
INSERT INTO `jrun_stylevars` VALUES ('228', '5', 'smfont', 'Arial,Helvetica,sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('229', '5', 'smfontsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('230', '5', 'font', 'Arial,Helvetica,sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('231', '5', 'msgsmallsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('232', '5', 'msgbigsize', '16px');
INSERT INTO `jrun_stylevars` VALUES ('233', '5', 'msgfontsize', '14px');
INSERT INTO `jrun_stylevars` VALUES ('234', '5', 'fontsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('235', '5', 'tablespace', '0');
INSERT INTO `jrun_stylevars` VALUES ('236', '5', 'borderwidth', '1px');
INSERT INTO `jrun_stylevars` VALUES ('237', '5', 'text', '#666');
INSERT INTO `jrun_stylevars` VALUES ('238', '5', 'tabletext', '#666');
INSERT INTO `jrun_stylevars` VALUES ('239', '5', 'catcolor', '#FAFAFA category_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('240', '5', 'headertext', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('241', '5', 'headercolor', '#E7BFC9 forumbox_head.gif');
INSERT INTO `jrun_stylevars` VALUES ('242', '5', 'bordercolor', '#D88E9D');
INSERT INTO `jrun_stylevars` VALUES ('243', '5', 'link', '#C44D4D');
INSERT INTO `jrun_stylevars` VALUES ('244', '5', 'altbg2', '#F1F1F1');
INSERT INTO `jrun_stylevars` VALUES ('245', '5', 'available', '');
INSERT INTO `jrun_stylevars` VALUES ('246', '5', 'altbg1', '#FBFBFB');
INSERT INTO `jrun_stylevars` VALUES ('247', '5', 'bgcolor', '#FBF4F5');
INSERT INTO `jrun_stylevars` VALUES ('248', '5', 'stypeid', '1');
INSERT INTO `jrun_stylevars` VALUES ('249', '6', 'available', '');
INSERT INTO `jrun_stylevars` VALUES ('250', '6', 'bgcolor', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('251', '6', 'altbg1', '#FFFBF8');
INSERT INTO `jrun_stylevars` VALUES ('252', '6', 'altbg2', '#FBF6F1');
INSERT INTO `jrun_stylevars` VALUES ('253', '6', 'link', '#54564C');
INSERT INTO `jrun_stylevars` VALUES ('254', '6', 'bordercolor', '#D7B094');
INSERT INTO `jrun_stylevars` VALUES ('255', '6', 'headercolor', '#BE6A2D forumbox_head.gif');
INSERT INTO `jrun_stylevars` VALUES ('256', '6', 'headertext', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('257', '6', 'catcolor', '#E9E9E9 cat_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('258', '6', 'tabletext', '#7B7D72');
INSERT INTO `jrun_stylevars` VALUES ('259', '6', 'text', '#535353');
INSERT INTO `jrun_stylevars` VALUES ('260', '6', 'borderwidth', '1px');
INSERT INTO `jrun_stylevars` VALUES ('261', '6', 'tablespace', '1px');
INSERT INTO `jrun_stylevars` VALUES ('262', '6', 'fontsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('263', '6', 'msgfontsize', '14px');
INSERT INTO `jrun_stylevars` VALUES ('264', '6', 'msgbigsize', '16px');
INSERT INTO `jrun_stylevars` VALUES ('265', '6', 'msgsmallsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('266', '6', 'font', 'Arial, sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('267', '6', 'smfontsize', '11px');
INSERT INTO `jrun_stylevars` VALUES ('268', '6', 'smfont', 'Arial, sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('269', '6', 'boardimg', 'logo.gif');
INSERT INTO `jrun_stylevars` VALUES ('270', '6', 'imgdir', './images/Picnicker');
INSERT INTO `jrun_stylevars` VALUES ('271', '6', 'maintablewidth', '98%');
INSERT INTO `jrun_stylevars` VALUES ('272', '6', 'bgborder', '#E8C9B7');
INSERT INTO `jrun_stylevars` VALUES ('273', '6', 'catborder', '#E6E6E2');
INSERT INTO `jrun_stylevars` VALUES ('274', '6', 'inputborder', '');
INSERT INTO `jrun_stylevars` VALUES ('275', '6', 'lighttext', '#878787');
INSERT INTO `jrun_stylevars` VALUES ('276', '6', 'headermenu', '#FFF menu_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('277', '6', 'headermenutext', '#54564C');
INSERT INTO `jrun_stylevars` VALUES ('278', '6', 'framebgcolor', 'frame_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('279', '6', 'noticebg', '#FAFAF7');
INSERT INTO `jrun_stylevars` VALUES ('280', '6', 'commonboxborder', '#E6E6E2');
INSERT INTO `jrun_stylevars` VALUES ('281', '6', 'tablebg', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('282', '6', 'highlightlink', '');
INSERT INTO `jrun_stylevars` VALUES ('283', '6', 'commonboxbg', '#F5F5F0');
INSERT INTO `jrun_stylevars` VALUES ('284', '6', 'boxspace', '6px');
INSERT INTO `jrun_stylevars` VALUES ('285', '6', 'portalboxbgcode', '#FFF portalbox_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('286', '6', 'noticeborder', '#E6E6E2');
INSERT INTO `jrun_stylevars` VALUES ('287', '6', 'noticetext', '#FF3A00');
INSERT INTO `jrun_stylevars` VALUES ('288', '6', 'stypeid', '1');
INSERT INTO `jrun_stylevars` VALUES ('289', '7', 'available', '');
INSERT INTO `jrun_stylevars` VALUES ('290', '7', 'bgcolor', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('291', '7', 'altbg1', '#F5F5F0');
INSERT INTO `jrun_stylevars` VALUES ('292', '7', 'altbg2', '#F9F9F9');
INSERT INTO `jrun_stylevars` VALUES ('293', '7', 'link', '#54564C');
INSERT INTO `jrun_stylevars` VALUES ('294', '7', 'bordercolor', '#D9D9D4');
INSERT INTO `jrun_stylevars` VALUES ('295', '7', 'headercolor', '#80A400 forumbox_head.gif');
INSERT INTO `jrun_stylevars` VALUES ('296', '7', 'headertext', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('297', '7', 'catcolor', '#F5F5F0 cat_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('298', '7', 'tabletext', '#7B7D72');
INSERT INTO `jrun_stylevars` VALUES ('299', '7', 'text', '#535353');
INSERT INTO `jrun_stylevars` VALUES ('300', '7', 'borderwidth', '1px');
INSERT INTO `jrun_stylevars` VALUES ('301', '7', 'tablespace', '1px');
INSERT INTO `jrun_stylevars` VALUES ('302', '7', 'fontsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('303', '7', 'msgfontsize', '14px');
INSERT INTO `jrun_stylevars` VALUES ('304', '7', 'msgbigsize', '16px');
INSERT INTO `jrun_stylevars` VALUES ('305', '7', 'msgsmallsize', '12px');
INSERT INTO `jrun_stylevars` VALUES ('306', '7', 'font', 'Arial,sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('307', '7', 'smfontsize', '11px');
INSERT INTO `jrun_stylevars` VALUES ('308', '7', 'smfont', 'Arial,sans-serif');
INSERT INTO `jrun_stylevars` VALUES ('309', '7', 'boardimg', 'logo.gif');
INSERT INTO `jrun_stylevars` VALUES ('310', '7', 'imgdir', './images/GreenPark');
INSERT INTO `jrun_stylevars` VALUES ('311', '7', 'maintablewidth', '98%');
INSERT INTO `jrun_stylevars` VALUES ('312', '7', 'bgborder', '#D9D9D4');
INSERT INTO `jrun_stylevars` VALUES ('313', '7', 'catborder', '#D9D9D4');
INSERT INTO `jrun_stylevars` VALUES ('314', '7', 'inputborder', '#D9D9D4');
INSERT INTO `jrun_stylevars` VALUES ('315', '7', 'lighttext', '#878787');
INSERT INTO `jrun_stylevars` VALUES ('316', '7', 'headermenu', '#FFF menu_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('317', '7', 'headermenutext', '#262626');
INSERT INTO `jrun_stylevars` VALUES ('318', '7', 'framebgcolor', '');
INSERT INTO `jrun_stylevars` VALUES ('319', '7', 'noticebg', '#FAFAF7');
INSERT INTO `jrun_stylevars` VALUES ('320', '7', 'commonboxborder', '#E6E6E2');
INSERT INTO `jrun_stylevars` VALUES ('321', '7', 'tablebg', '#FFF');
INSERT INTO `jrun_stylevars` VALUES ('322', '7', 'highlightlink', '#535353');
INSERT INTO `jrun_stylevars` VALUES ('323', '7', 'commonboxbg', '#F9F9F9');
INSERT INTO `jrun_stylevars` VALUES ('324', '7', 'boxspace', '6px');
INSERT INTO `jrun_stylevars` VALUES ('325', '7', 'portalboxbgcode', '#FFF portalbox_bg.gif');
INSERT INTO `jrun_stylevars` VALUES ('326', '7', 'noticeborder', '#E6E6E2');
INSERT INTO `jrun_stylevars` VALUES ('327', '7', 'noticetext', '#FF3A00');
INSERT INTO `jrun_stylevars` VALUES ('328', '7', 'stypeid', '1');

-- ----------------------------
-- Table structure for `jrun_subscriptions`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_subscriptions`;
CREATE TABLE `jrun_subscriptions` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `lastnotify` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_subscriptions
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_tags`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_tags`;
CREATE TABLE `jrun_tags` (
  `tagname` char(20) NOT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `total` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`tagname`),
  KEY `total` (`total`) USING BTREE,
  KEY `closed` (`closed`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_templates`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_templates`;
CREATE TABLE `jrun_templates` (
  `templateid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `directory` varchar(100) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`templateid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_templates
-- ----------------------------
INSERT INTO `jrun_templates` VALUES ('1', '默认模板套系', './templates/default', '北京飞速创想科技有限公司');
INSERT INTO `jrun_templates` VALUES ('2', '经典风格', './templates/Classic', '北京飞速创想科技有限公司');
INSERT INTO `jrun_templates` VALUES ('3', '喝彩奥运', './templates/Beijing2008', '北京飞速创想科技有限公司');
INSERT INTO `jrun_templates` VALUES ('4', '深邃永恒', './templates/Overcast', '北京飞速创想科技有限公司');
INSERT INTO `jrun_templates` VALUES ('5', '粉妆精灵', './templates/PinkDresser', '北京飞速创想科技有限公司');

-- ----------------------------
-- Table structure for `jrun_threads`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_threads`;
CREATE TABLE `jrun_threads` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `iconid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `readperm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `price` smallint(6) NOT NULL DEFAULT '0',
  `author` char(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject` char(80) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `lastposter` char(15) NOT NULL DEFAULT '',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(1) NOT NULL DEFAULT '0',
  `highlight` tinyint(1) NOT NULL DEFAULT '0',
  `digest` tinyint(1) NOT NULL DEFAULT '0',
  `rate` tinyint(1) NOT NULL DEFAULT '0',
  `blog` tinyint(1) NOT NULL DEFAULT '0',
  `special` tinyint(1) NOT NULL DEFAULT '0',
  `attachment` tinyint(1) NOT NULL DEFAULT '0',
  `subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `moderated` tinyint(1) NOT NULL DEFAULT '0',
  `closed` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `digest` (`digest`) USING BTREE,
  KEY `displayorder` (`fid`,`displayorder`,`lastpost`) USING BTREE,
  KEY `blog` (`blog`,`authorid`,`dateline`) USING BTREE,
  KEY `typeid` (`fid`,`typeid`,`displayorder`,`lastpost`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_threads
-- ----------------------------
INSERT INTO `jrun_threads` VALUES ('1', '2', '0', '0', '0', '0', 'test', '2', '测测', '1453281210', '1453281521', '9527', '8', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `jrun_threads` VALUES ('2', '2', '0', '0', '0', '0', 'test', '2', '撒发顺丰', '1453285119', '1453285371', '9527', '6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `jrun_threads` VALUES ('3', '2', '0', '0', '0', '0', 'test', '2', '吼吼', '1453286709', '1453286745', 'test', '14', '2', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0');
INSERT INTO `jrun_threads` VALUES ('4', '2', '0', '0', '0', '0', 'test', '2', '版权声明', '1453289735', '1453289767', 'test', '6', '1', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `jrun_threadsmod`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_threadsmod`;
CREATE TABLE `jrun_threadsmod` (
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `action` char(5) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `magicid` smallint(6) unsigned NOT NULL,
  `remark` char(15) DEFAULT NULL,
  KEY `tid` (`tid`,`dateline`) USING BTREE,
  KEY `expiration` (`expiration`,`status`) USING BTREE,
  KEY `action` (`action`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_threadsmod
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_threadtags`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_threadtags`;
CREATE TABLE `jrun_threadtags` (
  `tagname` char(20) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  KEY `tagname` (`tagname`) USING BTREE,
  KEY `tid` (`tid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_threadtags
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_threadtypes`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_threadtypes`;
CREATE TABLE `jrun_threadtypes` (
  `typeid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `special` smallint(6) NOT NULL DEFAULT '0',
  `modelid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `expiration` tinyint(1) NOT NULL DEFAULT '0',
  `template` text NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_threadtypes
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_tradecomments`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_tradecomments`;
CREATE TABLE `jrun_tradecomments` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `orderid` char(32) NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `raterid` mediumint(8) unsigned NOT NULL,
  `rater` char(15) NOT NULL,
  `rateeid` mediumint(8) unsigned NOT NULL,
  `ratee` char(15) NOT NULL,
  `message` char(200) NOT NULL,
  `explanation` char(200) NOT NULL,
  `score` tinyint(1) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `raterid` (`raterid`,`type`,`dateline`) USING BTREE,
  KEY `rateeid` (`rateeid`,`type`,`dateline`) USING BTREE,
  KEY `orderid` (`orderid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_tradecomments
-- ----------------------------
INSERT INTO `jrun_tradecomments` VALUES ('1', '20160120193837gPFv2LS6boNkqlhb0b', '6', '0', '3', '9527', '2', 'test', '很好很棒', '', '1', '1453290103');
INSERT INTO `jrun_tradecomments` VALUES ('2', '20160120193837gPFv2LS6boNkqlhb0b', '6', '1', '2', 'test', '3', '9527', 'aa', '', '1', '1453290165');

-- ----------------------------
-- Table structure for `jrun_tradelog`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_tradelog`;
CREATE TABLE `jrun_tradelog` (
  `tid` mediumint(8) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `orderid` varchar(32) NOT NULL,
  `tradeno` varchar(32) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quality` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `itemtype` tinyint(1) NOT NULL DEFAULT '0',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tax` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `locus` varchar(100) NOT NULL,
  `sellerid` mediumint(8) unsigned NOT NULL,
  `seller` varchar(15) NOT NULL,
  `selleraccount` varchar(50) NOT NULL,
  `buyerid` mediumint(8) unsigned NOT NULL,
  `buyer` varchar(15) NOT NULL,
  `buyercontact` varchar(50) NOT NULL,
  `buyercredits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `buyermsg` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `offline` tinyint(1) NOT NULL DEFAULT '0',
  `buyername` varchar(50) NOT NULL,
  `buyerzip` varchar(10) NOT NULL,
  `buyerphone` varchar(20) NOT NULL,
  `buyermobile` varchar(20) NOT NULL,
  `transport` tinyint(1) NOT NULL DEFAULT '0',
  `transportfee` smallint(6) unsigned NOT NULL DEFAULT '0',
  `baseprice` decimal(8,2) NOT NULL,
  `discount` tinyint(1) NOT NULL DEFAULT '0',
  `ratestatus` tinyint(1) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  UNIQUE KEY `orderid` (`orderid`) USING BTREE,
  KEY `sellerid` (`sellerid`) USING BTREE,
  KEY `buyerid` (`buyerid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `buyerlog` (`buyerid`,`status`,`lastupdate`) USING BTREE,
  KEY `sellerlog` (`sellerid`,`status`,`lastupdate`) USING BTREE,
  KEY `tid` (`tid`,`pid`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_tradelog
-- ----------------------------
INSERT INTO `jrun_tradelog` VALUES ('3', '6', '20160120193837gPFv2LS6boNkqlhb0b', '', '吼吼', '998.00', '1', '1', '1', '0.00', '998', '2', 'test', '', '3', '9527', '', '0', '', '7', '1453290091', '1', '', '', '', '', '1', '0', '998.00', '0', '3', '');

-- ----------------------------
-- Table structure for `jrun_tradeoptionvars`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_tradeoptionvars`;
CREATE TABLE `jrun_tradeoptionvars` (
  `typeid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `optionid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  KEY `typeid` (`typeid`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_tradeoptionvars
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_trades`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_trades`;
CREATE TABLE `jrun_trades` (
  `tid` mediumint(8) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `typeid` smallint(6) unsigned NOT NULL,
  `sellerid` mediumint(8) unsigned NOT NULL,
  `seller` char(15) NOT NULL,
  `account` char(50) NOT NULL,
  `subject` char(100) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `amount` smallint(6) unsigned NOT NULL DEFAULT '1',
  `quality` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `locus` char(20) NOT NULL,
  `transport` tinyint(1) NOT NULL DEFAULT '0',
  `ordinaryfee` smallint(4) unsigned NOT NULL DEFAULT '0',
  `expressfee` smallint(4) unsigned NOT NULL DEFAULT '0',
  `emsfee` smallint(4) unsigned NOT NULL DEFAULT '0',
  `itemtype` tinyint(1) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbuyer` char(15) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `totalitems` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tradesum` decimal(8,2) NOT NULL DEFAULT '0.00',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL,
  `displayorder` tinyint(1) NOT NULL,
  `costprice` decimal(8,2) NOT NULL,
  PRIMARY KEY (`tid`,`pid`),
  KEY `sellerid` (`sellerid`) USING BTREE,
  KEY `totalitems` (`totalitems`) USING BTREE,
  KEY `tradesum` (`tradesum`) USING BTREE,
  KEY `displayorder` (`tid`,`displayorder`) USING BTREE,
  KEY `sellertrades` (`sellerid`,`tradesum`,`totalitems`) USING BTREE,
  KEY `typeid` (`typeid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_trades
-- ----------------------------
INSERT INTO `jrun_trades` VALUES ('3', '6', '0', '2', 'test', '', '吼吼', '998.00', '0', '1', '998', '1', '10', '10', '10', '1', '1453286709', '1455724800', '9527', '1453290091', '1', '998.00', '0', '0', '0', '998.00');

-- ----------------------------
-- Table structure for `jrun_typemodels`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_typemodels`;
CREATE TABLE `jrun_typemodels` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `options` mediumtext NOT NULL,
  `customoptions` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_typemodels
-- ----------------------------
INSERT INTO `jrun_typemodels` VALUES ('1', '房屋交易信息', '0', '1', '7	10	13	65	66	68', '');
INSERT INTO `jrun_typemodels` VALUES ('2', '车票交易信息', '0', '1', '55	56	58	67	7	13	68', '');
INSERT INTO `jrun_typemodels` VALUES ('3', '兴趣交友信息', '0', '1', '8	9	31', '');
INSERT INTO `jrun_typemodels` VALUES ('4', '公司招聘信息', '0', '1', '34	48	54	51	47	46	44	45	52	53', '');

-- ----------------------------
-- Table structure for `jrun_typeoptions`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_typeoptions`;
CREATE TABLE `jrun_typeoptions` (
  `optionid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `identifier` varchar(40) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `rules` mediumtext NOT NULL,
  PRIMARY KEY (`optionid`),
  KEY `classid` (`classid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_typeoptions
-- ----------------------------
INSERT INTO `jrun_typeoptions` VALUES ('1', '0', '0', '通用类', '', '', '', '');
INSERT INTO `jrun_typeoptions` VALUES ('2', '0', '0', '房产类', '', '', '', '');
INSERT INTO `jrun_typeoptions` VALUES ('3', '0', '0', '交友类', '', '', '', '');
INSERT INTO `jrun_typeoptions` VALUES ('4', '0', '0', '求职招聘类', '', '', '', '');
INSERT INTO `jrun_typeoptions` VALUES ('5', '0', '0', '交易类', '', '', '', '');
INSERT INTO `jrun_typeoptions` VALUES ('6', '0', '0', '互联网类', '', '', '', '');
INSERT INTO `jrun_typeoptions` VALUES ('7', '1', '0', '姓名', '', 'name', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('9', '1', '0', '年龄', '', 'age', 'number', '');
INSERT INTO `jrun_typeoptions` VALUES ('10', '1', '0', '地址', '', 'address', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('11', '1', '0', 'QQ', '', 'qq', 'number', '');
INSERT INTO `jrun_typeoptions` VALUES ('12', '1', '0', '邮箱', '', 'mail', 'email', '');
INSERT INTO `jrun_typeoptions` VALUES ('13', '1', '0', '电话', '', 'phone', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('14', '5', '0', '培训费用', '', 'teach_pay', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('15', '5', '0', '培训时间', '', 'teach_time', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('20', '2', '0', '楼层', '', 'floor', 'number', '');
INSERT INTO `jrun_typeoptions` VALUES ('21', '2', '0', '交通状况', '', 'traf', 'textarea', '');
INSERT INTO `jrun_typeoptions` VALUES ('22', '2', '0', '地图', '', 'images', 'image', '');
INSERT INTO `jrun_typeoptions` VALUES ('24', '2', '0', '价格', '', 'price', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('26', '5', '0', '培训名称', '', 'teach_name', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('28', '3', '0', '身高', '', 'heighth', 'number', '');
INSERT INTO `jrun_typeoptions` VALUES ('29', '3', '0', '体重', '', 'weighth', 'number', '');
INSERT INTO `jrun_typeoptions` VALUES ('33', '1', '0', '照片', '', 'photo', 'image', '');
INSERT INTO `jrun_typeoptions` VALUES ('35', '5', '0', '服务方式', '', 'service_type', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('36', '5', '0', '服务时间', '', 'service_time', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('37', '5', '0', '服务费用', '', 'service_pay', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('39', '6', '0', '网址', '', 'site_url', 'url', '');
INSERT INTO `jrun_typeoptions` VALUES ('40', '6', '0', '电子邮件', '', 'site_mail', 'email', '');
INSERT INTO `jrun_typeoptions` VALUES ('42', '6', '0', '网站名称', '', 'site_name', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('46', '4', '0', '职位', '', 'recr_intend', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('47', '4', '0', '工作地点', '', 'recr_palce', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('49', '4', '0', '有效期至', '', 'recr_end', 'calendar', '');
INSERT INTO `jrun_typeoptions` VALUES ('51', '4', '0', '公司名称', '', 'recr_com', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('52', '4', '0', '年龄要求', '', 'recr_age', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('54', '4', '0', '专业', '', 'recr_abli', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('55', '5', '0', '始发', '', 'leaves', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('56', '5', '0', '终点', '', 'boundfor', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('57', '6', '0', 'Alexa排名', '', 'site_top', 'number', '');
INSERT INTO `jrun_typeoptions` VALUES ('58', '5', '0', '车次/航班', '', 'train_no', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('59', '5', '0', '数量', '', 'trade_num', 'number', '');
INSERT INTO `jrun_typeoptions` VALUES ('60', '5', '0', '价格', '', 'trade_price', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('61', '5', '0', '有效期至', '', 'trade_end', 'calendar', '');
INSERT INTO `jrun_typeoptions` VALUES ('63', '1', '0', '详细描述', '', 'detail_content', 'textarea', '');
INSERT INTO `jrun_typeoptions` VALUES ('64', '1', '0', '籍贯', '', 'born_place', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('65', '2', '0', '租金', '', 'money', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('66', '2', '0', '面积', '', 'acreage', 'text', '');
INSERT INTO `jrun_typeoptions` VALUES ('67', '5', '0', '发车时间', '', 'time', 'calendar', 'N;');
INSERT INTO `jrun_typeoptions` VALUES ('68', '1', '0', '所在地', '', 'now_place', 'text', '');

-- ----------------------------
-- Table structure for `jrun_typeoptionvars`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_typeoptionvars`;
CREATE TABLE `jrun_typeoptionvars` (
  `typeid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `optionid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  KEY `typeid` (`typeid`) USING BTREE,
  KEY `tid` (`tid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_typeoptionvars
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_typevars`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_typevars`;
CREATE TABLE `jrun_typevars` (
  `typeid` smallint(6) NOT NULL DEFAULT '0',
  `optionid` smallint(6) NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `unchangeable` tinyint(1) NOT NULL DEFAULT '0',
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  UNIQUE KEY `optionid` (`typeid`,`optionid`) USING BTREE,
  KEY `typeid` (`typeid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_typevars
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_usergroups`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_usergroups`;
CREATE TABLE `jrun_usergroups` (
  `groupid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `radminid` tinyint(3) NOT NULL DEFAULT '0',
  `type` enum('system','special','member') NOT NULL DEFAULT 'member',
  `system` char(8) NOT NULL DEFAULT 'private',
  `grouptitle` char(30) NOT NULL DEFAULT '',
  `creditshigher` int(10) NOT NULL DEFAULT '0',
  `creditslower` int(10) NOT NULL DEFAULT '0',
  `stars` tinyint(3) NOT NULL DEFAULT '0',
  `color` char(7) NOT NULL DEFAULT '',
  `groupavatar` char(60) NOT NULL DEFAULT '',
  `readaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allowvisit` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) NOT NULL DEFAULT '0',
  `allowreply` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostpoll` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostreward` tinyint(1) NOT NULL DEFAULT '0',
  `allowposttrade` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostactivity` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostvideo` tinyint(1) NOT NULL DEFAULT '0',
  `allowdirectpost` tinyint(1) NOT NULL DEFAULT '0',
  `allowgetattach` tinyint(1) NOT NULL DEFAULT '0',
  `allowpostattach` tinyint(1) NOT NULL DEFAULT '0',
  `allowvote` tinyint(1) NOT NULL DEFAULT '0',
  `allowmultigroups` tinyint(1) NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) NOT NULL DEFAULT '0',
  `allowavatar` tinyint(1) NOT NULL DEFAULT '0',
  `allowcstatus` tinyint(1) NOT NULL DEFAULT '0',
  `allowuseblog` tinyint(1) NOT NULL DEFAULT '0',
  `allowinvisible` tinyint(1) NOT NULL DEFAULT '0',
  `allowtransfer` tinyint(1) NOT NULL DEFAULT '0',
  `allowsetreadperm` tinyint(1) NOT NULL DEFAULT '0',
  `allowsetattachperm` tinyint(1) NOT NULL DEFAULT '0',
  `allowhidecode` tinyint(1) NOT NULL DEFAULT '0',
  `allowhtml` tinyint(1) NOT NULL DEFAULT '0',
  `allowcusbbcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowanonymous` tinyint(1) NOT NULL DEFAULT '0',
  `allownickname` tinyint(1) NOT NULL DEFAULT '0',
  `allowsigbbcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowsigimgcode` tinyint(1) NOT NULL DEFAULT '0',
  `allowviewpro` tinyint(1) NOT NULL DEFAULT '0',
  `allowviewstats` tinyint(1) NOT NULL DEFAULT '0',
  `disableperiodctrl` tinyint(1) NOT NULL DEFAULT '0',
  `reasonpm` tinyint(1) NOT NULL DEFAULT '0',
  `maxprice` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxpmnum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxsigsize` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxattachsize` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `maxsizeperday` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpostsperhour` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attachextensions` char(100) NOT NULL DEFAULT '',
  `raterange` char(150) NOT NULL DEFAULT '',
  `mintradeprice` smallint(6) unsigned NOT NULL DEFAULT '1',
  `maxtradeprice` smallint(6) unsigned NOT NULL DEFAULT '0',
  `minrewardprice` smallint(6) NOT NULL DEFAULT '1',
  `maxrewardprice` smallint(6) NOT NULL DEFAULT '0',
  `magicsdiscount` tinyint(1) NOT NULL,
  `allowmagics` tinyint(1) unsigned NOT NULL,
  `maxmagicsweight` smallint(6) unsigned NOT NULL,
  `allowbiobbcode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowbioimgcode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maxbiosize` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowinvite` tinyint(1) NOT NULL DEFAULT '0',
  `allowmailinvite` tinyint(1) NOT NULL DEFAULT '0',
  `maxinvitenum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `inviteprice` smallint(6) unsigned NOT NULL DEFAULT '0',
  `maxinviteday` smallint(6) unsigned NOT NULL DEFAULT '0',
  `allowpostdebate` tinyint(1) NOT NULL DEFAULT '0',
  `tradestick` tinyint(1) unsigned NOT NULL,
  `allowviewdigest` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`),
  KEY `creditsrange` (`creditslower`,`creditshigher`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_usergroups
-- ----------------------------
INSERT INTO `jrun_usergroups` VALUES ('1', '1', 'system', 'private', '管理员', '0', '0', '9', '', '', '200', '1', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '2', '3', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '30', '200', '500', '2048000', '0', '0', '', '1	-30	30	500', '1', '0', '1', '0', '0', '2', '200', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '1');
INSERT INTO `jrun_usergroups` VALUES ('2', '2', 'system', 'private', '超级版主', '0', '0', '8', '', '', '150', '1', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '20', '120', '300', '2048000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1	-15	15	50', '1', '0', '1', '0', '0', '2', '180', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '1');
INSERT INTO `jrun_usergroups` VALUES ('3', '3', 'system', 'private', '版主', '0', '0', '7', '', '', '100', '1', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '1', '3', '1', '1', '0', '1', '1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '10', '80', '200', '2048000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1	-10	10	30', '1', '0', '1', '0', '0', '2', '160', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '1');
INSERT INTO `jrun_usergroups` VALUES ('4', '0', 'system', 'private', '禁止发言', '0', '0', '0', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0');
INSERT INTO `jrun_usergroups` VALUES ('5', '0', 'system', 'private', '禁止访问', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0');
INSERT INTO `jrun_usergroups` VALUES ('6', '0', 'system', 'private', '禁止 IP', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0');
INSERT INTO `jrun_usergroups` VALUES ('7', '0', 'system', 'private', '游客', '0', '0', '0', '', '', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'gif,jpg,jpeg,png', '', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0');
INSERT INTO `jrun_usergroups` VALUES ('8', '0', 'system', 'private', '等待验证会员', '0', '0', '0', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '50', '0', '0', '0', '', '', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0');
INSERT INTO `jrun_usergroups` VALUES ('9', '0', 'member', 'private', '乞丐', '-9999999', '0', '0', '', '', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'chm,pdf,zip,rar,tar,gz,bzip2,gif,jpg,jpeg,png', '', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0');
INSERT INTO `jrun_usergroups` VALUES ('10', '0', 'member', 'private', '新手上路', '0', '50', '1', '', '', '10', '1', '1', '1', '0', '0', '1', '0', '0', '3', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '20', '80', '0', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '', '1', '0', '1', '0', '0', '1', '40', '1', '1', '0', '0', '0', '0', '0', '0', '1', '5', '0');
INSERT INTO `jrun_usergroups` VALUES ('11', '0', 'member', 'private', '注册会员', '50', '200', '2', '', '', '20', '1', '1', '1', '1', '1', '1', '1', '1', '3', '1', '0', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '30', '100', '0', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '', '1', '0', '1', '0', '0', '1', '60', '1', '1', '0', '0', '0', '0', '0', '0', '1', '5', '1');
INSERT INTO `jrun_usergroups` VALUES ('12', '0', 'member', 'private', '中级会员', '200', '500', '3', '', '', '30', '1', '1', '1', '1', '1', '1', '1', '1', '3', '1', '0', '1', '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '1', '1', '0', '0', '0', '50', '150', '256000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '', '1', '0', '1', '0', '0', '1', '80', '1', '1', '0', '0', '0', '0', '0', '0', '1', '5', '1');
INSERT INTO `jrun_usergroups` VALUES ('13', '0', 'member', 'private', '高级会员', '500', '1000', '4', '', '', '50', '1', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '1', '3', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '1', '0', '1', '1', '0', '0', '0', '60', '200', '512000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1	-10	10	30', '1', '0', '1', '0', '0', '2', '100', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '1');
INSERT INTO `jrun_usergroups` VALUES ('14', '0', 'member', 'private', '金牌会员', '1000', '3000', '6', '', '', '70', '1', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '1', '3', '1', '0', '0', '0', '1', '1', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '0', '0', '80', '300', '1024000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1	-15	15	40', '1', '0', '1', '0', '0', '2', '120', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '1');
INSERT INTO `jrun_usergroups` VALUES ('15', '0', 'member', 'private', '论坛元老', '3000', '9999999', '8', '', '', '90', '1', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '1', '3', '1', '0', '1', '0', '1', '1', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '100', '500', '2048000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '1	-20	20	50', '1', '0', '1', '0', '0', '2', '140', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '1');
INSERT INTO `jrun_usergroups` VALUES ('16', '3', 'special', 'private', '版主助理', '0', '0', '7', '', '', '100', '1', '1', '1', '1', '1', '1', '1', '1', '3', '1', '1', '1', '1', '1', '3', '1', '1', '0', '1', '1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '10', '80', '200', '2048000', '0', '0', 'chm, pdf, zip, rar, tar, gz, bzip2, gif, jpg, jpeg, png', '', '1', '0', '1', '0', '0', '2', '160', '2', '2', '0', '0', '0', '0', '0', '0', '1', '5', '1');

-- ----------------------------
-- Table structure for `jrun_validating`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_validating`;
CREATE TABLE `jrun_validating` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `submitdate` int(10) unsigned NOT NULL DEFAULT '0',
  `moddate` int(10) unsigned NOT NULL DEFAULT '0',
  `admin` varchar(15) NOT NULL DEFAULT '',
  `submittimes` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `remark` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_validating
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_videos`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_videos`;
CREATE TABLE `jrun_videos` (
  `vid` varchar(16) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `vtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vview` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vtime` smallint(6) unsigned NOT NULL DEFAULT '0',
  `visup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vthumb` varchar(128) NOT NULL DEFAULT '',
  `vtitle` varchar(64) NOT NULL DEFAULT '',
  `vclass` varchar(32) NOT NULL DEFAULT '',
  `vautoplay` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  UNIQUE KEY `uid` (`vid`,`uid`) USING BTREE,
  KEY `dateline` (`dateline`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_videos
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_videotags`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_videotags`;
CREATE TABLE `jrun_videotags` (
  `tagname` char(10) NOT NULL DEFAULT '',
  `vid` char(14) NOT NULL DEFAULT '',
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `tagname` (`tagname`,`vid`) USING BTREE,
  KEY `tid` (`tid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_videotags
-- ----------------------------

-- ----------------------------
-- Table structure for `jrun_words`
-- ----------------------------
DROP TABLE IF EXISTS `jrun_words`;
CREATE TABLE `jrun_words` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `admin` varchar(15) NOT NULL DEFAULT '',
  `find` varchar(255) NOT NULL DEFAULT '',
  `replacement` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrun_words
-- ----------------------------
