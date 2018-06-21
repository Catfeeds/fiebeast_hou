-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 
-- 服务器版本: 5.5.53
-- PHP 版本: 7.2.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `fie`
--

-- --------------------------------------------------------

--
-- 表的结构 `fie_admin_menu`
--

CREATE TABLE IF NOT EXISTS `fie_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='后台菜单表' AUTO_INCREMENT=162 ;

--
-- 转存表中的数据 `fie_admin_menu`
--

INSERT INTO `fie_admin_menu` (`id`, `parent_id`, `type`, `status`, `list_order`, `app`, `controller`, `action`, `param`, `name`, `icon`, `remark`) VALUES
(1, 0, 0, 1, 20, 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', '插件中心'),
(2, 1, 1, 1, 10000, 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理'),
(3, 2, 1, 0, 10000, 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理'),
(4, 2, 2, 0, 10000, 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序'),
(5, 2, 1, 0, 10000, 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子'),
(6, 0, 0, 1, 0, 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口'),
(7, 6, 1, 1, 50, 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理'),
(8, 7, 1, 0, 10000, 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接'),
(9, 7, 2, 0, 10000, 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存'),
(10, 7, 1, 0, 10000, 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接'),
(11, 7, 2, 0, 10000, 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存'),
(12, 7, 2, 0, 10000, 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接'),
(13, 7, 2, 0, 10000, 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序'),
(14, 7, 2, 0, 10000, 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏'),
(15, 6, 1, 1, 10, 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置'),
(16, 15, 2, 0, 10000, 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存'),
(17, 15, 1, 0, 10000, 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板'),
(18, 15, 2, 0, 10000, 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交'),
(19, 15, 1, 0, 10000, 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试'),
(20, 6, 1, 0, 10000, 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理'),
(21, 20, 1, 0, 10000, 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表'),
(22, 20, 1, 0, 10000, 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加'),
(23, 20, 2, 0, 10000, 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存'),
(24, 20, 1, 0, 10000, 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑'),
(25, 20, 2, 0, 10000, 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存'),
(26, 20, 2, 0, 10000, 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除'),
(27, 20, 2, 0, 10000, 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序'),
(28, 20, 1, 0, 10000, 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单'),
(29, 6, 1, 1, 30, 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理'),
(30, 29, 1, 0, 10000, 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航'),
(31, 29, 2, 0, 10000, 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存'),
(32, 29, 1, 0, 10000, 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航'),
(33, 29, 2, 0, 10000, 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存'),
(34, 29, 2, 0, 10000, 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航'),
(35, 29, 1, 0, 10000, 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单'),
(36, 35, 1, 0, 10000, 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单'),
(37, 35, 2, 0, 10000, 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存'),
(38, 35, 1, 0, 10000, 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单'),
(39, 35, 2, 0, 10000, 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存'),
(40, 35, 2, 0, 10000, 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单'),
(41, 35, 2, 0, 10000, 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序'),
(42, 1, 1, 1, 10000, 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表'),
(43, 42, 2, 0, 10000, 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用'),
(44, 42, 1, 0, 10000, 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置'),
(45, 42, 2, 0, 10000, 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交'),
(46, 42, 2, 0, 10000, 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装'),
(47, 42, 2, 0, 10000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新'),
(48, 42, 2, 0, 10000, 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件'),
(49, 109, 0, 1, 10000, 'admin', 'User', 'default', '', '管理组', '', '管理组'),
(50, 49, 1, 1, 10000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理'),
(51, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色'),
(52, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交'),
(53, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色'),
(54, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交'),
(55, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色'),
(56, 50, 1, 0, 10000, 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限'),
(57, 50, 2, 0, 10000, 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交'),
(58, 0, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站'),
(59, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原'),
(60, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除'),
(61, 6, 1, 1, 10000, 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理'),
(62, 61, 1, 0, 10000, 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则'),
(63, 61, 2, 0, 10000, 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交'),
(64, 61, 1, 0, 10000, 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑'),
(65, 61, 2, 0, 10000, 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交'),
(66, 61, 2, 0, 10000, 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除'),
(67, 61, 2, 0, 10000, 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用'),
(68, 61, 2, 0, 10000, 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用'),
(69, 61, 2, 0, 10000, 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序'),
(70, 61, 1, 0, 10000, 'admin', 'Route', 'select', '', '选择URL', '', '选择URL'),
(71, 6, 1, 1, 0, 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息'),
(72, 71, 2, 0, 10000, 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交'),
(73, 6, 1, 0, 10000, 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改'),
(74, 73, 2, 0, 10000, 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交'),
(75, 6, 1, 1, 10000, 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置'),
(76, 75, 2, 0, 10000, 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交'),
(77, 6, 1, 0, 10000, 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存'),
(78, 6, 1, 1, 40, 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理'),
(79, 78, 1, 0, 10000, 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片'),
(80, 78, 2, 0, 10000, 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交'),
(81, 78, 1, 0, 10000, 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片'),
(82, 78, 2, 0, 10000, 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交'),
(83, 78, 2, 0, 10000, 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片'),
(84, 78, 1, 0, 10000, 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表'),
(85, 84, 1, 0, 10000, 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加'),
(86, 84, 2, 0, 10000, 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交'),
(87, 84, 1, 0, 10000, 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑'),
(88, 84, 2, 0, 10000, 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交'),
(89, 84, 2, 0, 10000, 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除'),
(90, 84, 2, 0, 10000, 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏'),
(91, 84, 2, 0, 10000, 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示'),
(92, 84, 2, 0, 10000, 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序'),
(93, 6, 1, 1, 10000, 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储'),
(94, 93, 2, 0, 10000, 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交'),
(95, 6, 1, 1, 20, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理'),
(96, 95, 1, 0, 10000, 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板'),
(97, 95, 2, 0, 10000, 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板'),
(98, 95, 2, 0, 10000, 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装'),
(99, 95, 2, 0, 10000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新'),
(100, 95, 2, 0, 10000, 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板'),
(101, 95, 1, 0, 10000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板'),
(102, 95, 1, 0, 10000, 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置'),
(103, 95, 1, 0, 10000, 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表'),
(104, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑'),
(105, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存'),
(106, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除'),
(107, 95, 2, 0, 10000, 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存'),
(108, 95, 1, 0, 10000, 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源'),
(109, 0, 0, 1, 10, 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理'),
(110, 49, 1, 1, 10000, 'admin', 'User', 'index', '', '管理员', '', '管理员管理'),
(111, 110, 1, 0, 10000, 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加'),
(112, 110, 2, 0, 10000, 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交'),
(113, 110, 1, 0, 10000, 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑'),
(114, 110, 2, 0, 10000, 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交'),
(115, 110, 1, 0, 10000, 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改'),
(116, 110, 2, 0, 10000, 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交'),
(117, 110, 2, 0, 10000, 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除'),
(118, 110, 2, 0, 10000, 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员'),
(119, 110, 2, 0, 10000, 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员'),
(120, 0, 0, 1, 30, 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理'),
(121, 120, 1, 1, 10000, 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表'),
(122, 121, 1, 0, 10000, 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章'),
(123, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交'),
(124, 121, 1, 0, 10000, 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章'),
(125, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交'),
(126, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除'),
(127, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布'),
(128, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶'),
(129, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐'),
(130, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序'),
(131, 120, 1, 1, 10000, 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表'),
(132, 131, 1, 0, 10000, 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类'),
(133, 131, 2, 0, 10000, 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交'),
(134, 131, 1, 0, 10000, 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类'),
(135, 131, 2, 0, 10000, 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交'),
(136, 131, 1, 0, 10000, 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框'),
(137, 131, 2, 0, 10000, 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序'),
(138, 131, 2, 0, 10000, 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类'),
(139, 120, 1, 1, 10000, 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理'),
(140, 139, 1, 0, 10000, 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面'),
(141, 139, 2, 0, 10000, 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交'),
(142, 139, 1, 0, 10000, 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面'),
(143, 139, 2, 0, 10000, 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交'),
(144, 139, 2, 0, 10000, 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面'),
(145, 120, 1, 1, 10000, 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签'),
(146, 145, 1, 0, 10000, 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签'),
(147, 145, 2, 0, 10000, 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交'),
(148, 145, 2, 0, 10000, 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态'),
(149, 145, 2, 0, 10000, 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签'),
(150, 0, 1, 0, 10000, 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表'),
(151, 150, 2, 0, 10000, 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件'),
(152, 109, 0, 1, 10000, 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组'),
(153, 152, 1, 1, 10000, 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户'),
(154, 153, 2, 0, 10000, 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑'),
(155, 153, 2, 0, 10000, 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用'),
(156, 152, 1, 1, 10000, 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户'),
(157, 156, 2, 0, 10000, 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定'),
(158, 6, 1, 1, 10000, 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理'),
(159, 158, 1, 0, 10000, 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作'),
(160, 158, 2, 0, 10000, 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交'),
(161, 158, 1, 0, 10000, 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');

-- --------------------------------------------------------

--
-- 表的结构 `fie_asset`
--

CREATE TABLE IF NOT EXISTS `fie_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='资源表' AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `fie_asset`
--

INSERT INTO `fie_asset` (`id`, `user_id`, `file_size`, `create_time`, `status`, `download_times`, `file_key`, `filename`, `file_path`, `file_md5`, `file_sha1`, `suffix`, `more`) VALUES
(1, 1, 1662741, 1529503471, 1, 0, '10a8f2912146d870523046cf6769b165f0104f46bbe6e588fbfc18129d7f5e40', 'workout.png', 'portal/20180620/f7ae56e38db1da04d2e6b8ef20058231.png', '10a8f2912146d870523046cf6769b165', 'f9782a6e26afeb719fa1b46b783bdcb278ecbe7c', 'png', NULL),
(2, 1, 1311188, 1529503591, 1, 0, 'f1aba1cee94384fa1441ab354e46784e02fab88eb4c9ceca33cee0a61fe16b99', 'fitbeastcoach.png', 'portal/20180620/cd4f2365ea0d3a86b6fb6cfa28a3a874.png', 'f1aba1cee94384fa1441ab354e46784e', '77ed44dbfbad1c26fff7baff429b9d2563c25b6f', 'png', NULL),
(3, 1, 936313, 1529503638, 1, 0, '05aa49ca89347690b783c2c78674c97ecaf7b455759ebe98ecff185d698a6249', 'product.png', 'portal/20180620/ee28c2893a54c5fc3d460b8af2054c5e.png', '05aa49ca89347690b783c2c78674c97e', '7f4320e1fe45e75d574d2b508241b284a963fe4c', 'png', NULL),
(4, 1, 1498712, 1529503728, 1, 0, '1412e7d9056e3c5e030be7d201d1f8fef5647f499f8885fd750c02fd976bd9eb', 'customer.png', 'portal/20180620/b8e4a0e54261db83af561fafb6b81df0.png', '1412e7d9056e3c5e030be7d201d1f8fe', '7dc121dd7e2fd9fbd363488b817d3feccd1b89a3', 'png', NULL),
(5, 1, 1570003, 1529503783, 1, 0, '4578b67b604aeec78dc59e52476ddac2696f3e5dd509e44b6c96e2ceef3f9365', 'about.png', 'portal/20180620/1a27ac3237f4e24f99007d529f373627.png', '4578b67b604aeec78dc59e52476ddac2', '7b6db61c87a963c96bf81b3388ce9979bd45db87', 'png', NULL),
(6, 1, 470749, 1529503889, 1, 0, 'ea8b2a53981de243908929717f28ea0a3252c50e65424aa8be48059ed594a3a2', 'discount.png', 'portal/20180620/5326ad333c036a69802f33f6ffea4a50.png', 'ea8b2a53981de243908929717f28ea0a', '6e695bf0c858afefe1746071ad07097fb464afa3', 'png', NULL),
(7, 1, 75542, 1529544087, 1, 0, 'c0a6d9b47a35f1400414999e274acbb91e04368b2226d38e7982b10a0e2cf8b7', 'quan.png', 'portal/20180621/d8e0a231f22285f404cb308cbec7b7b8.png', 'c0a6d9b47a35f1400414999e274acbb9', '5d7f5bb9214557fc6ca0e2ff682b333400bf3daf', 'png', NULL),
(8, 1, 54712, 1529544109, 1, 0, '9673752e12921d9eb668e90fe1d45cfae35cc9318e9cb30324f9c21ee50e101f', 'pa.png', 'portal/20180621/f53f0f5df69c42be5addc5727ffa9085.png', '9673752e12921d9eb668e90fe1d45cfa', '09611d8acbe8ff0c995f927686c2f8d272de0973', 'png', NULL),
(9, 1, 60289, 1529546075, 1, 0, '7e8dce122d046a514a9e021b4675d84213f19b5f09da4c1eb847e4cb55bdb3c6', 'girlsheng.png', 'portal/20180621/107972fffdeb49fb1aa953829514d4e1.png', '7e8dce122d046a514a9e021b4675d842', '0c3ac95478953c0dd90e274017af9aa39ea93a0f', 'png', NULL),
(10, 1, 80225, 1529546091, 1, 0, 'f9e7c0d366088928f55bfb3426ecd0ca63dec04bd253d0942bfb1fec4d9f678a', 'girlting.png', 'portal/20180621/19ee6c000d4c282d248b7a813a5a4add.png', 'f9e7c0d366088928f55bfb3426ecd0ca', '768af916f3a7e0fb1559c49386b3c9c84e61feb4', 'png', NULL),
(11, 1, 52335, 1529546110, 1, 0, '3bff12899366775de02f792558b845977ef6bac2398aaaca6839e3e4ae3669c0', 'gzao.png', 'portal/20180621/61dcdb659675cbdd28f0ce81bb09b869.png', '3bff12899366775de02f792558b84597', 'a50c86ae02370407321b10a49de1cb983aa71fa2', 'png', NULL),
(12, 1, 1390277, 1529553315, 1, 0, '358750f8bf25e69c1885a3a6d5d3507b557812b60f1387190e1e6fab8f045fb5', 'video.mp4', 'default/20180621/0bb6fc550e1c597babe390118f150edd.mp4', '358750f8bf25e69c1885a3a6d5d3507b', 'ef83e16cd584563c3ac62ca24575951e6910e0cd', 'mp4', NULL),
(13, 1, 7533769, 1529559769, 1, 0, 'c55a7b81bcde3c7c1703dc3b5571b0f8ea70216d4874f59393927f86608ac85b', 'shipin.mp4', 'default/20180621/a618ece0d2503bf0b39d49df51addd94.mp4', 'c55a7b81bcde3c7c1703dc3b5571b0f8', '5c3c96e51d6c2f17f0e325b1dae2f1cd479972bd', 'mp4', NULL),
(14, 1, 35222, 1529563006, 1, 0, 'e26e7a9368c3239aa292e858ad3ed9587109899feb6ae63b3a5253b1ab2dab57', 'p_woli.png', 'portal/20180621/75329f5f22d3458ad54986c60791154c.png', 'e26e7a9368c3239aa292e858ad3ed958', 'dfd978e9eaf2dac7d734d96b1cc052d1f5269eaf', 'png', NULL),
(15, 1, 112943, 1529563027, 1, 0, 'c76199d5dbf3f2e4127daa229cac0a9494eae7fadfc9da659b16e1db4778f574', 'p_dai.png', 'portal/20180621/d28d0718381119e18b967311189dbe49.png', 'c76199d5dbf3f2e4127daa229cac0a94', '50f2a5d920af492e36758215d3659fc133d70e80', 'png', NULL),
(16, 1, 38126, 1529563027, 1, 0, 'e91e51c5b7aa2c2888e86f5c5ef9873127ebd23daa8be6c1426e37f79a3784ee', 'p_xiniu.png', 'portal/20180621/b5cd5ff3a57efdc8bbdf5a3a745a9c0e.png', 'e91e51c5b7aa2c2888e86f5c5ef98731', 'cd3cdd34612af9a943a14498b1c1dd3aaea58f62', 'png', NULL),
(17, 1, 107529, 1529563027, 1, 0, '4206c0988488ea03e1910518178baa8b6b316db9bae7a2075931e0e54e0abc6e', 'p_za.png', 'portal/20180621/a2fc8d5c6513caa51947d0b8ff3289d7.png', '4206c0988488ea03e1910518178baa8b', '5ebe399e2824c3c7ca04e0b5dbe571debf02843d', 'png', NULL),
(18, 1, 37293, 1529563027, 1, 0, 'b91ff0599935abe604a0e6ac59f6100a38a897a7e843f1bdb47de6bb168b4108', 'p_zhijian.png', 'portal/20180621/0db206433260b4c5c488f1ae1726c9d2.png', 'b91ff0599935abe604a0e6ac59f6100a', '6463bde1b2922f377d24baafdcc69a3999f8db15', 'png', NULL),
(19, 1, 49706, 1529563028, 1, 0, 'f484e888a19039a8ba73e8be0e27e580d401b4edc58d2a583fbd2f74f6948764', 'p_tiaosheng.png', 'portal/20180621/54c5d57e3c8f29557e7d33c825f56737.png', 'f484e888a19039a8ba73e8be0e27e580', 'f65ab11e338bf1d4c49bf43c0f2012d97ad9a511', 'png', NULL),
(20, 1, 119317, 1529564096, 1, 0, '53b057b1f295b582c3df18491680d3d8707adfda658ed6a904cb70e3c49d7454', 'gril.png', 'portal/20180621/d563a0f6e4ede41f44e10466d0814050.png', '53b057b1f295b582c3df18491680d3d8', 'c868aa2ee6afa00af9f4130c1bff6e8ee979055c', 'png', NULL),
(21, 1, 81853, 1529564712, 1, 0, 'f7fbcb33e3cfdb78bcc4a1b334384dbdca2207eeed354e4d4c68fd55c12321ec', 'wo.png', 'portal/20180621/86d8a26ac337c01279e2dd493d8fe95e.png', 'f7fbcb33e3cfdb78bcc4a1b334384dbd', '5a71a21fd9d85933173edaa07fcbebc79273f0a0', 'png', NULL),
(22, 1, 81436, 1529573746, 1, 0, 'a36dca32825101cb53a418e88a853613ab42cd6ea357cfd4f2858df01b186a6f', 'tiaosheng.png', 'portal/20180621/4fa777fa40a2d9d911e606db27cdbcdc.png', 'a36dca32825101cb53a418e88a853613', 'b6a15f1bced23d5760ce7909bc734ed6667ed24b', 'png', NULL),
(23, 1, 86135, 1529573793, 1, 0, '37c07cf2a9e32ace30a839643061e78ffce073db4d9dbc6ed351ea6649a51209', 'woli.png', 'portal/20180621/e0c2f5de39a8c20ec16960df11c26645.png', '37c07cf2a9e32ace30a839643061e78f', 'e9fc8236b8773a0b6d0806dfa5464c15e9ac2290', 'png', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fie_auth_access`
--

CREATE TABLE IF NOT EXISTS `fie_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_auth_rule`
--

CREATE TABLE IF NOT EXISTS `fie_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='权限规则表' AUTO_INCREMENT=162 ;

--
-- 转存表中的数据 `fie_auth_rule`
--

INSERT INTO `fie_auth_rule` (`id`, `status`, `app`, `type`, `name`, `param`, `title`, `condition`) VALUES
(1, 1, 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', ''),
(2, 1, 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', ''),
(3, 1, 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', ''),
(4, 1, 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', ''),
(5, 1, 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', ''),
(6, 1, 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', ''),
(7, 1, 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', ''),
(8, 1, 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', ''),
(9, 1, 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', ''),
(10, 1, 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', ''),
(11, 1, 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', ''),
(12, 1, 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', ''),
(13, 1, 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', ''),
(14, 1, 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', ''),
(15, 1, 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', ''),
(16, 1, 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', ''),
(17, 1, 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', ''),
(18, 1, 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', ''),
(19, 1, 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', ''),
(20, 1, 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', ''),
(21, 1, 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', ''),
(22, 1, 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', ''),
(23, 1, 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', ''),
(24, 1, 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', ''),
(25, 1, 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', ''),
(26, 1, 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', ''),
(27, 1, 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', ''),
(28, 1, 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', ''),
(29, 1, 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', ''),
(30, 1, 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', ''),
(31, 1, 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', ''),
(32, 1, 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', ''),
(33, 1, 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', ''),
(34, 1, 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', ''),
(35, 1, 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', ''),
(36, 1, 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', ''),
(37, 1, 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', ''),
(38, 1, 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', ''),
(39, 1, 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', ''),
(40, 1, 'admin', 'admin_url', 'admin/Plugin/default', '', '插件管理', ''),
(41, 1, 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', ''),
(42, 1, 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', ''),
(43, 1, 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', ''),
(44, 1, 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', ''),
(45, 1, 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', ''),
(46, 1, 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', ''),
(47, 1, 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', ''),
(48, 1, 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', ''),
(49, 1, 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', ''),
(50, 1, 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', ''),
(51, 1, 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', ''),
(52, 1, 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', ''),
(53, 1, 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', ''),
(54, 1, 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', ''),
(55, 1, 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', ''),
(56, 1, 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', ''),
(57, 1, 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', ''),
(58, 1, 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', ''),
(59, 1, 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', ''),
(60, 1, 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', ''),
(61, 1, 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', ''),
(62, 1, 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', ''),
(63, 1, 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', ''),
(64, 1, 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', ''),
(65, 1, 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', ''),
(66, 1, 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', ''),
(67, 1, 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', ''),
(68, 1, 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', ''),
(69, 1, 'admin', 'admin_url', 'admin/Setting/default', '', '设置', ''),
(70, 1, 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', ''),
(71, 1, 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', ''),
(72, 1, 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', ''),
(73, 1, 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', ''),
(74, 1, 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', ''),
(75, 1, 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', ''),
(76, 1, 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', ''),
(77, 1, 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', ''),
(78, 1, 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', ''),
(79, 1, 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', ''),
(80, 1, 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', ''),
(81, 1, 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', ''),
(82, 1, 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', ''),
(83, 1, 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', ''),
(84, 1, 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', ''),
(85, 1, 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', ''),
(86, 1, 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', ''),
(87, 1, 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', ''),
(88, 1, 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', ''),
(89, 1, 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', ''),
(90, 1, 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', ''),
(91, 1, 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', ''),
(92, 1, 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', ''),
(93, 1, 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', ''),
(94, 1, 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', ''),
(95, 1, 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', ''),
(96, 1, 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', ''),
(97, 1, 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', ''),
(98, 1, 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', ''),
(99, 1, 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', ''),
(100, 1, 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', ''),
(101, 1, 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', ''),
(102, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', ''),
(103, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', ''),
(104, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', ''),
(105, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', ''),
(106, 1, 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', ''),
(107, 1, 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', ''),
(108, 1, 'admin', 'admin_url', 'admin/User/default', '', '管理组', ''),
(109, 1, 'admin', 'admin_url', 'admin/User/index', '', '管理员', ''),
(110, 1, 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', ''),
(111, 1, 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', ''),
(112, 1, 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', ''),
(113, 1, 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', ''),
(114, 1, 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', ''),
(115, 1, 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', ''),
(116, 1, 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', ''),
(117, 1, 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', ''),
(118, 1, 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', ''),
(119, 1, 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', ''),
(120, 1, 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', ''),
(121, 1, 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', ''),
(122, 1, 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', ''),
(123, 1, 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', ''),
(124, 1, 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', ''),
(125, 1, 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', ''),
(126, 1, 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', ''),
(127, 1, 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', ''),
(128, 1, 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', ''),
(129, 1, 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', ''),
(130, 1, 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', ''),
(131, 1, 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', ''),
(132, 1, 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', ''),
(133, 1, 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', ''),
(134, 1, 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', ''),
(135, 1, 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', ''),
(136, 1, 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', ''),
(137, 1, 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', ''),
(138, 1, 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', ''),
(139, 1, 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', ''),
(140, 1, 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', ''),
(141, 1, 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', ''),
(142, 1, 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', ''),
(143, 1, 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', ''),
(144, 1, 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', ''),
(145, 1, 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', ''),
(146, 1, 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', ''),
(147, 1, 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', ''),
(148, 1, 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', ''),
(149, 1, 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', ''),
(150, 1, 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', ''),
(151, 1, 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', ''),
(152, 1, 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', ''),
(153, 1, 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', ''),
(154, 1, 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', ''),
(155, 1, 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', ''),
(156, 1, 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', ''),
(157, 1, 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', ''),
(158, 1, 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', ''),
(159, 1, 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', ''),
(160, 1, 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', ''),
(161, 1, 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');

-- --------------------------------------------------------

--
-- 表的结构 `fie_comment`
--

CREATE TABLE IF NOT EXISTS `fie_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislike_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '不喜欢数',
  `floor` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼层数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text COMMENT '评论内容',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `object_id` (`object_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_hook`
--

CREATE TABLE IF NOT EXISTS `fie_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='系统钩子表' AUTO_INCREMENT=36 ;

--
-- 转存表中的数据 `fie_hook`
--

INSERT INTO `fie_hook` (`id`, `type`, `once`, `name`, `hook`, `app`, `description`) VALUES
(1, 1, 0, '应用初始化', 'app_init', 'cmf', '应用初始化'),
(2, 1, 0, '应用开始', 'app_begin', 'cmf', '应用开始'),
(3, 1, 0, '模块初始化', 'module_init', 'cmf', '模块初始化'),
(4, 1, 0, '控制器开始', 'action_begin', 'cmf', '控制器开始'),
(5, 1, 0, '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤'),
(6, 1, 0, '应用结束', 'app_end', 'cmf', '应用结束'),
(7, 1, 0, '日志write方法', 'log_write', 'cmf', '日志write方法'),
(8, 1, 0, '输出结束', 'response_end', 'cmf', '输出结束'),
(9, 1, 0, '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化'),
(10, 1, 0, '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化'),
(11, 1, 1, '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码'),
(12, 3, 0, '模板 body标签开始', 'body_start', '', '模板 body标签开始'),
(13, 3, 0, '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前'),
(14, 3, 0, '模板底部开始', 'footer_start', '', '模板底部开始'),
(15, 3, 0, '模板底部开始之前', 'before_footer', '', '模板底部开始之前'),
(16, 3, 0, '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前'),
(17, 3, 0, '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前'),
(18, 3, 0, '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始'),
(19, 3, 0, '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前'),
(20, 3, 0, '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始'),
(21, 3, 0, '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前'),
(22, 3, 1, '评论区', 'comment', '', '评论区'),
(23, 3, 1, '留言区', 'guestbook', '', '留言区'),
(24, 2, 0, '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘'),
(25, 4, 0, '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前'),
(26, 4, 0, '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前'),
(27, 2, 0, '后台登录页面', 'admin_login', 'admin', '后台登录页面'),
(28, 1, 1, '前台模板切换', 'switch_theme', 'cmf', '前台模板切换'),
(29, 3, 0, '主要内容之后', 'after_content', '', '主要内容之后'),
(30, 2, 0, '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前'),
(31, 2, 0, '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后'),
(32, 2, 1, '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面'),
(33, 3, 0, '主要内容之前', 'before_content', 'cmf', '主要内容之前'),
(34, 1, 0, '日志写入完成', 'log_write_done', 'cmf', '日志写入完成'),
(35, 1, 1, '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');

-- --------------------------------------------------------

--
-- 表的结构 `fie_hook_plugin`
--

CREATE TABLE IF NOT EXISTS `fie_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统钩子插件表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_link`
--

CREATE TABLE IF NOT EXISTS `fie_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='友情链接表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `fie_link`
--

INSERT INTO `fie_link` (`id`, `status`, `rating`, `list_order`, `description`, `url`, `name`, `image`, `target`, `rel`) VALUES
(1, 1, 1, 8, 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');

-- --------------------------------------------------------

--
-- 表的结构 `fie_nav`
--

CREATE TABLE IF NOT EXISTS `fie_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='前台导航位置表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `fie_nav`
--

INSERT INTO `fie_nav` (`id`, `is_main`, `name`, `remark`) VALUES
(1, 1, '主导航', '主导航'),
(2, 0, '底部导航', '');

-- --------------------------------------------------------

--
-- 表的结构 `fie_nav_menu`
--

CREATE TABLE IF NOT EXISTS `fie_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='前台导航菜单表' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `fie_nav_menu`
--

INSERT INTO `fie_nav_menu` (`id`, `nav_id`, `parent_id`, `status`, `list_order`, `name`, `target`, `href`, `icon`, `path`) VALUES
(1, 1, 0, 1, 0, 'HOME', '', 'home', '', '0-1'),
(2, 1, 0, 1, 10000, 'WORKOUT RESOURCES', '', '{"action":"portal\\/List\\/index","param":{"id":1}}', '', ''),
(3, 1, 0, 1, 10000, 'FITBEAST COACH', '', '{"action":"portal\\/List\\/index","param":{"id":2}}', '', ''),
(4, 1, 0, 1, 10000, 'FITBEAST PRODUCTS', '', '{"action":"portal\\/List\\/index","param":{"id":3}}', '', ''),
(5, 1, 0, 1, 10000, 'CUSTOMER SERVICE', '', '{"action":"portal\\/Page\\/index","param":{"id":1}}', '', ''),
(6, 2, 0, 1, 10000, 'ABOUT US', '', '{"action":"portal\\/Page\\/index","param":{"id":2}}', '', ''),
(7, 2, 0, 1, 10000, 'Contacts Us', '', '{"action":"portal\\/Page\\/index","param":{"id":3}}', '', ''),
(8, 2, 0, 1, 10000, 'Customer Service', '', '{"action":"portal\\/Page\\/index","param":{"id":1}}', '', ''),
(9, 2, 0, 1, 10000, 'Discount Code', '', '{"action":"portal\\/Page\\/index","param":{"id":4}}', '', ''),
(10, 2, 0, 1, 10000, 'Products', '', '{"action":"portal\\/List\\/index","param":{"id":3}}', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `fie_option`
--

CREATE TABLE IF NOT EXISTS `fie_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='全站配置表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `fie_option`
--

INSERT INTO `fie_option` (`id`, `autoload`, `option_name`, `option_value`) VALUES
(1, 1, 'site_info', '{"site_name":"fie","site_seo_title":"fie","site_seo_keywords":"fie","site_seo_description":"fie"}'),
(2, 1, 'admin_dashboard_widgets', '[{"name":"CmfHub","is_system":1},{"name":"MainContributors","is_system":1},{"name":"Contributors","is_system":1},{"name":"Custom1","is_system":1},{"name":"Custom2","is_system":1},{"name":"Custom3","is_system":1},{"name":"Custom4","is_system":1},{"name":"Custom5","is_system":1}]');

-- --------------------------------------------------------

--
-- 表的结构 `fie_plugin`
--

CREATE TABLE IF NOT EXISTS `fie_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='插件表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_portal_category`
--

CREATE TABLE IF NOT EXISTS `fie_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='portal应用 文章分类表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `fie_portal_category`
--

INSERT INTO `fie_portal_category` (`id`, `parent_id`, `post_count`, `status`, `delete_time`, `list_order`, `name`, `description`, `path`, `seo_title`, `seo_keywords`, `seo_description`, `list_tpl`, `one_tpl`, `more`) VALUES
(1, 0, 0, 1, 0, 10000, 'WORKOUT RESOURCES', 'RESOURCES LIST', '0-1', '', '', '', 'list', 'article', '{"thumbnails":"portal\\/20180621\\/4fa777fa40a2d9d911e606db27cdbcdc.png","thumbnail":"portal\\/20180620\\/f7ae56e38db1da04d2e6b8ef20058231.png"}'),
(2, 0, 0, 1, 0, 10000, 'FITBEAST COACH', 'RESOURCES LIST', '0-2', '', '', '', 'list', 'article', '{"thumbnails":"portal\\/20180621\\/d563a0f6e4ede41f44e10466d0814050.png","thumbnail":"portal\\/20180620\\/cd4f2365ea0d3a86b6fb6cfa28a3a874.png"}'),
(3, 0, 0, 1, 0, 10000, 'FITBEAST PRODUCTS', '', '0-3', '', '', '', 'list_product', 'article_product', '{"thumbnails":"portal\\/20180621\\/e0c2f5de39a8c20ec16960df11c26645.png","thumbnail":"portal\\/20180620\\/ee28c2893a54c5fc3d460b8af2054c5e.png"}');

-- --------------------------------------------------------

--
-- 表的结构 `fie_portal_category_post`
--

CREATE TABLE IF NOT EXISTS `fie_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表' AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `fie_portal_category_post`
--

INSERT INTO `fie_portal_category_post` (`id`, `post_id`, `category_id`, `list_order`, `status`) VALUES
(1, 5, 1, 10000, 1),
(2, 6, 1, 10000, 1),
(3, 7, 1, 10000, 1),
(4, 8, 1, 10000, 1),
(5, 9, 1, 10000, 1),
(6, 10, 1, 10000, 1),
(7, 11, 1, 10000, 1),
(8, 12, 2, 10000, 1),
(9, 13, 2, 10000, 1),
(10, 14, 3, 10000, 1),
(11, 15, 3, 10000, 1),
(12, 16, 3, 10000, 1);

-- --------------------------------------------------------

--
-- 表的结构 `fie_portal_post`
--

CREATE TABLE IF NOT EXISTS `fie_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_subtitle` varchar(100) DEFAULT NULL COMMENT '副标题',
  `post_price` varchar(50) DEFAULT NULL COMMENT '产品价格',
  `post_start` varchar(5) DEFAULT NULL COMMENT '星级',
  `post_txque1` varchar(255) DEFAULT NULL COMMENT '产品特性问题1',
  `post_txjd1` text COMMENT '产品特性解答1',
  `post_txque2` varchar(255) DEFAULT NULL COMMENT '产品特性问题2',
  `post_txjd2` text COMMENT '产品特性解答2',
  `post_txque3` varchar(255) DEFAULT NULL COMMENT '产品特性问题3',
  `post_txjd3` text COMMENT '产品特性解答3',
  `post_txque4` varchar(255) DEFAULT NULL COMMENT '产品特性问题4',
  `post_txjd4` text COMMENT '产品特性解答4',
  `post_txque5` varchar(255) DEFAULT NULL COMMENT '产品特性问题5',
  `post_txjd5` text COMMENT '产品特性解答5',
  `post_excerptd` varchar(255) DEFAULT NULL COMMENT '产品简介（产品下方）',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `parent_id` (`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表' AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `fie_portal_post`
--

INSERT INTO `fie_portal_post` (`id`, `parent_id`, `post_type`, `post_format`, `user_id`, `post_status`, `comment_status`, `is_top`, `recommended`, `post_hits`, `post_like`, `comment_count`, `create_time`, `update_time`, `published_time`, `delete_time`, `post_title`, `post_subtitle`, `post_price`, `post_start`, `post_txque1`, `post_txjd1`, `post_txque2`, `post_txjd2`, `post_txque3`, `post_txjd3`, `post_txque4`, `post_txjd4`, `post_txque5`, `post_txjd5`, `post_excerptd`, `post_keywords`, `post_excerpt`, `post_source`, `post_content`, `post_content_filtered`, `more`) VALUES
(1, 0, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1529503712, 1529571967, 1529503680, 0, 'CUSTOMER SERVICE', 'Any Qustions', NULL, NULL, '30-Day Money-Back Guarantee for Any Reason', '&lt;p&gt;With easy-to-use hand screws on each handle, Fitebeast skipping rope can be quickly adjusted for both adult, children, professional athlete and beginners. This jump rope is perfect for boxing, weight loss programmes and crossfit training&lt;/p&gt;', '18-Month Warranty for Quality-Related Issues', '&lt;p&gt;Requests within country of purchase&lt;br/&gt;We will take care of all quality-related issues with a REPLACEMENT or FULL REFUND including any return shipping costs. Please note: Any provided shipping labels must be used within 20 days of purchase.&lt;/p&gt;&lt;p&gt;Requests from outside country of purchase&lt;br/&gt;We will take care of all quality-related issues with a FULL REFUND or REPLACEMENT. International shipping costs must be covered by the customer.&lt;/p&gt;&lt;p&gt;Requests for orders shipped internationally&lt;br/&gt;We will take care of all quality-related issues with a FULL REFUND including any return shipping costs. This includes purchases shipped overseas from the USA via Amazon.&lt;/p&gt;&lt;p&gt;Unauthorized reselling of FITBEAST products is strictly prohibited.&lt;/p&gt;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '\n&lt;blockquote&gt;&lt;p&gt;1. What isn’t covered by the warranty?&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p&gt;Purchases from other platform other than Amazon&lt;/p&gt;\n&lt;p&gt;Purchases from unauthorized resellers&lt;/p&gt;\n&lt;p&gt;Improperly operated devices&lt;/p&gt;\n&lt;p&gt;Lost or stolen products&lt;/p&gt;\n&lt;p&gt;Purchases made over 18 months ago (unless otherwise stated)&lt;/p&gt;\n&lt;p&gt;Non quality-related issues (after 30 days of purchase)&lt;/p&gt;\n&lt;p&gt;Free products&lt;/p&gt;\n&lt;blockquote&gt;&lt;p&gt;2. When does the warranty begin?&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p&gt;It begins the day you place your order.&lt;/p&gt;\n&lt;blockquote&gt;&lt;p&gt;3. How do I claim the warranty?&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p&gt;Before submitting a warranty claim, please refer to the specific FAQs for your product and attempt all troubleshooting suggestions.&lt;/p&gt;\n&lt;p&gt;If you believe the item is defective and under warranty, please submit a Return or Exchange request on the product’s support page, or contact us at support@anker.com&lt;/p&gt;\n&lt;blockquote&gt;&lt;p&gt;4. What is a valid proof of purchase?&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p&gt;An Amazon order number username for a purchase made through FITBEASTDirect&lt;/p&gt;\n&lt;blockquote&gt;&lt;p&gt;5. Will the warranty be renewed if my product is replaced?&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p&gt;The warranty continues from the date of your original purchase. It won’t be renewed after a replacement has been provided.&lt;/p&gt;\n', NULL, '{"thumbnail":"portal\\/20180620\\/b8e4a0e54261db83af561fafb6b81df0.png","template":"page_server"}'),
(2, 0, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1529503796, 1529574357, 1529503740, 0, 'ABOUT US', 'ABOUT FITBEAST', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'We bring out the best in each of our members unleashing the athlete within. Our world class coaches are deeply committed to empowering members to achieve their fitness goals. Our programs are based on proven results that challenge participants to go that extra mile.', '', '\n&lt;p&gt;&lt;img src=&quot;/style/images/about_red.png&quot; alt=&quot;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;We bring out the best in each of our members unleashing the athlete within. Our world class coaches are deeply committed to empowering members to achieve their fitness goals. Our programs are based on proven results that challenge participants to go that extra mile.&lt;/p&gt;\n&lt;p&gt;The heel of the PR1 is clearly built for weightlifters, who typically favor trainers that offer platforms, like the Adidas Adipower, for their forceful moves. The heel is made out of a TPU compound specific to Under Armour, according to Howe, which aims to stabilize the heel. &quot;It eliminates compression of the foam when you''re lifting heavy weights,&quot; he said. &quot;Traditional solutions for lifting shoes are things like wood wedges—this provides that functionality in a much lighter weight solution, and the foam underneath provides just enough cushioning, flexibility, and softness to not hurt a run or other active movements.&quot;&lt;/p&gt;\n&lt;p&gt;That''s important for Johnson, who switches up his workout routine to add movement-based training and puts a massive strain on whatever kicks he''s wearing.&lt;/p&gt;\n&lt;p&gt;Other, smaller details of the design are a result of the unique pounding the 6''5&quot;, 260-ish lb. Johnson gives his gym shoes.&lt;/p&gt;\n&lt;p&gt;&quot;You can see there''s a big stitch that runs from the heel pull tab all the way down to reinforce extra stitches. Even the thread has been beat down around the stitches,&quot; said How. &quot;If things look a little bit beefy, it''s because it''s been built and tuned specifically for someone of his size and power and strength.&quot;&lt;/p&gt;\n', NULL, '{"thumbnail":"portal\\/20180620\\/1a27ac3237f4e24f99007d529f373627.png","template":"page"}'),
(3, 0, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1529503840, 1529572507, 1529503800, 0, 'Contacts Us', 'Any Qustions', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'fitbeast@gmail.com', '', NULL, NULL, '{"thumbnail":"portal\\/20180620\\/1a27ac3237f4e24f99007d529f373627.png","template":"contact"}'),
(4, 0, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1529503891, 1529572766, 1529503860, 0, 'Discount Code', 'Take 10% off and start training like a FITBEAST', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '{"thumbnail":"portal\\/20180620\\/5326ad333c036a69802f33f6ffea4a50.png","template":"page_code"}'),
(5, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1529544059, 1529544059, 1529544043, 0, 'Download Hannah Eden''s FYR App And Try This Follow-Along Workou', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '{"thumbnail":"\\/style\\/images\\/quan.png","template":""}'),
(6, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1529544089, 1529544089, 1529544073, 0, 'Download Hannah Eden''s FYR App And Try This Follow-Along Workou', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '{"thumbnail":"portal\\/20180621\\/d8e0a231f22285f404cb308cbec7b7b8.png","template":""}'),
(7, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1529544112, 1529544112, 1529544093, 0, 'Download Hannah Eden''s FYR App And Try This Follow-Along Workou', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '{"thumbnail":"portal\\/20180621\\/f53f0f5df69c42be5addc5727ffa9085.png","template":""}'),
(8, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1529546077, 1529546077, 1529546056, 0, 'Download Hannah Eden''s FYR App And Try This Follow-Along Workou', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '{"thumbnail":"portal\\/20180621\\/107972fffdeb49fb1aa953829514d4e1.png","template":""}'),
(9, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1529546094, 1529546094, 1529546081, 0, 'Download Hannah Eden''s FYR App And Try This Follow-Along Workou', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '{"thumbnail":"portal\\/20180621\\/19ee6c000d4c282d248b7a813a5a4add.png","template":""}'),
(10, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1529546113, 1529546113, 1529546098, 0, 'Download Hannah Eden''s FYR App And Try This Follow-Along Workou', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '{"thumbnail":"portal\\/20180621\\/61dcdb659675cbdd28f0ce81bb09b869.png","template":""}'),
(11, 0, 1, 1, 1, 1, 1, 0, 0, 16, 0, 0, 1529546145, 1529546699, 1529546100, 0, 'Download Hannah Eden''s FYR App And Try This Follow-Along Workou', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '\n&lt;p&gt;&lt;img src=&quot;/style/images/run.png&quot; alt=&quot;&quot; style=&quot;margin-bottom: 160px; margin-top: 0;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;We''ve marveled at Dwayne Johnson''s exploits for years,watching him morph from the brash WWE superstar known as The Rock to the suave movie and TV star we see today—but until now, we''ve never exactly been able to put ourselves in&lt;/p&gt;\n&lt;p&gt;That changes today with the release of the Under Armour Project Rock 1 (PR1), Johnson''s very first signature shoe with the company (the UA x Project Rock Delta wasn''t designed for him, so they don''t technically count).&lt;/p&gt;\n&lt;p&gt;Menshealth.com got to try the kicks out early and talked to PR1 lead designer Justin Howe, who shared what it was like to create the shoes for a star who trains as hard as he shines.&lt;/p&gt;\n&lt;p&gt;&quot;Everything starts with Dwayne,&quot; said Howe. &quot;We collaborated with him all the way from the very first sketch all the way to production. It''s really extensive.&quot;&lt;/p&gt;\n&lt;p&gt;Johnson had input on everything about the shoe, from the aesthetic inspiration to the materials to the final design. In a sense, Under Armour''s message is that the PR1 isn''t a shoe built for The Rock—it''s a shoe built by The Rock.&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;/style/images/run.png&quot; alt=&quot;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;The high top is deceptively light, no doubt thanks to the knit construction that hugs the wearer''s ankle. The knit gives way to a synthetic overlay with forefoot webbing to keep the fit snug, although people with narrow feet and runners might find them roomier than other kicks they''re accustomed to wearing. That''s not a problem, though—ample cushioning from Under Armour''s Micro G midsole makes it a cozy fit.&lt;/p&gt;\n&lt;p&gt;Howe says that''s to give your foot the ability to splay, and almost &quot;grip the ground with your toes.&quot;&lt;/p&gt;\n&lt;p&gt;&quot;It''s more of a lockdown, rather than a squish,&quot; he said.&lt;/p&gt;\n&lt;p&gt;We laced up the PR1, and that''s a fairly apt description of the fit.&lt;/p&gt;\n', NULL, '{"thumbnail":"portal\\/20180621\\/f53f0f5df69c42be5addc5727ffa9085.png","template":""}'),
(12, 0, 1, 1, 1, 1, 1, 0, 0, 2, 0, 0, 1529553090, 1529553109, 1529553060, 0, 'fda fdsagfdsg asdSAFDAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '\n&lt;p&gt;&lt;img src=&quot;/style/images/run.png&quot; alt=&quot;&quot; style=&quot;margin-bottom: 160px; margin-top: 0;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;We''ve marveled at Dwayne Johnson''s exploits for years,watching him morph from the brash WWE superstar known as The Rock to the suave movie and TV star we see today—but until now, we''ve never exactly been able to put ourselves in&lt;/p&gt;\n&lt;p&gt;That changes today with the release of the Under Armour Project Rock 1 (PR1), Johnson''s very first signature shoe with the company (the UA x Project Rock Delta wasn''t designed for him, so they don''t technically count).&lt;/p&gt;\n&lt;p&gt;Menshealth.com got to try the kicks out early and talked to PR1 lead designer Justin Howe, who shared what it was like to create the shoes for a star who trains as hard as he shines.&lt;/p&gt;\n&lt;p&gt;&quot;Everything starts with Dwayne,&quot; said Howe. &quot;We collaborated with him all the way from the very first sketch all the way to production. It''s really extensive.&quot;&lt;/p&gt;\n&lt;p&gt;Johnson had input on everything about the shoe, from the aesthetic inspiration to the materials to the final design. In a sense, Under Armour''s message is that the PR1 isn''t a shoe built for The Rock—it''s a shoe built by The Rock.&lt;/p&gt;\n&lt;p&gt;&lt;img src=&quot;/style/images/run.png&quot; alt=&quot;&quot;&gt;&lt;/p&gt;\n&lt;p&gt;The high top is deceptively light, no doubt thanks to the knit construction that hugs the wearer''s ankle. The knit gives way to a synthetic overlay with forefoot webbing to keep the fit snug, although people with narrow feet and runners might find them roomier than other kicks they''re accustomed to wearing. That''s not a problem, though—ample cushioning from Under Armour''s Micro G midsole makes it a cozy fit.&lt;/p&gt;\n&lt;p&gt;Howe says that''s to give your foot the ability to splay, and almost &quot;grip the ground with your toes.&quot;&lt;/p&gt;\n&lt;p&gt;&quot;It''s more of a lockdown, rather than a squish,&quot; he said.&lt;/p&gt;\n&lt;p&gt;We laced up the PR1, and that''s a fairly apt description of the fit.&lt;/p&gt;\n', NULL, '{"thumbnail":"portal\\/20180621\\/61dcdb659675cbdd28f0ce81bb09b869.png","template":""}'),
(13, 0, 1, 1, 1, 1, 1, 0, 0, 10, 0, 0, 1529553318, 1529559772, 1529553120, 0, 'jfdksoajgirjeiojiojsidoaj video', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '&lt;p&gt;&lt;video class=&quot;edui-upload-video  vjs-default-skin video-js&quot; controls=&quot;&quot; preload=&quot;none&quot; width=&quot;1200&quot; height=&quot;800&quot; src=&quot;/upload/default/20180621/a618ece0d2503bf0b39d49df51addd94.mp4&quot; data-setup=&quot;{}&quot;&gt;&lt;source src=&quot;/upload/default/20180621/a618ece0d2503bf0b39d49df51addd94.mp4&quot; type=&quot;video/mp4&quot;&gt;&lt;/source&gt;&lt;/video&gt;&lt;/p&gt;', NULL, '{"thumbnail":"portal\\/20180621\\/19ee6c000d4c282d248b7a813a5a4add.png","template":"article_video"}'),
(14, 0, 1, 1, 1, 1, 1, 0, 1, 469, 0, 0, 1529562982, 1529564738, 1529562540, 0, 'Rope skipping', NULL, '168', '3', 'Easily Length Adjustable', 'With easy-to-use hand screws on each handle, Fitebeast skipping rope can be quickly adjusted for both adult, children, professional athlete and beginners. This jump rope is perfect for boxing, weight loss programmes and crossfit training', 'Durable Jump Rope', 'Highest quality PVC-coated kink resistant speed cable which is lightweight and durable. We offer a replacement skipping rope and an optional protector which you can use this jumping rope for maximum speed exercise anywhere - in the gym, in the garage, or outside', 'DIY Plastic Handles', 'This speed rope constructed with anti-slip light weight shaped handles and we offer two anti-slip overgrip which you can wrap around the handles. To enhance sweat absorption effect and offer extra comfort', 'High Speed Rotations', 'The flexible steel wire with protective coating ensure smooth and fast rotation self-locking, not around the skipping rope, knot, not easy to break built-in high-performance double Ball bearing system means the speed skipping rope spins at an incredible rate that is ideal for double-unders and speed jumping', 'Complete Package and Lifetime Warranty', 'The package including 2 speed ropes, an optional protector, a pure cotton carry bag and two anti-slip overgrip. The portable bag that allows you to take a Fitebeast skipping rope and the extra jump rope anytime, anywhere. We provide Lifetime Warranty and Money Back Guarantee', 'AWAKEN POWER ------Double Jump Never Stop. Fitbeast skipping jump rope, the essentials of your healthy life and say goodbye to expensive sports equipment.', '', 'Skipping Rope, FitBeast Speed Jump Rope with Rapid Ball Bearings for Fitness Workouts Fat Burning Exercises Crossfit Double Unders and Boxing, Speed Jumping Rope Fully Length Adjustable for Adults Weighted to Suit Children', 'http://www.taobao.com', '\n&lt;blockquote&gt;&lt;p&gt;Why choose Fitbeast skipping rope?&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p&gt;Ultra strong steel cable Comfortable skipping rope Adjustable length skipping rope&lt;/p&gt;\n&lt;p&gt;Non-slip grip bands ensure optimum grip and prevent the handles from slipping Smooth running ball bearings for maximum training speed Improvement of strength, endurance,coordination and holistic health&lt;/p&gt;\n&lt;p&gt;Optimum weight distribution Flexible training - whether outdoors or at home&lt;/p&gt;\n&lt;p&gt;Free bag for tangle free storage Free spare screws &amp;amp; caps&lt;/p&gt;\n&lt;blockquote&gt;&lt;p&gt;Why choose Fitbeast skipping rope?&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p&gt;Use this skipping rope anywhere - in the gym, in the garage, indoors or outside and is the jump rope for exercise to come with an outdoor use protector - other crossfit skipping ropes will break when used outdoors.&lt;/p&gt;\n&lt;blockquote&gt;&lt;p&gt;What you get?&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p&gt;A stylish carry bag A Fitebeast professional skipping rope Extra jump rope An optional protector Two Anti-slip overgrip Spare screws mechanism Lifetime warranty&lt;/p&gt;\n', NULL, '{"thumbnail":"portal\\/20180621\\/75329f5f22d3458ad54986c60791154c.png","template":"","photos":[{"url":"portal\\/20180621\\/d28d0718381119e18b967311189dbe49.png","name":"p_dai.png"},{"url":"portal\\/20180621\\/54c5d57e3c8f29557e7d33c825f56737.png","name":"p_tiaosheng.png"},{"url":"portal\\/20180621\\/75329f5f22d3458ad54986c60791154c.png","name":"p_woli.png"},{"url":"portal\\/20180621\\/b5cd5ff3a57efdc8bbdf5a3a745a9c0e.png","name":"p_xiniu.png"},{"url":"portal\\/20180621\\/a2fc8d5c6513caa51947d0b8ff3289d7.png","name":"p_za.png"},{"url":"portal\\/20180621\\/0db206433260b4c5c488f1ae1726c9d2.png","name":"p_zhijian.png"}]}'),
(15, 0, 1, 1, 1, 1, 1, 0, 0, 80, 0, 0, 1529564110, 1529564110, 1529563985, 0, '123dsaasdf', NULL, '49', '1', 'fdafdsafdsa', 'fdsafdsafdsafdsafdsa', 'gfds', 'gfdsgfdsgfdsg', '43tfdsg', 'hgfdjghfdgfdsagfds', '234dsaf', 'gfdsgfdsgfdsgfd', '2fdsa', 'gfdsgfdsgfd', '456fdsajiogrea145645fdsa', '', 'fdsafdsafdsa\r\nfdsafdasfdsa', 'https://www.baidu.com', '\n&lt;blockquote&gt;&lt;p&gt;fdsagresgreas&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p&gt;fdsafdsa&lt;br&gt;fdsanujewagjsd&lt;/p&gt;\n&lt;p&gt;cdsajiogjewagcxszvdsagfewa&lt;/p&gt;\n', NULL, '{"thumbnail":"portal\\/20180621\\/0db206433260b4c5c488f1ae1726c9d2.png","template":"","photos":[{"url":"portal\\/20180621\\/19ee6c000d4c282d248b7a813a5a4add.png","name":"girlting.png"},{"url":"portal\\/20180621\\/d563a0f6e4ede41f44e10466d0814050.png","name":"gril.png"},{"url":"portal\\/20180621\\/b5cd5ff3a57efdc8bbdf5a3a745a9c0e.png","name":"p_xiniu.png"},{"url":"portal\\/20180621\\/a2fc8d5c6513caa51947d0b8ff3289d7.png","name":"p_za.png"}]}'),
(16, 0, 1, 1, 1, 1, 1, 0, 1, 229, 0, 0, 1529564715, 1529564727, 1529564580, 0, 'fdsaasdfdsafdsafd', NULL, '111', '5', 'fewawdf', 'fdsafdsafdsafdsafdsa', 'fewa', 'fdsafdsafdsa', 'fewa', 'fdsafdas', '', '', '', '', 'fewadsafewafdsa', '', 'fdsasdfdsafdsa\r\nfdsafdsafdsafdsa', 'http://www.google.com', '\n&lt;blockquote&gt;&lt;p&gt;fdsafdsafdsa&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p&gt;fdsafdsaf&lt;/p&gt;\n&lt;p&gt;fdsafdsafdsa&lt;/p&gt;\n&lt;p&gt;fdsafdsafdsa&lt;/p&gt;\n', NULL, '{"thumbnail":"portal\\/20180621\\/86d8a26ac337c01279e2dd493d8fe95e.png","template":"","photos":[{"url":"portal\\/20180621\\/54c5d57e3c8f29557e7d33c825f56737.png","name":"p_tiaosheng.png"},{"url":"portal\\/20180621\\/75329f5f22d3458ad54986c60791154c.png","name":"p_woli.png"},{"url":"portal\\/20180621\\/b5cd5ff3a57efdc8bbdf5a3a745a9c0e.png","name":"p_xiniu.png"}]}');

-- --------------------------------------------------------

--
-- 表的结构 `fie_portal_tag`
--

CREATE TABLE IF NOT EXISTS `fie_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 文章标签表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_portal_tag_post`
--

CREATE TABLE IF NOT EXISTS `fie_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_recycle_bin`
--

CREATE TABLE IF NOT EXISTS `fie_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' 回收站' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_role`
--

CREATE TABLE IF NOT EXISTS `fie_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='角色表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `fie_role`
--

INSERT INTO `fie_role` (`id`, `parent_id`, `status`, `create_time`, `update_time`, `list_order`, `name`, `remark`) VALUES
(1, 0, 1, 1329633709, 1329633709, 0, '超级管理员', '拥有网站最高管理员权限！'),
(2, 0, 1, 1329633709, 1329633709, 0, '普通管理员', '权限由最高管理员分配！');

-- --------------------------------------------------------

--
-- 表的结构 `fie_role_user`
--

CREATE TABLE IF NOT EXISTS `fie_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_route`
--

CREATE TABLE IF NOT EXISTS `fie_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='url路由表' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `fie_route`
--

INSERT INTO `fie_route` (`id`, `list_order`, `status`, `type`, `full_url`, `url`) VALUES
(1, 5000, 1, 2, 'portal/List/index?id=1', 'workout'),
(2, 4999, 1, 2, 'portal/Article/index?cid=1', 'workout/:id'),
(3, 5000, 1, 2, 'portal/List/index?id=2', 'coach'),
(4, 4999, 1, 2, 'portal/Article/index?cid=2', 'coach/:id'),
(5, 5000, 1, 2, 'portal/List/index?id=3', 'products'),
(6, 4999, 1, 2, 'portal/Article/index?cid=3', 'products/:id'),
(7, 5000, 1, 2, 'portal/Page/index?id=1', 'customer'),
(8, 5000, 1, 2, 'portal/Page/index?id=2', 'about'),
(9, 5000, 1, 2, 'portal/Page/index?id=3', 'contacts'),
(10, 5000, 1, 2, 'portal/Page/index?id=4', 'discount');

-- --------------------------------------------------------

--
-- 表的结构 `fie_slide`
--

CREATE TABLE IF NOT EXISTS `fie_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='幻灯片表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `fie_slide`
--

INSERT INTO `fie_slide` (`id`, `status`, `delete_time`, `name`, `remark`) VALUES
(1, 1, 0, '首页banner', '');

-- --------------------------------------------------------

--
-- 表的结构 `fie_slide_item`
--

CREATE TABLE IF NOT EXISTS `fie_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) NOT NULL COMMENT '幻灯片描述',
  `content` text COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式',
  PRIMARY KEY (`id`),
  KEY `slide_id` (`slide_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='幻灯片子项表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `fie_slide_item`
--

INSERT INTO `fie_slide_item` (`id`, `slide_id`, `status`, `list_order`, `title`, `image`, `url`, `target`, `description`, `content`, `more`) VALUES
(1, 1, 1, 10000, 'LET US &lt;/br&gt;Awaken power', '/style/images/index_01.jpg', '', '', '', '', NULL),
(2, 1, 1, 10000, 'LET US &lt;/br&gt;Awaken power2', '/style/images/index_01.jpg', '', '', '', '', NULL),
(3, 1, 1, 10000, 'LET US &lt;/br&gt;Awaken power3', '/style/images/index_01.jpg', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fie_theme`
--

CREATE TABLE IF NOT EXISTS `fie_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `fie_theme`
--

INSERT INTO `fie_theme` (`id`, `create_time`, `update_time`, `status`, `is_compiled`, `theme`, `name`, `version`, `demo_url`, `thumbnail`, `author`, `author_url`, `lang`, `keywords`, `description`) VALUES
(1, 0, 0, 0, 0, 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板'),
(2, 0, 0, 0, 0, 'fie', 'fie', '1.0.0', '', '', 'Jason', '', 'zh-cn', 'XZEC模板', 'XZEC默认模板');

-- --------------------------------------------------------

--
-- 表的结构 `fie_theme_file`
--

CREATE TABLE IF NOT EXISTS `fie_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `fie_theme_file`
--

INSERT INTO `fie_theme_file` (`id`, `is_public`, `list_order`, `theme`, `name`, `action`, `file`, `description`, `more`, `config_more`, `draft_more`) VALUES
(1, 0, 10, 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{"vars":{"hot_articles_category_id":{"title":"Hot Articles\\u5206\\u7c7bID","value":"1","type":"text","tip":"","rule":[]}}}', '{"vars":{"hot_articles_category_id":{"title":"Hot Articles\\u5206\\u7c7bID","value":"1","type":"text","tip":"","rule":[]}}}', NULL),
(2, 0, 10, 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{"vars":{"baidu_map_info_window_text":{"title":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57","name":"baidu_map_info_window_text","value":"ThinkCMF<br\\/><span class=''''>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>","type":"text","tip":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801","rule":[]},"company_location":{"title":"\\u516c\\u53f8\\u5750\\u6807","value":"","type":"location","tip":"","rule":{"require":true}},"address_cn":{"title":"\\u516c\\u53f8\\u5730\\u5740","value":"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7","type":"text","tip":"","rule":{"require":true}},"address_en":{"title":"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09","value":"NO.0001 Xie Tu Road, Shanghai China","type":"text","tip":"","rule":{"require":true}},"email":{"title":"\\u516c\\u53f8\\u90ae\\u7bb1","value":"catman@thinkcmf.com","type":"text","tip":"","rule":{"require":true}},"phone_cn":{"title":"\\u516c\\u53f8\\u7535\\u8bdd","value":"021 1000 0001","type":"text","tip":"","rule":{"require":true}},"phone_en":{"title":"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09","value":"+8621 1000 0001","type":"text","tip":"","rule":{"require":true}},"qq":{"title":"\\u8054\\u7cfbQQ","value":"478519726","type":"text","tip":"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00","rule":{"require":true}}}}', '{"vars":{"baidu_map_info_window_text":{"title":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57","name":"baidu_map_info_window_text","value":"ThinkCMF<br\\/><span class=''''>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>","type":"text","tip":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801","rule":[]},"company_location":{"title":"\\u516c\\u53f8\\u5750\\u6807","value":"","type":"location","tip":"","rule":{"require":true}},"address_cn":{"title":"\\u516c\\u53f8\\u5730\\u5740","value":"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7","type":"text","tip":"","rule":{"require":true}},"address_en":{"title":"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09","value":"NO.0001 Xie Tu Road, Shanghai China","type":"text","tip":"","rule":{"require":true}},"email":{"title":"\\u516c\\u53f8\\u90ae\\u7bb1","value":"catman@thinkcmf.com","type":"text","tip":"","rule":{"require":true}},"phone_cn":{"title":"\\u516c\\u53f8\\u7535\\u8bdd","value":"021 1000 0001","type":"text","tip":"","rule":{"require":true}},"phone_en":{"title":"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09","value":"+8621 1000 0001","type":"text","tip":"","rule":{"require":true}},"qq":{"title":"\\u8054\\u7cfbQQ","value":"478519726","type":"text","tip":"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00","rule":{"require":true}}}}', NULL),
(3, 0, 5, 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{"vars":{"top_slide":{"title":"\\u9876\\u90e8\\u5e7b\\u706f\\u7247","value":"","type":"text","dataSource":{"api":"admin\\/Slide\\/index","multi":false},"placeholder":"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247","tip":"\\u9876\\u90e8\\u5e7b\\u706f\\u7247","rule":{"require":true}}},"widgets":{"features":{"title":"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF","display":"1","vars":{"sub_title":{"title":"\\u526f\\u6807\\u9898","value":"Quickly understand the ThinkCMF","type":"text","placeholder":"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898","tip":"","rule":{"require":true}},"features":{"title":"\\u7279\\u6027\\u4ecb\\u7ecd","value":[{"title":"MVC\\u5206\\u5c42\\u6a21\\u5f0f","icon":"bars","content":"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002"},{"title":"\\u7528\\u6237\\u7ba1\\u7406","icon":"group","content":"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002"},{"title":"\\u4e91\\u7aef\\u90e8\\u7f72","icon":"cloud","content":"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002"},{"title":"\\u5b89\\u5168\\u7b56\\u7565","icon":"heart","content":"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002"},{"title":"\\u5e94\\u7528\\u6a21\\u5757\\u5316","icon":"cubes","content":"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002"},{"title":"\\u514d\\u8d39\\u5f00\\u6e90","icon":"certificate","content":"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002"}],"type":"array","item":{"title":{"title":"\\u6807\\u9898","value":"","type":"text","rule":{"require":true}},"icon":{"title":"\\u56fe\\u6807","value":"","type":"text"},"content":{"title":"\\u63cf\\u8ff0","value":"","type":"textarea"}},"tip":""}}},"last_news":{"title":"\\u6700\\u65b0\\u8d44\\u8baf","display":"1","vars":{"last_news_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/Category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"vars":{"top_slide":{"title":"\\u9876\\u90e8\\u5e7b\\u706f\\u7247","value":"","type":"text","dataSource":{"api":"admin\\/Slide\\/index","multi":false},"placeholder":"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247","tip":"\\u9876\\u90e8\\u5e7b\\u706f\\u7247","rule":{"require":true}}},"widgets":{"features":{"title":"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF","display":"1","vars":{"sub_title":{"title":"\\u526f\\u6807\\u9898","value":"Quickly understand the ThinkCMF","type":"text","placeholder":"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898","tip":"","rule":{"require":true}},"features":{"title":"\\u7279\\u6027\\u4ecb\\u7ecd","value":[{"title":"MVC\\u5206\\u5c42\\u6a21\\u5f0f","icon":"bars","content":"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002"},{"title":"\\u7528\\u6237\\u7ba1\\u7406","icon":"group","content":"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002"},{"title":"\\u4e91\\u7aef\\u90e8\\u7f72","icon":"cloud","content":"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002"},{"title":"\\u5b89\\u5168\\u7b56\\u7565","icon":"heart","content":"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002"},{"title":"\\u5e94\\u7528\\u6a21\\u5757\\u5316","icon":"cubes","content":"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002"},{"title":"\\u514d\\u8d39\\u5f00\\u6e90","icon":"certificate","content":"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002"}],"type":"array","item":{"title":{"title":"\\u6807\\u9898","value":"","type":"text","rule":{"require":true}},"icon":{"title":"\\u56fe\\u6807","value":"","type":"text"},"content":{"title":"\\u63cf\\u8ff0","value":"","type":"textarea"}},"tip":""}}},"last_news":{"title":"\\u6700\\u65b0\\u8d44\\u8baf","display":"1","vars":{"last_news_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/Category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(4, 0, 10, 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{"vars":[],"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"vars":[],"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(5, 0, 10, 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(6, 0, 10, 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{"vars":{"varName1":{"title":"\\u70ed\\u95e8\\u641c\\u7d22","value":"1","type":"text","tip":"\\u8fd9\\u662f\\u4e00\\u4e2atext","rule":{"require":true}}}}', '{"vars":{"varName1":{"title":"\\u70ed\\u95e8\\u641c\\u7d22","value":"1","type":"text","tip":"\\u8fd9\\u662f\\u4e00\\u4e2atext","rule":{"require":true}}}}', NULL),
(7, 1, 0, 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{"vars":{"enable_mobile":{"title":"\\u624b\\u673a\\u6ce8\\u518c","value":1,"type":"select","options":{"1":"\\u5f00\\u542f","0":"\\u5173\\u95ed"},"tip":""}}}', '{"vars":{"enable_mobile":{"title":"\\u624b\\u673a\\u6ce8\\u518c","value":1,"type":"select","options":{"1":"\\u5f00\\u542f","0":"\\u5173\\u95ed"},"tip":""}}}', NULL),
(8, 1, 1, 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{"vars":{"company_name":{"title":"\\u516c\\u53f8\\u540d\\u79f0","name":"company_name","value":"ThinkCMF","type":"text","tip":"","rule":[]}}}', '{"vars":{"company_name":{"title":"\\u516c\\u53f8\\u540d\\u79f0","name":"company_name","value":"ThinkCMF","type":"text","tip":"","rule":[]}}}', NULL),
(9, 0, 10, 'fie', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{"vars":{"hot_articles_category_id":{"title":"Hot Articles\\u5206\\u7c7bID","value":"1","type":"text","tip":"","rule":[]}}}', '{"vars":{"hot_articles_category_id":{"title":"Hot Articles\\u5206\\u7c7bID","value":"1","type":"text","tip":"","rule":[]}}}', NULL),
(10, 0, 10, 'fie', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{"vars":{"baidu_map_info_window_text":{"title":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57","name":"baidu_map_info_window_text","value":"ThinkCMF<br\\/><span class=''''>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>","type":"text","tip":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801","rule":[]},"company_location":{"title":"\\u516c\\u53f8\\u5750\\u6807","value":"","type":"location","tip":"","rule":{"require":true}},"address_cn":{"title":"\\u516c\\u53f8\\u5730\\u5740","value":"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7","type":"text","tip":"","rule":{"require":true}},"address_en":{"title":"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09","value":"NO.0001 Xie Tu Road, Shanghai China","type":"text","tip":"","rule":{"require":true}},"email":{"title":"\\u516c\\u53f8\\u90ae\\u7bb1","value":"catman@thinkcmf.com","type":"text","tip":"","rule":{"require":true}},"phone_cn":{"title":"\\u516c\\u53f8\\u7535\\u8bdd","value":"021 1000 0001","type":"text","tip":"","rule":{"require":true}},"phone_en":{"title":"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09","value":"+8621 1000 0001","type":"text","tip":"","rule":{"require":true}},"qq":{"title":"\\u8054\\u7cfbQQ","value":"478519726","type":"text","tip":"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00","rule":{"require":true}}}}', '{"vars":{"baidu_map_info_window_text":{"title":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57","name":"baidu_map_info_window_text","value":"ThinkCMF<br\\/><span class=''''>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>","type":"text","tip":"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801","rule":[]},"company_location":{"title":"\\u516c\\u53f8\\u5750\\u6807","value":"","type":"location","tip":"","rule":{"require":true}},"address_cn":{"title":"\\u516c\\u53f8\\u5730\\u5740","value":"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7","type":"text","tip":"","rule":{"require":true}},"address_en":{"title":"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09","value":"NO.0001 Xie Tu Road, Shanghai China","type":"text","tip":"","rule":{"require":true}},"email":{"title":"\\u516c\\u53f8\\u90ae\\u7bb1","value":"catman@thinkcmf.com","type":"text","tip":"","rule":{"require":true}},"phone_cn":{"title":"\\u516c\\u53f8\\u7535\\u8bdd","value":"021 1000 0001","type":"text","tip":"","rule":{"require":true}},"phone_en":{"title":"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09","value":"+8621 1000 0001","type":"text","tip":"","rule":{"require":true}},"qq":{"title":"\\u8054\\u7cfbQQ","value":"478519726","type":"text","tip":"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00","rule":{"require":true}}}}', NULL),
(11, 0, 5, 'fie', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{"vars":{"top_slide":{"title":"\\u9876\\u90e8\\u5e7b\\u706f\\u7247","value":"","type":"text","dataSource":{"api":"admin\\/Slide\\/index","multi":false},"placeholder":"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247","tip":"\\u9876\\u90e8\\u5e7b\\u706f\\u7247","rule":{"require":true}}},"widgets":{"features":{"title":"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF","display":"1","vars":{"sub_title":{"title":"\\u526f\\u6807\\u9898","value":"Quickly understand the ThinkCMF","type":"text","placeholder":"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898","tip":"","rule":{"require":true}},"features":{"title":"\\u7279\\u6027\\u4ecb\\u7ecd","value":[{"title":"MVC\\u5206\\u5c42\\u6a21\\u5f0f","icon":"bars","content":"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002"},{"title":"\\u7528\\u6237\\u7ba1\\u7406","icon":"group","content":"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002"},{"title":"\\u4e91\\u7aef\\u90e8\\u7f72","icon":"cloud","content":"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002"},{"title":"\\u5b89\\u5168\\u7b56\\u7565","icon":"heart","content":"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002"},{"title":"\\u5e94\\u7528\\u6a21\\u5757\\u5316","icon":"cubes","content":"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002"},{"title":"\\u514d\\u8d39\\u5f00\\u6e90","icon":"certificate","content":"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002"}],"type":"array","item":{"title":{"title":"\\u6807\\u9898","value":"","type":"text","rule":{"require":true}},"icon":{"title":"\\u56fe\\u6807","value":"","type":"text"},"content":{"title":"\\u63cf\\u8ff0","value":"","type":"textarea"}},"tip":""}}},"last_news":{"title":"\\u6700\\u65b0\\u8d44\\u8baf","display":"1","vars":{"last_news_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/Category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"vars":{"top_slide":{"title":"\\u9876\\u90e8\\u5e7b\\u706f\\u7247","value":"","type":"text","dataSource":{"api":"admin\\/Slide\\/index","multi":false},"placeholder":"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247","tip":"\\u9876\\u90e8\\u5e7b\\u706f\\u7247","rule":{"require":true}}},"widgets":{"features":{"title":"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF","display":"1","vars":{"sub_title":{"title":"\\u526f\\u6807\\u9898","value":"Quickly understand the ThinkCMF","type":"text","placeholder":"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898","tip":"","rule":{"require":true}},"features":{"title":"\\u7279\\u6027\\u4ecb\\u7ecd","value":[{"title":"MVC\\u5206\\u5c42\\u6a21\\u5f0f","icon":"bars","content":"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002"},{"title":"\\u7528\\u6237\\u7ba1\\u7406","icon":"group","content":"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002"},{"title":"\\u4e91\\u7aef\\u90e8\\u7f72","icon":"cloud","content":"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002"},{"title":"\\u5b89\\u5168\\u7b56\\u7565","icon":"heart","content":"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002"},{"title":"\\u5e94\\u7528\\u6a21\\u5757\\u5316","icon":"cubes","content":"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002"},{"title":"\\u514d\\u8d39\\u5f00\\u6e90","icon":"certificate","content":"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002"}],"type":"array","item":{"title":{"title":"\\u6807\\u9898","value":"","type":"text","rule":{"require":true}},"icon":{"title":"\\u56fe\\u6807","value":"","type":"text"},"content":{"title":"\\u63cf\\u8ff0","value":"","type":"textarea"}},"tip":""}}},"last_news":{"title":"\\u6700\\u65b0\\u8d44\\u8baf","display":"1","vars":{"last_news_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/Category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(12, 0, 10, 'fie', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{"vars":[],"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"vars":[],"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(13, 0, 10, 'fie', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(14, 0, 10, 'fie', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{"vars":{"varName1":{"title":"\\u70ed\\u95e8\\u641c\\u7d22","value":"1","type":"text","tip":"\\u8fd9\\u662f\\u4e00\\u4e2atext","rule":{"require":true}}}}', '{"vars":{"varName1":{"title":"\\u70ed\\u95e8\\u641c\\u7d22","value":"1","type":"text","tip":"\\u8fd9\\u662f\\u4e00\\u4e2atext","rule":{"require":true}}}}', NULL),
(15, 1, 0, 'fie', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{"vars":{"enable_mobile":{"title":"\\u624b\\u673a\\u6ce8\\u518c","value":1,"type":"select","options":{"1":"\\u5f00\\u542f","0":"\\u5173\\u95ed"},"tip":""}}}', '{"vars":{"enable_mobile":{"title":"\\u624b\\u673a\\u6ce8\\u518c","value":1,"type":"select","options":{"1":"\\u5f00\\u542f","0":"\\u5173\\u95ed"},"tip":""}}}', NULL),
(16, 1, 1, 'fie', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{"vars":{"company_name":{"title":"\\u516c\\u53f8\\u540d\\u79f0","name":"company_name","value":"ThinkCMF","type":"text","tip":"","rule":[]}}}', '{"vars":{"company_name":{"title":"\\u516c\\u53f8\\u540d\\u79f0","name":"company_name","value":"ThinkCMF","type":"text","tip":"","rule":[]}}}', NULL),
(17, 0, 10, 'fie', '视频文章页', 'portal/Article/index', 'portal/article_video', '视频文章页模板文件', '{"vars":{"hot_articles_category_id":{"title":"Hot Articles\\u5206\\u7c7bID","value":"1","type":"text","tip":"","rule":[]}}}', '{"vars":{"hot_articles_category_id":{"title":"Hot Articles\\u5206\\u7c7bID","value":"1","type":"text","tip":"","rule":[]}}}', NULL),
(18, 0, 10, 'fie', '产品列表页', 'portal/List/index', 'portal/list_product', '产品列表模板文件', '{"vars":[],"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"vars":[],"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(19, 0, 10, 'fie', '产品文章页', 'portal/Article/index', 'portal/article_product', '产品文章页模板文件', '{"vars":{"hot_articles_category_id":{"title":"Hot Articles\\u5206\\u7c7bID","value":"1","type":"text","tip":"","rule":[]}}}', '{"vars":{"hot_articles_category_id":{"title":"Hot Articles\\u5206\\u7c7bID","value":"1","type":"text","tip":"","rule":[]}}}', NULL),
(20, 0, 10, 'fie', '客户服务页面', 'portal/Page/index', 'portal/page_server', '客户服务页面模板文件', '{"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL),
(21, 0, 10, 'fie', '获取优惠码页面', 'portal/Page/index', 'portal/page_code', '获取优惠页面模板文件', '{"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', '{"widgets":{"hottest_articles":{"title":"\\u70ed\\u95e8\\u6587\\u7ae0","display":"1","vars":{"hottest_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}},"last_articles":{"title":"\\u6700\\u65b0\\u53d1\\u5e03","display":"1","vars":{"last_articles_category_id":{"title":"\\u6587\\u7ae0\\u5206\\u7c7bID","value":"","type":"text","dataSource":{"api":"portal\\/category\\/index","multi":true},"placeholder":"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b","tip":"","rule":{"require":true}}}}}}', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fie_third_party_user`
--

CREATE TABLE IF NOT EXISTS `fie_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方用户表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_user`
--

CREATE TABLE IF NOT EXISTS `fie_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `fie_user`
--

INSERT INTO `fie_user` (`id`, `user_type`, `sex`, `birthday`, `last_login_time`, `score`, `coin`, `balance`, `create_time`, `user_status`, `user_login`, `user_pass`, `user_nickname`, `user_email`, `user_url`, `avatar`, `signature`, `last_login_ip`, `user_activation_key`, `mobile`, `more`) VALUES
(1, 1, 0, 0, 1529501356, 0, 0, '0.00', 1529500860, 1, 'admin', '###2454939f61a58ffd09eed9397ffa69ee', 'admin', '164466159@qq.com', '', '', '', '127.0.0.1', '', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fie_user_action`
--

CREATE TABLE IF NOT EXISTS `fie_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户操作表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `fie_user_action`
--

INSERT INTO `fie_user_action` (`id`, `score`, `coin`, `reward_number`, `cycle_type`, `cycle_time`, `name`, `action`, `app`, `url`) VALUES
(1, 1, 1, 1, 2, 1, '用户登录', 'login', 'user', '');

-- --------------------------------------------------------

--
-- 表的结构 `fie_user_action_log`
--

CREATE TABLE IF NOT EXISTS `fie_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='访问记录表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_user_balance_log`
--

CREATE TABLE IF NOT EXISTS `fie_user_balance_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `change` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改余额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改后余额',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户余额变更日志表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_user_favorite`
--

CREATE TABLE IF NOT EXISTS `fie_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户收藏表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_user_login_attempt`
--

CREATE TABLE IF NOT EXISTS `fie_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_user_score_log`
--

CREATE TABLE IF NOT EXISTS `fie_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户操作积分等奖励日志表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `fie_user_token`
--

CREATE TABLE IF NOT EXISTS `fie_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户客户端登录 token 表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `fie_user_token`
--

INSERT INTO `fie_user_token` (`id`, `user_id`, `expire_time`, `create_time`, `token`, `device_type`) VALUES
(1, 1, 1545052883, 1529500883, '5d3788c923b3cfb0457b9e762204af2035fb92df7eb2597553f338a403d357fc', 'web');

-- --------------------------------------------------------

--
-- 表的结构 `fie_verification_code`
--

CREATE TABLE IF NOT EXISTS `fie_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手机邮箱数字验证码表' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
