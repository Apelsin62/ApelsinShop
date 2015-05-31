-- phpMyAdmin SQL Dump
-- version 4.2.13.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 31 2015 г., 11:01
-- Версия сервера: 10.0.13-MariaDB
-- Версия PHP: 5.6.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `apelsin_shop_db`
--
CREATE DATABASE IF NOT EXISTS `apelsin_shop_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `apelsin_shop_db`;

-- --------------------------------------------------------

--
-- Структура таблицы `Components`
--

CREATE TABLE IF NOT EXISTS `Components` (
  `alias` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `description` text,
  `adminDir` varchar(200) NOT NULL,
  `admin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Components`
--

INSERT INTO `Components` (`alias`, `name`, `author`, `version`, `description`, `adminDir`, `admin`) VALUES
('Adminpanel', 'Adminpanel', 'Compu Project', '1.0', 'Панель администрирования', 'admin', 'index.php'),
('Materials', 'Материалы сайта', 'Compu Project', '1.0', 'Компонент для размещение материалов на сайте.', 'admin', 'index.php'),
('Shop', 'Магазин', 'CompuProject', '1.0', 'Компонента для работы с магазином', 'admin', 'index.php'),
('Users', 'Пользователи', 'Compu Project', '1.0', 'Компонент для работы с пользователями.', 'admin', 'index.php');

-- --------------------------------------------------------

--
-- Структура таблицы `ComponentsDepends`
--

CREATE TABLE IF NOT EXISTS `ComponentsDepends` (
`id` bigint(20) unsigned NOT NULL,
  `elementType` varchar(50) NOT NULL,
  `component` varchar(50) NOT NULL,
  `depends` varchar(50) NOT NULL,
  `versionStart` varchar(100) DEFAULT NULL,
  `versionEnd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ComponentsDepends`
--

INSERT INTO `ComponentsDepends` (`id`, `elementType`, `component`, `depends`, `versionStart`, `versionEnd`) VALUES
(1, 'Plugins', 'Materials', 'appearingBox', '1.0', '1.0'),
(2, 'Modules', 'Materials', 'captcha', '1.0', '1.0'),
(3, 'Modules', 'Users', 'captcha', '1.0', '1.0');

-- --------------------------------------------------------

--
-- Структура таблицы `ComponentsDependsElementsType`
--

CREATE TABLE IF NOT EXISTS `ComponentsDependsElementsType` (
  `elementType` varchar(50) NOT NULL,
  `tableName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ComponentsDependsElementsType`
--

INSERT INTO `ComponentsDependsElementsType` (`elementType`, `tableName`) VALUES
('Components', 'Components'),
('Modules', 'Modules'),
('Plugins', 'Plugins');

-- --------------------------------------------------------

--
-- Структура таблицы `ComponentsElements`
--

CREATE TABLE IF NOT EXISTS `ComponentsElements` (
`id` bigint(20) unsigned NOT NULL,
  `alias` varchar(50) NOT NULL,
  `component` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `mainPage` varchar(100) NOT NULL,
  `printPage` varchar(100) NOT NULL,
  `mobilePage` varchar(100) NOT NULL,
  `head` varchar(100) DEFAULT NULL,
  `bodyStart` varchar(100) DEFAULT NULL,
  `bodyEnd` varchar(100) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=999902 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ComponentsElements`
--

INSERT INTO `ComponentsElements` (`id`, `alias`, `component`, `name`, `description`, `mainPage`, `printPage`, `mobilePage`, `head`, `bodyStart`, `bodyEnd`, `admin`) VALUES
(101, 'Material', 'Materials', 'Материал', 'Выводит на страницу сайта один материал.', 'index.php', 'print.php', 'mobile.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'index.php'),
(102, 'MaterialsList', 'Materials', 'Список материалов', 'Выводит на страницу сайта список материалов', 'index.php', 'print.php', 'mobile.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'index.php'),
(103, 'MaterialsCategory', 'Materials', 'Категории материалов', 'Выводит на страницу сайта категорию материалов', 'index.php', 'print.php', 'mobile.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'index.php'),
(104, 'MaterialsCategoryList', 'Materials', 'Список категорий материалов', 'Выводит на страницу сайта список категорий материалов', 'index.php', 'print.php', 'mobile.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'index.php'),
(105, 'MaterialsBlog', 'Materials', 'Блог материалов', 'Выводит список материалов в виде блога. Отличается от обычного вывода списка материалов блочной структурой.', 'index.php', 'print.php', 'mobile.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'index.php'),
(201, 'Shop', 'Shop', 'Магазин', NULL, 'index.php', 'print.php', 'mobile.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'index.php'),
(999801, 'Accounts', 'Users', 'Аккаунт', 'Аккаунт пользователя', 'index.php', 'print.php', 'mobile.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'index.php'),
(999802, 'AccountSettings', 'Users', 'Настройки аккаунта', 'Настройки аккаунта пользователя', 'index.php', 'print.php', 'mobile.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'index.php'),
(999803, 'Registration', 'Users', 'Регистрация', 'Страница регистрации пользователя', 'index.php', 'print.php', 'mobile.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'index.php'),
(999901, 'Adminpanel', 'Adminpanel', 'Панель администрирования', 'Панель администрирвоания', 'index.php', 'print.php', 'mobile.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'index.php');

-- --------------------------------------------------------

--
-- Структура таблицы `CreatedModules`
--

CREATE TABLE IF NOT EXISTS `CreatedModules` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `module` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `CreatedModules`
--

INSERT INTO `CreatedModules` (`id`, `name`, `module`) VALUES
(101, 'Панель авторизации', 'authorizationUserPanel'),
(102, 'Переключение языка', 'langPanel'),
(201, 'Главное меню', 'menu'),
(401, 'ShopNavigationPanel', 'ShopNavigationPanel'),
(501, 'ShopBasket', 'ShopBasket'),
(901, 'Основной копирайт', 'html'),
(902, 'Дополнительный копирайт', 'html'),
(903, 'Наверх сайта', 'ToTopSite');

-- --------------------------------------------------------

--
-- Структура таблицы `DBerrors`
--

CREATE TABLE IF NOT EXISTS `DBerrors` (
`id` bigint(20) NOT NULL,
  `element` varchar(200) NOT NULL,
  `sql` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `HtmlModul`
--

CREATE TABLE IF NOT EXISTS `HtmlModul` (
  `name` varchar(100) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `HtmlModul`
--

INSERT INTO `HtmlModul` (`name`, `description`) VALUES
('copyMain', 'Основной копирайт'),
('copyText', 'Копирайт в футэре');

-- --------------------------------------------------------

--
-- Структура таблицы `HtmlModul_Lang`
--

CREATE TABLE IF NOT EXISTS `HtmlModul_Lang` (
  `htmlModul` varchar(100) NOT NULL,
  `lang` varchar(3) NOT NULL,
  `html` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `HtmlModul_Lang`
--

INSERT INTO `HtmlModul_Lang` (`htmlModul`, `lang`, `html`) VALUES
('copyMain', 'eng', '<div class="futerAdress">Ryazan</div>\r\n<div class="futerCopy">© 2011-2015<br>company «Apelsin»</div>'),
('copyMain', 'rus', '<div class="futerAdress">г. Рязань</div>\r\n<div class="futerCopy">© 2011-2015<br>компания «Апельсин»</div>'),
('copyText', 'eng', '<p>Apelsin company reserves the right to change the information published on the site. </p>\r\n<p>Information available at this site is not a public offer.  </p>\r\n<p>For more information about pricing and terms, please call us at the telephone numbers provided on the <a href="./contacts/en">OUR CONTACTS</a> page.</p>\r\n<p>The use of information from the site <a href="./en/">www.apelsin.ru</a> is prohibited without the prior permission from the  <a href="mailto:site.support@apelsin.ru">Site managers</a>.</p>\r\n'),
('copyText', 'rus', '<p>Компания Апельсин оставляет за собой право вносить изменения в информацию, размещенную на этом сайте.</p>\r\n<p>Информация, размещенная на сайте ни в каком виде не является публичной офертой. </p>\r\n<p>Более подробную информацию о ценах и условиях просьба узнавать по телефонам на странице <a href="./contacts/ru">Контакты</a>.</p>\r\n<p>Использование информации с сайта <a href="./ru/">www.apelsin.ru</a> запрещено без разрешения <a href="mailto:site.support@apelsin.ru">Администрации сайта</a></p>\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `JCropTypes`
--

CREATE TABLE IF NOT EXISTS `JCropTypes` (
  `type` varchar(50) NOT NULL,
  `aspectRatio` float unsigned NOT NULL DEFAULT '0',
  `bgColor` varchar(45) NOT NULL DEFAULT 'black',
  `bgOpacity` float NOT NULL DEFAULT '0.5',
  `sideHandles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `minWidth` int(10) unsigned DEFAULT NULL,
  `minHeight` int(10) unsigned DEFAULT NULL,
  `maxWidth` int(10) unsigned DEFAULT NULL,
  `maxHeight` int(10) unsigned DEFAULT NULL,
  `cssClasse` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `JCropTypes`
--

INSERT INTO `JCropTypes` (`type`, `aspectRatio`, `bgColor`, `bgOpacity`, `sideHandles`, `minWidth`, `minHeight`, `maxWidth`, `maxHeight`, `cssClasse`) VALUES
('Avatar', 1, 'black', 0.2, 1, 150, 150, 600, 600, 'JCrop_Avatar'),
('MaterialsImage', 0, 'black', 0.2, 1, 200, 150, 900, 500, 'JCrop_MaterialsImage');

-- --------------------------------------------------------

--
-- Структура таблицы `Jquery`
--

CREATE TABLE IF NOT EXISTS `Jquery` (
  `fileName` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `min` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Jquery`
--

INSERT INTO `Jquery` (`fileName`, `version`, `min`) VALUES
('jquery-1.10.1.min.js', '1.10.1', 1),
('jquery-1.6.3.min.js', '1.6.3', 1),
('jquery.1.8.2.min.js', '1.8.2', 1),
('jquery-1.9.0.min.js', '1.9.0', 1),
('jquery-2.0.3.min.js', '2.0.3', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Lang`
--

CREATE TABLE IF NOT EXISTS `Lang` (
  `lang` varchar(3) NOT NULL,
  `langName` varchar(50) NOT NULL,
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Lang`
--

INSERT INTO `Lang` (`lang`, `langName`, `default`) VALUES
('eng', 'English', 0),
('rus', 'Русский', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Materials`
--

CREATE TABLE IF NOT EXISTS `Materials` (
  `alias` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `lastChange` datetime NOT NULL,
  `showTitle` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `showCreated` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `showChange` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Materials`
--

INSERT INTO `Materials` (`alias`, `created`, `lastChange`, `showTitle`, `showCreated`, `showChange`) VALUES
('test', '2015-02-18 00:00:00', '2015-02-18 00:00:00', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `MaterialsCategories`
--

CREATE TABLE IF NOT EXISTS `MaterialsCategories` (
  `alias` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `lastChange` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `MaterialsCategoriesInList`
--

CREATE TABLE IF NOT EXISTS `MaterialsCategoriesInList` (
  `category` varchar(200) NOT NULL,
  `list` varchar(200) NOT NULL,
  `sequence` int(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `MaterialsCategoriesList`
--

CREATE TABLE IF NOT EXISTS `MaterialsCategoriesList` (
  `name` varchar(200) NOT NULL,
  `showFullMaterialsText` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `showShortMaterialsText` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `showCategories` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `showCreated` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `showChange` tinyint(1) unsigned zerofill NOT NULL DEFAULT '1',
  `categorialsAsURL` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `titleAsURL` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `showAllOnPage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `onPage` int(2) unsigned NOT NULL DEFAULT '10',
  `maxPages` int(2) unsigned NOT NULL DEFAULT '6'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `MaterialsCategoriesList_Lang`
--

CREATE TABLE IF NOT EXISTS `MaterialsCategoriesList_Lang` (
  `list` varchar(200) NOT NULL,
  `lang` varchar(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `MaterialsCategories_Lang`
--

CREATE TABLE IF NOT EXISTS `MaterialsCategories_Lang` (
  `category` varchar(200) NOT NULL,
  `lang` varchar(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `MaterialsInCategories`
--

CREATE TABLE IF NOT EXISTS `MaterialsInCategories` (
  `material` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Materials_Lang`
--

CREATE TABLE IF NOT EXISTS `Materials_Lang` (
  `material` varchar(200) NOT NULL,
  `lang` varchar(3) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Materials_Lang`
--

INSERT INTO `Materials_Lang` (`material`, `lang`, `title`, `text`) VALUES
('test', 'rus', 'Тестовая странциа', 'Тестовая страница с тестовым текстом');

-- --------------------------------------------------------

--
-- Структура таблицы `Menu`
--

CREATE TABLE IF NOT EXISTS `Menu` (
  `name` varchar(100) NOT NULL COMMENT 'Название меню',
  `description` text COMMENT 'описание',
  `type` varchar(50) NOT NULL COMMENT 'тип меню',
  `cssClass` varchar(200) DEFAULT NULL COMMENT 'ункиальный стиль меню'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Menu`
--

INSERT INTO `Menu` (`name`, `description`, `type`, `cssClass`) VALUES
('mainMenu', 'Основное меню', 'horizontal_1_lvl', 'mainMenu');

-- --------------------------------------------------------

--
-- Структура таблицы `MenuItemParent`
--

CREATE TABLE IF NOT EXISTS `MenuItemParent` (
  `menuItem` bigint(20) unsigned NOT NULL COMMENT 'Элемент меню',
  `parent` bigint(20) unsigned NOT NULL COMMENT 'Родитель элемента меню'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Таблица родственных связей элементов меню.';

-- --------------------------------------------------------

--
-- Структура таблицы `MenuItems`
--

CREATE TABLE IF NOT EXISTS `MenuItems` (
`id` bigint(20) unsigned NOT NULL COMMENT 'Идентификатор элемента меню',
  `menu` varchar(100) NOT NULL COMMENT 'идентификатор меню',
  `url` text COMMENT 'ссылка которую можно указать вместо идентификатора страницы. Если указана URL то ее приоритет будет выше чем у id страницы',
  `target` int(1) unsigned NOT NULL COMMENT 'как открывать ссылку',
  `sequence` int(5) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `MenuItems`
--

INSERT INTO `MenuItems` (`id`, `menu`, `url`, `target`, `sequence`) VALUES
(101, 'mainMenu', 'http://global.apelsin/', 1, 1),
(102, 'mainMenu', 'http://global.apelsin/information/', 1, 2),
(103, 'mainMenu', 'http://global.apelsin/vacancies/', 1, 3),
(104, 'mainMenu', 'http://global.apelsin/service_centers/', 1, 4),
(105, 'mainMenu', 'http://global.apelsin/contacts/', 1, 5),
(106, 'mainMenu', NULL, 2, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `MenuItemsPage`
--

CREATE TABLE IF NOT EXISTS `MenuItemsPage` (
  `menuItem` bigint(20) unsigned NOT NULL,
  `page` varchar(50) NOT NULL,
  `postfix` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `MenuItemsPage`
--

INSERT INTO `MenuItemsPage` (`menuItem`, `page`, `postfix`) VALUES
(106, 'shop', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `MenuItems_Lang`
--

CREATE TABLE IF NOT EXISTS `MenuItems_Lang` (
  `menuItem` bigint(20) unsigned NOT NULL,
  `lang` varchar(3) NOT NULL,
  `title` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `MenuItems_Lang`
--

INSERT INTO `MenuItems_Lang` (`menuItem`, `lang`, `title`) VALUES
(101, 'eng', 'News'),
(101, 'rus', 'Акции'),
(102, 'eng', 'Information'),
(102, 'rus', 'Информация'),
(103, 'eng', 'Vacancies'),
(103, 'rus', 'Вакансии'),
(104, 'eng', 'Service Centers'),
(104, 'rus', 'Сервисные центры'),
(105, 'eng', 'Contacts'),
(105, 'rus', 'Контакты'),
(106, 'eng', 'Shop'),
(106, 'rus', 'Каталог');

-- --------------------------------------------------------

--
-- Структура таблицы `MenuTypes`
--

CREATE TABLE IF NOT EXISTS `MenuTypes` (
  `type` varchar(50) NOT NULL,
  `description` text,
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Типы меню:\nВертикальный\nГоризонтальный\nКарусель\nСлайдер';

--
-- Дамп данных таблицы `MenuTypes`
--

INSERT INTO `MenuTypes` (`type`, `description`, `default`) VALUES
('horizontal_1_lvl', 'Горизонтальное одноуровневое меню', 0),
('vertical_1_lvl', 'Вертикальное одноуровневое меню', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Modules`
--

CREATE TABLE IF NOT EXISTS `Modules` (
  `alias` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `description` text,
  `main` varchar(100) NOT NULL,
  `head` varchar(100) DEFAULT NULL,
  `bodyStart` varchar(100) DEFAULT NULL,
  `bodyEnd` varchar(100) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `includeOnceHead` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `includeOnceBodyStart` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `includeOnceBodyEnd` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Modules`
--

INSERT INTO `Modules` (`alias`, `name`, `author`, `version`, `description`, `main`, `head`, `bodyStart`, `bodyEnd`, `admin`, `includeOnceHead`, `includeOnceBodyStart`, `includeOnceBodyEnd`) VALUES
('authorizationUserPanel', 'Панель авторизации', 'Compu Project', '1.0', 'Модуль для отображения панели авторизации пользователей', 'index.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'admin/index.php', 1, 1, 1),
('html', 'Вывод HTML кода', 'Compu Project', '1.0', 'Данный модуль позволяет делать HTML вставки в указанные блоки сайта.', 'index.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'admin/index.php', 1, 1, 1),
('langPanel', 'Языковая панель', 'Compu Project', '1.0', 'Панель выбора языка сайта.', 'index.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'admin/index.php', 1, 1, 1),
('menu', 'Модуль меню', 'Compu Project', '1.0', 'Модуль для создания меню сайта.', 'index.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'admin/index.php', 1, 1, 1),
('ShopBasket', 'ShopBasket', 'Compu Project', '1.0', NULL, 'index.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', NULL, 1, 1, 1),
('ShopNavigationPanel', 'Shop Navigation Panel', 'CompuProject', '1.0', NULL, 'index.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', NULL, 1, 1, 1),
('slider', 'Слайдер', 'Compu Project', '1.0', 'Модуль для вывода слайдеров', 'index.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'admin/index.php', 1, 1, 1),
('socialPanel', 'social panel', 'CompuProject', '1.0', 'социальные сети', 'index.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', 'admin/index.php', 1, 1, 1),
('ToTopSite', 'ToTopSite', 'Compu Project', '1.0', NULL, 'index.php', 'head.php', 'bodyStart.php', 'bodyEnd.php', '/admin/index.php', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ModulesDepends`
--

CREATE TABLE IF NOT EXISTS `ModulesDepends` (
`id` bigint(20) unsigned NOT NULL,
  `elementType` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `depends` varchar(50) NOT NULL,
  `versionStart` varchar(100) DEFAULT NULL,
  `versionEnd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ModulesDependsElementsType`
--

CREATE TABLE IF NOT EXISTS `ModulesDependsElementsType` (
  `elementType` varchar(50) NOT NULL,
  `tableName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ModulesDependsElementsType`
--

INSERT INTO `ModulesDependsElementsType` (`elementType`, `tableName`) VALUES
('Components', 'Components'),
('Modules', 'Modules'),
('Plugins', 'Plugins');

-- --------------------------------------------------------

--
-- Структура таблицы `ModulesInBlocks`
--

CREATE TABLE IF NOT EXISTS `ModulesInBlocks` (
`id` bigint(20) unsigned NOT NULL,
  `module` bigint(20) unsigned NOT NULL,
  `block` bigint(20) unsigned NOT NULL,
  `sequence` int(10) unsigned NOT NULL,
  `showTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cssClasses` varchar(200) DEFAULT NULL,
  `display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `onAllPages` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=903109 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ModulesInBlocks`
--

INSERT INTO `ModulesInBlocks` (`id`, `module`, `block`, `sequence`, `showTitle`, `cssClasses`, `display`, `onAllPages`) VALUES
(1, 101, 1000, 1, 0, NULL, 1, 1),
(102103, 102, 103, 2, 0, NULL, 1, 1),
(201103, 201, 103, 1, 0, NULL, 1, 1),
(401104, 401, 104, 1, 0, NULL, 1, 1),
(501101, 501, 101, 1, 0, NULL, 1, 1),
(901108, 901, 108, 1, 0, NULL, 1, 1),
(902109, 902, 109, 1, 0, NULL, 1, 1),
(903108, 903, 108, 2, 0, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ModulesInBlocks_Lang`
--

CREATE TABLE IF NOT EXISTS `ModulesInBlocks_Lang` (
  `module` bigint(20) unsigned NOT NULL,
  `lang` varchar(3) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ModulesOnPages`
--

CREATE TABLE IF NOT EXISTS `ModulesOnPages` (
  `module` bigint(20) unsigned NOT NULL,
  `page` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ModulesParam`
--

CREATE TABLE IF NOT EXISTS `ModulesParam` (
  `module` bigint(20) unsigned NOT NULL,
  `param` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ModulesParam`
--

INSERT INTO `ModulesParam` (`module`, `param`, `value`) VALUES
(201, 'name', 'mainMenu'),
(901, 'name', 'copyText'),
(902, 'name', 'copyMain');

-- --------------------------------------------------------

--
-- Структура таблицы `ModulesTitleIcon`
--

CREATE TABLE IF NOT EXISTS `ModulesTitleIcon` (
  `module` bigint(20) unsigned NOT NULL,
  `icon` varchar(200) NOT NULL,
  `style` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ModulesTitleIconStile`
--

CREATE TABLE IF NOT EXISTS `ModulesTitleIconStile` (
  `style` varchar(50) NOT NULL,
  `align` varchar(50) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `PageParam`
--

CREATE TABLE IF NOT EXISTS `PageParam` (
  `page` varchar(50) NOT NULL,
  `param` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `PageParam`
--

INSERT INTO `PageParam` (`page`, `param`, `value`) VALUES
('shop', 'name', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `Pages`
--

CREATE TABLE IF NOT EXISTS `Pages` (
  `alias` varchar(50) NOT NULL,
  `showTitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `cssClasses` varchar(200) DEFAULT NULL,
  `componentElement` bigint(20) unsigned NOT NULL,
  `template` varchar(50) NOT NULL,
  `isMainPage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `index` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `follow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `archive` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `notModifiable` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Означает что страница была создана не пользователем а компонентой и может быть удалена только через эту компоненту.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Pages`
--

INSERT INTO `Pages` (`alias`, `showTitle`, `cssClasses`, `componentElement`, `template`, `isMainPage`, `index`, `follow`, `archive`, `notModifiable`) VALUES
('accounts', 1, NULL, 999801, 'apelsinShopTest', 0, 1, 1, 1, 0),
('account_settings', 1, NULL, 999802, 'apelsinShopTest', 0, 1, 1, 1, 0),
('adminpanel', 1, NULL, 999901, 'apelsinShopTest', 0, 0, 0, 0, 0),
('shop', 1, NULL, 201, 'apelsinShop', 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Pages_Lang`
--

CREATE TABLE IF NOT EXISTS `Pages_Lang` (
  `page` varchar(50) NOT NULL,
  `lang` varchar(3) NOT NULL,
  `browserTitle` varchar(100) NOT NULL,
  `pageTitle` varchar(100) NOT NULL,
  `description` text,
  `keywords` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Pages_Lang`
--

INSERT INTO `Pages_Lang` (`page`, `lang`, `browserTitle`, `pageTitle`, `description`, `keywords`) VALUES
('shop', 'rus', 'Тестовая страница', 'Тестовая страница', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `ParamInfo_ComponentsElements`
--

CREATE TABLE IF NOT EXISTS `ParamInfo_ComponentsElements` (
`id` bigint(20) unsigned NOT NULL,
  `componentElement` bigint(20) unsigned NOT NULL,
  `param` varchar(100) NOT NULL DEFAULT 'name',
  `mandatory` tinyint(4) NOT NULL DEFAULT '1',
  `coments` text NOT NULL,
  `table` varchar(200) DEFAULT NULL,
  `column` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ParamInfo_ComponentsElements`
--

INSERT INTO `ParamInfo_ComponentsElements` (`id`, `componentElement`, `param`, `mandatory`, `coments`, `table`, `column`) VALUES
(1, 101, 'name', 1, 'alias материала для вывода настранице', 'Materials', 'alias'),
(2, 102, 'name', 1, 'name списка категорий', 'MaterialsCategoriesList', 'name'),
(5, 105, 'name', 1, 'name списка категорий для вывода списка материалов', 'MaterialsCategoriesList', 'name');

-- --------------------------------------------------------

--
-- Структура таблицы `PluginDefaultParam`
--

CREATE TABLE IF NOT EXISTS `PluginDefaultParam` (
  `plugin` varchar(50) NOT NULL,
  `param` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `PluginDefaultParam`
--

INSERT INTO `PluginDefaultParam` (`plugin`, `param`, `value`) VALUES
('jquery', 'min', '1'),
('jquery', 'version', '2.0.3');

-- --------------------------------------------------------

--
-- Структура таблицы `PluginDepends`
--

CREATE TABLE IF NOT EXISTS `PluginDepends` (
`id` bigint(20) unsigned NOT NULL,
  `elementType` varchar(50) NOT NULL,
  `plugin` varchar(50) NOT NULL,
  `depends` varchar(50) NOT NULL,
  `versionStart` varchar(100) DEFAULT NULL,
  `versionEnd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `PluginOnPage`
--

CREATE TABLE IF NOT EXISTS `PluginOnPage` (
`id` int(10) unsigned NOT NULL,
  `plugin` varchar(50) NOT NULL,
  `page` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `PluginParam`
--

CREATE TABLE IF NOT EXISTS `PluginParam` (
  `plugin` int(10) unsigned NOT NULL,
  `param` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Plugins`
--

CREATE TABLE IF NOT EXISTS `Plugins` (
  `alias` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `description` text,
  `main` varchar(100) NOT NULL,
  `head` varchar(100) DEFAULT NULL,
  `bodyEnd` varchar(100) DEFAULT NULL,
  `admin` varchar(100) DEFAULT NULL,
  `onAllPages` tinyint(3) unsigned NOT NULL DEFAULT '1',
`sequence` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Plugins`
--

INSERT INTO `Plugins` (`alias`, `name`, `author`, `version`, `description`, `main`, `head`, `bodyEnd`, `admin`, `onAllPages`, `sequence`) VALUES
('appearingBox', 'Всплывающий блок', 'Compu Project', '1.0', 'Всплывающий блок дял размещение изображений, страниц, видео и т.д.', 'index.php', 'head.php', '', './admin/index.php', 1, 5),
('AudioPlayer', 'AudioPlayer', 'Compu Project', '1.0', 'AudioPlayer', 'index.php', 'head.php', 'bodyEnd.php', 'admin/index.php', 1, 4),
('captcha', 'Captcha', 'Compu Project', '1.0', 'Генератор проверочного кода', 'index.php', 'head.php', '', './admin/index.php', 1, 2),
('ContentToColumns', 'Content To Columns', 'Compu Project', '1.0', 'Распределяет равномерно контент по колонкам', 'index.php', 'head.php', NULL, 'admin/index.php', 1, 7),
('JCrop', 'Обрезка изображений', 'Compu Project', '1.0', 'Обрезка изображения', 'index.php', 'head.php', '', './admin/index.php', 1, 3),
('jquery', 'Библиотека Jquery', 'Compu Project', '1.0', 'Плагин для подключения библиотеки Jquery', 'index.php', 'head.php', '', './admin/index.php', 1, 1),
('printPage', 'Версия для печати', 'Compu Project', '1.0', 'Плагин генерирующий кнопку для открытия страницы версии для печати', 'index.php', 'head.php', 'bodyEnd.php', 'admin/index.php', 1, 6),
('snowflakes', 'Snowflakes', 'Compu Project', '1.0', 'Падающий снег', 'index.php', 'head.php', NULL, 'admin/index.php', 0, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `PluginsDependsElementsType`
--

CREATE TABLE IF NOT EXISTS `PluginsDependsElementsType` (
  `elementType` varchar(50) NOT NULL,
  `tableName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `PluginsDependsElementsType`
--

INSERT INTO `PluginsDependsElementsType` (`elementType`, `tableName`) VALUES
('Components', 'Components'),
('Modules', 'Modules'),
('Plugins', 'Plugins');

-- --------------------------------------------------------

--
-- Структура таблицы `ROOT_SETTINGS`
--

CREATE TABLE IF NOT EXISTS `ROOT_SETTINGS` (
  `settingsName` varchar(50) NOT NULL,
  `superKey` varchar(100) NOT NULL,
  `multilanguage` tinyint(4) NOT NULL DEFAULT '0',
  `siteClosed` tinyint(4) NOT NULL DEFAULT '0',
  `charset` varchar(100) NOT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  `siteName` varchar(100) NOT NULL,
  `activated` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ROOT_SETTINGS`
--

INSERT INTO `ROOT_SETTINGS` (`settingsName`, `superKey`, `multilanguage`, `siteClosed`, `charset`, `companyName`, `siteName`, `activated`) VALUES
('default', 'f1828ce9f26031573db9a3268b51041c', 1, 0, 'utf8', 'Compu Project', 'Апельсин', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ShopGroups`
--

CREATE TABLE IF NOT EXISTS `ShopGroups` (
  `id` varchar(200) NOT NULL,
  `groupName` varchar(100) NOT NULL,
  `shown` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `showInHierarchy` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopGroups`
--

INSERT INTO `ShopGroups` (`id`, `groupName`, `shown`, `showInHierarchy`) VALUES
('009ff15a-ff84-11e4-9228-005056be1f7a', 'Клеи', 1, 1),
('009ff161-ff84-11e4-9228-005056be1f7a', 'Смеси для полов', 1, 1),
('06dd5e22-ff84-11e4-9228-005056be1f7a', 'Цемент', 1, 1),
('06dd5e26-ff84-11e4-9228-005056be1f7a', 'Шпаклевки', 1, 1),
('06dd5e28-ff84-11e4-9228-005056be1f7a', 'Штукатурки', 1, 1),
('4ffc8b0d-ff83-11e4-9228-005056be1f7a', 'Аксессуары для лакокрасочной продукции', 1, 1),
('569e2343-ff83-11e4-9228-005056be1f7a', 'Антисептики, огнебиозащита, пропитки', 1, 1),
('569e2345-ff83-11e4-9228-005056be1f7a', 'Грунты', 1, 1),
('63760902-ff83-11e4-9228-005056be1f7a', 'Декоративные антисептики', 1, 1),
('6aa6af7c-ff83-11e4-9228-005056be1f7a', 'Декоративные штукатурки', 1, 1),
('6aa6af80-ff83-11e4-9228-005056be1f7a', 'Лаки', 1, 1),
('6ecba52d-fe13-11e4-9228-005056be1f7a', 'Эмаль', 1, 1),
('72429776-ff83-11e4-9228-005056be1f7a', 'Мастики', 1, 1),
('72429777-ff83-11e4-9228-005056be1f7a', 'Растворители', 1, 1),
('7878dd29-ff83-11e4-9228-005056be1f7a', 'Смывки, отбеливатели', 1, 1),
('7878dd2a-ff83-11e4-9228-005056be1f7a', 'Специальные средства', 1, 1),
('7ab9d88b-fe13-11e4-9228-005056be1f7a', 'Краска', 1, 1),
('7eed2035-ff83-11e4-9228-005056be1f7a', 'Шпатлевки', 1, 1),
('9f0afb1c-fe0f-11e4-9228-005056be1f7a', 'Лакокрасочная продукция', 1, 1),
('a593a936-ff83-11e4-9228-005056be1f7a', 'Баня', 1, 1),
('a593a937-ff83-11e4-9228-005056be1f7a', 'Сухие смеси', 1, 1),
('ae73d56b-ff83-11e4-9228-005056be1f7a', 'Абажуры', 1, 1),
('b55a8c9b-ff83-11e4-9228-005056be1f7a', 'Аксессуары для печей', 1, 1),
('b55a8ca1-ff83-11e4-9228-005056be1f7a', 'Арома для бани', 1, 1),
('bb8e728d-ff83-11e4-9228-005056be1f7a', 'Баки', 1, 1),
('bb8e7290-ff83-11e4-9228-005056be1f7a', 'Бондарные изделия', 1, 1),
('c1c97f96-ff83-11e4-9228-005056be1f7a', 'Веники', 1, 1),
('c1c97f97-ff83-11e4-9228-005056be1f7a', 'Вентиляция для бани', 1, 1),
('c8a90fb0-ff83-11e4-9228-005056be1f7a', 'Двери и окна для бани', 1, 1),
('c8a90fb1-ff83-11e4-9228-005056be1f7a', 'Дымоходы для бани', 1, 1),
('cefbf45b-ff83-11e4-9228-005056be1f7a', 'Изделия из камня', 1, 1),
('cefbf45c-ff83-11e4-9228-005056be1f7a', 'Интерьер для бани', 1, 1),
('cefbf45d-ff83-11e4-9228-005056be1f7a', 'Камни', 1, 1),
('d7b136a3-ff83-11e4-9228-005056be1f7a', 'Мебель для бани', 1, 1),
('d7b136a5-ff83-11e4-9228-005056be1f7a', 'Печи дровянные', 1, 1),
('d7b136a6-ff83-11e4-9228-005056be1f7a', 'Печи электрические', 1, 1),
('de447de1-ff83-11e4-9228-005056be1f7a', 'Средство для очистки дымоходов', 1, 1),
('de447de3-ff83-11e4-9228-005056be1f7a', 'Текстиль', 1, 1),
('e4ce3ba3-ff83-11e4-9228-005056be1f7a', 'Термоизоляция для бани', 1, 1),
('e4ce3ba5-ff83-11e4-9228-005056be1f7a', 'Термометры, гигрометры', 1, 1),
('e4ce3ba9-ff83-11e4-9228-005056be1f7a', 'Электрика для бани', 1, 1),
('f2e7fb8f-ff83-11e4-9228-005056be1f7a', 'Аксессуары для сухих смесей', 1, 1),
('f2e7fb92-ff83-11e4-9228-005056be1f7a', 'Антиморозные добавки', 1, 1),
('fa733516-ff83-11e4-9228-005056be1f7a', 'Грунты', 1, 1),
('fa733518-ff83-11e4-9228-005056be1f7a', 'Затирки', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ShopGroupsHierarchy`
--

CREATE TABLE IF NOT EXISTS `ShopGroupsHierarchy` (
  `group` varchar(200) NOT NULL,
  `parentGroup` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopGroupsHierarchy`
--

INSERT INTO `ShopGroupsHierarchy` (`group`, `parentGroup`) VALUES
('009ff15a-ff84-11e4-9228-005056be1f7a', 'a593a937-ff83-11e4-9228-005056be1f7a'),
('009ff161-ff84-11e4-9228-005056be1f7a', 'a593a937-ff83-11e4-9228-005056be1f7a'),
('06dd5e22-ff84-11e4-9228-005056be1f7a', 'a593a937-ff83-11e4-9228-005056be1f7a'),
('06dd5e26-ff84-11e4-9228-005056be1f7a', 'a593a937-ff83-11e4-9228-005056be1f7a'),
('06dd5e28-ff84-11e4-9228-005056be1f7a', 'a593a937-ff83-11e4-9228-005056be1f7a'),
('4ffc8b0d-ff83-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('569e2343-ff83-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('569e2345-ff83-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('63760902-ff83-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('6aa6af7c-ff83-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('6aa6af80-ff83-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('6ecba52d-fe13-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('72429776-ff83-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('72429777-ff83-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('7878dd29-ff83-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('7878dd2a-ff83-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('7ab9d88b-fe13-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('7eed2035-ff83-11e4-9228-005056be1f7a', '9f0afb1c-fe0f-11e4-9228-005056be1f7a'),
('ae73d56b-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('b55a8c9b-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('b55a8ca1-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('bb8e728d-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('bb8e7290-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('c1c97f96-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('c1c97f97-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('c8a90fb0-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('c8a90fb1-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('cefbf45b-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('cefbf45c-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('cefbf45d-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('d7b136a3-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('d7b136a5-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('d7b136a6-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('de447de1-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('de447de3-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('e4ce3ba3-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('e4ce3ba5-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('e4ce3ba9-ff83-11e4-9228-005056be1f7a', 'a593a936-ff83-11e4-9228-005056be1f7a'),
('f2e7fb8f-ff83-11e4-9228-005056be1f7a', 'a593a937-ff83-11e4-9228-005056be1f7a'),
('f2e7fb92-ff83-11e4-9228-005056be1f7a', 'a593a937-ff83-11e4-9228-005056be1f7a'),
('fa733516-ff83-11e4-9228-005056be1f7a', 'a593a937-ff83-11e4-9228-005056be1f7a'),
('fa733518-ff83-11e4-9228-005056be1f7a', 'a593a937-ff83-11e4-9228-005056be1f7a');

-- --------------------------------------------------------

--
-- Структура таблицы `ShopImportLogs`
--

CREATE TABLE IF NOT EXISTS `ShopImportLogs` (
  `importDate` datetime NOT NULL,
  `exportDate` datetime NOT NULL,
  `fullExport` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user` varchar(25) NOT NULL,
  `exportUser` varchar(200) DEFAULT NULL,
  `success` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `errors` int(10) unsigned NOT NULL DEFAULT '0',
  `warnings` int(10) unsigned NOT NULL DEFAULT '0',
  `xmlFile` varchar(200) DEFAULT NULL,
  `sqlFile` varchar(200) DEFAULT NULL,
  `logFileText` varchar(200) DEFAULT NULL,
  `logFileHtml` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopImportLogs`
--

INSERT INTO `ShopImportLogs` (`importDate`, `exportDate`, `fullExport`, `user`, `exportUser`, `success`, `errors`, `warnings`, `xmlFile`, `sqlFile`, `logFileText`, `logFileHtml`) VALUES
('2015-05-24 06:50:11', '2015-05-24 10:28:44', 1, 'raymefise', 'Гриненко Михаил (дизайнер)', 1, 0, 118, 'apelsin1c_2015.05.24_10.28.44.xml', 'apelsin1c_2015.05.24_06.50.11.sql', 'apelsin1c_2015.05.24_06.50.11.log', 'apelsin1c_2015.05.24_06.50.11.html');

-- --------------------------------------------------------

--
-- Структура таблицы `ShopItems`
--

CREATE TABLE IF NOT EXISTS `ShopItems` (
  `id` varchar(200) NOT NULL,
  `itemName` varchar(100) NOT NULL,
  `group` varchar(200) NOT NULL,
  `action` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `amount` float unsigned NOT NULL,
  `minAmount` float unsigned NOT NULL,
  `description` longtext,
  `shown` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopItems`
--

INSERT INTO `ShopItems` (`id`, `itemName`, `group`, `action`, `amount`, `minAmount`, `description`, `shown`) VALUES
('000b4673-f788-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Голубой', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 66, 61, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('030b5cff-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Бирюзовый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 69, 48, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('047805a5-fe8c-11e3-bbdb-005056be1f7b', 'Краска ВД акриловая д/стен и потолков (PROFESSIONAL) База С DALI 2,5л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 9, 9, 'КРАСКА ДАЛИ ДЛЯ СТЕН И ПОТОЛКОВ предназначена для декоративного и экологичного окрашивания стен и потолков внутри помещений с повышенной эксплуатационной нагрузкой. Применяется для окраски кирпичных, бетонных, оштукатуренных и других минеральных поверхностей.', 1),
('04834f06-93b0-11e3-82a4-005056be1f7b', 'Грунт-эмаль по ржавчине красный 2л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 44, 27, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('05caaed0-f790-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Охра', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 12, 0, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('05caaed2-f790-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг серый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 11, 1, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('06e98e75-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Шоколадный', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 14, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('07027c6c-7f47-11e3-af7c-005056be1f7b', 'Краска латексная PARADE R7 база А шелк-мат. 5л Россия', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 47, 39, 'Шелковисто-матовая краска для стен и потолков любых типов помещений, в т.ч. с высокой эксплуатационной нагрузкой, требующих частой влажной уборки, а также фасадных элементов.\n', 1),
('076d2137-4380-11de-8f53-000e0c431b58', 'Грунт-эмаль по ржавчине черная 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 204, 80, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('076d2139-4380-11de-8f53-000e0c431b58', 'Грунт-эмаль по ржавчине черная 2л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 101, 65, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('076d213b-4380-11de-8f53-000e0c431b58', 'Грунт-эмаль по ржавчине белая 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 79, 55, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('076d213d-4380-11de-8f53-000e0c431b58', 'Грунт-эмаль по ржавчине белая 2л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 72, 46, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('076d213f-4380-11de-8f53-000e0c431b58', 'Грунт-эмаль по ржавчине коричневая 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 160, 50, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('076d2141-4380-11de-8f53-000e0c431b58', 'Грунт-эмаль по ржавчине коричневая 2л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 181, 50, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('076d2143-4380-11de-8f53-000e0c431b58', 'Грунт-эмаль по ржавчине красно-коричневая 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 108, 50, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('076d2145-4380-11de-8f53-000e0c431b58', 'Грунт-эмаль по ржавчине красно-коричневая 2л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 139, 45, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('076d2147-4380-11de-8f53-000e0c431b58', 'Грунт-эмаль по ржавчине серая 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 165, 60, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('076d2149-4380-11de-8f53-000e0c431b58', 'Грунт-эмаль по ржавчине серая 2л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 201, 54, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('076d214b-4380-11de-8f53-000e0c431b58', 'Грунт-эмаль по ржавчине зеленая 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 80, 49, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('076d214d-4380-11de-8f53-000e0c431b58', 'Грунт-эмаль по ржавчине зеленая 2л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 91, 51, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('079b44f8-f788-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Шоколадный', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 53, 59, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('0916172c-947c-11e3-8d88-005056be1f7b', 'Штукатурка структурная декоративная с эффектом "зернистости" размер "зерна" 2мм Белый 15кг', '6aa6af7c-ff83-11e4-9228-005056be1f7a', 0, 27, 18, 'Для декоративной отделки поверхностей внутри и снаружи помещений. Готовая к применению декоративная штукатурка повышенной белизны на основе водной акриловой дисперсии с равномерно зернистой структурой. Скрывает небольшие неровности основания. Легко наносится. Образуемый рельеф получается плавным и приятным на ощупь. Создает прочное влагостойкое, паропроницаемое покрытие, стойкое к атмосферным воздействиям и эксплуатационным нагрузкам. Обладает отличной адгезией к поверхностям из бетона, камня, гипса, цемента, кирпича, ДСП, ДВП. Не содержит растворителей, без запаха. Размер зерна ~ 1,5 мм. Допускает мытье окрашенной поверхности.', 1),
('09f4768d-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Зеленый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 58, 48, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('0d8fcbcd-99a8-11db-937f-000e0c431b59', 'Грунт акриловый "PARADE" G30  4л', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 41, 29, 'Грунтовка акриловая глубокого проникновения. Высококачественная готовая к употреблению грунтовка с высокой проникающей способностью и отличными связующими свойствами.', 1),
('0d8fcbcf-99a8-11db-937f-000e0c431b59', 'Грунт акриловый "PARADE" G30 10л', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 77, 25, 'Грунтовка акриловая глубокого проникновения. Высококачественная готовая к употреблению грунтовка с высокой проникающей способностью и отличными связующими свойствами.', 1),
('0d8fcbd1-99a8-11db-937f-000e0c431b59', 'Грунт под штукатурки "PARADE" Putzgrund G100 Белый 2,5л', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 135, 48, 'Parade G100 Putzgrund — грунтовка для внутренних работ. Это основа любых отделочных работ. Грунтовки Парад для паркета предотвращают появления масел и воска, заполняют неровности и идеально подготавливают поверхность для нанесения лака. Они производятся на минеральной, акриловой, алкидной и других основах. Также улучшают структурные свойства гладких оснований. В зависимости от вида грунтовки перед применением разбавляются растворителем либо водой.', 1),
('0d8fcc0e-99a8-11db-937f-000e0c431b59', 'Краска акрил. "PARADE" W1 Бел. мат.  2,5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 85, 63, 'Краска Parade W1 применяется для покраски потолков внутри помещений с небольшой эксплуатационной нагрузкой. Основания для покраски: оштукатуренные, цементные, кирпичные, бетонные, гипсовые и гипсокартонные, деревянные.', 1),
('0d8fcc10-99a8-11db-937f-000e0c431b59', 'Краска акрил. "PARADE" W1 Бел.мат. 10л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 77, 64, 'Краска Parade W1 применяется для покраски потолков внутри помещений с небольшой эксплуатационной нагрузкой. Основания для покраски: оштукатуренные, цементные, кирпичные, бетонные, гипсовые и гипсокартонные, деревянные.', 1),
('0d8fcc12-99a8-11db-937f-000e0c431b59', 'Краска акрил. "PARADE" W1 Бел. мат. 5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 72, 51, 'Краска Parade W1 применяется для покраски потолков внутри помещений с небольшой эксплуатационной нагрузкой. Основания для покраски: оштукатуренные, цементные, кирпичные, бетонные, гипсовые и гипсокартонные, деревянные.', 1),
('0d8fcc1c-99a8-11db-937f-000e0c431b59', 'Краска акрил. "PARADE" W2 влагопрочная Бел. мат.  2,5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 107, 73, 'Parade W2 — краска акриловая для стен и потолков. Допускается легкая влажная уборка, краска выдерживает 200 циклов мытья. Parade W2 применяется для внутренних работ (стены и потолки помещений, подвергающиеся нормальным эксплуатационным нагрузкам (жилые помещения) ).', 1),
('0d8fcc1e-99a8-11db-937f-000e0c431b59', 'Краска акрил. "PARADE" W2 влагопрочная Бел.мат. 10л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 83, 69, 'Parade W2 — краска акриловая для стен и потолков. Допускается легкая влажная уборка, краска выдерживает 200 циклов мытья. Parade W2 применяется для внутренних работ (стены и потолки помещений, подвергающиеся нормальным эксплуатационным нагрузкам (жилые помещения) ).', 1),
('0d8fcc20-99a8-11db-937f-000e0c431b59', 'Краска акрил. "PARADE" W2 влагопрочная Бел. мат.5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 71, 53, 'Parade W2 — краска акриловая для стен и потолков. Допускается легкая влажная уборка, краска выдерживает 200 циклов мытья. Parade W2 применяется для внутренних работ (стены и потолки помещений, подвергающиеся нормальным эксплуатационным нагрузкам (жилые помещения) ).', 1),
('0d8fcc22-99a8-11db-937f-000e0c431b59', 'Краска акрил. "PARADE" W3 влагостойкая Бел. мат.  2,5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 169, 74, 'Parade W3 — краска акриловая для внутренних работ. Допускается влажная уборка, выдерживает 1500 циклов мытья. Parade W3 применяется на стены и потолки помещений, подвергающиеся сильным эксплуатационным нагрузкам (коридоры, прихожие и т.п.), подходит для окраски обоев.', 1),
('0d8fcc24-99a8-11db-937f-000e0c431b59', 'Краска акрил. "PARADE" W3 влагостойкая Бел.мат. 10л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 270, 84, 'Parade W3 — краска акриловая для внутренних работ. Допускается влажная уборка, выдерживает 1500 циклов мытья. Parade W3 применяется на стены и потолки помещений, подвергающиеся сильным эксплуатационным нагрузкам (коридоры, прихожие и т.п.), подходит для окраски обоев.', 1),
('0d8fcc26-99a8-11db-937f-000e0c431b59', 'Краска акрил. "PARADE" W3 влагостойкая Бел. мат.5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 119, 51, 'Parade W3 — краска акриловая для внутренних работ. Допускается влажная уборка, выдерживает 1500 циклов мытья. Parade W3 применяется на стены и потолки помещений, подвергающиеся сильным эксплуатационным нагрузкам (коридоры, прихожие и т.п.), подходит для окраски обоев.', 1),
('0ff22851-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Розово-бежевый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 13, 9, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('1004a95c-f787-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Белый матовый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 31, 71, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('11d9ec94-f788-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Розово-бежевый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 73, 61, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('129c7f4d-5273-11de-8f53-000e0c431b58', 'Краска ВД акриловая д/стен и потолков (PROFESSIONAL) DALI 9л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 87, 46, 'КРАСКА ДАЛИ ДЛЯ СТЕН И ПОТОЛКОВ предназначена для декоративного и экологичного окрашивания стен и потолков внутри помещений с повышенной эксплуатационной нагрузкой. Применяется для окраски кирпичных, бетонных, оштукатуренных и других минеральных поверхностей.', 1),
('138c38bb-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Светло-зеленый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 70, 46, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('13cd2b20-99a8-11db-937f-000e0c431b59', 'Краска интерьерная "PARADE" W5 база А Бел. мат. 2,7л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 32, 27, 'Parade W5 интерьерная краска на акриловой основе, матовая для внутренних работ образует прочное матовое декоративное покрытие, выдерживающее частую влажную уборку с применением моющих средств. Рекомендуется для любых типов помещений при окраске стен и потолков, а также обоев под покраску.', 1),
('13cd2b24-99a8-11db-937f-000e0c431b59', 'Краска интерьерная "PARADE" W6 база А Бел. мат. 2,7л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 29, 27, 'Parade W6 (база А) акриловая краска для внутренних и наружных работ образует суперстойкое матовое декоративное покрытие, выдерживающее частую влажную уборку с применением моющих средств, а также атмосферные воздействия.', 1),
('13cd2b26-99a8-11db-937f-000e0c431b59', 'Краска интерьерная "PARADE" W6 база А Бел. мат. 9л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 63, 22, 'Parade W6 (база А) акриловая краска для внутренних и наружных работ образует суперстойкое матовое декоративное покрытие, выдерживающее частую влажную уборку с применением моющих средств, а также атмосферные воздействия.', 1),
('13cd2b5d-99a8-11db-937f-000e0c431b59', 'Шпатлевка акрил. "PARADE" S40 выравнивающая 1,5кг', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 136, 58, 'Рекомендуется для финишной отделки поверхностей под покраску и оклеивания обоев. Используется для шпатлевания деревянных, бетонных, кирпичных поверхностей. Образует белое ровное покрытие, устраняет мелкие дефекты основания.', 1),
('13cd2b61-99a8-11db-937f-000e0c431b59', 'Шпатлевка акрил. "PARADE" S41 финишная Супербелая 1,5кг', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 104, 56, 'Рекомендуется использовать для шпатлевания деревянных, бетонных, кирпичных поверхностей. Образует супербелое ровное покрытие. Великолепно подходит для финишной отделки поверхностей под покраску и оклеивания обоев.', 1),
('13cd2b63-99a8-11db-937f-000e0c431b59', 'Шпатлевка по дереву "PARADE" S50 Белый 0,4кг', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 89, 50, 'Рекомендуется для коррекции дефектов изделий из дерева. Обладает хорошим сцеплением, легко наноситься и прекрасно шлифуется. Подходит для стен и полов, для окон и паркета. Имитирует цвет древесины, образует гладкое, ровное покрытие.', 1),
('13cd2b65-99a8-11db-937f-000e0c431b59', 'Шпатлевка по дереву "PARADE" S50 Береза 0,4кг', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 59, 43, 'Рекомендуется для коррекции дефектов изделий из дерева. Обладает хорошим сцеплением, легко наноситься и прекрасно шлифуется. Подходит для стен и полов, для окон и паркета. Имитирует цвет древесины, образует гладкое, ровное покрытие.', 1),
('13cd2b67-99a8-11db-937f-000e0c431b59', 'Шпатлевка по дереву "PARADE" S50 Бук 0,4кг', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 55, 43, 'Рекомендуется для коррекции дефектов изделий из дерева. Обладает хорошим сцеплением, легко наноситься и прекрасно шлифуется. Подходит для стен и полов, для окон и паркета. Имитирует цвет древесины, образует гладкое, ровное покрытие.', 1),
('13cd2b69-99a8-11db-937f-000e0c431b59', 'Шпатлевка по дереву "PARADE" S50 Дуб 0,4кг', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 74, 44, 'Рекомендуется для коррекции дефектов изделий из дерева. Обладает хорошим сцеплением, легко наноситься и прекрасно шлифуется. Подходит для стен и полов, для окон и паркета. Имитирует цвет древесины, образует гладкое, ровное покрытие.', 1),
('13cd2b6b-99a8-11db-937f-000e0c431b59', 'Шпатлевка по дереву "PARADE" S50 Махагон 0,4кг', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 68, 47, 'Рекомендуется для коррекции дефектов изделий из дерева. Обладает хорошим сцеплением, легко наноситься и прекрасно шлифуется. Подходит для стен и полов, для окон и паркета. Имитирует цвет древесины, образует гладкое, ровное покрытие.', 1),
('13cd2b6d-99a8-11db-937f-000e0c431b59', 'Шпатлевка по дереву "PARADE" S50 Орех 0,4кг', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 53, 44, '', 1),
('13cd2b6f-99a8-11db-937f-000e0c431b59', 'Шпатлевка по дереву "PARADE" S50 Сосна 0,4кг', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 125, 47, 'Рекомендуется для коррекции дефектов изделий из дерева. Обладает хорошим сцеплением, легко наноситься и прекрасно шлифуется. Подходит для стен и полов, для окон и паркета. Имитирует цвет древесины, образует гладкое, ровное покрытие.', 1),
('13ce3df2-93b0-11e3-82a4-005056be1f7b', 'Грунт-эмаль по ржавчине синий 2л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 46, 30, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('159d7e07-f790-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг светло-серый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 10, 0, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('17a83679-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг охра', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 0, 9, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('1a0a8b4f-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Белая 0,6кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 123, 55, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b51-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Белая 1,5кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 158, 46, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b53-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Береза 0,6кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 78, 50, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b55-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Береза 1,5кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 41, 40, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b57-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Бук 0,6кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 56, 50, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b59-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Бук 1,5кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 53, 40, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b5b-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Дуб 0,6кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 107, 51, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b5d-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Дуб 1,5кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 60, 40, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b5f-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Махагон 0,6кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 79, 46, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b61-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Махагон 1,5кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 47, 35, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b63-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Орех 0,6кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 89, 50, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b65-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Орех 1,5кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 40, 40, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b67-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Сосна 0,6кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 167, 51, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b69-99a8-11db-937f-000e0c431b59', 'Шпаклевка по дереву Сосна 1,5кг ("Лакра")', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 70, 43, 'Шпатлевка по дереву ЛАКРА дереву на основе акриловой дисперсии с повышенной водостойкостью. Благодаря мелкозернистой структуре легко наносится и прекрасно шлифуется. Обладает отличной заполняющей способностью.\nОбработанная шпатлевкой поверхность является идеально подходит для дальнейшей окраски при выполнении работ с высоким уровнем качества. Применяется для заполнения и выравнивания трещин, дефектов (сколы и т.п.), повреждений и неровностей на деревянных поверхностях (мебель, двери, пол, панельные стены, потолок).', 1),
('1a0a8b6b-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Бежевая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 118, 69, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b6d-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Бежевая  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 206, 63, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b6f-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Бежевая 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 20, 6, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b71-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Бел. глянц.  0,9кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 1101, 145, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b73-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Бел. глянц.  1,9кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 1285, 112, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b75-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Бел. глянц. 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 77, 28, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b7b-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Бел. мат. 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 196, 25, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b7d-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Бирюза  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 175, 60, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b7f-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Бирюза  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 284, 62, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b81-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Бирюза 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 27, 6, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b83-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Вишневая  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 267, 54, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b85-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Вишневая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 229, 56, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b87-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Вишневая 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 11, 5, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b89-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Голубая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 306, 65, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b8b-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Голубая  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 312, 62, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b8d-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Голубая 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 39, 8, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a0a8b8f-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Желтая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 398, 63, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('1a1ab87b-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Синий', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 85, 51, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('1b75918d-9fb8-11e3-8705-005056be1f7b', 'Эмаль акрил. универсальная Бел. мат. 0,9кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 86, 52, 'Образует глубокоматовую поверхность высокой степени белизны. Создает прочное влагостойкое, паропроницаемое и светостойкое покрытие. Не желтеет со временем. Отличается высокими декоративными и защитными свойствами, стойкая к мытью. Готова к применению.', 1),
('1bd57597-93b0-11e3-82a4-005056be1f7b', 'Грунт-эмаль по ржавчине синий 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 53, 37, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('1d967145-f787-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг серебро', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 17, 42, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('1f4ff69d-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг серый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 13, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('206ff829-f790-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг черный', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 15, 1, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('20b7f87c-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Желтая  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 330, 62, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f87e-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Желтая 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 29, 5, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f880-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Зеленая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 347, 67, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f882-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Зеленая  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 617, 71, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f884-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Зеленая 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 52, 6, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f886-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Коричневая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 225, 61, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f888-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Коричневая  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 331, 58, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f88a-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Коричневая 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 22, 6, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f88c-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Красная  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 172, 62, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f88e-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Красная  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 273, 60, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f890-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Красная 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 2, 5, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f896-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Оранжевая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 210, 60, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f898-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Оранжевая  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 278, 60, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f89a-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Охристо-желтая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 2, 56, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f89e-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Св-голубая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 148, 59, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8a0-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Св-голубая  2 кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 126, 56, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8a2-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Св-голубая  20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 14, 6, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8a4-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Серая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 128, 70, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8a6-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Серая  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 240, 68, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8a8-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Серая 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 23, 6, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8aa-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Синяя  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 174, 66, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8ac-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Синяя  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 381, 68, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8ae-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Синяя 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 25, 5, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8b0-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Темно-зеленая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 74, 59, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8b2-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Темно-зеленая 2 кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 164, 56, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8b4-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Темно-зеленая 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 23, 8, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8b6-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Фисташковая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 13, 59, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8b8-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Фисташковая  2 кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 5, 56, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8bc-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Черная  0,9кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 905, 102, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8be-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Черная  1,9кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 312, 99, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8c0-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Черная 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 28, 13, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8c2-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Шоколадно-коричневая 1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 377, 60, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8c4-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Ярко-зел.  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 305, 69, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8c6-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Ярко-зел.  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 442, 70, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8c8-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-115 (Лакра) Ярко-зел. 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 19, 7, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('20b7f8d0-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-266 (Лакра) Желто-кор.  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 138, 91, 'Рекомендуется для покрытия окрашенных и неокрашенных деревянных полов внутри помещения. Обладает хорошими декоративными свойствами, укрывистостью и прочным сцеплением с окрашиваемой поверхностью.', 1),
('20b7f8d2-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-266 (Лакра) Желто-кор.  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 165, 76, 'Рекомендуется для покрытия окрашенных и неокрашенных деревянных полов внутри помещения. Обладает хорошими декоративными свойствами, укрывистостью и прочным сцеплением с окрашиваемой поверхностью.', 1),
('20b7f8d4-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-266 (Лакра) Желто-кор. 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 3, 0, 'Рекомендуется для покрытия окрашенных и неокрашенных деревянных полов внутри помещения. Обладает хорошими декоративными свойствами, укрывистостью и прочным сцеплением с окрашиваемой поверхностью.', 1),
('20b7f8d6-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-266 (Лакра) Золотисто-кор.  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 156, 91, 'Рекомендуется для покрытия окрашенных и неокрашенных деревянных полов внутри помещения. Обладает хорошими декоративными свойствами, укрывистостью и прочным сцеплением с окрашиваемой поверхностью.', 1),
('20b7f8d8-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-266 (Лакра) Золотисто-кор. 20кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 3, 0, 'Рекомендуется для покрытия окрашенных и неокрашенных деревянных полов внутри помещения. Обладает хорошими декоративными свойствами, укрывистостью и прочным сцеплением с окрашиваемой поверхностью.', 1),
('20b7f8da-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-266 (Лакра) Золотисто-кор.  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 205, 76, 'Рекомендуется для покрытия окрашенных и неокрашенных деревянных полов внутри помещения. Обладает хорошими декоративными свойствами, укрывистостью и прочным сцеплением с окрашиваемой поверхностью.', 1),
('20b7f8dc-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-266 (Лакра) Красно-кор.  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 155, 83, 'Рекомендуется для покрытия окрашенных и неокрашенных деревянных полов внутри помещения. Обладает хорошими декоративными свойствами, укрывистостью и прочным сцеплением с окрашиваемой поверхностью.', 1),
('20b7f8de-99a8-11db-937f-000e0c431b59', 'Эмаль ПФ-266 (Лакра) Красно-кор.  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 249, 75, 'Рекомендуется для покрытия окрашенных и неокрашенных деревянных полов внутри помещения. Обладает хорошими декоративными свойствами, укрывистостью и прочным сцеплением с окрашиваемой поверхностью.', 1),
('211dadff-f788-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг охра', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 88, 59, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('2133814d-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Голубой', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 50, 48, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('23b6c6e7-f789-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Белая', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 79, 61, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('2461ad51-9fb8-11e3-8705-005056be1f7b', 'Эмаль акрил. универсальная Бел. мат. 2,5кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 52, 34, 'Образует глубокоматовую поверхность высокой степени белизны. Создает прочное влагостойкое, паропроницаемое и светостойкое покрытие. Не желтеет со временем. Отличается высокими декоративными и защитными свойствами, стойкая к мытью. Готова к применению.', 1),
('25a027ef-9e45-11e1-9d3e-005056be3bd8', 'Эмаль ПФ-115 (Лакра) Кремовая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 101, 60, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('25a027f1-9e45-11e1-9d3e-005056be3bd8', 'Эмаль ПФ-115 (Лакра) Кремовая  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 181, 57, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('277ee1ed-f788-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг серый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 55, 55, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('28110f45-99a8-11db-937f-000e0c431b59', 'Биосепт антисептический состав  5л', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 79, 57, 'Предназначен для предотвращения образования и распространения грибков, плесени, древесной синевы и других видов биоразрушителей на различных поверхностях, а также для предотвращения заражения дерева деревопоражающими насекомыми и древесной синевой.', 1),
('28110f47-99a8-11db-937f-000e0c431b59', 'Биосепт антисептический состав  10л', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 71, 54, 'Предназначен для предотвращения образования и распространения грибков, плесени, древесной синевы и других видов биоразрушителей на различных поверхностях, а также для предотвращения заражения дерева деревопоражающими насекомыми и древесной синевой.', 1),
('28110f49-99a8-11db-937f-000e0c431b59', 'Биоцидный состав "Антижук"   5л', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 76, 57, 'Предназначен как для наружных, так и для внутренних работ: для уничтожения деревопоражающих насекомых на всех стадиях их развития; для предотвращения заражения деревянных поверхностей деревопоражающими насекомыми; для антисептической обработки деревянных, кирпичных, бетонных и других поверхностей с целью уничтожения и предотвращения образования плесени, грибковых поражений, различных видов синевы и т. п.', 1),
('28110f4b-99a8-11db-937f-000e0c431b59', 'Биоцидный состав "Антижук"  10л', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 68, 53, 'Предназначен как для наружных, так и для внутренних работ: для уничтожения деревопоражающих насекомых на всех стадиях их развития; для предотвращения заражения деревянных поверхностей деревопоражающими насекомыми; для антисептической обработки деревянных, кирпичных, бетонных и других поверхностей с целью уничтожения и предотвращения образования плесени, грибковых поражений, различных видов синевы и т. п.', 1),
('28110f4f-99a8-11db-937f-000e0c431b59', 'Огнебиозащитный состав "Фенилакс" (кан.  6кг)', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 51, 48, 'Предназначен для обработки древесных конструкций жилых и промышленных зданий и сооружений как снаружи, так и внутри помещения, а также других деревянных построек с целью защиты от возгорания, плесени и гниения.', 1),
('28110f51-99a8-11db-937f-000e0c431b59', 'Огнебиозащитный состав "Фенилакс" (кан. 11кг)', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 68, 46, 'Предназначен для обработки древесных конструкций жилых и промышленных зданий и сооружений как снаружи, так и внутри помещения, а также других деревянных построек с целью защиты от возгорания, плесени и гниения.', 1),
('28110f53-99a8-11db-937f-000e0c431b59', 'Огнебиозащитный состав КСД  (5 кг)', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 66, 63, 'Предназначен для комплексной защиты древесины, а также текстильных материалов. Состав защищает древесину от возгорания, распространения пламени, гниения, синевы, плесени а также поражения любыми видами биологических разрушителей внутри помещений, на открытом воздухе (под навесом).', 1),
('28110f55-99a8-11db-937f-000e0c431b59', 'Огнебиозащитный состав КСД (10 кг)', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 46, 47, 'Предназначен для комплексной защиты древесины, а также текстильных материалов. Состав защищает древесину от возгорания, распространения пламени, гниения, синевы, плесени а также поражения любыми видами биологических разрушителей внутри помещений, на открытом воздухе (под навесом).', 1),
('28110f57-99a8-11db-937f-000e0c431b59', 'Огнебиозащитный состав КСД (200л)', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 0, 0, 'Предназначен для комплексной защиты древесины, а также текстильных материалов. Состав защищает древесину от возгорания, распространения пламени, гниения, синевы, плесени а также поражения любыми видами биологических разрушителей внутри помещений, на открытом воздухе (под навесом).', 1),
('28b335ed-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг светло-серый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 21, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('2997b29e-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Шоколадный', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 56, 46, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('299c6ffe-f790-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Красно-коричневый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 0, 0, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('2cbf73b5-f789-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Белый матовый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 45, 54, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('2ced73cf-59ef-11e0-894e-000e0c431b58', 'Растворитель Cosmofen-5 1л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 0, 0, 'Cпециальный очиститель па основе растворителя с размягчением поверхности для очистки от сильных загрязнений с проникновением в поверхностные слои частиц масла, изношенной резины, остатков клея, свежих остатков размягченного ПВХ и других загрязнений. Применяют для очистки материалов плит из ПВХ, других твердых и вспененных пластиковых плит и профилей из ПВХ.', 1),
('2eadcbef-99a8-11db-937f-000e0c431b59', 'Керосин 1л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 214, 124, 'Для растворения и разбавления масляных ЛКМ, для горения в осветительных и нагревательных бытовых приборах,для промывки двигателей.', 1),
('2eadcbf1-99a8-11db-937f-000e0c431b59', 'Керосин 5л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 120, 45, 'Для растворения и разбавления масляных ЛКМ, для горения в осветительных и нагревательных бытовых приборах,для промывки двигателей.', 1),
('2eadcbf3-99a8-11db-937f-000e0c431b59', 'Керосин 0,5л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 259, 174, 'Для растворения и разбавления масляных ЛКМ, для горения в осветительных и нагревательных бытовых приборах,для промывки двигателей.', 1),
('2eadcbfc-99a8-11db-937f-000e0c431b59', 'Растворитель 646 0,5л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 434, 256, 'Растворитель предназначен для разбавления лакокрасочных материалов и шпатлевок на основе: нитратоцелюлозных, нитратоцелюлозно-глифталевых, эпоксидных, нитратцелюлозно-эпоксидных, мочевино (меламино) формальдегидных, кремнеорганических (НЦ, ЭП, КО, МЧ, МС) и других лакокрасочных материалов.', 1),
('2eadcbfe-99a8-11db-937f-000e0c431b59', 'Растворитель 646 1л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 411, 235, 'Растворитель предназначен для разбавления лакокрасочных материалов и шпатлевок на основе: нитратоцелюлозных, нитратоцелюлозно-глифталевых, эпоксидных, нитратцелюлозно-эпоксидных, мочевино (меламино) формальдегидных, кремнеорганических (НЦ, ЭП, КО, МЧ, МС) и других лакокрасочных материалов.', 1),
('2eadcc00-99a8-11db-937f-000e0c431b59', 'Растворитель 646 5л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 161, 109, 'Растворитель предназначен для разбавления лакокрасочных материалов и шпатлевок на основе: нитратоцелюлозных, нитратоцелюлозно-глифталевых, эпоксидных, нитратцелюлозно-эпоксидных, мочевино (меламино) формальдегидных, кремнеорганических (НЦ, ЭП, КО, МЧ, МС) и других лакокрасочных материалов.', 1),
('2eadcc10-99a8-11db-937f-000e0c431b59', 'Растворитель 650 0,5л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 278, 198, 'Растворение и разбавление нитроцеллюлозных,алкидных эмалей. Представляет собой смеси летучих органических растворителей. Растворитель 650 предназначен для лакокрасочной и других отраслей промышленности для разбавления эмалей для легковых автомобилей.', 1),
('2eadcc2e-99a8-11db-937f-000e0c431b59', 'Уайт-спирит 0,5л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 960, 364, 'Растворение и разбавление масляных ЛКМ,грунтовок,олифы,битума,резинобитумной автомобильной мастики.Смывка автоконсерванта и битумных пятен. Представляет собой высококипящую фракцию бензина, применяется в лакокрасочной промышленности, в производстве олиф и других отраслях промышленности.', 1),
('2eadcc30-99a8-11db-937f-000e0c431b59', 'Уайт-спирит 1л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 758, 261, 'Растворение и разбавление масляных ЛКМ,грунтовок,олифы,битума,резинобитумной автомобильной мастики.Смывка автоконсерванта и битумных пятен. Представляет собой высококипящую фракцию бензина, применяется в лакокрасочной промышленности, в производстве олиф и других отраслях промышленности.', 1),
('2eadcc32-99a8-11db-937f-000e0c431b59', 'Уайт-спирит 5л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 470, 114, 'Используется для растворение и разбавление масляных ЛКМ,грунтовок,олифы,битума,резинобитумной автомобильной мастики.Смывка автоконсерванта и битумных пятен. Представляет собой высококипящую фракцию бензина, применяется в лакокрасочной промышленности, в производстве олиф и других отраслях промышленности.', 1),
('30047f82-f788-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг светло-серый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 78, 59, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('3114fa55-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг черный', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 21, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('3409410b-5b1f-11e2-8bea-005056be271d', 'Краска латексная PARADE R7 база А шелк-мат. 9л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 50, 45, 'Шелковисто-матовая краска для стен и потолков любых типов помещений, в т.ч. с высокой эксплуатационной нагрузкой, требующих частой влажной уборки, а также фасадных элементов.\n', 1),
('3442e089-0125-11e4-8695-005056be1f7b', 'Эмаль ПФ-115 Inter 2,2кг серебро', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 8, 33, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('3479e733-bce7-11e4-a1f3-005056be1f7b', 'Молотковая грунт-эмаль по ржавчине серебристая 2 л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 0, 0, 'Применяется по любым металлическим поверхностям: решетки, ограды, гаражи, различные металлоконструкции, автомобильные детали и др. внутри помещений и в условиях атмосферного воздействия.', 1),
('3526e5c9-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Розово-бежевый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 37, 48, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b', 'Шпатлевка акрил. "PARADE" S41 финишная Супербелая 10л', '7eed2035-ff83-11e4-9228-005056be1f7a', 0, 27, 18, 'Рекомендуется использовать для шпатлевания деревянных, бетонных, кирпичных поверхностей. Образует супербелое ровное покрытие. Великолепно подходит для финишной отделки поверхностей под покраску и оклеивания обоев.', 1),
('380e3f79-f788-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг черный', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 119, 71, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('3bfb5c69-9fb8-11e3-8705-005056be1f7b', 'Эмаль акрил. универсальная Бел. п/глянц. 0,9кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 66, 52, 'Образует глубокоматовую поверхность высокой степени белизны. Создает прочное влагостойкое, паропроницаемое и светостойкое покрытие. Не желтеет со временем. Отличается высокими декоративными и защитными свойствами, стойкая к мытью. Готова к применению.', 1),
('3d601a65-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Красно-коричневый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 11, 9, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('3d822ed4-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг охра', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 94, 45, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('41f9a64a-f788-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Красно-коричневый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 63, 59, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('441a7da1-9fb8-11e3-8705-005056be1f7b', 'Эмаль акрил. универсальная Бел. п/глянц. 2,4кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 56, 34, 'Образует глубокоматовую поверхность высокой степени белизны. Создает прочное влагостойкое, паропроницаемое и светостойкое покрытие. Не желтеет со временем. Отличается высокими декоративными и защитными свойствами, стойкая к мытью. Готова к применению.', 1),
('45794d11-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг серый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 104, 48, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('47de42e5-f789-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Белая', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 19, 14, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('4dd1de14-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг светло-серый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 57, 46, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('4ed5aaa1-f789-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Белый матовый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 17, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('500c0ee4-4f2c-11de-8f53-000e0c431b58', 'Огнебиозащитный состав ББ-11  (5л) (I и II гр.)', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 47, 63, 'Предназначен: для профилактики и уничтожения дереворазрушающих, плесневых, окрашивающих грибов; профилактики появления насекомых;защиты от возгорания. Препарат представляет собой водный раствор на основе соединений бора. Прозрачная, бесцветная жидкость, без запаха, не изменяет текстуру и внешний вид обрабатываемой поверхности, не окрашивает древесины, экологически безопасен, не выделяет в окружающую среду вредных веществ, не повышает гидроскопичности древесины.\n', 1),
('500c0ee6-4f2c-11de-8f53-000e0c431b58', 'Огнебиозащитный состав ББ-11  (10л) (I и II гр.)', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 67, 75, 'Предназначен: для профилактики и уничтожения дереворазрушающих, плесневых, окрашивающих грибов; профилактики появления насекомых;защиты от возгорания. Препарат представляет собой водный раствор на основе соединений бора. Прозрачная, бесцветная жидкость, без запаха, не изменяет текстуру и внешний вид обрабатываемой поверхности, не окрашивает древесины, экологически безопасен, не выделяет в окружающую среду вредных веществ, не повышает гидроскопичности древесины.\n', 1),
('55c10657-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг черный', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 111, 57, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('56a6f723-ea03-11de-860d-000e0c431b58', 'Краска ВД акриловая д/обоев DALI 9л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 104, 37, 'Краска DALI акриловая для обоев обладает отличной адгезией к бумажным, флизелиновым и стеклообоям. Благодаря специально разработанному составу, краска DALI обладает хорошей укрывистостью и без проблем наносится на обои под покраску, сохраняя фактуру. Так же краска DALI может быть нанесена на минеральные поверхности, такие как гипсокартон, штукатурки, шпатлевки и тому подобные покрытия. Единственным условием к поверхности - нормальная влажность и температура в помещении, в котором производятся работы. Краска Dali содержит в составе специальные антибактериальные добавки, препятствующие образованию и размножению био организмов и бактерий. Кроме того краска DALI устойчива к влажной уборке и применению моющих средств, что делает стены и потолок помещения долговечными. Существуют две разновидности краски DALI - база А, подходящая и для машинной и для ручной колеровки, и база С, подходящая только для машинной колеровки. Купить и заколеровать краску DALI, а так же другую продукцию компании Рогнеда Вы можете в интернет магазине СтройБери, а так же в сети розничных магазинов.', 1),
('56f519d0-4f2c-11de-8f53-000e0c431b58', 'Краска ВД акриловая фасадная особопрочная База А DALI 9л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 243, 39, 'Применяется внутри и снаружи помещений по минеральным поверхностям (бетон, кирпич, гипс, цемент, гипсокартон, шпатлевка, штукатурка и др.) ', 1),
('5ed5699a-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Красно-коричневый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 91, 46, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('5fde6d12-f789-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг серебро', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 0, 0, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('612d8834-6137-11e1-96bd-005056be3bd8', 'Эмаль для радиаторов Лакра акриловая глянец. 0,9кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 86, 41, 'ЭМАЛЬ АКРИЛОВАЯ ДЛЯ РАДИАТОРОВ ОТОПЛЕНИЯ Высококачественная термостойкая водоразбавляемая эмаль на основе акриловой дисперсии. Для внутренних и наружных работ. Устойчива к высоким температурам (до 100°С), к пожелтению, к действию воды, атмосферных осадков и моющих средств. Быстро высыхает. Образует глянцевую поверхность высокой степени белизны. Обладает отличной укрывистостью и адгезией. Отличается высокими декоративными и защитными свойствами, стойкая к мытью. Готова к применению.', 1),
('67c85be4-6208-11de-9531-000e0c431b58', 'Огнебиозащитный состав ББ-11  (10л) (I и II гр.) с индикатором', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 132, 77, 'Предназначен: для профилактики и уничтожения дереворазрушающих, плесневых, окрашивающих грибов; профилактики появления насекомых;защиты от возгорания. Препарат представляет собой водный раствор на основе соединений бора. Прозрачная, бесцветная жидкость, без запаха, не изменяет текстуру и внешний вид обрабатываемой поверхности, не окрашивает древесины, экологически безопасен, не выделяет в окружающую среду вредных веществ, не повышает гидроскопичности древесины.\n', 1),
('67c85be6-6208-11de-9531-000e0c431b58', 'Огнебиозащитный состав ББ-11  (5л) (I и II гр.) с индикатором', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 87, 63, 'Предназначен: для профилактики и уничтожения дереворазрушающих, плесневых, окрашивающих грибов; профилактики появления насекомых;защиты от возгорания. Препарат представляет собой водный раствор на основе соединений бора. Прозрачная, бесцветная жидкость, без запаха, не изменяет текстуру и внешний вид обрабатываемой поверхности, не окрашивает древесины, экологически безопасен, не выделяет в окружающую среду вредных веществ, не повышает гидроскопичности древесины.\n', 1),
('680965ab-f789-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Белая', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 36, 8, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('727c8145-f789-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Белый матовый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 24, 7, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('747ef690-551c-11dc-beb4-000e0c431b58', 'Эмаль ПФ-115 (Лакра) Бел. мат.  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 517, 104, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('78e43dfb-fbee-11e1-8f72-005056be3bd8', 'Биосепт-УЛЬТРА антисептический состав  20л', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 21, 0, 'Предназначен для усиленной длительной защиты конструкций и изделий из древесины от поражения плесенью, деревоокрашивающими, дереворазрушающими грибками и насекомыми. Применяется в особо тяжелых условиях: при непосредственном контакте с влажным грунтом, при интенсивном воздействии гигроскопической, конденсационной, атмосферной и почвенной влаги и т.п. Применяется как снаружи, так и внутри помещений, в том числе в особо тяжелых условиях, включая контакт с влажным грунтом', 1),
('7a3c5db1-777c-11de-9531-000e0c431b58', 'Краска ВД акриловая д/стен и потолков (PROFESSIONAL) База С DALI 9л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 1, 12, 9, 'КРАСКА ДАЛИ ДЛЯ СТЕН И ПОТОЛКОВ предназначена для декоративного и экологичного окрашивания стен и потолков внутри помещений с повышенной эксплуатационной нагрузкой. Применяется для окраски кирпичных, бетонных, оштукатуренных и других минеральных поверхностей.', 1),
('7a3c5db3-777c-11de-9531-000e0c431b58', 'Краска ВД акриловая д/стен и потолков (PROFESSIONAL) База С DALI 5л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 22, 24, 'КРАСКА ДАЛИ ДЛЯ СТЕН И ПОТОЛКОВ предназначена для декоративного и экологичного окрашивания стен и потолков внутри помещений с повышенной эксплуатационной нагрузкой. Применяется для окраски кирпичных, бетонных, оштукатуренных и других минеральных поверхностей.', 1),
('7a3c5db5-777c-11de-9531-000e0c431b58', 'Краска ВД акриловая фасадная особопрочная База С DALI 9л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 21, 11, 'Применяется внутри и снаружи помещений по минеральным поверхностям (бетон, кирпич, гипс, цемент, гипсокартон, шпатлевка, штукатурка и др.) ', 1),
('7a3c5db7-777c-11de-9531-000e0c431b58', 'Краска ВД акриловая фасадная особопрочная База С DALI 5л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 24, 18, 'Применяется внутри и снаружи помещений по минеральным поверхностям (бетон, кирпич, гипс, цемент, гипсокартон, шпатлевка, штукатурка и др.) ', 1),
('7ab6caa7-b1ee-11e0-aa21-000e0c431b58', 'Спецгрунт PARADE Reanimator G40  по ст. покрытиям 10л', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 13, 12, 'Используется для грунтования различных видов поверхностей. Не требует механического удаления старых эмалевых покрытий. Обеспечивает прочное соединение основания и лакокрасочных материалов, выравнивает тон поверхности, улучшает впитывающие возможности поверхности, препятствует образованию коррозии. Образует полупрозрачное слегка шероховатое покрытие.', 1),
('7c1e70d5-5a9d-11dc-be42-000e0c431b58', 'Эмаль ПФ-115 (Лакра) Бел. мат.  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 295, 114, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('7e531df3-b5f5-11e1-83ba-005056be3bd8', 'Очиститель Cosmofen-20 1л прозр.', '72429777-ff83-11e4-9228-005056be1f7a', 0, 33, 30, 'Жидкое чистящее средство, не растворяющее поверхности. Применяется в качестве не размягчающего средства с антистатиком для очистки профилей из твердого ПХВ, профилей, кашированных пленкой из ренолита и профилей из полиуретана. Особенно пригоден для очистки от пыли, остатков клея с защитной пленки, жира, следов резины, свежей полиуретановой пены и свежих остатков размягченного ПВХ, а также следов шприцмашин для дегтя или битума. Применяемый антистатик эффективно предотвращает необходимость скорой повторной очистки от загрязнений поверхностей профиля и плит ПВХ.', 1),
('7ff8df4e-f789-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг серебро', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 0, 0, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('82ebcce8-bce7-11e4-a1f3-005056be1f7b', 'Молотковая грунт-эмаль по ржавчине серебристая 10 л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 0, 0, 'Применяется по любым металлическим поверхностям: решетки, ограды, гаражи, различные металлоконструкции, автомобильные детали и др. внутри помещений и в условиях атмосферного воздействия.', 1),
('8522912f-f3fb-11e4-9746-005056be1f7b', 'Грунт-эмаль по ржавчине синяя 10л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 0, 0, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('897bb5a6-b0fa-11e3-b34d-005056be1f7b', 'Растворитель для эмалей и красок', '72429777-ff83-11e4-9228-005056be1f7a', 0, 5, 25, 'Рекомендуется для разбавления финишных покрытий Parade Z1, Parade F50, Parade F51.Также применяется для разбавления эмалей и красок на основе эпоксидных, виниловых, акриловых, кремнийорганических полимеров, нитроцеллюлозы, хлоркаучука, меламино- и мочевиноформальдегидных материалов, для очистки инструмента после их нанесения и обезжиривания поверхности. Тип растворителя: специальный растворитель.', 1),
('89cb1aab-b1c3-11e0-aa21-000e0c431b58', 'Спецгрунт PARADE Reanimator G40  по ст. покрытиям  2,5л', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 23, 26, 'Используется для грунтования различных видов поверхностей. Не требует механического удаления старых эмалевых покрытий. Обеспечивает прочное соединение основания и лакокрасочных материалов, выравнивает тон поверхности, улучшает впитывающие возможности поверхности, препятствует образованию коррозии. Образует полупрозрачное слегка шероховатое покрытие.', 1),
('9291c63a-5ab3-11dc-be42-000e0c431b58', 'Эмаль универсальная белая глянцевая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 99, 61, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('9291c63c-5ab3-11dc-be42-000e0c431b58', 'Эмаль универсальная черная глянцевая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 200, 61, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('9291c63e-5ab3-11dc-be42-000e0c431b58', 'Эмаль универсальная красная 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 76, 53, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('9291c640-5ab3-11dc-be42-000e0c431b58', 'Эмаль универсальная вишневая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 68, 36, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('963b6b0a-04a8-11e3-94de-005056be3574', 'Штукатурка роллерная декоративная с эффектом "короеда" Белый 15кг', '6aa6af7c-ff83-11e4-9228-005056be1f7a', 0, 64, 18, 'Штукатурка фактурная ЛАКРА с эффект "короеда", готовая к применению декоративная штукатурка повышенной белизны на основе водной акриловой дисперсии. Легко наносится валиком. Создает прочное влагостойкое, паропроницаемое покрытие, стойкое к атмосферным воздействиям и эксплуатационным нагрузкам. Обладает отличной адгезией к поверхностям из бетона, камня, гипса, цемента, кирпича, ДСП, ДВП. Не содержит растворителей, без запаха. Допускает мытье окрашенной поверхности. Колеруется в светлые оттенки.', 1),
('992163db-a731-11de-90d4-000e0c431b58', 'Краска ВД акриловая д/потолков DALI 9л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 1, 120, 37, 'КРАСКА ДАЛИ АКРИЛОВАЯ ДЛЯ ПОТОЛКОВ Предназначена для декоративного окрашивания потолков в сухих жилых и общественных помещениях с низкой эксплуатационной нагрузкой.', 1),
('992163dd-a731-11de-90d4-000e0c431b58', 'Краска ВД латексная д/кухни и ванной DALI 9л БАЗА А (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 49, 36, 'Латексная акриловая краска для декоративного окрашивания стен и потолков в жилых и общественных помещениях с повышенной влажностью воздуха и эксплуатационной нагрузкой. Применяется внутри помещений по минеральным поверхностям (бетон, кирпич, гипс, цемент, гипсокартон, шпатлевка, штукатурка и др.).', 1),
('993a4aa8-6b1e-11dc-be42-000e0c431b58', 'Краска акрил. "PARADE" W4 БАЗА А  Бел. мат. 9л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 262, 125, 'Parade W4 — краска акриловая для внутренних работ. Допускается частая влажная уборка с применением моющих средств, выдерживает более 3000 циклов мытья. Parade W4 применяется на стены и потолки помещений, подвергающиеся максимальным эксплуатационным нагрузкам (любые офисные и жилые помещения), подходит для окраски обоев.', 1),
('993a4aaa-6b1e-11dc-be42-000e0c431b58', 'Краска акрил. "PARADE" W4 БАЗА А  Бел. мат. 5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 99, 60, 'Parade W4 — краска акриловая для внутренних работ. Допускается частая влажная уборка с применением моющих средств, выдерживает более 3000 циклов мытья. Parade W4 применяется на стены и потолки помещений, подвергающиеся максимальным эксплуатационным нагрузкам (любые офисные и жилые помещения), подходит для окраски обоев.', 1),
('993a4aac-6b1e-11dc-be42-000e0c431b58', 'Краска акрил. "PARADE" W4 БАЗА А  Бел. мат.  2,5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 125, 74, 'Parade W4 — краска акриловая для внутренних работ. Допускается частая влажная уборка с применением моющих средств, выдерживает более 3000 циклов мытья. Parade W4 применяется на стены и потолки помещений, подвергающиеся максимальным эксплуатационным нагрузкам (любые офисные и жилые помещения), подходит для окраски обоев.', 1),
('993a4aae-6b1e-11dc-be42-000e0c431b58', 'Краска фасадная "PARADE" F20 Бел.мат. База  А 9л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 1120, 114, 'Акриловая краска Parade F20 предназначена для фасадных работ по бетонным, кирпичным, оштукатуренным и другим поверхностям. Супербелая, матовая, колеруется пастами для водных красок. Разбавляется водой. Хранить в оригинальной упаковке при температуре выше 0°C в течение 12 месяцев. Выпускается расфасованной в ведра по 2,5 л, 5 л и 10 л.', 1),
('a0f3c4de-cf2d-11e1-92a4-005056be3bd8', 'Краска интерьерная "PARADE" W5 база А Бел. мат. 9л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 46, 20, 'Parade W5 интерьерная краска на акриловой основе, матовая для внутренних работ образует прочное матовое декоративное покрытие, выдерживающее частую влажную уборку с применением моющих средств. Рекомендуется для любых типов помещений при окраске стен и потолков, а также обоев под покраску.', 1),
('a1a9b4a6-f787-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Оранжевый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 51, 61, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('a48048ba-ec8c-11e3-9eab-005056be1f7b', 'Ксилол 0,5л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 107, 29, 'Используется для разбавления до рабочей вязкости при нанесении краскораспылителем различных автоэмалей, а также некоторых лаков,красок,эмалей и грунтовок на алкидной (ПФ, ГФ) ,эпоксидной (ЭП) и битумной (БТ) основах.', 1),
('a663cb7c-fadf-11e3-b5e8-005056be1f7b', 'Краска латексная PARADE R7 база С шелк-мат. 2,5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 18, 18, 'Шелковисто-матовая краска для стен и потолков любых типов помещений, в т.ч. с высокой эксплуатационной нагрузкой, требующих частой влажной уборки, а также фасадных элементов.\n', 1),
('a6f80c96-516a-11dd-a89a-000e0c431b58', 'Краска ВД акриловая д/обоев DALI 2,5л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 148, 49, 'Краска DALI акриловая для обоев обладает отличной адгезией к бумажным, флизелиновым и стеклообоям. Благодаря специально разработанному составу, краска DALI обладает хорошей укрывистостью и без проблем наносится на обои под покраску, сохраняя фактуру. Так же краска DALI может быть нанесена на минеральные поверхности, такие как гипсокартон, штукатурки, шпатлевки и тому подобные покрытия. Единственным условием к поверхности - нормальная влажность и температура в помещении, в котором производятся работы. Краска Dali содержит в составе специальные антибактериальные добавки, препятствующие образованию и размножению био организмов и бактерий. Кроме того краска DALI устойчива к влажной уборке и применению моющих средств, что делает стены и потолок помещения долговечными. Существуют две разновидности краски DALI - база А, подходящая и для машинной и для ручной колеровки, и база С, подходящая только для машинной колеровки. Купить и заколеровать краску DALI, а так же другую продукцию компании Рогнеда Вы можете в интернет магазине СтройБери, а так же в сети розничных магазинов.', 1),
('a6f80c98-516a-11dd-a89a-000e0c431b58', 'Краска ВД акриловая д/обоев DALI 5л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 98, 46, 'Краска DALI акриловая для обоев обладает отличной адгезией к бумажным, флизелиновым и стеклообоям. Благодаря специально разработанному составу, краска DALI обладает хорошей укрывистостью и без проблем наносится на обои под покраску, сохраняя фактуру. Так же краска DALI может быть нанесена на минеральные поверхности, такие как гипсокартон, штукатурки, шпатлевки и тому подобные покрытия. Единственным условием к поверхности - нормальная влажность и температура в помещении, в котором производятся работы. Краска Dali содержит в составе специальные антибактериальные добавки, препятствующие образованию и размножению био организмов и бактерий. Кроме того краска DALI устойчива к влажной уборке и применению моющих средств, что делает стены и потолок помещения долговечными. Существуют две разновидности краски DALI - база А, подходящая и для машинной и для ручной колеровки, и база С, подходящая только для машинной колеровки. Купить и заколеровать краску DALI, а так же другую продукцию компании Рогнеда Вы можете в интернет магазине СтройБери, а так же в сети розничных магазинов.', 1),
('a6f80c9c-516a-11dd-a89a-000e0c431b58', 'Краска ВД акриловая д/потолков DALI 2,5л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 211, 49, 'КРАСКА ДАЛИ АКРИЛОВАЯ ДЛЯ ПОТОЛКОВ Предназначена для декоративного окрашивания потолков в сухих жилых и общественных помещениях с низкой эксплуатационной нагрузкой.', 1),
('a6f80c9e-516a-11dd-a89a-000e0c431b58', 'Краска ВД акриловая д/потолков DALI 5л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 188, 46, 'КРАСКА ДАЛИ АКРИЛОВАЯ ДЛЯ ПОТОЛКОВ Предназначена для декоративного окрашивания потолков в сухих жилых и общественных помещениях с низкой эксплуатационной нагрузкой.', 1),
('a6f80ca2-516a-11dd-a89a-000e0c431b58', 'Краска ВД акриловая д/стен и потолков (PROFESSIONAL) DALI 2,5л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 249, 53, 'КРАСКА ДАЛИ ДЛЯ СТЕН И ПОТОЛКОВ предназначена для декоративного и экологичного окрашивания стен и потолков внутри помещений с повышенной эксплуатационной нагрузкой. Применяется для окраски кирпичных, бетонных, оштукатуренных и других минеральных поверхностей.', 1),
('a6f80ca4-516a-11dd-a89a-000e0c431b58', 'Краска ВД акриловая д/стен и потолков (PROFESSIONAL) DALI 5л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 229, 50, 'КРАСКА ДАЛИ ДЛЯ СТЕН И ПОТОЛКОВ предназначена для декоративного и экологичного окрашивания стен и потолков внутри помещений с повышенной эксплуатационной нагрузкой. Применяется для окраски кирпичных, бетонных, оштукатуренных и других минеральных поверхностей.', 1),
('a6f80ca8-516a-11dd-a89a-000e0c431b58', 'Краска ВД акриловая фасадная особопрочная База А DALI 5л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 110, 40, 'Применяется внутри и снаружи помещений по минеральным поверхностям (бетон, кирпич, гипс, цемент, гипсокартон, шпатлевка, штукатурка и др.) ', 1),
('a6f80cac-516a-11dd-a89a-000e0c431b58', 'Краска ВД латексная д/кухни и ванной DALI 2,5л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 117, 49, 'Латексная акриловая краска для декоративного окрашивания стен и потолков в жилых и общественных помещениях с повышенной влажностью воздуха и эксплуатационной нагрузкой. Применяется внутри помещений по минеральным поверхностям (бетон, кирпич, гипс, цемент, гипсокартон, шпатлевка, штукатурка и др.).', 1),
('a6f80cae-516a-11dd-a89a-000e0c431b58', 'Краска ВД латексная д/кухни и ванной DALI 5л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 84, 42, 'Латексная акриловая краска для декоративного окрашивания стен и потолков в жилых и общественных помещениях с повышенной влажностью воздуха и эксплуатационной нагрузкой. Применяется внутри помещений по минеральным поверхностям (бетон, кирпич, гипс, цемент, гипсокартон, шпатлевка, штукатурка и др.).', 1),
('a6fd4151-ec8b-11e3-9eab-005056be1f7b', 'Краска латексная PARADE R3 база C Бесцветная 2,5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 30, 15, 'Матовая краска для стен и потолков любых типов помещений, в т.ч. с высокой эксплуатационной нагрузкой, требующие частой влажной уборки, а также фасадных элементов.', 1),
('a7555009-7f46-11e3-af7c-005056be1f7b', 'Краска латексная PARADE R20 база А П/мат 2,5л Россия', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 55, 57, 'Краска интерьерная латексная суперстойкая полуматовая. Высококачественная латексная интерьерная краска с исключительными показателями водостойкости, стойкости к мытью и мокрому истиранию.', 1),
('ab383e71-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Оранжевый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 0, 0, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('ad93144b-f787-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Желтый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 68, 61, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('b08b1d7e-ec8c-11e3-9eab-005056be1f7b', 'Сольвент 0,5л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 314, 58, 'Предназначен для растворения масляных, алкидных, алкидно-фенольных лаков, красок, эмалей, а также для разбавления масел, битумов, каучуков, меламиноалкидных ЛКМ.', 1),
('b182dc4f-f994-11e2-98ef-005056be3574', 'Молотковая грунт-эмаль по ржавчине черная 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 37, 34, 'Применяется по любым металлическим поверхностям: решетки, ограды, гаражи, различные металлоконструкции, автомобильные детали и др. внутри помещений и в условиях атмосферного воздействия.', 1),
('b182dc51-f994-11e2-98ef-005056be3574', 'Молотковая грунт-эмаль по ржавчине зеленая 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 44, 34, 'Применяется по любым металлическим поверхностям: решетки, ограды, гаражи, различные металлоконструкции, автомобильные детали и др. внутри помещений и в условиях атмосферного воздействия.', 1),
('b1a9595a-7f46-11e3-af7c-005056be1f7b', 'Краска латексная PARADE R20 база А П/мат 5л Россия', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 38, 38, 'Краска интерьерная латексная суперстойкая полуматовая. Высококачественная латексная интерьерная краска с исключительными показателями водостойкости, стойкости к мытью и мокрому истиранию.', 1),
('b3740593-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Желтый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 2, 1, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('b54ba125-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Оранжевый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 9, 9, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('b5957aa3-f787-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Вишневый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 76, 61, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('b7e28649-21de-11df-860d-000e0c431b58', 'Краска фактурная Белый 9 кг ("Лакра")', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 33, 29, 'Краска представляет собой белую вязкую однородную массу. Удобна в нанесении, легка в обработке, имеет высокую адгезию к основанию. После высыхания краска образует декоративное рельефное покрытие, скрывающие мелкие дефекты стен. Отличается высокой твердостью и атмосферостойкостью. Возможно последующее нанесение воднодисперсионной краски другого цвета на высохшее фактурное покрытие. Готова к применению.', 1),
('b7e2864b-21de-11df-860d-000e0c431b58', 'Краска фактурная Белый 18 кг ("Лакра")', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 462, 29, 'Краска представляет собой белую вязкую однородную массу. Удобна в нанесении, легка в обработке, имеет высокую адгезию к основанию. После высыхания краска образует декоративное рельефное покрытие, скрывающие мелкие дефекты стен. Отличается высокой твердостью и атмосферостойкостью. Возможно последующее нанесение воднодисперсионной краски другого цвета на высохшее фактурное покрытие. Готова к применению.', 1),
('b8d52c0e-7f46-11e3-af7c-005056be1f7b', 'Краска латексная PARADE R20 база А П/мат 9л Россия', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 55, 45, 'Краска интерьерная латексная суперстойкая полуматовая. Высококачественная латексная интерьерная краска с исключительными показателями водостойкости, стойкости к мытью и мокрому истиранию.', 1),
('ba1232df-ec8c-11e3-9eab-005056be1f7b', 'Растворитель Р-4 0,5л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 213, 29, 'Представляет собой смеси летучих органических жидкостей. Растворитель Р-4 предназначен для разбавления лакокрасочных материалов на основе поливинилхлоридных хлорированных смол ПСХ ЛС и ПСХ ЛН, сополимеров винилхлорида, эпоксидных смол и других пленкообразующих веществ.', 1),
('bb036923-a661-11e2-9827-005056be3574', 'Серебрянка 0,5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 129, 19, 'Покрытие устойчивое к атмосферным воздействиям. Быстро сохнет. Обладает высокими декоративными свойствами.', 1),
('bc816f7f-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Вишневый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 5, 0, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('beb861cb-f787-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Красный', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 41, 61, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('bef8d7ea-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Желтый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 9, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('bf4804e2-fc0e-11dd-bd91-000e0c431b58', 'Краска акрил. "PARADE" W4 База С Бесцветный 2,5 л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 52, 34, 'Parade W4 — краска акриловая для внутренних работ. Допускается частая влажная уборка с применением моющих средств, выдерживает более 3000 циклов мытья. Parade W4 применяется на стены и потолки помещений, подвергающиеся максимальным эксплуатационным нагрузкам (любые офисные и жилые помещения), подходит для окраски обоев.', 1),
('bf4804e4-fc0e-11dd-bd91-000e0c431b58', 'Краска фасадная "PARADE" F20  База  С Бесцветный 2,5 л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 55, 40, 'Акриловая краска Parade F20 предназначена для фасадных работ по бетонным, кирпичным, оштукатуренным и другим поверхностям. Супербелая, матовая, колеруется пастами для водных красок. Разбавляется водой. Хранить в оригинальной упаковке при температуре выше 0°C в течение 12 месяцев. Выпускается расфасованной в ведра по 2,5 л, 5 л и 10 л.', 1),
('c017590e-fbe7-11e0-b702-001cc494be80', 'Краска ВД-АК 2180 "Новые технологии" интерьерная супербел. 3кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 182, 78, 'Краска акриловая для стен и потолков моющаяся предназначена для высококачественной окраски стен и потолков внутри бытовых и производственных помещений с повышенной эксплуатационной нагрузкой, требующих частой влажной уборки с применением моющих и дезинфицирующих средств.', 1),
('c0175910-fbe7-11e0-b702-001cc494be80', 'Краска ВД-АК 2180 "Новые технологии" интерьерная супербел. 6кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 156, 59, 'Краска акриловая для стен и потолков моющаяся предназначена для высококачественной окраски стен и потолков внутри бытовых и производственных помещений с повышенной эксплуатационной нагрузкой, требующих частой влажной уборки с применением моющих и дезинфицирующих средств.', 1),
('c0175912-fbe7-11e0-b702-001cc494be80', 'Краска ВД-АК 2180 "Новые технологии" моющаяся супербел. 3кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 180, 79, 'Краска акриловая для стен и потолков моющаяся предназначена для высококачественной окраски стен и потолков внутри бытовых и производственных помещений с повышенной эксплуатационной нагрузкой, требующих частой влажной уборки с применением моющих и дезинфицирующих средств.', 1),
('c0175914-fbe7-11e0-b702-001cc494be80', 'Краска ВД-АК 2180 "Новые технологии" интерьерная супербел. 14кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 314, 66, 'Краска акриловая для стен и потолков моющаяся предназначена для высококачественной окраски стен и потолков внутри бытовых и производственных помещений с повышенной эксплуатационной нагрузкой, требующих частой влажной уборки с применением моющих и дезинфицирующих средств.', 1),
('c0175916-fbe7-11e0-b702-001cc494be80', 'Краска ВД-АК 2180 "Новые технологии" моющаяся супербел. 6кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 128, 60, 'Краска акриловая для стен и потолков моющаяся предназначена для высококачественной окраски стен и потолков внутри бытовых и производственных помещений с повышенной эксплуатационной нагрузкой, требующих частой влажной уборки с применением моющих и дезинфицирующих средств.', 1),
('c0175918-fbe7-11e0-b702-001cc494be80', 'Краска ВД-АК 2180 "Новые технологии" моющаяся супербел. 14кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 352, 70, 'Краска акриловая для стен и потолков моющаяся предназначена для высококачественной окраски стен и потолков внутри бытовых и производственных помещений с повышенной эксплуатационной нагрузкой, требующих частой влажной уборки с применением моющих и дезинфицирующих средств.', 1),
('c017591a-fbe7-11e0-b702-001cc494be80', 'Краска ВД-АК 1180 "Новые технологии" фасадная супербел. 3кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 146, 83, 'Краска акриловая фасадная предназначена для высококачественной окраски фасадов зданий и сооружений, а также для окраски стен и потолков внутри помещений. Краска обладает повышенной износостойкостью, влагостойкостью и атмосферостойкостью. Краску можно наносить на бетонные, кирпичные, заштукатуренные, зашпатлеванные и прочие минеральные поверхности, а также на гипсокартон, дерево, двп, дсп и обои под покраску.\n', 1),
('c017591c-fbe7-11e0-b702-001cc494be80', 'Краска ВД-АК 1180 "Новые технологии" фасадная супербел. 6кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 107, 62, 'Краска акриловая фасадная предназначена для высококачественной окраски фасадов зданий и сооружений, а также для окраски стен и потолков внутри помещений. Краска обладает повышенной износостойкостью, влагостойкостью и атмосферостойкостью. Краску можно наносить на бетонные, кирпичные, заштукатуренные, зашпатлеванные и прочие минеральные поверхности, а также на гипсокартон, дерево, двп, дсп и обои под покраску.\n', 1),
('c017591e-fbe7-11e0-b702-001cc494be80', 'Краска ВД-АК 1180 "Новые технологии" фасадная супербел. 14кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 385, 73, 'Краска акриловая фасадная предназначена для высококачественной окраски фасадов зданий и сооружений, а также для окраски стен и потолков внутри помещений. Краска обладает повышенной износостойкостью, влагостойкостью и атмосферостойкостью. Краску можно наносить на бетонные, кирпичные, заштукатуренные, зашпатлеванные и прочие минеральные поверхности, а также на гипсокартон, дерево, двп, дсп и обои под покраску.\n', 1),
('c2d90e40-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Красный', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 8, 0, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('c4df9e0d-00c0-11e2-a554-005056be3bd8', 'Молотковая грунт-эмаль по ржавчине коричневая 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 95, 31, 'Применяется по любым металлическим поверхностям: решетки, ограды, гаражи, различные металлоконструкции, автомобильные детали и др. внутри помещений и в условиях атмосферного воздействия.', 1),
('c4df9e0f-00c0-11e2-a554-005056be3bd8', 'Молотковая грунт-эмаль по ржавчине медная 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 45, 31, 'Применяется по любым металлическим поверхностям: решетки, ограды, гаражи, различные металлоконструкции, автомобильные детали и др. внутри помещений и в условиях атмосферного воздействия.', 1),
('c4df9e11-00c0-11e2-a554-005056be3bd8', 'Молотковая грунт-эмаль по ржавчине серебристая 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 86, 31, 'Применяется по любым металлическим поверхностям: решетки, ограды, гаражи, различные металлоконструкции, автомобильные детали и др. внутри помещений и в условиях атмосферного воздействия.', 1),
('c4df9e13-00c0-11e2-a554-005056be3bd8', 'Молотковая грунт-эмаль по ржавчине серая 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 49, 31, 'Применяется по любым металлическим поверхностям: решетки, ограды, гаражи, различные металлоконструкции, автомобильные детали и др. внутри помещений и в условиях атмосферного воздействия.', 1),
('c6d784e3-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Вишневый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 17, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('c9d25e2b-f787-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Бирюзовый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 70, 61, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('ca79b0fb-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Бирюзовый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 7, 0, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('cb22e29d-68ed-11dd-b117-000e0c431b58', 'Биосепт-УЛЬТРА антисептический состав  10л', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 46, 54, 'Предназначен для усиленной длительной защиты конструкций и изделий из древесины от поражения плесенью, деревоокрашивающими, дереворазрушающими грибками и насекомыми. Применяется в особо тяжелых условиях: при непосредственном контакте с влажным грунтом, при интенсивном воздействии гигроскопической, конденсационной, атмосферной и почвенной влаги и т.п. Применяется как снаружи, так и внутри помещений, в том числе в особо тяжелых условиях, включая контакт с влажным грунтом', 1),
('cb22e29f-68ed-11dd-b117-000e0c431b58', 'Биосепт-УЛЬТРА антисептический состав  5л', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 66, 57, 'Предназначен для усиленной длительной защиты конструкций и изделий из древесины от поражения плесенью, деревоокрашивающими, дереворазрушающими грибками и насекомыми. Применяется в особо тяжелых условиях: при непосредственном контакте с влажным грунтом, при интенсивном воздействии гигроскопической, конденсационной, атмосферной и почвенной влаги и т.п. Применяется как снаружи, так и внутри помещений, в том числе в особо тяжелых условиях, включая контакт с влажным грунтом', 1),
('cce4b552-7f46-11e3-af7c-005056be1f7b', 'Краска латексная PARADE R3 база А Бел. ма. 2,5л Россия', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 68, 57, 'Матовая краска для стен и потолков любых типов помещений, в т.ч. с высокой эксплуатационной нагрузкой, требующие частой влажной уборки, а также фасадных элементов.', 1),
('cce7530f-27b6-11dd-942f-000e0c431b58', 'Огнебиозащитный состав КСД  (23кг)', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 31, 24, 'Предназначен для комплексной защиты древесины, а также текстильных материалов. Состав защищает древесину от возгорания, распространения пламени, гниения, синевы, плесени а также поражения любыми видами биологических разрушителей внутри помещений, на открытом воздухе (под навесом).', 1),
('ce1ffcf9-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Красный', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 18, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('ce813bcf-2257-11e1-ae36-001cc494be80', 'Краска ВД-АК 2180 "Новые технологии" интерьерная супербел. 1,3кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 279, 89, 'Краска акриловая для стен и потолков моющаяся предназначена для высококачественной окраски стен и потолков внутри бытовых и производственных помещений с повышенной эксплуатационной нагрузкой, требующих частой влажной уборки с применением моющих и дезинфицирующих средств.', 1),
('ce813bd1-2257-11e1-ae36-001cc494be80', 'Краска ВД-АК 2180 "Новые технологии" моющаяся супербел. 1,3кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 297, 82, 'Краска акриловая для стен и потолков моющаяся предназначена для высококачественной окраски стен и потолков внутри бытовых и производственных помещений с повышенной эксплуатационной нагрузкой, требующих частой влажной уборки с применением моющих и дезинфицирующих средств.', 1),
('cf6aa526-48b8-11dd-9342-000e0c431b58', 'Эмаль универсальная бронза 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 86, 48, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('d0659fe4-f787-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Зеленый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 106, 63, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('d1aa2ade-a3ef-11e1-ad4e-005056be3bd8', 'Очиститель Cosmofen-10 1л', '72429777-ff83-11e4-9228-005056be1f7a', 0, 32, 28, 'Очиститель нерастворяющий с антистатиком применяется для профессиональной чистки профелей из жесткого ПВХ, плат из вспененного твердого ПВХ, полиуретана и профелей кешированных ренолитной пленкой. Особенно хорош для очистки поверхности от пыли, остатков защитной пленки, жирных карандашей, следов резины, свежей полиуретановой пены и свежих остатков герметиков, таких как смола/битум. Оказывает хорошее действие на многие синтетические поверхности и в сочетании с антистатиком особенно хорош для выставочных и рекламных конструкций.', 1),
('d1eaa4c2-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Зеленый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 6, 0, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('d5823752-947b-11e3-8d88-005056be1f7b', 'Штукатурка фактурная декоративная с эффектом "шубы" Белый 15кг', '6aa6af7c-ff83-11e4-9228-005056be1f7a', 0, 33, 18, 'Готовая к применению декоративная штукатурка повышенной белизны на основе водной акриловой дисперсии. Образует на поверхности рельеф в виде «шубы». Скрывает небольшие неровности основания. Легко наносится валиком. Создает прочное влагостойкое, паропроницаемое покрытие, стойкое к атмосферным воздействиям и эксплуатационным нагрузкам. Обладает отличной адгезией к поверхностям из бетона, камня, гипса, цемента, кирпича, ДСП, ДВП. Не содержит растворителей, без запаха. Допускает мытье окрашенной поверхности.', 1),
('d63bb09c-055c-11dd-b9c0-000e0c431b58', 'Краска фасадная "PARADE" F20  База  С Бесцветный 9л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 65, 32, 'Акриловая краска Parade F20 предназначена для фасадных работ по бетонным, кирпичным, оштукатуренным и другим поверхностям. Супербелая, матовая, колеруется пастами для водных красок. Разбавляется водой. Хранить в оригинальной упаковке при температуре выше 0°C в течение 12 месяцев. Выпускается расфасованной в ведра по 2,5 л, 5 л и 10 л.', 1),
('d72ce04c-7f46-11e3-af7c-005056be1f7b', 'Краска латексная PARADE R3 база А Бел. ма. 5л Россия', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 46, 40, 'Матовая краска для стен и потолков любых типов помещений, в т.ч. с высокой эксплуатационной нагрузкой, требующие частой влажной уборки, а также фасадных элементов.', 1),
('d76b7387-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Бирюзовый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 13, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('d9eaaa65-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Светло-зеленый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 11, 1, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('da49edc1-58f9-11e0-894e-000e0c431b58', 'Грунт-эмаль по ржавчине белая 10л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 0, 0, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('da49edc3-58f9-11e0-894e-000e0c431b58', 'Грунт-эмаль по ржавчине зеленая 10л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 0, 0, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('da49edc5-58f9-11e0-894e-000e0c431b58', 'Грунт-эмаль по ржавчине коричневая 10л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 0, 0, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('da49edc7-58f9-11e0-894e-000e0c431b58', 'Грунт-эмаль по ржавчине красно-коричневая 10л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 8, 3, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('da49edc9-58f9-11e0-894e-000e0c431b58', 'Грунт-эмаль по ржавчине серая 10л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 4, 0, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('da49edcb-58f9-11e0-894e-000e0c431b58', 'Грунт-эмаль по ржавчине черная 10л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 9, 7, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('ddd32665-666b-11dc-be42-000e0c431b58', 'Краска акрил. "PARADE" W110 для обоев Бел.мат. БАЗА А 9л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 124, 64, 'Краска акриловая водно-дисперсионная для обоев Parade W110 предназначена для окраски всех видов обоев под покраску, структурно-волокнистых и стеклообоев, а также бетонных, кирпичных, оштукатуренных, деревянных, цементных, гипсовых и гипсокартонных поверхностей стен и потолков в помещениях с нормальной и повышенной влажностью, подвергающихся сильным эксплуатационным нагрузкам.', 1),
('ddd3266a-666b-11dc-be42-000e0c431b58', 'Краска фасадная "PARADE" F20 Бел. мат.База  А 2,5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 125, 77, 'Акриловая краска Parade F20 предназначена для фасадных работ по бетонным, кирпичным, оштукатуренным и другим поверхностям. Супербелая, матовая, колеруется пастами для водных красок. Разбавляется водой. Хранить в оригинальной упаковке при температуре выше 0°C в течение 12 месяцев. Выпускается расфасованной в ведра по 2,5 л, 5 л и 10 л.', 1),
('ddd3266c-666b-11dc-be42-000e0c431b58', 'Краска фасадная "PARADE" F20 Бел. мат.База  А 5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 98, 66, 'Акриловая краска Parade F20 предназначена для фасадных работ по бетонным, кирпичным, оштукатуренным и другим поверхностям. Супербелая, матовая, колеруется пастами для водных красок. Разбавляется водой. Хранить в оригинальной упаковке при температуре выше 0°C в течение 12 месяцев. Выпускается расфасованной в ведра по 2,5 л, 5 л и 10 л.', 1),
('ddd32674-666b-11dc-be42-000e0c431b58', 'Краска акрил. "PARADE" W110 для обоев Бел. мат. База  А 2,5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 77, 55, 'Краска акриловая водно-дисперсионная для обоев Parade W110 предназначена для окраски всех видов обоев под покраску, структурно-волокнистых и стеклообоев, а также бетонных, кирпичных, оштукатуренных, деревянных, цементных, гипсовых и гипсокартонных поверхностей стен и потолков в помещениях с нормальной и повышенной влажностью, подвергающихся сильным эксплуатационным нагрузкам.', 1),
('ddd32676-666b-11dc-be42-000e0c431b58', 'Краска акрил. "PARADE" W110 для обоев Бел. мат.База  А  5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 65, 50, 'Краска акриловая водно-дисперсионная для обоев Parade W110 предназначена для окраски всех видов обоев под покраску, структурно-волокнистых и стеклообоев, а также бетонных, кирпичных, оштукатуренных, деревянных, цементных, гипсовых и гипсокартонных поверхностей стен и потолков в помещениях с нормальной и повышенной влажностью, подвергающихся сильным эксплуатационным нагрузкам.', 1),
('de1409cf-f787-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Светло-зеленый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 69, 59, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('de9b7b14-7f46-11e3-af7c-005056be1f7b', 'Краска латексная PARADE R3 база А Бел. ма. 9л Россия', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 73, 46, 'Матовая краска для стен и потолков любых типов помещений, в т.ч. с высокой эксплуатационной нагрузкой, требующие частой влажной уборки, а также фасадных элементов.', 1),
('df210450-93af-11e3-82a4-005056be1f7b', 'Грунт-эмаль по ржавчине жёлтый 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 51, 34, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('df2d81cd-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Зеленый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 15, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('e017a0ce-f78d-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Оранжевый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 82, 47, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('e12e57a9-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Синий', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 3, 1, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('e213c98a-ccbb-11e4-a1f9-005056be1f7b', 'Сольвент АЛТ 602/218 400 гр.', '72429777-ff83-11e4-9228-005056be1f7a', 0, 17, 48, 'Растворитель предназначен для разбавления лакокрасочных материалов и шпатлевок на основе: нитратоцелюлозных, нитратоцелюлозно-глифталевых, эпоксидных, нитратцелюлозно-эпоксидных, мочевино (меламино) формальдегидных, кремнеорганических (НЦ, ЭП, КО, МЧ, МС) и других лакокрасочных материалов.', 1),
('e242e97f-f29b-11dd-9439-000e0c431b58', 'Краска ВД акриловая фасадная всесезонная База А DALI 9л (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 61, 21, 'КРАСКА ДАЛИ ФАСАДНАЯ ВСЕСЕЗОННАЯ DALI органорастворимая предназначена для высококачественной отделки фасадов при температуре воздуха до -20 С. Может применяться для ответственного окрашивания поверхностей на основе бетона, штукатурки, ДСП, ацеита, кирпича, пенобетона, дерева во всех климатических поясах, в том числе и в регионах со сложными атмосферными условиями. ', 1),
('e2e51024-e980-11e4-ab92-005056be1f7b', 'Краска латексная PARADE R20 база С П/мат 2,5л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 12, 0, 'Краска интерьерная латексная суперстойкая полуматовая. Высококачественная латексная интерьерная краска с исключительными показателями водостойкости, стойкости к мытью и мокрому истиранию.', 1),
('e39c5eb8-24d0-11e2-8158-005056be3bd8', 'Огнебиозащитный состав Корд 200кг', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 0, 0, 'Предназначен для комплексной защиты древесины, а также текстильных материалов. Состав защищает древесину от возгорания, распространения пламени, гниения, синевы, плесени а также поражения любыми видами биологических разрушителей внутри помещений, на открытом воздухе (под навесом).', 1),
('e4020814-4598-11e1-8212-001cc494be80', 'Краска ВД латексная д/кухни и ванной DALI 9л БАЗА С (Рогнеда)', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 0, 0, 'Латексная акриловая краска для декоративного окрашивания стен и потолков в жилых и общественных помещениях с повышенной влажностью воздуха и эксплуатационной нагрузкой. Применяется внутри помещений по минеральным поверхностям (бетон, кирпич, гипс, цемент, гипсокартон, шпатлевка, штукатурка и др.).', 1),
('e545e44e-298d-11e2-8829-005056be3bd8', 'Огнебиозащитный состав Корд 23кг', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 0, 0, 'Состав для огнезащитной обработки древесины и защиты древесины, находящейся в нормальных условиях эксплуатации  от биопоражений. Применяется внутри помещений и снаружи «под навесом» по новым или старым деревянным поверхностям и материалам на основе древесины (ДВП, ДСП, фанера др.)', 1),
('e545e450-298d-11e2-8829-005056be3bd8', 'Огнебиозащитный состав Корд 10кг', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 0, 0, 'Состав для огнезащитной обработки древесины и защиты древесины, находящейся в нормальных условиях эксплуатации  от биопоражений. Применяется внутри помещений и снаружи «под навесом» по новым или старым деревянным поверхностям и материалам на основе древесины (ДВП, ДСП, фанера др.)', 1),
('e63d2bae-f78d-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Желтый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 45, 48, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('e755f307-f787-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Синий', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 85, 63, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('e7f145bb-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Голубой', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 10, 1, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('e8976171-93af-11e3-82a4-005056be1f7b', 'Грунт-эмаль по ржавчине жёлтый 2л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 44, 30, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('e9f3fc4e-47c0-11dc-8bad-000e0c431b58', 'Краска фасадная "PARADE" F50 база А  Бел. мат. 9л ', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 56, 35, 'Краска на основе смол Pliolite Parade F50 предназначена для наружных работ по бетону, цементу, фиброцементу, шпатлевкам, минеральным штукатуркам, щелочным поверхностям, кирпичу, камню, гипсу, металлу (с антикоррозионным грунтом), сухому дереву и пр., а также по ранее окрашенным поверхностям.', 1),
('ebcc7a29-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Светло-зеленый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 26, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('ece048eb-fbaf-11e0-b702-001cc494be80', 'Краска ВД-АК "Водоэмульсионка.рф" интерьер. супербел. 6кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 2, 55, 'Краска акриловая потолочная предназначена для выполнения высококачественной окраски потолков внутри помещений с нормальной влажностью: Гостиные комнаты, спальни, детские комнаты, а также общественные и производственные помещения. Краска обладает идеальной белизной. Легко наносится на поверхность потолка без подтеков, брызг и разводов. Быстро сохнет. После нанесения образует ровную матовую поверхность. Скрывает микронеровности потолка. «Дышащее покрытие». Не желтеет. Не мелит. Без запаха. Гипоаллергенная. Устойчива к сухой уборке. Морозостойкая.', 1),
('ece048ee-fbaf-11e0-b702-001cc494be80', 'Краска ВД-АК "Водоэмульсионка.рф" интерьер. супербел. 13кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 0, 63, 'Краска акриловая потолочная предназначена для выполнения высококачественной окраски потолков внутри помещений с нормальной влажностью: Гостиные комнаты, спальни, детские комнаты, а также общественные и производственные помещения. Краска обладает идеальной белизной. Легко наносится на поверхность потолка без подтеков, брызг и разводов. Быстро сохнет. После нанесения образует ровную матовую поверхность. Скрывает микронеровности потолка. «Дышащее покрытие». Не желтеет. Не мелит. Без запаха. Гипоаллергенная. Устойчива к сухой уборке. Морозостойкая.', 1),
('ece048f0-fbaf-11e0-b702-001cc494be80', 'Краска ВД-АК "Водоэмульсионка.рф" фасад. супербел. 6кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 5, 66, 'Краска акриловая фасадная предназначена для высококачественной окраски фасадов зданий и сооружений, а также для окраски стен и потолков внутри помещений. Краска обладает повышенной износостойкостью, влагостойкостью и атмосферостойкостью. Краску можно наносить на бетонные, кирпичные, заштукатуренные, зашпатлеванные и прочие минеральные поверхности, а также на гипсокартон, дерево, двп, дсп и обои под покраску.\n', 1),
('ece048f2-fbaf-11e0-b702-001cc494be80', 'Краска ВД-АК "Водоэмульсионка.рф" фасад. супербел. 13кг', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 2, 72, 'Краска акриловая фасадная предназначена для высококачественной окраски фасадов зданий и сооружений, а также для окраски стен и потолков внутри помещений. Краска обладает повышенной износостойкостью, влагостойкостью и атмосферостойкостью. Краску можно наносить на бетонные, кирпичные, заштукатуренные, зашпатлеванные и прочие минеральные поверхности, а также на гипсокартон, дерево, двп, дсп и обои под покраску.\n', 1),
('efa9ef8e-f78d-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Вишневый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 51, 48, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('f0ad1dd1-1f91-11e4-9591-005056be1f7b', 'Грунт-эмаль по ржавчине жёлтый 10л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 1, 0, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('f1be6b3a-f081-11df-a0c5-000e0c431b58', 'Эмаль ПФ-115 (Лакра) Сиреневая  1кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 74, 56, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('f1be6b3c-f081-11df-a0c5-000e0c431b58', 'Эмаль ПФ-115 (Лакра) Сиреневая  2кг', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 93, 48, 'Обладает хорошими декоративными свойствами и прочным сцеплением с окрашиваемой поверхностью. Эмаль легко наносится, образуя однородное гладкое покрытие, устойчивое к действию воды, атмосферных осадков и растворов моющих средств.', 1),
('f31a0079-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Синий', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 13, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('f33aec8f-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Шоколадный', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 4, 0, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('f5ec168e-f78d-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 1,9кг Красный', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 27, 47, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b', 'Штукатурка структурная декоративная с эффектом "зернистости" размер "зерна" 1,5мм Белый 15кг', '6aa6af7c-ff83-11e4-9228-005056be1f7a', 0, 39, 0, 'Для декоративной отделки поверхностей внутри и снаружи помещений. Готовая к применению декоративная штукатурка повышенной белизны на основе водной акриловой дисперсии с равномерно зернистой структурой. Скрывает небольшие неровности основания. Легко наносится. Образуемый рельеф получается плавным и приятным на ощупь. Создает прочное влагостойкое, паропроницаемое покрытие, стойкое к атмосферным воздействиям и эксплуатационным нагрузкам. Обладает отличной адгезией к поверхностям из бетона, камня, гипса, цемента, кирпича, ДСП, ДВП. Не содержит растворителей, без запаха. Размер зерна ~ 1,5 мм. Допускает мытье окрашенной поверхности.', 1),
('f63c664a-52ee-11dd-a89a-000e0c431b58', 'Краска акрил. "PARADE" W4 База С Бесцветный 9л', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 55, 35, 'Parade W4 — краска акриловая для внутренних работ. Допускается частая влажная уборка с применением моющих средств, выдерживает более 3000 циклов мытья. Parade W4 применяется на стены и потолки помещений, подвергающиеся максимальным эксплуатационным нагрузкам (любые офисные и жилые помещения), подходит для окраски обоев.', 1),
('fa74499c-7f46-11e3-af7c-005056be1f7b', 'Краска латексная PARADE R7 база А шелк-мат. 2,5л Россия', '7ab9d88b-fe13-11e4-9228-005056be1f7a', 0, 61, 57, 'Шелковисто-матовая краска для стен и потолков любых типов помещений, в т.ч. с высокой эксплуатационной нагрузкой, требующих частой влажной уборки, а также фасадных элементов.\n', 1),
('fbb89466-93af-11e3-82a4-005056be1f7b', 'Грунт-эмаль по ржавчине красный 0,75л  DALI', '569e2345-ff83-11e4-9228-005056be1f7a', 0, 36, 30, 'Применяется для наружных и внутренних работ для окрашивания цветных металлов, оцинкованного металла и нержавеющей стали. Металлическую поверхность, обработанную грунт-эмалью, эффективно защищает от образования коррозии и создает атмосферостойкое, водостойкое покрытие.', 1),
('fc75df8c-f786-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 0,8кг Белая', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 127, 77, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('fd393098-f78f-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 20кг Розово-бежевый', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 11, 0, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('fded4984-d1c2-11e3-8b7a-005056be1f7b', 'Штукатурка структурная декоративная с эффектом "зернистости" размер "зерна" 13мм Белый 15кг', '6aa6af7c-ff83-11e4-9228-005056be1f7a', 0, 16, 0, 'Для декоративной отделки поверхностей внутри и снаружи помещений. Готовая к применению декоративная штукатурка повышенной белизны на основе водной акриловой дисперсии с равномерно зернистой структурой. Скрывает небольшие неровности основания. Легко наносится. Образуемый рельеф получается плавным и приятным на ощупь. Создает прочное влагостойкое, паропроницаемое покрытие, стойкое к атмосферным воздействиям и эксплуатационным нагрузкам. Обладает отличной адгезией к поверхностям из бетона, камня, гипса, цемента, кирпича, ДСП, ДВП. Не содержит растворителей, без запаха. Размер зерна ~ 1,5 мм. Допускает мытье окрашенной поверхности.', 1),
('fdf8cbf6-f78e-11e3-8c8a-005056be1f7b', 'Эмаль ПФ-115 Inter 6кг Голубой', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 18, 12, 'Высококачественная эмаль на основе алкидного лака предназначена для окраски деревянных и загрунтованных металлических поверхностей, подвергающихся атмосферным воздействиям, а также для внутренних отделочных работ. ', 1),
('fe1a18f9-c501-11e1-abc0-005056be3bd8', 'Огнебиозащитный состав Пирекс Firebio PROF (1-2 гр ) 12 кг', '569e2343-ff83-11e4-9228-005056be1f7a', 0, 0, 0, 'Огнезащитная обработка древесины, защита древесины, находящейся в нормальных условиях эксплуатации (I-Х классы условий службы по ГОСТ 20022.2-80) от биопоражений (гниения, плесени, грибка, синевы)\n', 1),
('fea6c165-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная хаки 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 46, 33, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c167-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная светло-зеленая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 51, 33, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c169-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная темно-зеленая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 68, 37, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c16b-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная фисташковая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 48, 33, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c16d-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная бежевая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 60, 37, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c16f-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная голубая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 46, 39, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c171-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная синяя 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 78, 39, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c173-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная коричневая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 99, 50, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c175-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная желтая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 39, 40, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c177-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная светло-серая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 65, 35, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c179-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная серая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 80, 47, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c17b-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная оранжевая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 97, 36, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c17d-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная бирюзовая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 47, 34, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c17f-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная сиреневая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 52, 34, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c181-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная охра 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 43, 32, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c183-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная какао 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 55, 35, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c185-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная красно-коричневая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 49, 33, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c187-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная алюминий 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 98, 34, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c189-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная хром 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 75, 59, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c18b-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная золото 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 116, 60, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c18d-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная медь 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 52, 36, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c18f-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная белая матовая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 110, 55, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1),
('fea6c191-5ab6-11dc-be42-000e0c431b58', 'Эмаль универсальная черная матовая 520 мл.', '6ecba52d-fe13-11e4-9228-005056be1f7a', 0, 134, 61, 'Высококачественная алкидная эмаль предназначена для окраски предварительно загрунтованных металлических и деревянных поверхностей. Применяется для наружных и внутренних работ. Легко наносится на труднодоступные места, имеет хорошую укрывистость и атмосферостойкость, превосходную адгезию к окрашиваемой поверхности. \n', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ShopItemsPrices`
--

CREATE TABLE IF NOT EXISTS `ShopItemsPrices` (
  `item` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `value` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopItemsPrices`
--

INSERT INTO `ShopItemsPrices` (`item`, `price`, `value`) VALUES
('000b4673-f788-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('000b4673-f788-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('030b5cff-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('030b5cff-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('047805a5-fe8c-11e3-bbdb-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 419),
('047805a5-fe8c-11e3-bbdb-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 398.05),
('04834f06-93b0-11e3-82a4-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 929),
('04834f06-93b0-11e3-82a4-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 882.55),
('05caaed0-f790-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('05caaed0-f790-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('05caaed2-f790-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('05caaed2-f790-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('06e98e75-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('06e98e75-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('07027c6c-7f47-11e3-af7c-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2063),
('07027c6c-7f47-11e3-af7c-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1959.85),
('076d2137-4380-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 369),
('076d2137-4380-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 350.55),
('076d2139-4380-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 929),
('076d2139-4380-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 882.55),
('076d213b-4380-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 369),
('076d213b-4380-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 350.55),
('076d213d-4380-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 929),
('076d213d-4380-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 882.55),
('076d213f-4380-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 369),
('076d213f-4380-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 350.55),
('076d2141-4380-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 929),
('076d2141-4380-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 882.55),
('076d2143-4380-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 369),
('076d2143-4380-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 350.55),
('076d2145-4380-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 929),
('076d2145-4380-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 882.55),
('076d2147-4380-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 369),
('076d2147-4380-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 350.55),
('076d2149-4380-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 929),
('076d2149-4380-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 882.55),
('076d214b-4380-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 369),
('076d214b-4380-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 350.55),
('076d214d-4380-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 929),
('076d214d-4380-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 882.55),
('079b44f8-f788-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('079b44f8-f788-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('0916172c-947c-11e3-8d88-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 979),
('0916172c-947c-11e3-8d88-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 931),
('09f4768d-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('09f4768d-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('0d8fcbcd-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 569),
('0d8fcbcd-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 540.55),
('0d8fcbcf-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 1269),
('0d8fcbcf-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1205.55),
('0d8fcbd1-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 722),
('0d8fcbd1-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 685.9),
('0d8fcc0e-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 332),
('0d8fcc0e-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 315.4),
('0d8fcc10-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 1039),
('0d8fcc10-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 987.05),
('0d8fcc12-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 639),
('0d8fcc12-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 607.05),
('0d8fcc1c-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 437),
('0d8fcc1c-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 415.15),
('0d8fcc1e-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 1311),
('0d8fcc1e-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1245.45),
('0d8fcc20-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 702),
('0d8fcc20-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 666.9),
('0d8fcc22-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 481),
('0d8fcc22-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 456.95),
('0d8fcc24-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 1679),
('0d8fcc24-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1345),
('0d8fcc26-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 834),
('0d8fcc26-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 792.3),
('0ff22851-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('0ff22851-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('1004a95c-f787-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 117),
('1004a95c-f787-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 111.15),
('11d9ec94-f788-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('11d9ec94-f788-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('129c7f4d-5273-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1759),
('129c7f4d-5273-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1671.05),
('138c38bb-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('138c38bb-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('13cd2b20-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 1219),
('13cd2b20-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1158.72),
('13cd2b24-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 1645),
('13cd2b24-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1563.84),
('13cd2b26-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 4889),
('13cd2b26-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 4646.24),
('13cd2b5d-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 181),
('13cd2b5d-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 171.95),
('13cd2b61-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 167),
('13cd2b61-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 158.65),
('13cd2b63-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 98),
('13cd2b63-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 92.7),
('13cd2b65-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 98),
('13cd2b65-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 92.7),
('13cd2b67-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 98),
('13cd2b67-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 92.7),
('13cd2b69-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 98),
('13cd2b69-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 92.7),
('13cd2b6b-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 98),
('13cd2b6b-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 92.7),
('13cd2b6d-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 98),
('13cd2b6d-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 92.7),
('13cd2b6f-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 98),
('13cd2b6f-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 92.7),
('13ce3df2-93b0-11e3-82a4-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 929),
('13ce3df2-93b0-11e3-82a4-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 882.55),
('159d7e07-f790-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('159d7e07-f790-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('17a83679-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('17a83679-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('1a0a8b4f-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 65),
('1a0a8b4f-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 61.75),
('1a0a8b51-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 133),
('1a0a8b51-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 126.35),
('1a0a8b53-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 65),
('1a0a8b53-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 60.8),
('1a0a8b55-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 127),
('1a0a8b55-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 119.7),
('1a0a8b57-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 65),
('1a0a8b57-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 60.8),
('1a0a8b59-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 127),
('1a0a8b59-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 119.7),
('1a0a8b5b-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 65),
('1a0a8b5b-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 60.8),
('1a0a8b5d-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 127),
('1a0a8b5d-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 119.7),
('1a0a8b5f-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 75),
('1a0a8b5f-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 68.4),
('1a0a8b61-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 135),
('1a0a8b61-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 124.45),
('1a0a8b63-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 75),
('1a0a8b63-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 68.4),
('1a0a8b65-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 135),
('1a0a8b65-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 124.45),
('1a0a8b67-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 65),
('1a0a8b67-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 60.8),
('1a0a8b69-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 127),
('1a0a8b69-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 119.7),
('1a0a8b6b-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 175),
('1a0a8b6b-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 166.25),
('1a0a8b6d-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 329),
('1a0a8b6d-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 312.55),
('1a0a8b6f-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 2799),
('1a0a8b6f-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2659.05),
('1a0a8b71-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 165),
('1a0a8b71-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 156.75),
('1a0a8b73-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 347),
('1a0a8b73-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 329.65),
('1a0a8b75-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 2999),
('1a0a8b75-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2849.05),
('1a0a8b7b-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 2989),
('1a0a8b7b-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2839.55),
('1a0a8b7d-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 184),
('1a0a8b7d-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 174.8),
('1a0a8b7f-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 339),
('1a0a8b7f-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 322.05),
('1a0a8b81-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 3039),
('1a0a8b81-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2887.05),
('1a0a8b83-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 365),
('1a0a8b83-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 346.75),
('1a0a8b85-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 189),
('1a0a8b85-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 179.55),
('1a0a8b87-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 3139),
('1a0a8b87-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2982.05),
('1a0a8b89-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 165),
('1a0a8b89-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 156.75),
('1a0a8b8b-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 315),
('1a0a8b8b-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 299.25),
('1a0a8b8d-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 2825),
('1a0a8b8d-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2683.75),
('1a0a8b8f-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 205),
('1a0a8b8f-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 194.75),
('1a1ab87b-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('1a1ab87b-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('1b75918d-9fb8-11e3-8705-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 135),
('1b75918d-9fb8-11e3-8705-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 128.57),
('1bd57597-93b0-11e3-82a4-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 369),
('1bd57597-93b0-11e3-82a4-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 350.55),
('1d967145-f787-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 180),
('1d967145-f787-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 171),
('1f4ff69d-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('1f4ff69d-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('206ff829-f790-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('206ff829-f790-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('20b7f87c-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 395),
('20b7f87c-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 375.25),
('20b7f87e-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 3109),
('20b7f87e-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2953.55),
('20b7f880-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 175),
('20b7f880-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 166.25),
('20b7f882-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 335),
('20b7f882-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 318.25),
('20b7f884-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 2937),
('20b7f884-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2790.15),
('20b7f886-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 165),
('20b7f886-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 156.75),
('20b7f888-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 315),
('20b7f888-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 299.25),
('20b7f88a-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 2815),
('20b7f88a-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2674.25),
('20b7f88c-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 205),
('20b7f88c-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 194.75),
('20b7f88e-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 395),
('20b7f88e-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 375.25),
('20b7f890-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 3655),
('20b7f890-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 3472.25),
('20b7f896-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 179),
('20b7f896-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 170.05),
('20b7f898-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 372),
('20b7f898-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 353.4),
('20b7f89a-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 185),
('20b7f89a-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 175.75),
('20b7f89e-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 165),
('20b7f89e-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 156.75),
('20b7f8a0-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 315),
('20b7f8a0-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 299.25),
('20b7f8a2-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 2867),
('20b7f8a2-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2723.65),
('20b7f8a4-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 165),
('20b7f8a4-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 156.75),
('20b7f8a6-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 315),
('20b7f8a6-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 299.25),
('20b7f8a8-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 2845),
('20b7f8a8-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2702.75),
('20b7f8aa-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 185),
('20b7f8aa-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 175.75),
('20b7f8ac-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 359),
('20b7f8ac-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 341.05),
('20b7f8ae-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 3212),
('20b7f8ae-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 3051.4),
('20b7f8b0-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 185),
('20b7f8b0-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 175.75),
('20b7f8b2-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 355),
('20b7f8b2-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 337.25),
('20b7f8b4-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 3135),
('20b7f8b4-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2978.25),
('20b7f8b6-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 179),
('20b7f8b6-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 170.05),
('20b7f8b8-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 339),
('20b7f8b8-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 322.05),
('20b7f8bc-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 163),
('20b7f8bc-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 154.85),
('20b7f8be-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 305),
('20b7f8be-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 289.75),
('20b7f8c0-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 2845),
('20b7f8c0-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2702.75),
('20b7f8c2-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 179),
('20b7f8c2-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 170.05),
('20b7f8c4-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 179),
('20b7f8c4-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 170.05),
('20b7f8c6-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 349),
('20b7f8c6-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 331.55),
('20b7f8c8-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 2959),
('20b7f8c8-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2811.05),
('20b7f8d0-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 155),
('20b7f8d0-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 146.3),
('20b7f8d2-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 295),
('20b7f8d2-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 277.4),
('20b7f8d4-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 2402),
('20b7f8d4-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2281.9),
('20b7f8d6-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 155),
('20b7f8d6-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 142.7),
('20b7f8d8-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 2572),
('20b7f8d8-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2443.52),
('20b7f8da-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 289),
('20b7f8da-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 272.65),
('20b7f8dc-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 155),
('20b7f8dc-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 148.2),
('20b7f8de-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 298),
('20b7f8de-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 283.1),
('211dadff-f788-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('211dadff-f788-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('2133814d-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('2133814d-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('23b6c6e7-f789-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 256),
('23b6c6e7-f789-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 243.2),
('2461ad51-9fb8-11e3-8705-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 365),
('2461ad51-9fb8-11e3-8705-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 345.37),
('25a027ef-9e45-11e1-9d3e-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 179),
('25a027ef-9e45-11e1-9d3e-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 170.05),
('25a027f1-9e45-11e1-9d3e-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 335),
('25a027f1-9e45-11e1-9d3e-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 318.25),
('277ee1ed-f788-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('277ee1ed-f788-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('28110f45-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 269),
('28110f45-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 255.55),
('28110f47-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 489),
('28110f47-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 464.55),
('28110f49-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 275),
('28110f49-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 261.25),
('28110f4b-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 489),
('28110f4b-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 464.55),
('28110f4f-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 449),
('28110f4f-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 426.55),
('28110f51-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 769),
('28110f51-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 730.55),
('28110f53-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 379),
('28110f53-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 360.05),
('28110f55-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 649),
('28110f55-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 616.55),
('28110f57-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 10490),
('28110f57-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 9965.5),
('28b335ed-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('28b335ed-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('2997b29e-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('2997b29e-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('299c6ffe-f790-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('299c6ffe-f790-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('2cbf73b5-f789-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 256),
('2cbf73b5-f789-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 243.2),
('2ced73cf-59ef-11e0-894e-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 225),
('2ced73cf-59ef-11e0-894e-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 214),
('2eadcbef-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 102),
('2eadcbef-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 96.9),
('2eadcbf1-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 437),
('2eadcbf1-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 415.15),
('2eadcbf3-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 53),
('2eadcbf3-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 50.35),
('2eadcbfc-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 39),
('2eadcbfc-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 37.05),
('2eadcbfe-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 77),
('2eadcbfe-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 73.15),
('2eadcc00-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 328),
('2eadcc00-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 311.6),
('2eadcc10-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 55),
('2eadcc10-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 52.25),
('2eadcc2e-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 36),
('2eadcc2e-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 34.2),
('2eadcc30-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 84),
('2eadcc30-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 79.8),
('2eadcc32-99a8-11db-937f-000e0c431b59', '288427e0-9732-11db-bbb4-0017315894a1', 303),
('2eadcc32-99a8-11db-937f-000e0c431b59', '86157e22-e56b-11dc-8b6b-000e0c431b58', 287.85),
('30047f82-f788-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('30047f82-f788-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('3114fa55-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('3114fa55-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('3409410b-5b1f-11e2-8bea-005056be271d', '288427e0-9732-11db-bbb4-0017315894a1', 3586),
('3409410b-5b1f-11e2-8bea-005056be271d', '86157e22-e56b-11dc-8b6b-000e0c431b58', 3406.7),
('3442e089-0125-11e4-8695-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 454),
('3442e089-0125-11e4-8695-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 431.3),
('3479e733-bce7-11e4-a1f3-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 1170),
('3479e733-bce7-11e4-a1f3-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1111.5),
('3526e5c9-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('3526e5c9-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 1541),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1463.95),
('380e3f79-f788-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('380e3f79-f788-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('3bfb5c69-9fb8-11e3-8705-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 179),
('3bfb5c69-9fb8-11e3-8705-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 170.61),
('3d601a65-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('3d601a65-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('3d822ed4-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('3d822ed4-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('41f9a64a-f788-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('41f9a64a-f788-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('441a7da1-9fb8-11e3-8705-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 469),
('441a7da1-9fb8-11e3-8705-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 446.96),
('45794d11-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('45794d11-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('47de42e5-f789-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 747),
('47de42e5-f789-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 709.65),
('4dd1de14-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('4dd1de14-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('4ed5aaa1-f789-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 747),
('4ed5aaa1-f789-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 709.65),
('500c0ee4-4f2c-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 265),
('500c0ee4-4f2c-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 250.8),
('500c0ee6-4f2c-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 495),
('500c0ee6-4f2c-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 470.3),
('55c10657-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('55c10657-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('56a6f723-ea03-11de-860d-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1719),
('56a6f723-ea03-11de-860d-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1633.05),
('56f519d0-4f2c-11de-8f53-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1989),
('56f519d0-4f2c-11de-8f53-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1889.55),
('5ed5699a-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('5ed5699a-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('5fde6d12-f789-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 1033),
('5fde6d12-f789-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 981.35),
('612d8834-6137-11e1-96bd-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 233),
('612d8834-6137-11e1-96bd-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 220.5),
('67c85be4-6208-11de-9531-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 495),
('67c85be4-6208-11de-9531-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 470.3),
('67c85be6-6208-11de-9531-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 265),
('67c85be6-6208-11de-9531-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 250.8),
('680965ab-f789-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('680965ab-f789-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('727c8145-f789-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('727c8145-f789-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('747ef690-551c-11dc-beb4-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 335),
('747ef690-551c-11dc-beb4-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 318.25),
('78e43dfb-fbee-11e1-8f72-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 1119),
('78e43dfb-fbee-11e1-8f72-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1063.05),
('7a3c5db1-777c-11de-9531-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1399),
('7a3c5db1-777c-11de-9531-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1329.05),
('7a3c5db3-777c-11de-9531-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 789),
('7a3c5db3-777c-11de-9531-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 749.55),
('7a3c5db5-777c-11de-9531-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1439),
('7a3c5db5-777c-11de-9531-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1367.05),
('7a3c5db7-777c-11de-9531-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 859),
('7a3c5db7-777c-11de-9531-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 816.05),
('7ab6caa7-b1ee-11e0-aa21-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1438),
('7ab6caa7-b1ee-11e0-aa21-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1366.1),
('7c1e70d5-5a9d-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 174),
('7c1e70d5-5a9d-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 165.3),
('7e531df3-b5f5-11e1-83ba-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 375),
('7e531df3-b5f5-11e1-83ba-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 356.25),
('7ff8df4e-f789-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 3271),
('7ff8df4e-f789-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 3107.45),
('82ebcce8-bce7-11e4-a1f3-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 5650),
('82ebcce8-bce7-11e4-a1f3-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 5367.5),
('8522912f-f3fb-11e4-9746-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 4560),
('8522912f-f3fb-11e4-9746-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 4332),
('897bb5a6-b0fa-11e3-b34d-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 299),
('897bb5a6-b0fa-11e3-b34d-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 199),
('89cb1aab-b1c3-11e0-aa21-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 439),
('89cb1aab-b1c3-11e0-aa21-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 417.05),
('9291c63a-5ab3-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('9291c63a-5ab3-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('9291c63c-5ab3-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('9291c63c-5ab3-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('9291c63e-5ab3-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('9291c63e-5ab3-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('9291c640-5ab3-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('9291c640-5ab3-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('963b6b0a-04a8-11e3-94de-005056be3574', '288427e0-9732-11db-bbb4-0017315894a1', 1065),
('963b6b0a-04a8-11e3-94de-005056be3574', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1007.95),
('992163db-a731-11de-90d4-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 989),
('992163db-a731-11de-90d4-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 939.55),
('992163dd-a731-11de-90d4-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1849),
('992163dd-a731-11de-90d4-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1756.55),
('993a4aa8-6b1e-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 2189),
('993a4aa8-6b1e-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2082.4),
('993a4aaa-6b1e-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1456),
('993a4aaa-6b1e-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1383.2),
('993a4aac-6b1e-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 795),
('993a4aac-6b1e-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 755.25),
('993a4aae-6b1e-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1974),
('993a4aae-6b1e-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1875.52),
('a0f3c4de-cf2d-11e1-92a4-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 3529),
('a0f3c4de-cf2d-11e1-92a4-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 3353.38),
('a1a9b4a6-f787-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('a1a9b4a6-f787-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('a48048ba-ec8c-11e3-9eab-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 108),
('a48048ba-ec8c-11e3-9eab-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 102.6),
('a663cb7c-fadf-11e3-b5e8-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 955),
('a663cb7c-fadf-11e3-b5e8-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 907.25),
('a6f80c96-516a-11dd-a89a-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 529),
('a6f80c96-516a-11dd-a89a-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 502.55),
('a6f80c98-516a-11dd-a89a-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 969),
('a6f80c98-516a-11dd-a89a-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 920.55),
('a6f80c9c-516a-11dd-a89a-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 299),
('a6f80c9c-516a-11dd-a89a-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 284.05),
('a6f80c9e-516a-11dd-a89a-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 559),
('a6f80c9e-516a-11dd-a89a-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 531.05),
('a6f80ca2-516a-11dd-a89a-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 539),
('a6f80ca2-516a-11dd-a89a-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 512.05),
('a6f80ca4-516a-11dd-a89a-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1049),
('a6f80ca4-516a-11dd-a89a-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 996.55),
('a6f80ca8-516a-11dd-a89a-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1119),
('a6f80ca8-516a-11dd-a89a-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1063.05),
('a6f80cac-516a-11dd-a89a-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 559),
('a6f80cac-516a-11dd-a89a-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 531.05),
('a6f80cae-516a-11dd-a89a-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1079),
('a6f80cae-516a-11dd-a89a-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1025.05),
('a6fd4151-ec8b-11e3-9eab-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 832),
('a6fd4151-ec8b-11e3-9eab-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 790.4),
('a7555009-7f46-11e3-af7c-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 1235),
('a7555009-7f46-11e3-af7c-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1173.25),
('ab383e71-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('ab383e71-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('ad93144b-f787-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('ad93144b-f787-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('b08b1d7e-ec8c-11e3-9eab-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 48),
('b08b1d7e-ec8c-11e3-9eab-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 45.6),
('b182dc4f-f994-11e2-98ef-005056be3574', '288427e0-9732-11db-bbb4-0017315894a1', 539),
('b182dc4f-f994-11e2-98ef-005056be3574', '86157e22-e56b-11dc-8b6b-000e0c431b58', 512.05),
('b182dc51-f994-11e2-98ef-005056be3574', '288427e0-9732-11db-bbb4-0017315894a1', 539),
('b182dc51-f994-11e2-98ef-005056be3574', '86157e22-e56b-11dc-8b6b-000e0c431b58', 512.05),
('b1a9595a-7f46-11e3-af7c-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2369),
('b1a9595a-7f46-11e3-af7c-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2250.55),
('b3740593-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('b3740593-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('b54ba125-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('b54ba125-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('b5957aa3-f787-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('b5957aa3-f787-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('b7e28649-21de-11df-860d-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 855),
('b7e28649-21de-11df-860d-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 812.25),
('b7e2864b-21de-11df-860d-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1659),
('b7e2864b-21de-11df-860d-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1576.05),
('b8d52c0e-7f46-11e3-af7c-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 3952),
('b8d52c0e-7f46-11e3-af7c-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 3754.4),
('ba1232df-ec8c-11e3-9eab-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 71),
('ba1232df-ec8c-11e3-9eab-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 67.45),
('bb036923-a661-11e2-9827-005056be3574', '288427e0-9732-11db-bbb4-0017315894a1', 143),
('bb036923-a661-11e2-9827-005056be3574', '86157e22-e56b-11dc-8b6b-000e0c431b58', 135.85),
('bc816f7f-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('bc816f7f-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('beb861cb-f787-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('beb861cb-f787-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('bef8d7ea-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('bef8d7ea-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('bf4804e2-fc0e-11dd-bd91-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 685),
('bf4804e2-fc0e-11dd-bd91-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 650.75),
('bf4804e4-fc0e-11dd-bd91-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 604),
('bf4804e4-fc0e-11dd-bd91-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 573.8),
('c017590e-fbe7-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 215),
('c017590e-fbe7-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 202.35),
('c0175910-fbe7-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 379),
('c0175910-fbe7-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 362),
('c0175912-fbe7-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 255),
('c0175912-fbe7-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 240.35),
('c0175914-fbe7-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 955),
('c0175914-fbe7-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 907.25),
('c0175916-fbe7-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 495),
('c0175916-fbe7-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 466.45),
('c0175918-fbe7-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 995),
('c0175918-fbe7-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 941.45),
('c017591a-fbe7-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 279),
('c017591a-fbe7-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 264.1),
('c017591c-fbe7-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 565),
('c017591c-fbe7-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 535.8),
('c017591e-fbe7-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 1219),
('c017591e-fbe7-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1158.1),
('c2d90e40-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('c2d90e40-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('c4df9e0d-00c0-11e2-a554-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 539),
('c4df9e0d-00c0-11e2-a554-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 512.05),
('c4df9e0f-00c0-11e2-a554-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 539),
('c4df9e0f-00c0-11e2-a554-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 512.05),
('c4df9e11-00c0-11e2-a554-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 539),
('c4df9e11-00c0-11e2-a554-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 512.05),
('c4df9e13-00c0-11e2-a554-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 539),
('c4df9e13-00c0-11e2-a554-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 512.05),
('c6d784e3-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('c6d784e3-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('c9d25e2b-f787-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('c9d25e2b-f787-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('ca79b0fb-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('ca79b0fb-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('cb22e29d-68ed-11dd-b117-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 579),
('cb22e29d-68ed-11dd-b117-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 550.05),
('cb22e29f-68ed-11dd-b117-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 325),
('cb22e29f-68ed-11dd-b117-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 308.75),
('cce4b552-7f46-11e3-af7c-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 957),
('cce4b552-7f46-11e3-af7c-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 909.15),
('cce7530f-27b6-11dd-942f-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1489),
('cce7530f-27b6-11dd-942f-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1414.55),
('ce1ffcf9-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('ce1ffcf9-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('ce813bcf-2257-11e1-ae36-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 89),
('ce813bcf-2257-11e1-ae36-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 84.6),
('ce813bd1-2257-11e1-ae36-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 105),
('ce813bd1-2257-11e1-ae36-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 98.8),
('cf6aa526-48b8-11dd-9342-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 174),
('cf6aa526-48b8-11dd-9342-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 165.3),
('d0659fe4-f787-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('d0659fe4-f787-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('d1aa2ade-a3ef-11e1-ad4e-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 375),
('d1aa2ade-a3ef-11e1-ad4e-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 356.25),
('d1eaa4c2-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('d1eaa4c2-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('d5823752-947b-11e3-8d88-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 975),
('d5823752-947b-11e3-8d88-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 926.25),
('d63bb09c-055c-11dd-b9c0-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1931),
('d63bb09c-055c-11dd-b9c0-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1834.45),
('d72ce04c-7f46-11e3-af7c-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 1805),
('d72ce04c-7f46-11e3-af7c-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1714.75),
('d76b7387-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('d76b7387-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('d9eaaa65-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('d9eaaa65-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('da49edc1-58f9-11e0-894e-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 4560),
('da49edc1-58f9-11e0-894e-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 4332),
('da49edc3-58f9-11e0-894e-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 4560),
('da49edc3-58f9-11e0-894e-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 4332),
('da49edc5-58f9-11e0-894e-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 4560),
('da49edc5-58f9-11e0-894e-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 4332),
('da49edc7-58f9-11e0-894e-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 4560),
('da49edc7-58f9-11e0-894e-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 4332),
('da49edc9-58f9-11e0-894e-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 4560),
('da49edc9-58f9-11e0-894e-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 4332),
('da49edcb-58f9-11e0-894e-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 4560),
('da49edcb-58f9-11e0-894e-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 4332),
('ddd32665-666b-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 2337),
('ddd32665-666b-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2220.15),
('ddd3266a-666b-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 687),
('ddd3266a-666b-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 652.65),
('ddd3266c-666b-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1317),
('ddd3266c-666b-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1251.15),
('ddd32674-666b-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('ddd32674-666b-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('ddd32676-666b-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 1459),
('ddd32676-666b-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1386.05),
('de1409cf-f787-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('de1409cf-f787-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('de9b7b14-7f46-11e3-af7c-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 3151),
('de9b7b14-7f46-11e3-af7c-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2993.45),
('df210450-93af-11e3-82a4-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 369),
('df210450-93af-11e3-82a4-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 350.55),
('df2d81cd-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('df2d81cd-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('e017a0ce-f78d-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('e017a0ce-f78d-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('e12e57a9-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('e12e57a9-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('e213c98a-ccbb-11e4-a1f9-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 92),
('e213c98a-ccbb-11e4-a1f9-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 87.4),
('e242e97f-f29b-11dd-9439-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 3289),
('e242e97f-f29b-11dd-9439-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 3124.55),
('e2e51024-e980-11e4-ab92-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 1062),
('e2e51024-e980-11e4-ab92-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1008.9),
('e39c5eb8-24d0-11e2-8158-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 9290),
('e39c5eb8-24d0-11e2-8158-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 8825.5),
('e4020814-4598-11e1-8212-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 1449),
('e4020814-4598-11e1-8212-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1376.55),
('e545e44e-298d-11e2-8829-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 1359),
('e545e44e-298d-11e2-8829-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1291.05),
('e545e450-298d-11e2-8829-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 589),
('e545e450-298d-11e2-8829-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 559.55),
('e63d2bae-f78d-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('e63d2bae-f78d-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('e755f307-f787-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 114),
('e755f307-f787-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 108.3),
('e7f145bb-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('e7f145bb-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('e8976171-93af-11e3-82a4-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 929),
('e8976171-93af-11e3-82a4-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 882.55),
('e9f3fc4e-47c0-11dc-8bad-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 4576),
('e9f3fc4e-47c0-11dc-8bad-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 4347.2),
('ebcc7a29-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('ebcc7a29-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('ece048eb-fbaf-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 167),
('ece048eb-fbaf-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 139),
('ece048ee-fbaf-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 363),
('ece048ee-fbaf-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 344.85),
('ece048f0-fbaf-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 465),
('ece048f0-fbaf-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 442.7),
('ece048f2-fbaf-11e0-b702-001cc494be80', '288427e0-9732-11db-bbb4-0017315894a1', 955),
('ece048f2-fbaf-11e0-b702-001cc494be80', '86157e22-e56b-11dc-8b6b-000e0c431b58', 904.4),
('efa9ef8e-f78d-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('efa9ef8e-f78d-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('f0ad1dd1-1f91-11e4-9591-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 4560),
('f0ad1dd1-1f91-11e4-9591-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 4332),
('f1be6b3a-f081-11df-a0c5-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 184),
('f1be6b3a-f081-11df-a0c5-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 174.8),
('f1be6b3c-f081-11df-a0c5-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 329),
('f1be6b3c-f081-11df-a0c5-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 312.55),
('f31a0079-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('f31a0079-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('f33aec8f-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('f33aec8f-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('f5ec168e-f78d-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 237),
('f5ec168e-f78d-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 225.15),
('f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 979),
('f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 931),
('f63c664a-52ee-11dd-a89a-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 2129),
('f63c664a-52ee-11dd-a89a-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2022.55),
('fa74499c-7f46-11e3-af7c-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 1096),
('fa74499c-7f46-11e3-af7c-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 1041.2),
('fbb89466-93af-11e3-82a4-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 369),
('fbb89466-93af-11e3-82a4-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 350.55),
('fc75df8c-f786-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 117),
('fc75df8c-f786-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 111.15),
('fd393098-f78f-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 2257),
('fd393098-f78f-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2144.15),
('fded4984-d1c2-11e3-8b7a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 979),
('fded4984-d1c2-11e3-8b7a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 931),
('fdf8cbf6-f78e-11e3-8c8a-005056be1f7b', '288427e0-9732-11db-bbb4-0017315894a1', 738),
('fdf8cbf6-f78e-11e3-8c8a-005056be1f7b', '86157e22-e56b-11dc-8b6b-000e0c431b58', 701.1),
('fe1a18f9-c501-11e1-abc0-005056be3bd8', '288427e0-9732-11db-bbb4-0017315894a1', 2400),
('fe1a18f9-c501-11e1-abc0-005056be3bd8', '86157e22-e56b-11dc-8b6b-000e0c431b58', 2280),
('fea6c165-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c165-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c167-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c167-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c169-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c169-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c16b-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c16b-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c16d-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c16d-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c16f-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c16f-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c171-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c171-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c173-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c173-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c175-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c175-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c177-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c177-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c179-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c179-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c17b-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c17b-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c17d-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c17d-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c17f-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c17f-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c181-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c181-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c183-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c183-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c185-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c185-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c187-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 174),
('fea6c187-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 165.3),
('fea6c189-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 174),
('fea6c189-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 165.3),
('fea6c18b-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 174),
('fea6c18b-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 165.3),
('fea6c18d-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 174),
('fea6c18d-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 165.3),
('fea6c18f-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c18f-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35),
('fea6c191-5ab6-11dc-be42-000e0c431b58', '288427e0-9732-11db-bbb4-0017315894a1', 153),
('fea6c191-5ab6-11dc-be42-000e0c431b58', '86157e22-e56b-11dc-8b6b-000e0c431b58', 145.35);

-- --------------------------------------------------------

--
-- Структура таблицы `ShopItemsPropertiesMeasure`
--

CREATE TABLE IF NOT EXISTS `ShopItemsPropertiesMeasure` (
  `measureF` varchar(50) NOT NULL,
  `measureS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopItemsPropertiesMeasure`
--

INSERT INTO `ShopItemsPropertiesMeasure` (`measureF`, `measureS`) VALUES
('грамы', 'г'),
('литры', 'л'),
('метры', 'м');

-- --------------------------------------------------------

--
-- Структура таблицы `ShopItemsPropertiesMeasurePrefix`
--

CREATE TABLE IF NOT EXISTS `ShopItemsPropertiesMeasurePrefix` (
  `prefixF` varchar(50) NOT NULL,
  `prefixS` varchar(50) NOT NULL,
  `factor` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopItemsPropertiesMeasurePrefix`
--

INSERT INTO `ShopItemsPropertiesMeasurePrefix` (`prefixF`, `prefixS`, `factor`) VALUES
('гига', 'Г', 1000000000),
('кило', 'к', 1000),
('мега', 'М', 1000000),
('микро', 'мк', 0.000001),
('милли', 'м', 0.001),
('нано', 'н', 0.000000001),
('пико', 'п', 0.000000000001),
('тера', 'Т', 1000000000000);

-- --------------------------------------------------------

--
-- Структура таблицы `ShopItemsPropertiesMeasureScaling`
--

CREATE TABLE IF NOT EXISTS `ShopItemsPropertiesMeasureScaling` (
  `measure` varchar(50) NOT NULL,
  `prefix` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ShopItemsPropertiesValues`
--

CREATE TABLE IF NOT EXISTS `ShopItemsPropertiesValues` (
  `id` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `property` varchar(200) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  `measure` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopItemsPropertiesValues`
--

INSERT INTO `ShopItemsPropertiesValues` (`id`, `item`, `property`, `value`, `measure`) VALUES
('000b4673-f788-11e3-8c8a-005056be1f7b-BF2X-FXvq-AtVU-FBuN-CdjL-E745', '000b4673-f788-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('000b4673-f788-11e3-8c8a-005056be1f7b-Bgzg-Fluy-AIHd-FyXq-Cs5E-EXo0', '000b4673-f788-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'голубой', ''),
('000b4673-f788-11e3-8c8a-005056be1f7b-BK1h-Foo6-AUW1-FYue-CYe3-E9Ep', '000b4673-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('000b4673-f788-11e3-8c8a-005056be1f7b-BphD-Ff7x-AAUS-F4TW-CjoR-EZ3c', '000b4673-f788-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('000b4673-f788-11e3-8c8a-005056be1f7b-BU61-FOKZ-AFAe-FvXM-CMhC-EuMq', '000b4673-f788-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('000b4673-f788-11e3-8c8a-005056be1f7b-BuYk-FjwW-A2K4-FOj1-CzFq-EWra', '000b4673-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('000b4673-f788-11e3-8c8a-005056be1f7b-By8c-FTtz-Ag6X-Fipj-COVH-ES2D', '000b4673-f788-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('030b5cff-f78e-11e3-8c8a-005056be1f7b-B7z1-FAas-AJrV-FV1k-C2ia-EV40', '030b5cff-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бирюзовый', ''),
('030b5cff-f78e-11e3-8c8a-005056be1f7b-BDjc-FOz9-AT0a-FN04-Cirf-Elvd', '030b5cff-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('030b5cff-f78e-11e3-8c8a-005056be1f7b-BfaS-F8ed-ASi1-Fk6B-CF9l-EiMb', '030b5cff-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('030b5cff-f78e-11e3-8c8a-005056be1f7b-Bhfa-F9ta-A2SH-FX54-C2aT-EJXy', '030b5cff-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('030b5cff-f78e-11e3-8c8a-005056be1f7b-BM8S-FxMr-AZ8K-FPfF-CJc5-EAcV', '030b5cff-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('030b5cff-f78e-11e3-8c8a-005056be1f7b-BnqX-FeRS-AgWQ-FH6d-Cic0-E0bs', '030b5cff-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('030b5cff-f78e-11e3-8c8a-005056be1f7b-BsmD-FE84-Aozb-FEKV-CEXS-EWKe', '030b5cff-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('047805a5-fe8c-11e3-bbdb-005056be1f7b-BAuq-F1WF-AVCe-F2f4-C8du-Edfw', '047805a5-fe8c-11e3-bbdb-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('047805a5-fe8c-11e3-bbdb-005056be1f7b-Bcno-F6Fs-AIY6-FzXG-C3Fx-EgVa', '047805a5-fe8c-11e3-bbdb-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для потолков', ''),
('047805a5-fe8c-11e3-bbdb-005056be1f7b-Be37-FVwT-Avv5-FeAV-Cmd0-EQZF', '047805a5-fe8c-11e3-bbdb-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('047805a5-fe8c-11e3-bbdb-005056be1f7b-BIdp-F9Ws-Agmi-F6SQ-C35X-E1hF', '047805a5-fe8c-11e3-bbdb-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('047805a5-fe8c-11e3-bbdb-005056be1f7b-Bjt3-FDlY-A8i2-FrCW-Cexw-E4BZ', '047805a5-fe8c-11e3-bbdb-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('047805a5-fe8c-11e3-bbdb-005056be1f7b-BmG9-FnsY-AwJj-FD9Y-CIPO-Eht2', '047805a5-fe8c-11e3-bbdb-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('047805a5-fe8c-11e3-bbdb-005056be1f7b-BQzY-Femk-Auy1-F3Ch-CQzZ-Eqs7', '047805a5-fe8c-11e3-bbdb-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('047805a5-fe8c-11e3-bbdb-005056be1f7b-Brro-FPn8-Agf2-F5WZ-C0lt-EOaH', '047805a5-fe8c-11e3-bbdb-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для стен', ''),
('047805a5-fe8c-11e3-bbdb-005056be1f7b-BuZY-FOmJ-A2mZ-FWhs-Cxhd-EdY1', '047805a5-fe8c-11e3-bbdb-005056be1f7b', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('047805a5-fe8c-11e3-bbdb-005056be1f7b-BvGY-Fnya-AATO-FxMP-CMPI-ENrX', '047805a5-fe8c-11e3-bbdb-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('047805a5-fe8c-11e3-bbdb-005056be1f7b-Bw3a-F4g6-AXBA-FlZJ-CbLQ-EzzF', '047805a5-fe8c-11e3-bbdb-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('04834f06-93b0-11e3-82a4-005056be1f7b-B3ij-FBs4-AMZa-FJfh-CpEd-EFRV', '04834f06-93b0-11e3-82a4-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('04834f06-93b0-11e3-82a4-005056be1f7b-B8GT-FXS0-AWbv-Fcsn-C0lM-Ejm5', '04834f06-93b0-11e3-82a4-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('04834f06-93b0-11e3-82a4-005056be1f7b-BczU-F49z-Aao5-F5uM-CPrS-EjFl', '04834f06-93b0-11e3-82a4-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('04834f06-93b0-11e3-82a4-005056be1f7b-BD3R-FaCv-AZIt-FNik-CAy2-Ec9D', '04834f06-93b0-11e3-82a4-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('04834f06-93b0-11e3-82a4-005056be1f7b-BFHI-FHal-AqCI-FJTL-Crh7-EFGg', '04834f06-93b0-11e3-82a4-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красный', ''),
('04834f06-93b0-11e3-82a4-005056be1f7b-BjcC-FU5v-A95W-FKe0-CF8y-Ea1x', '04834f06-93b0-11e3-82a4-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('04834f06-93b0-11e3-82a4-005056be1f7b-BoVe-FiAe-AiPE-FAi9-CWm1-EnC4', '04834f06-93b0-11e3-82a4-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('04834f06-93b0-11e3-82a4-005056be1f7b-BPRb-FKLM-AWb5-FoA0-CPjb-ES5W', '04834f06-93b0-11e3-82a4-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2', 'л'),
('05caaed0-f790-11e3-8c8a-005056be1f7b-BBDw-FdVn-ADlG-FaUM-Ck4U-Ea6P', '05caaed0-f790-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('05caaed0-f790-11e3-8c8a-005056be1f7b-BiHz-FC6S-A4Gd-F77H-CZHD-EZx1', '05caaed0-f790-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('05caaed0-f790-11e3-8c8a-005056be1f7b-BL70-Fqxm-AQ6c-FR1j-CQdW-EsFK', '05caaed0-f790-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('05caaed0-f790-11e3-8c8a-005056be1f7b-BLxK-FkKu-AyYW-FFZc-CsDl-E7xL', '05caaed0-f790-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('05caaed0-f790-11e3-8c8a-005056be1f7b-BnJO-Fuji-A7Jb-FQkX-CgSN-E3e9', '05caaed0-f790-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('05caaed0-f790-11e3-8c8a-005056be1f7b-Bnwc-Fmxz-ACpe-Fxc1-CLKD-Ezoc', '05caaed0-f790-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'охра', ''),
('05caaed0-f790-11e3-8c8a-005056be1f7b-BszW-FLvS-ATLZ-FXkN-CNlR-EAFm', '05caaed0-f790-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('05caaed2-f790-11e3-8c8a-005056be1f7b-B6IR-FLtT-A799-FjZS-CRKC-Eo8h', '05caaed2-f790-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('05caaed2-f790-11e3-8c8a-005056be1f7b-BDF7-FVXM-ACCP-FkCu-CPon-EaUr', '05caaed2-f790-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('05caaed2-f790-11e3-8c8a-005056be1f7b-Bgjs-FeiV-AdFX-FeeU-Czz5-ETYW', '05caaed2-f790-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серый', ''),
('05caaed2-f790-11e3-8c8a-005056be1f7b-Bm3K-FpDV-AapB-Fu0M-Cmpz-Eks9', '05caaed2-f790-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('05caaed2-f790-11e3-8c8a-005056be1f7b-Bpn8-FCIc-AX8S-FRQq-CoCi-E0fo', '05caaed2-f790-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('05caaed2-f790-11e3-8c8a-005056be1f7b-Bv2V-FcGm-AXgD-FLKu-ClqT-EUK3', '05caaed2-f790-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('05caaed2-f790-11e3-8c8a-005056be1f7b-BvuW-FweW-A9HC-Fyrv-Cwu2-EsGO', '05caaed2-f790-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('06e98e75-f78f-11e3-8c8a-005056be1f7b-BACu-FVws-A9ST-Fav6-ChiA-ErfC', '06e98e75-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('06e98e75-f78f-11e3-8c8a-005056be1f7b-BAhp-FLmK-A0lK-FYyA-Cy0l-Eyr8', '06e98e75-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('06e98e75-f78f-11e3-8c8a-005056be1f7b-BflN-FzB9-Avjg-FvQC-Cx1m-E5wG', '06e98e75-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('06e98e75-f78f-11e3-8c8a-005056be1f7b-BkkG-F6dv-AmhK-FQQF-CCRI-Ewm6', '06e98e75-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('06e98e75-f78f-11e3-8c8a-005056be1f7b-BLl0-FsWQ-AuKH-FXE4-CduS-EGl8', '06e98e75-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('06e98e75-f78f-11e3-8c8a-005056be1f7b-BqYn-F1p4-A7rK-FEex-C0AY-EMza', '06e98e75-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('06e98e75-f78f-11e3-8c8a-005056be1f7b-BxEJ-F7C3-AEDV-F4pq-CDYo-Et6v', '06e98e75-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'шоколадный', ''),
('07027c6c-7f47-11e3-af7c-005056be1f7b-B5Ho-FNWH-AsSV-Fygj-CmPr-Ec7q', '07027c6c-7f47-11e3-af7c-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'шелковый матовый', ''),
('07027c6c-7f47-11e3-af7c-005056be1f7b-BceB-FWjH-Abld-Fc5c-CLAl-EQIp', '07027c6c-7f47-11e3-af7c-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('07027c6c-7f47-11e3-af7c-005056be1f7b-BFJF-FID4-AGnP-FmyA-CqBm-EhBE', '07027c6c-7f47-11e3-af7c-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('07027c6c-7f47-11e3-af7c-005056be1f7b-Bihk-FXiB-A2wx-F1Ed-Ce9l-EJM8', '07027c6c-7f47-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('07027c6c-7f47-11e3-af7c-005056be1f7b-BJPS-FZ3G-AZiI-FBGJ-CGio-EI5O', '07027c6c-7f47-11e3-af7c-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('07027c6c-7f47-11e3-af7c-005056be1f7b-BMm1-F0c6-Ad74-FEFF-CCWA-ES9t', '07027c6c-7f47-11e3-af7c-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('07027c6c-7f47-11e3-af7c-005056be1f7b-BQ5Q-Flsx-ALVC-F4x9-CkWf-EKuE', '07027c6c-7f47-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('07027c6c-7f47-11e3-af7c-005056be1f7b-BsIz-Fq9G-Al4y-FBbd-COv9-ESqo', '07027c6c-7f47-11e3-af7c-005056be1f7b', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('07027c6c-7f47-11e3-af7c-005056be1f7b-BTeE-F6pl-AaAT-FPce-C7NG-EOOy', '07027c6c-7f47-11e3-af7c-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('076d2137-4380-11de-8f53-000e0c431b58-B43e-FQ3f-A5tr-F0eD-CEGn-Ezx6', '076d2137-4380-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('076d2137-4380-11de-8f53-000e0c431b58-B5Bn-FSOd-AtCC-Ff6e-CzQ7-EOR2', '076d2137-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('076d2137-4380-11de-8f53-000e0c431b58-BDXl-Fq2U-AAdj-FvQY-CdKQ-E9aI', '076d2137-4380-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('076d2137-4380-11de-8f53-000e0c431b58-BgbK-Fj7G-ADwW-F0Bo-C2ME-EvWE', '076d2137-4380-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('076d2137-4380-11de-8f53-000e0c431b58-BKa5-FKA1-AOqF-Fqd3-CZY4-ECrI', '076d2137-4380-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('076d2137-4380-11de-8f53-000e0c431b58-Blkv-FrRO-Ajqm-FdsU-CmPv-Exys', '076d2137-4380-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('076d2137-4380-11de-8f53-000e0c431b58-BsUF-F3hc-ABFp-FcgH-CIDb-E4EG', '076d2137-4380-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный', ''),
('076d2137-4380-11de-8f53-000e0c431b58-BVcZ-FA57-AIC0-Fj7E-CqPc-Ewws', '076d2137-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('076d2139-4380-11de-8f53-000e0c431b58-B26B-FWZi-AxnQ-FDpG-CUtP-Eydy', '076d2139-4380-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный', ''),
('076d2139-4380-11de-8f53-000e0c431b58-B5dO-FegB-ATMr-FD5s-CNLi-EAsb', '076d2139-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('076d2139-4380-11de-8f53-000e0c431b58-BdVo-FpNr-AV4u-FTar-CgUK-Evzr', '076d2139-4380-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('076d2139-4380-11de-8f53-000e0c431b58-Bi6K-FTPk-AAv6-FLgv-C3T5-EwxH', '076d2139-4380-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2', 'л'),
('076d2139-4380-11de-8f53-000e0c431b58-Bl0i-FluA-AT77-FWyg-CnWb-Eypq', '076d2139-4380-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('076d2139-4380-11de-8f53-000e0c431b58-BQzx-Fg4c-AnNL-F3Cp-CqD9-Eg7M', '076d2139-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('076d2139-4380-11de-8f53-000e0c431b58-BwJ5-FdNy-AMb0-Fubr-CM6D-E2kQ', '076d2139-4380-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('076d2139-4380-11de-8f53-000e0c431b58-BZqc-FV29-AGuR-FBgE-CJIE-Ertz', '076d2139-4380-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('076d213b-4380-11de-8f53-000e0c431b58-Bcib-Fh8h-AyLM-FTyk-C4Ra-EXfg', '076d213b-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('076d213b-4380-11de-8f53-000e0c431b58-BdhP-FkJC-APAS-FbSF-CmIr-E9Km', '076d213b-4380-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('076d213b-4380-11de-8f53-000e0c431b58-BIwb-Fjyo-AfXd-FuSF-Cdvn-EsWw', '076d213b-4380-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('076d213b-4380-11de-8f53-000e0c431b58-Bj1W-FClp-AIEb-Fvwx-CiiZ-EVlc', '076d213b-4380-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('076d213b-4380-11de-8f53-000e0c431b58-BlSW-Fydi-A5gH-Flxo-C1PM-ESxK', '076d213b-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('076d213b-4380-11de-8f53-000e0c431b58-Bvlw-FDDF-AIpN-F1nX-CdwJ-E5V9', '076d213b-4380-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('076d213b-4380-11de-8f53-000e0c431b58-BXkM-F9hL-AANF-FZFR-COpe-EmYk', '076d213b-4380-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('076d213b-4380-11de-8f53-000e0c431b58-BzlV-FB6J-Amza-FCM7-CiyP-E6ms', '076d213b-4380-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('076d213d-4380-11de-8f53-000e0c431b58-B9bD-Fzkb-AqOr-FgoI-CDSI-Ev4p', '076d213d-4380-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('076d213d-4380-11de-8f53-000e0c431b58-BMPn-FK8v-ACUP-FMF7-Cyzg-EVji', '076d213d-4380-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('076d213d-4380-11de-8f53-000e0c431b58-BoAr-Flgk-AXr3-FLmp-Cc0i-EWvw', '076d213d-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('076d213d-4380-11de-8f53-000e0c431b58-BswB-FaTp-AjW9-FrH3-CXdJ-Eurm', '076d213d-4380-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2', 'л'),
('076d213d-4380-11de-8f53-000e0c431b58-Bukh-FtBy-AfPF-FrgK-CfP8-EgqQ', '076d213d-4380-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('076d213d-4380-11de-8f53-000e0c431b58-BVRX-FNc0-A460-FbRv-CNQM-ERFx', '076d213d-4380-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('076d213d-4380-11de-8f53-000e0c431b58-BW34-FwOm-ApQ2-FJY2-CnP1-Eabg', '076d213d-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('076d213d-4380-11de-8f53-000e0c431b58-BZCu-Fedb-AFmZ-FVs4-CCOd-EH0d', '076d213d-4380-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('076d213f-4380-11de-8f53-000e0c431b58-B30s-FtTM-AVD6-Fugc-CaTp-E8A0', '076d213f-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('076d213f-4380-11de-8f53-000e0c431b58-B3Qp-Fi58-AxlK-F9YM-Cyxg-EtIx', '076d213f-4380-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('076d213f-4380-11de-8f53-000e0c431b58-B56F-Fzpm-ARF6-F8C7-C7LR-EQ2k', '076d213f-4380-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('076d213f-4380-11de-8f53-000e0c431b58-BBhr-FFaL-Axy2-FTel-CusY-Edgp', '076d213f-4380-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'коричневый', ''),
('076d213f-4380-11de-8f53-000e0c431b58-BIVT-FqSY-AmRg-FF8t-C0zt-ErjC', '076d213f-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('076d213f-4380-11de-8f53-000e0c431b58-Bpe3-FLk1-A6jp-FoRP-CqMK-EwCz', '076d213f-4380-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('076d213f-4380-11de-8f53-000e0c431b58-BraC-F2Ag-A3Lq-FYNC-CeGT-EKpO', '076d213f-4380-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('076d213f-4380-11de-8f53-000e0c431b58-BZT6-FVR9-AROJ-FjeB-CKJf-ECVF', '076d213f-4380-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('076d2141-4380-11de-8f53-000e0c431b58-B7lu-FiIE-AK4n-FUha-CcmC-EvKi', '076d2141-4380-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('076d2141-4380-11de-8f53-000e0c431b58-B8Y0-FKZd-AYTm-FgTl-CvjK-EnxH', '076d2141-4380-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2', 'л'),
('076d2141-4380-11de-8f53-000e0c431b58-BexD-FFgn-AEEM-FAdO-C4JH-EA9P', '076d2141-4380-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('076d2141-4380-11de-8f53-000e0c431b58-BFlT-FhgE-AIwT-FhFn-CdDC-EcNb', '076d2141-4380-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('076d2141-4380-11de-8f53-000e0c431b58-BlFc-F4Aa-A2cv-Fwnd-CanF-E4Zy', '076d2141-4380-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'коричневый', ''),
('076d2141-4380-11de-8f53-000e0c431b58-Bp4G-FzHO-Ajm9-FYkk-CO0F-EhJW', '076d2141-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('076d2141-4380-11de-8f53-000e0c431b58-BPi2-FN8c-AyMb-F5ul-CQPY-ETU6', '076d2141-4380-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('076d2141-4380-11de-8f53-000e0c431b58-BYeS-FKQ7-Anqk-Ftk0-Chi6-EZB4', '076d2141-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('076d2143-4380-11de-8f53-000e0c431b58-B1Ar-FhAk-Agch-F9PN-CN6A-ErG0', '076d2143-4380-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('076d2143-4380-11de-8f53-000e0c431b58-B1TV-FJ2a-AwUd-Fywr-CQtT-EASb', '076d2143-4380-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красно-коричневый', ''),
('076d2143-4380-11de-8f53-000e0c431b58-BfxK-F0m8-Ar3q-FA39-Cb8b-ExpO', '076d2143-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('076d2143-4380-11de-8f53-000e0c431b58-BLPF-F0UV-A5Zy-FyN3-Cih8-E1sN', '076d2143-4380-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('076d2143-4380-11de-8f53-000e0c431b58-BN9s-Fl1g-A0i1-FMbJ-CBSK-EszK', '076d2143-4380-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('076d2143-4380-11de-8f53-000e0c431b58-Bpxe-FL9f-A2sX-F2xY-CsTM-E3Ty', '076d2143-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('076d2143-4380-11de-8f53-000e0c431b58-BTWn-F2U3-AEhy-FFP5-CFd4-ExEt', '076d2143-4380-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('076d2143-4380-11de-8f53-000e0c431b58-BUES-FKQt-AURB-FeA2-CpTN-ESKh', '076d2143-4380-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('076d2145-4380-11de-8f53-000e0c431b58-B3Uf-FO7d-AdJG-FVSV-CKxB-EL5A', '076d2145-4380-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('076d2145-4380-11de-8f53-000e0c431b58-BaSt-FRGV-Aaft-FZhL-CeZg-EAod', '076d2145-4380-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2', 'л'),
('076d2145-4380-11de-8f53-000e0c431b58-BD8i-FwWG-A92f-Fe3K-C9WS-Ek7v', '076d2145-4380-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('076d2145-4380-11de-8f53-000e0c431b58-BdHm-Fkd6-A7os-F8zn-C9P7-ErhC', '076d2145-4380-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('076d2145-4380-11de-8f53-000e0c431b58-BepA-FH0O-AXs2-FymI-CZX0-ECbF', '076d2145-4380-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('076d2145-4380-11de-8f53-000e0c431b58-Bqo7-Fm7V-AaKn-FTOQ-Ctma-E4Qk', '076d2145-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('076d2145-4380-11de-8f53-000e0c431b58-BT4L-FV3J-AwV6-FSYy-COR3-EEna', '076d2145-4380-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красно-коричневый', ''),
('076d2145-4380-11de-8f53-000e0c431b58-Bv2m-FEF1-A3aW-Fl8O-CMn3-EJPz', '076d2145-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('076d2147-4380-11de-8f53-000e0c431b58-B9ZO-FuMw-AfKI-F8ka-CoY1-EB8D', '076d2147-4380-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('076d2147-4380-11de-8f53-000e0c431b58-BDPA-Fb1J-Azf8-FhnU-CQRP-EP0K', '076d2147-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('076d2147-4380-11de-8f53-000e0c431b58-BfbD-FoYo-AEDD-F6EB-C0mw-EV52', '076d2147-4380-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('076d2147-4380-11de-8f53-000e0c431b58-BivW-FREu-AqsZ-FjNR-CeLr-Es64', '076d2147-4380-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('076d2147-4380-11de-8f53-000e0c431b58-BPe1-FNCe-AhTv-Fxiv-C8Vc-EaSq', '076d2147-4380-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('076d2147-4380-11de-8f53-000e0c431b58-Bwqc-F7OY-AIqu-FwJP-CFNe-EGpV', '076d2147-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('076d2147-4380-11de-8f53-000e0c431b58-ByaX-FiMg-AySt-FSYY-Coo3-Ee26', '076d2147-4380-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('076d2147-4380-11de-8f53-000e0c431b58-BZcB-FJpk-AtqY-FlJX-Coxs-EIWs', '076d2147-4380-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серый', ''),
('076d2149-4380-11de-8f53-000e0c431b58-BHIA-F46R-AkmP-FZtL-CK02-E1M0', '076d2149-4380-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('076d2149-4380-11de-8f53-000e0c431b58-BIh1-FUwq-AcUw-FxRq-Cq8z-EH7v', '076d2149-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('076d2149-4380-11de-8f53-000e0c431b58-BPLX-Fxjt-APgT-Fwrv-C9zq-ERku', '076d2149-4380-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серый', ''),
('076d2149-4380-11de-8f53-000e0c431b58-BPqp-FNH1-AvSv-FaNW-CkV4-Eapp', '076d2149-4380-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('076d2149-4380-11de-8f53-000e0c431b58-BqJa-F06I-Au48-FaLh-CL5p-E5kJ', '076d2149-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('076d2149-4380-11de-8f53-000e0c431b58-Br0K-F7Z4-AIk4-FAaF-C0HC-ERka', '076d2149-4380-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('076d2149-4380-11de-8f53-000e0c431b58-Br8R-FcXe-Az81-FtYf-CZfn-EZZi', '076d2149-4380-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2', 'л'),
('076d2149-4380-11de-8f53-000e0c431b58-BwZY-FmIw-AHiS-Fu9s-CTps-EdmH', '076d2149-4380-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('076d214b-4380-11de-8f53-000e0c431b58-Bgwr-F9rn-AHvJ-FvTU-C62p-EEoZ', '076d214b-4380-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('076d214b-4380-11de-8f53-000e0c431b58-BI7s-FNrE-A5Lq-FEsW-Cc8O-EAqI', '076d214b-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('076d214b-4380-11de-8f53-000e0c431b58-BiUI-FwuP-Atje-FnI8-COvU-EBFx', '076d214b-4380-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('076d214b-4380-11de-8f53-000e0c431b58-Blee-FogA-AK9O-FZG7-CzP4-Eick', '076d214b-4380-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('076d214b-4380-11de-8f53-000e0c431b58-BnXw-FUce-Aq5c-F66I-CEgn-EiKK', '076d214b-4380-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('076d214b-4380-11de-8f53-000e0c431b58-BP3h-Fs4l-AyVC-FBfg-CbOP-EIsa', '076d214b-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('076d214b-4380-11de-8f53-000e0c431b58-BPcB-FDPt-ANJc-FBDF-CbbN-EKdZ', '076d214b-4380-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'зеленый', ''),
('076d214b-4380-11de-8f53-000e0c431b58-BTY0-FxCH-AuQ4-FFS0-C3yv-Ekxc', '076d214b-4380-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('076d214d-4380-11de-8f53-000e0c431b58-BBfL-FEh8-AUyS-FWgH-CSwu-Eyof', '076d214d-4380-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('076d214d-4380-11de-8f53-000e0c431b58-Bi9P-F5Y3-AgL5-FKIV-CnCT-ESp3', '076d214d-4380-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'зеленый', ''),
('076d214d-4380-11de-8f53-000e0c431b58-Bjua-Fd6i-Ayil-FI2R-CAg8-EgEO', '076d214d-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('076d214d-4380-11de-8f53-000e0c431b58-BLyR-FE6j-ACRj-Fek3-CkmY-Evq6', '076d214d-4380-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2', 'л'),
('076d214d-4380-11de-8f53-000e0c431b58-BOws-FyRT-Aq26-FFnm-CBWn-EvYB', '076d214d-4380-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('076d214d-4380-11de-8f53-000e0c431b58-BQnf-F3vW-AJv4-FHR8-CVAc-ETTG', '076d214d-4380-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('076d214d-4380-11de-8f53-000e0c431b58-Bse8-FTns-ALFC-FCvQ-CRVB-Ery7', '076d214d-4380-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('076d214d-4380-11de-8f53-000e0c431b58-BtBu-FBXQ-AIqD-F3er-CYpg-Epub', '076d214d-4380-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('079b44f8-f788-11e3-8c8a-005056be1f7b-B2Le-FH8J-Axnh-FzB2-Ce9k-E4pb', '079b44f8-f788-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('079b44f8-f788-11e3-8c8a-005056be1f7b-B7sY-Fq1f-AXVo-FwR6-Cm1Q-EDeH', '079b44f8-f788-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('079b44f8-f788-11e3-8c8a-005056be1f7b-BBqc-FIcl-AEkF-FfWD-CfbE-ETb6', '079b44f8-f788-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'шоколадный', ''),
('079b44f8-f788-11e3-8c8a-005056be1f7b-BBSL-FiIN-AanL-FBh1-Cc74-EPAs', '079b44f8-f788-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('079b44f8-f788-11e3-8c8a-005056be1f7b-BiVb-Fo2x-ArWP-Fvpq-CqYC-EYTo', '079b44f8-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('079b44f8-f788-11e3-8c8a-005056be1f7b-BsVr-F6mi-AYut-FIHr-CeIY-E7R1', '079b44f8-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('079b44f8-f788-11e3-8c8a-005056be1f7b-BZCw-FDzE-A0b5-FPfY-CXXk-E2eh', '079b44f8-f788-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('0916172c-947c-11e3-8d88-005056be1f7b-B2kQ-FJ4q-A3zp-F1aW-CqnX-ErpT', '0916172c-947c-11e3-8d88-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('0916172c-947c-11e3-8d88-005056be1f7b-BiOp-Fr2k-ATLz-F52b-CgtW-EODU', '0916172c-947c-11e3-8d88-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('0916172c-947c-11e3-8d88-005056be1f7b-BKIN-FTK3-AIgI-FFnl-CCO9-EIY6', '0916172c-947c-11e3-8d88-005056be1f7b', '1ea6fcc4-d206-11e4-9be0-005056be1f7c', '0,002', 'мм'),
('0916172c-947c-11e3-8d88-005056be1f7b-BkJv-FN9d-A4Jk-Flgv-CpYW-E6hQ', '0916172c-947c-11e3-8d88-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0916172c-947c-11e3-8d88-005056be1f7b-BkWG-FK8m-A7nB-FTij-CjL0-EodQ', '0916172c-947c-11e3-8d88-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '15000', 'г'),
('0916172c-947c-11e3-8d88-005056be1f7b-BMAB-FC63-Adcm-Fzrq-CKHr-EXLE', '0916172c-947c-11e3-8d88-005056be1f7b', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'декоративная с эффектом "зернистости"', ''),
('0916172c-947c-11e3-8d88-005056be1f7b-BmaF-FSQf-Ao8J-FCpy-CVP8-EHc7', '0916172c-947c-11e3-8d88-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'штукатурка структурная', ''),
('0916172c-947c-11e3-8d88-005056be1f7b-BZBM-FEWe-AYMR-FSat-C609-Elrz', '0916172c-947c-11e3-8d88-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('09f4768d-f78e-11e3-8c8a-005056be1f7b-B0Tk-Fvl6-AVsz-FmDy-CPVE-ElVe', '09f4768d-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('09f4768d-f78e-11e3-8c8a-005056be1f7b-BDTm-F37q-ArMB-FwxX-CQKj-EE2Y', '09f4768d-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('09f4768d-f78e-11e3-8c8a-005056be1f7b-BdzD-FRFQ-ARmd-Fkub-Ceyv-EHrs', '09f4768d-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('09f4768d-f78e-11e3-8c8a-005056be1f7b-BhrM-FFV7-ARtt-FJYz-C4jw-ER7N', '09f4768d-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'зеленый', ''),
('09f4768d-f78e-11e3-8c8a-005056be1f7b-BRQW-FAZu-A1TU-FmkR-CzYR-EiMR', '09f4768d-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('09f4768d-f78e-11e3-8c8a-005056be1f7b-BWMy-FqyY-A9ox-FQN0-ChMT-EH95', '09f4768d-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('09f4768d-f78e-11e3-8c8a-005056be1f7b-ByAt-Fx0a-AHTw-FRVj-CH4R-EU0m', '09f4768d-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcbcd-99a8-11db-937f-000e0c431b59-B8ef-FxPR-ANgv-FARn-CYay-E36s', '0d8fcbcd-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт', ''),
('0d8fcbcd-99a8-11db-937f-000e0c431b59-BCgm-F8Fm-AU0e-FcSq-CbcV-EsRX', '0d8fcbcd-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('0d8fcbcd-99a8-11db-937f-000e0c431b59-BgIU-FwZL-ATD1-Fuva-CRex-Eu3X', '0d8fcbcd-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0d8fcbcd-99a8-11db-937f-000e0c431b59-BJLd-Fe5s-AuIq-FP34-CbYC-EvLb', '0d8fcbcd-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '4', 'л'),
('0d8fcbcd-99a8-11db-937f-000e0c431b59-BKoR-FzCF-AlpH-FM82-C2pa-E9OR', '0d8fcbcd-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('0d8fcbcd-99a8-11db-937f-000e0c431b59-BsWd-FYkY-ASGV-FtOQ-CO9e-EtNL', '0d8fcbcd-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('0d8fcbcd-99a8-11db-937f-000e0c431b59-BtOe-FOrx-A6IP-FQ2h-Cooa-Erkg', '0d8fcbcd-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0d8fcbcd-99a8-11db-937f-000e0c431b59-Bx4D-F6FA-Aw7p-FN65-Cf8a-EH5f', '0d8fcbcd-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcbcf-99a8-11db-937f-000e0c431b59-B9xL-Fzlp-A7M7-Ft1e-Cd7p-EgU9', '0d8fcbcf-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт', ''),
('0d8fcbcf-99a8-11db-937f-000e0c431b59-B9ZO-FHmX-AbPd-FQZX-CV1e-E7Cl', '0d8fcbcf-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcbcf-99a8-11db-937f-000e0c431b59-BaGl-FLH3-AzgT-FoYO-CX96-EOP2', '0d8fcbcf-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('0d8fcbcf-99a8-11db-937f-000e0c431b59-BFLD-FYTS-AtCW-F64k-CnRL-EPJG', '0d8fcbcf-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('0d8fcbcf-99a8-11db-937f-000e0c431b59-Bkq2-FQ6t-AKXI-FMJT-CnGy-EJ4E', '0d8fcbcf-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('0d8fcbcf-99a8-11db-937f-000e0c431b59-BwqC-FQ8c-AnSS-FHPU-CtEM-E2Ns', '0d8fcbcf-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('0d8fcbcf-99a8-11db-937f-000e0c431b59-BXll-F35t-AnF2-FyeG-CkRw-Enhu', '0d8fcbcf-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0d8fcbcf-99a8-11db-937f-000e0c431b59-Bz2H-FIgg-AX4f-FTIu-CKHK-EZPw', '0d8fcbcf-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0d8fcbd1-99a8-11db-937f-000e0c431b59-B5m8-F1Vx-AVyt-FBVD-CAJH-EBVG', '0d8fcbd1-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcbd1-99a8-11db-937f-000e0c431b59-B5WM-FSZr-ABjJ-F3ct-Cx5x-E1xf', '0d8fcbd1-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('0d8fcbd1-99a8-11db-937f-000e0c431b59-B7Hs-FIEk-AeHa-FnWG-CYQs-EVHE', '0d8fcbd1-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0d8fcbd1-99a8-11db-937f-000e0c431b59-BcEC-F4rY-A0Fp-Fsaw-CwjP-Epas', '0d8fcbd1-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0d8fcbd1-99a8-11db-937f-000e0c431b59-BIc3-F2dO-A6dY-FDft-CJb1-E3j6', '0d8fcbd1-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('0d8fcbd1-99a8-11db-937f-000e0c431b59-BjNY-FsF1-Ac4v-FPtj-Cu9W-EV44', '0d8fcbd1-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт', ''),
('0d8fcbd1-99a8-11db-937f-000e0c431b59-BPxk-F5gB-ArTl-F70C-Cp4Y-E3Ly', '0d8fcbd1-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'под штукатурку', ''),
('0d8fcbd1-99a8-11db-937f-000e0c431b59-ByDB-FL96-AvmM-F82V-CD1J-EOqu', '0d8fcbd1-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('0d8fcc0e-99a8-11db-937f-000e0c431b59-B34t-FZOg-AdL1-FgH2-C1vD-ES8W', '0d8fcc0e-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('0d8fcc0e-99a8-11db-937f-000e0c431b59-B7l8-FxHE-Ao91-FsRx-CEPY-EIlv', '0d8fcc0e-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcc0e-99a8-11db-937f-000e0c431b59-B8kD-FWWj-AuSl-F81o-Cqsh-EaIw', '0d8fcc0e-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('0d8fcc0e-99a8-11db-937f-000e0c431b59-BFtQ-FrPr-AdhE-F1wO-CVHC-EzRj', '0d8fcc0e-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0d8fcc0e-99a8-11db-937f-000e0c431b59-BjQL-Fjn6-ALwX-FI8J-CZD3-EqvI', '0d8fcc0e-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('0d8fcc0e-99a8-11db-937f-000e0c431b59-BsVD-FTT4-A8Am-Ffav-CRXX-EPKf', '0d8fcc0e-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0d8fcc0e-99a8-11db-937f-000e0c431b59-BUyd-FKgu-A9lA-FXul-CIc8-ELvQ', '0d8fcc0e-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('0d8fcc0e-99a8-11db-937f-000e0c431b59-BXOp-FbEc-Apaj-FsP2-CSzH-EdYv', '0d8fcc0e-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('0d8fcc10-99a8-11db-937f-000e0c431b59-BcfJ-F27a-ATld-FzMf-CFih-Ep38', '0d8fcc10-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0d8fcc10-99a8-11db-937f-000e0c431b59-BeBZ-FriH-ADxY-FbQc-CpDf-EkBQ', '0d8fcc10-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('0d8fcc10-99a8-11db-937f-000e0c431b59-BjXd-FDMp-AjSO-FG8G-CDXB-EDYd', '0d8fcc10-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0d8fcc10-99a8-11db-937f-000e0c431b59-BoKs-F4Qp-AAUC-FCYb-Cgqn-EX9d', '0d8fcc10-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('0d8fcc10-99a8-11db-937f-000e0c431b59-BSM2-FRzk-Aryw-Fn81-CfhN-E9lZ', '0d8fcc10-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('0d8fcc10-99a8-11db-937f-000e0c431b59-BWCj-FTZu-ACCl-FhPw-C6ty-EVbW', '0d8fcc10-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcc10-99a8-11db-937f-000e0c431b59-BwD6-F9vw-AAS7-FXLt-Cn1e-EMLY', '0d8fcc10-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('0d8fcc10-99a8-11db-937f-000e0c431b59-BZ60-FBcP-AyX9-Fmta-C0M6-EJD2', '0d8fcc10-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('0d8fcc12-99a8-11db-937f-000e0c431b59-Ba50-F0sy-AToA-F2Ro-CeV8-Eh0A', '0d8fcc12-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcc12-99a8-11db-937f-000e0c431b59-BETD-FnCS-AfUH-Fmxg-CYMG-E691', '0d8fcc12-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('0d8fcc12-99a8-11db-937f-000e0c431b59-BjAO-Fw1S-A0qM-Fr2C-ChKW-E3xP', '0d8fcc12-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('0d8fcc12-99a8-11db-937f-000e0c431b59-BNKk-FNB2-A2gN-FzDN-Cz4r-EK1z', '0d8fcc12-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('0d8fcc12-99a8-11db-937f-000e0c431b59-Bpuj-FU5R-A1AN-FgrW-CPRX-EdDO', '0d8fcc12-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('0d8fcc12-99a8-11db-937f-000e0c431b59-BSTV-Fn4w-A7To-FKsg-CG6q-ErJs', '0d8fcc12-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0d8fcc12-99a8-11db-937f-000e0c431b59-BYkh-Fwtf-A6Ii-FyzT-C7Mi-Emnn', '0d8fcc12-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('0d8fcc12-99a8-11db-937f-000e0c431b59-BzeU-F7HI-AdfU-FjbT-CZ2N-EY26', '0d8fcc12-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0d8fcc1c-99a8-11db-937f-000e0c431b59-Be6R-FQ4e-AZqJ-Fleu-CYNQ-Ed0G', '0d8fcc1c-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcc1c-99a8-11db-937f-000e0c431b59-BFRY-F6Lu-AjIZ-FRd2-CgG5-E7aS', '0d8fcc1c-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('0d8fcc1c-99a8-11db-937f-000e0c431b59-BioN-FqVb-AQWc-Fe5y-ClYu-E4on', '0d8fcc1c-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0d8fcc1c-99a8-11db-937f-000e0c431b59-BJPK-FLyt-AOd1-F5Vn-C7pr-EUbP', '0d8fcc1c-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0d8fcc1c-99a8-11db-937f-000e0c431b59-BnCZ-FUYc-ApX3-FFrz-CK1F-EVC5', '0d8fcc1c-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('0d8fcc1c-99a8-11db-937f-000e0c431b59-BsfE-FwzE-AoHI-FrOj-CAAO-EiWG', '0d8fcc1c-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('0d8fcc1c-99a8-11db-937f-000e0c431b59-BTDY-FviS-AkJq-FVCV-C0aZ-EU8F', '0d8fcc1c-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('0d8fcc1c-99a8-11db-937f-000e0c431b59-Bvoh-FW37-AjLv-F8MJ-CxpM-Eykw', '0d8fcc1c-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('0d8fcc1c-99a8-11db-937f-000e0c431b59-BXEU-Fhqz-ASFC-FiiC-CoGq-E3xC', '0d8fcc1c-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'влагопрочная', ''),
('0d8fcc1e-99a8-11db-937f-000e0c431b59-B8Ss-FBQ0-Axs5-F11L-CqXk-EtBj', '0d8fcc1e-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('0d8fcc1e-99a8-11db-937f-000e0c431b59-BCsE-Ftkl-AMgP-F0z5-Cr83-EcU8', '0d8fcc1e-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcc1e-99a8-11db-937f-000e0c431b59-BEfY-FxPK-AjMr-Feru-Cbtd-EfdD', '0d8fcc1e-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0d8fcc1e-99a8-11db-937f-000e0c431b59-BgYD-Fo0w-APnm-Fg21-CdfU-Exh8', '0d8fcc1e-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('0d8fcc1e-99a8-11db-937f-000e0c431b59-BHpk-FWpZ-AQXX-FJzs-CH5N-Efrd', '0d8fcc1e-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'влагопрочная', ''),
('0d8fcc1e-99a8-11db-937f-000e0c431b59-BI9u-FWEm-ALas-Fuww-C7g6-EfD7', '0d8fcc1e-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('0d8fcc1e-99a8-11db-937f-000e0c431b59-BoeU-FCnJ-AuuE-F9Qv-Cc6D-EIRz', '0d8fcc1e-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0d8fcc1e-99a8-11db-937f-000e0c431b59-BpRq-FWwX-AHNH-Fktl-Co1R-EON7', '0d8fcc1e-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('0d8fcc1e-99a8-11db-937f-000e0c431b59-BuIi-FgAh-AoIr-F2gc-C7nx-ETos', '0d8fcc1e-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('0d8fcc20-99a8-11db-937f-000e0c431b59-B7o6-F9di-AtBa-Fwb8-CaMB-EKYg', '0d8fcc20-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'влагопрочная', ''),
('0d8fcc20-99a8-11db-937f-000e0c431b59-B8cu-FLfW-AIru-F5aI-CrXw-EnVP', '0d8fcc20-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('0d8fcc20-99a8-11db-937f-000e0c431b59-BGUW-FB5z-ATBO-FF3z-CWFi-EVDM', '0d8fcc20-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('0d8fcc20-99a8-11db-937f-000e0c431b59-BLEQ-Fl2s-AiS5-FkcS-CGZv-E1kR', '0d8fcc20-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0d8fcc20-99a8-11db-937f-000e0c431b59-BNt9-F8oZ-AFVw-F29H-CHKM-EYvE', '0d8fcc20-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('0d8fcc20-99a8-11db-937f-000e0c431b59-BPS2-FpjU-AgGb-FaD3-Csb9-EYsJ', '0d8fcc20-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('0d8fcc20-99a8-11db-937f-000e0c431b59-BuDt-FMew-AENO-FCm7-CMXv-EsXx', '0d8fcc20-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0d8fcc20-99a8-11db-937f-000e0c431b59-Bvyg-F0BO-AQHB-Fymu-Ci3D-EZhn', '0d8fcc20-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcc20-99a8-11db-937f-000e0c431b59-BYGp-FQLX-AGWO-FMsQ-CGxh-Eett', '0d8fcc20-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('0d8fcc22-99a8-11db-937f-000e0c431b59-B0zZ-F4qP-AFXm-FqGo-CQn5-Edwr', '0d8fcc22-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('0d8fcc22-99a8-11db-937f-000e0c431b59-B5rr-F8YD-ABvY-F7jn-Cgl9-EeR0', '0d8fcc22-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'влагостойкая', ''),
('0d8fcc22-99a8-11db-937f-000e0c431b59-BCU8-FpAE-AUQs-FOue-C6SQ-E4aV', '0d8fcc22-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0d8fcc22-99a8-11db-937f-000e0c431b59-BgQN-FJwE-A0Qk-FTDI-CRAa-EACq', '0d8fcc22-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('0d8fcc22-99a8-11db-937f-000e0c431b59-Bhv8-FIEB-AQWC-FrWE-CXV5-ExPk', '0d8fcc22-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcc22-99a8-11db-937f-000e0c431b59-BIjk-FgfJ-AKCu-FJgC-CIGo-EYYf', '0d8fcc22-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0d8fcc22-99a8-11db-937f-000e0c431b59-BjlQ-FR1A-AwwS-FCps-CXkZ-EEhy', '0d8fcc22-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('0d8fcc22-99a8-11db-937f-000e0c431b59-BXfM-FIpt-ALx1-F1MO-CVmZ-EnUm', '0d8fcc22-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('0d8fcc22-99a8-11db-937f-000e0c431b59-BZKR-FsN8-Aali-F1qF-Coyp-EOVK', '0d8fcc22-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('0d8fcc24-99a8-11db-937f-000e0c431b59-B3a1-FIM2-A3bI-FNWB-Cr6M-E6Yh', '0d8fcc24-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('0d8fcc24-99a8-11db-937f-000e0c431b59-BEZY-FK4P-AGMX-Fh9p-ClP3-Etlz', '0d8fcc24-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcc24-99a8-11db-937f-000e0c431b59-Bf1i-F5jy-A2vo-FpPK-ClTk-E0dd', '0d8fcc24-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0d8fcc24-99a8-11db-937f-000e0c431b59-BjLO-FcVs-A8Vr-FT3m-CPOX-E7Py', '0d8fcc24-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0d8fcc24-99a8-11db-937f-000e0c431b59-Bk2T-FqHk-A3cF-Fd17-CTIa-EvRE', '0d8fcc24-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('0d8fcc24-99a8-11db-937f-000e0c431b59-BnW4-FVqw-A86B-FV3Q-CJuq-E044', '0d8fcc24-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('0d8fcc24-99a8-11db-937f-000e0c431b59-BOkp-FmIo-ASu4-FKef-C00V-Eh56', '0d8fcc24-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'влагостойкая', ''),
('0d8fcc24-99a8-11db-937f-000e0c431b59-BRMH-FW8v-APsZ-FtP7-CL1y-Eeg6', '0d8fcc24-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('0d8fcc24-99a8-11db-937f-000e0c431b59-BWvq-FAa7-ALCQ-FvBu-CPQU-E64d', '0d8fcc24-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('0d8fcc26-99a8-11db-937f-000e0c431b59-B0lw-F59C-AT2G-FQQM-CUfl-EY2z', '0d8fcc26-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('0d8fcc26-99a8-11db-937f-000e0c431b59-BAOC-F2EO-AFa1-FfEL-CIo7-EWxi', '0d8fcc26-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('0d8fcc26-99a8-11db-937f-000e0c431b59-BfEJ-FPJZ-Awx5-FWPZ-C4D7-EZFE', '0d8fcc26-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('0d8fcc26-99a8-11db-937f-000e0c431b59-BGPB-F8uF-AJ3t-FFPh-Cnfj-Eceg', '0d8fcc26-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0d8fcc26-99a8-11db-937f-000e0c431b59-BkvO-FIl5-AOQs-F4fD-CE4j-ERCO', '0d8fcc26-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('0d8fcc26-99a8-11db-937f-000e0c431b59-BOZD-FVN4-Amn1-FJDw-Cai1-Eky0', '0d8fcc26-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0d8fcc26-99a8-11db-937f-000e0c431b59-BQCz-F97U-ACAO-FlRR-CzSf-E3Jk', '0d8fcc26-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0d8fcc26-99a8-11db-937f-000e0c431b59-BRec-FInf-A5DE-Fvn3-Cune-Ehhc', '0d8fcc26-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('0d8fcc26-99a8-11db-937f-000e0c431b59-Bxgg-FCIy-AT9H-Fy1R-CZ8g-Ea6R', '0d8fcc26-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'влагостойкая', ''),
('0ff22851-f78f-11e3-8c8a-005056be1f7b-B4bw-FjNE-A5EU-Fwk7-CNwG-EOKN', '0ff22851-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'розово-бежевый', ''),
('0ff22851-f78f-11e3-8c8a-005056be1f7b-Bbh7-FKfa-AhlG-F0BL-Cw6m-Ejez', '0ff22851-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('0ff22851-f78f-11e3-8c8a-005056be1f7b-BJNg-FLsm-AsDX-FoSF-CvCs-ERDW', '0ff22851-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('0ff22851-f78f-11e3-8c8a-005056be1f7b-BkwF-FrvH-A3hC-FfGh-CUu6-EPsH', '0ff22851-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('0ff22851-f78f-11e3-8c8a-005056be1f7b-BnY5-F9Le-A5YQ-FAnb-COE0-EKOe', '0ff22851-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('0ff22851-f78f-11e3-8c8a-005056be1f7b-Btnf-FAnI-Ac3M-FbCb-C6nN-EBU9', '0ff22851-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('0ff22851-f78f-11e3-8c8a-005056be1f7b-BZfO-Fm7R-AD35-FQ5P-CPDc-EvOL', '0ff22851-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('1004a95c-f787-11e3-8c8a-005056be1f7b-B5Ap-Fsn2-AtNR-FKXK-CGh4-EU7d', '1004a95c-f787-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1004a95c-f787-11e3-8c8a-005056be1f7b-B6P7-FMZU-AXf2-FQ1y-CugI-EeXZ', '1004a95c-f787-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('1004a95c-f787-11e3-8c8a-005056be1f7b-BJsO-FZkU-AXQL-F7Ch-CbT3-EL9G', '1004a95c-f787-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('1004a95c-f787-11e3-8c8a-005056be1f7b-BNZk-FdeA-AyTP-F2F8-Cq1j-EwWe', '1004a95c-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1004a95c-f787-11e3-8c8a-005056be1f7b-BpUu-F1Qx-AYsG-FR4F-CXxG-EDft', '1004a95c-f787-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1004a95c-f787-11e3-8c8a-005056be1f7b-BQVt-FpNs-ABjy-FnLB-CjZa-EJ46', '1004a95c-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1004a95c-f787-11e3-8c8a-005056be1f7b-BulF-Ff6e-A9PZ-F30V-CVFl-EmN7', '1004a95c-f787-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('11d9ec94-f788-11e3-8c8a-005056be1f7b-B1tZ-FxYi-AsVw-FDfq-C61q-E72V', '11d9ec94-f788-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('11d9ec94-f788-11e3-8c8a-005056be1f7b-BGZN-FoiJ-AHIr-FnK9-CFvz-EJJP', '11d9ec94-f788-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'розово-бежевый', ''),
('11d9ec94-f788-11e3-8c8a-005056be1f7b-BI3F-FFs0-AMxs-F2x6-CJno-EjbD', '11d9ec94-f788-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('11d9ec94-f788-11e3-8c8a-005056be1f7b-BIJY-F6N4-AlIt-FSEl-CnMe-EtSM', '11d9ec94-f788-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('11d9ec94-f788-11e3-8c8a-005056be1f7b-BsfA-FbWx-AWga-FBG2-CEOB-EcJO', '11d9ec94-f788-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('11d9ec94-f788-11e3-8c8a-005056be1f7b-BUAB-FBoL-AAu8-F15H-CFso-E0MS', '11d9ec94-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('11d9ec94-f788-11e3-8c8a-005056be1f7b-Byh5-Fdo1-AgH8-FpI6-C7OU-EK43', '11d9ec94-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('129c7f4d-5273-11de-8f53-000e0c431b58-B0Cw-FAjf-AaaD-FMu3-CjNS-EJJx', '129c7f4d-5273-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для стен', ''),
('129c7f4d-5273-11de-8f53-000e0c431b58-B91g-FCCQ-A5ld-FMvn-CAPf-E5Ta', '129c7f4d-5273-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('129c7f4d-5273-11de-8f53-000e0c431b58-BAkg-FQDG-AQfY-F3GM-C4DL-ELXL', '129c7f4d-5273-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('129c7f4d-5273-11de-8f53-000e0c431b58-BbLM-FZW3-A3CQ-Fdj0-CbSl-EkyA', '129c7f4d-5273-11de-8f53-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('129c7f4d-5273-11de-8f53-000e0c431b58-Be25-FE6F-AbP1-FlZe-CpYg-EcZG', '129c7f4d-5273-11de-8f53-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для потолков', ''),
('129c7f4d-5273-11de-8f53-000e0c431b58-Bfhb-Fi7h-A0hR-FHAf-CyMJ-EAYT', '129c7f4d-5273-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('129c7f4d-5273-11de-8f53-000e0c431b58-Bkwz-F35z-AYsB-Fhta-C1iv-ETyW', '129c7f4d-5273-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('129c7f4d-5273-11de-8f53-000e0c431b58-BLnM-FMJy-A7Jb-FPqU-CnTe-EgUg', '129c7f4d-5273-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('129c7f4d-5273-11de-8f53-000e0c431b58-BmJ3-FBB0-AN5D-FYGa-CktH-EcOr', '129c7f4d-5273-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('129c7f4d-5273-11de-8f53-000e0c431b58-BzVd-FQkJ-AlOc-FFuw-ClPU-EDxR', '129c7f4d-5273-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('138c38bb-f78e-11e3-8c8a-005056be1f7b-B0UT-F0Oj-AHkv-F4mT-CORJ-EqpW', '138c38bb-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('138c38bb-f78e-11e3-8c8a-005056be1f7b-B7np-FVim-ARGs-FWNW-Cfye-EyDa', '138c38bb-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('138c38bb-f78e-11e3-8c8a-005056be1f7b-BEzB-FOU5-AfMZ-F576-ChFF-EGoI', '138c38bb-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('138c38bb-f78e-11e3-8c8a-005056be1f7b-BIKi-FiCd-AdKn-FycE-C4Eg-EAdK', '138c38bb-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-зеленый', ''),
('138c38bb-f78e-11e3-8c8a-005056be1f7b-BkHT-FO7v-ATz1-F1zT-CA5I-ECIc', '138c38bb-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('138c38bb-f78e-11e3-8c8a-005056be1f7b-BkWP-FbMF-AuN0-F4PI-CWMw-ECiU', '138c38bb-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('138c38bb-f78e-11e3-8c8a-005056be1f7b-Bozb-FXMp-Atse-FNhh-CoH5-E5jG', '138c38bb-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('13cd2b20-99a8-11db-937f-000e0c431b59-B3lN-FK0w-AShe-FiV3-CznT-ERLR', '13cd2b20-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('13cd2b20-99a8-11db-937f-000e0c431b59-B4Yh-FTU7-AtAQ-Fc00-CBm0-ERhk', '13cd2b20-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13cd2b20-99a8-11db-937f-000e0c431b59-B5SS-FY2o-ARqR-Fk8c-C3N3-Egnb', '13cd2b20-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13cd2b20-99a8-11db-937f-000e0c431b59-Bf6D-F8MD-AC5U-F5Oj-CKH9-ErbS', '13cd2b20-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.7', 'л'),
('13cd2b20-99a8-11db-937f-000e0c431b59-BnAQ-F6kN-AXdb-FQAE-CrQ3-ETPP', '13cd2b20-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('13cd2b20-99a8-11db-937f-000e0c431b59-BoLS-F6nS-A5p6-F58d-CedZ-Eial', '13cd2b20-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('13cd2b20-99a8-11db-937f-000e0c431b59-BPZo-Fajt-AKKs-Fj8K-C5zv-EIAv', '13cd2b20-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13cd2b20-99a8-11db-937f-000e0c431b59-BQxm-F9Xj-AJRZ-F6Za-CqTs-E0sj', '13cd2b20-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'интерьерная', ''),
('13cd2b20-99a8-11db-937f-000e0c431b59-BSbc-Fh89-AOWK-FKFu-Cl9Z-ExcU', '13cd2b20-99a8-11db-937f-000e0c431b59', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('13cd2b24-99a8-11db-937f-000e0c431b59-BFsp-FSI7-A3Ni-FrCK-Ciuu-ENH4', '13cd2b24-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.7', 'л'),
('13cd2b24-99a8-11db-937f-000e0c431b59-BJGe-FZaq-Ap8N-FZQj-CEmy-Ezl2', '13cd2b24-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('13cd2b24-99a8-11db-937f-000e0c431b59-BlO8-FAlb-AMgF-Fe7J-CMB3-E2UA', '13cd2b24-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('13cd2b24-99a8-11db-937f-000e0c431b59-BqmL-FQtW-AbMc-FxLk-Cmh0-EQAN', '13cd2b24-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('13cd2b24-99a8-11db-937f-000e0c431b59-Brjo-FXJX-AHDZ-FWeL-C6oR-EZDs', '13cd2b24-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13cd2b24-99a8-11db-937f-000e0c431b59-BSfg-FuTs-AU6P-FTMQ-Cggu-ETWo', '13cd2b24-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13cd2b24-99a8-11db-937f-000e0c431b59-BUdw-Fz5B-A4Gn-FxH9-Cuxl-E6EU', '13cd2b24-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13cd2b24-99a8-11db-937f-000e0c431b59-BVPu-F0C3-A9xp-Fjtt-C5BP-Ebvi', '13cd2b24-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'интерьерная', ''),
('13cd2b24-99a8-11db-937f-000e0c431b59-BVZo-FdND-Adje-FaPD-CMl5-EAV8', '13cd2b24-99a8-11db-937f-000e0c431b59', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('13cd2b26-99a8-11db-937f-000e0c431b59-Blee-Fr9a-A1Lc-FsDx-Ct2A-E8P6', '13cd2b26-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('13cd2b26-99a8-11db-937f-000e0c431b59-BmYy-FKTK-ACFw-FIw5-CXZ0-ElQS', '13cd2b26-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('13cd2b26-99a8-11db-937f-000e0c431b59-BnFN-F2TZ-Al54-FRJB-Clec-ET0V', '13cd2b26-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('13cd2b26-99a8-11db-937f-000e0c431b59-BnlT-FGUW-A4EO-F5Cd-CzQQ-ENgW', '13cd2b26-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13cd2b26-99a8-11db-937f-000e0c431b59-BOxY-FPFE-AXSW-Fubo-CsDJ-EMuI', '13cd2b26-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13cd2b26-99a8-11db-937f-000e0c431b59-BQO5-FeI7-A99N-FOLu-Ckdp-EPIU', '13cd2b26-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('13cd2b26-99a8-11db-937f-000e0c431b59-BS5o-FopG-ASXJ-Fbk5-CkOg-E4U1', '13cd2b26-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'интерьерная', ''),
('13cd2b26-99a8-11db-937f-000e0c431b59-BVas-Fe3T-AZch-F6W3-CvmG-EqHP', '13cd2b26-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13cd2b26-99a8-11db-937f-000e0c431b59-ByNO-FX5Q-AhcA-FSqI-CMRW-EJS8', '13cd2b26-99a8-11db-937f-000e0c431b59', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('13cd2b5d-99a8-11db-937f-000e0c431b59-B4JZ-FG6Z-AUsn-F0t5-CAnS-EiBZ', '13cd2b5d-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('13cd2b5d-99a8-11db-937f-000e0c431b59-B4Xi-FXHf-A8xJ-FQsx-C34c-EAxm', '13cd2b5d-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13cd2b5d-99a8-11db-937f-000e0c431b59-B6ca-FibK-Adcy-FvAz-CLEx-EZSC', '13cd2b5d-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1500', 'г'),
('13cd2b5d-99a8-11db-937f-000e0c431b59-B9oO-FeQR-AoTS-FiAB-CNef-EQrG', '13cd2b5d-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('13cd2b5d-99a8-11db-937f-000e0c431b59-BddC-FNlS-ARfH-FlWw-Co4b-EZJS', '13cd2b5d-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('13cd2b5d-99a8-11db-937f-000e0c431b59-BE9N-FNP7-ABHz-FdIn-CGBw-EfIs', '13cd2b5d-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('13cd2b5d-99a8-11db-937f-000e0c431b59-Bi9l-Fpj9-AcO2-F4nA-CLlp-EZF6', '13cd2b5d-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13cd2b5d-99a8-11db-937f-000e0c431b59-BKoH-F5K4-AVwN-FwAN-CwNp-EBRB', '13cd2b5d-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('13cd2b5d-99a8-11db-937f-000e0c431b59-BMcO-FEV3-AFhd-Fu8j-CqoT-E5nl', '13cd2b5d-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'выравнивающая', ''),
('13cd2b5d-99a8-11db-937f-000e0c431b59-BruO-F0SP-AAft-Ffvb-CmUa-EOAA', '13cd2b5d-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13cd2b61-99a8-11db-937f-000e0c431b59-B4GO-FNro-ApB0-Fjv4-C6rR-Etbb', '13cd2b61-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13cd2b61-99a8-11db-937f-000e0c431b59-B6Xx-FtJy-AjV4-FWuM-CZGg-EkRU', '13cd2b61-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('13cd2b61-99a8-11db-937f-000e0c431b59-B9qh-FLR6-A1U3-FgJR-CjgV-EZhl', '13cd2b61-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13cd2b61-99a8-11db-937f-000e0c431b59-BEAz-F9QZ-AOZ9-FLGt-CZsV-E8Nd', '13cd2b61-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1500', 'г'),
('13cd2b61-99a8-11db-937f-000e0c431b59-BiAw-FcXh-Aoxn-FLX6-CgQB-Evet', '13cd2b61-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13cd2b61-99a8-11db-937f-000e0c431b59-Bmli-FfIr-AwrO-FIHv-CuuO-EJ4q', '13cd2b61-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('13cd2b61-99a8-11db-937f-000e0c431b59-BndY-FIb6-AHJ4-FQkQ-CIi7-EquO', '13cd2b61-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('13cd2b61-99a8-11db-937f-000e0c431b59-BVUK-FLxS-Ay5U-FlZc-CTV5-Eu5V', '13cd2b61-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('13cd2b61-99a8-11db-937f-000e0c431b59-BWE1-FAPN-A7we-F9h0-Cr8I-EbW3', '13cd2b61-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('13cd2b61-99a8-11db-937f-000e0c431b59-BZJu-FZtg-AToN-FlYp-CC7p-EzZC', '13cd2b61-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'финишная', ''),
('13cd2b63-99a8-11db-937f-000e0c431b59-B2XG-F4Wg-AB6V-FOJO-CIy7-EH24', '13cd2b63-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'финишная', ''),
('13cd2b63-99a8-11db-937f-000e0c431b59-B37v-FbDM-AO3w-FPV4-Cukt-E2bQ', '13cd2b63-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '400', 'г'),
('13cd2b63-99a8-11db-937f-000e0c431b59-BDnd-Fowc-AGrB-F9ZH-CjyN-EN45', '13cd2b63-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13cd2b63-99a8-11db-937f-000e0c431b59-BIHy-FzPQ-Awwj-FHaw-CzkB-EcGe', '13cd2b63-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('13cd2b63-99a8-11db-937f-000e0c431b59-BKOn-Ffdw-Atml-Fquc-CkHr-EFmw', '13cd2b63-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13cd2b63-99a8-11db-937f-000e0c431b59-BmKT-F0kF-AwYl-FI9c-C5j2-EsGk', '13cd2b63-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('13cd2b63-99a8-11db-937f-000e0c431b59-BP1H-F1g2-ATH0-FAMm-CxVt-EmK9', '13cd2b63-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('13cd2b63-99a8-11db-937f-000e0c431b59-Bpr0-FC7P-AWlH-F2j0-C7mn-EZRZ', '13cd2b63-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13cd2b63-99a8-11db-937f-000e0c431b59-BXOe-FfFD-AeBq-FHb8-ChTV-EoNr', '13cd2b63-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('13cd2b63-99a8-11db-937f-000e0c431b59-BZFo-FEqb-AyFX-FOQT-Co3e-E82E', '13cd2b63-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('13cd2b65-99a8-11db-937f-000e0c431b59-B77q-F1XS-ALDn-FRHr-CKvH-EnSn', '13cd2b65-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13cd2b65-99a8-11db-937f-000e0c431b59-BBt8-Fy0S-Art4-FalV-CqVG-EDE3', '13cd2b65-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'береза', ''),
('13cd2b65-99a8-11db-937f-000e0c431b59-BCff-FEsY-AU3N-Fhs3-CH2t-Eun3', '13cd2b65-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13cd2b65-99a8-11db-937f-000e0c431b59-BgHL-FCsI-A38X-FmZn-C4cI-EZg1', '13cd2b65-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('13cd2b65-99a8-11db-937f-000e0c431b59-BI1n-FvIv-AdTg-Fl7z-COPt-EbQR', '13cd2b65-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('13cd2b65-99a8-11db-937f-000e0c431b59-Bnac-Fhfo-Aljs-FmYO-Cra8-EoO8', '13cd2b65-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13cd2b65-99a8-11db-937f-000e0c431b59-BS5M-FAhl-APOB-FM3Q-CKzM-E1pj', '13cd2b65-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'финишная', ''),
('13cd2b65-99a8-11db-937f-000e0c431b59-BtvX-Ftwj-AVj5-FFLE-CEEA-EzfE', '13cd2b65-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('13cd2b65-99a8-11db-937f-000e0c431b59-Bx2t-FAZb-A4gT-FnR7-CfxD-Eq1w', '13cd2b65-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('13cd2b65-99a8-11db-937f-000e0c431b59-Bzsu-FMUJ-A1Nl-F0nI-C1aA-EjbZ', '13cd2b65-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '400', 'г'),
('13cd2b67-99a8-11db-937f-000e0c431b59-B2Lu-FDFZ-ASwh-FUIR-C7lP-ESnX', '13cd2b67-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13cd2b67-99a8-11db-937f-000e0c431b59-B7mX-FcVw-AK7M-F5pO-CrHC-EVul', '13cd2b67-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'финишная', ''),
('13cd2b67-99a8-11db-937f-000e0c431b59-BBCG-FmCt-Av3K-Fvbl-CKc6-EGx4', '13cd2b67-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бук', ''),
('13cd2b67-99a8-11db-937f-000e0c431b59-BBU6-FU8M-ARdA-FUJ1-CH0i-E2M4', '13cd2b67-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('13cd2b67-99a8-11db-937f-000e0c431b59-Bc9V-FCIM-AZLW-F1lz-Cric-EFBx', '13cd2b67-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('13cd2b67-99a8-11db-937f-000e0c431b59-Bcxo-FmjG-ANuj-FJ1W-CDJb-Ead1', '13cd2b67-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13cd2b67-99a8-11db-937f-000e0c431b59-BeCj-F24L-Aqku-FIqv-C7h7-EqlB', '13cd2b67-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('13cd2b67-99a8-11db-937f-000e0c431b59-BG4y-FnO8-A5Li-FKeM-Ci0O-EH1I', '13cd2b67-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('13cd2b67-99a8-11db-937f-000e0c431b59-BTEW-FTZg-AJgf-FsYr-ClZu-EsCw', '13cd2b67-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13cd2b67-99a8-11db-937f-000e0c431b59-BTgt-FDpZ-Ayl8-FuRi-CwXc-ElAr', '13cd2b67-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '400', 'г'),
('13cd2b69-99a8-11db-937f-000e0c431b59-B2m8-FEqp-AYJN-Fqmg-CpWL-EIvn', '13cd2b69-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'финишная', ''),
('13cd2b69-99a8-11db-937f-000e0c431b59-B2U2-FraW-ATKh-Fwgn-Cx1j-EuRY', '13cd2b69-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('13cd2b69-99a8-11db-937f-000e0c431b59-Bi64-FHFX-AToW-FivM-CqFt-EZIY', '13cd2b69-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('13cd2b69-99a8-11db-937f-000e0c431b59-BKA2-FXrd-A5W1-FFel-CtLc-EVFA', '13cd2b69-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13cd2b69-99a8-11db-937f-000e0c431b59-Bq1l-F4h9-A17H-F4qY-ChhA-Eflr', '13cd2b69-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('13cd2b69-99a8-11db-937f-000e0c431b59-Btod-FZci-AF9M-FqW8-CYIC-EuQo', '13cd2b69-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13cd2b69-99a8-11db-937f-000e0c431b59-BU77-Fbzn-AzWL-Fz2x-CgCx-EYae', '13cd2b69-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('13cd2b69-99a8-11db-937f-000e0c431b59-BvEV-FImH-AVSM-FEsU-CdhR-EcT0', '13cd2b69-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13cd2b69-99a8-11db-937f-000e0c431b59-BXHv-Fi7n-AVdp-FJ2G-Cota-Efb2', '13cd2b69-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '400', 'г'),
('13cd2b69-99a8-11db-937f-000e0c431b59-By70-FwrR-AVep-FxFq-Cfnl-EYvr', '13cd2b69-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'дуб', ''),
('13cd2b6b-99a8-11db-937f-000e0c431b59-B2CV-F3Wu-AtCC-FlPD-CFpD-EnyD', '13cd2b6b-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13cd2b6b-99a8-11db-937f-000e0c431b59-B2vB-FZih-ACVX-FlFp-CAcw-EvBt', '13cd2b6b-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('13cd2b6b-99a8-11db-937f-000e0c431b59-B30V-F6kl-A9pR-FBTG-CFFu-Eti3', '13cd2b6b-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('13cd2b6b-99a8-11db-937f-000e0c431b59-B4Ag-FsmM-A9Et-FAiq-Ckkp-EfAQ', '13cd2b6b-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13cd2b6b-99a8-11db-937f-000e0c431b59-BB05-FZlA-AFld-F3Xe-Clv1-Ey1W', '13cd2b6b-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13cd2b6b-99a8-11db-937f-000e0c431b59-Bduw-FyvS-Atiq-Fqq7-C0i6-EVdf', '13cd2b6b-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '400', 'г'),
('13cd2b6b-99a8-11db-937f-000e0c431b59-BfF2-F98O-AcjA-FTY2-CqS2-ENAe', '13cd2b6b-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'финишная', ''),
('13cd2b6b-99a8-11db-937f-000e0c431b59-Bvoo-FdIt-AM4U-FAg5-CwX8-EIPT', '13cd2b6b-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('13cd2b6b-99a8-11db-937f-000e0c431b59-BYWN-FEfF-AKKy-FlpQ-CchB-Ee7j', '13cd2b6b-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'махагон', ''),
('13cd2b6b-99a8-11db-937f-000e0c431b59-BZ0i-FJAH-Azks-FeFs-Culy-Emjw', '13cd2b6b-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('13cd2b6d-99a8-11db-937f-000e0c431b59-B1GT-FCPZ-Aupx-FmLq-Co5w-Ewur', '13cd2b6d-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('13cd2b6d-99a8-11db-937f-000e0c431b59-B8cL-FOef-AVjk-FFTJ-C9w5-Eulp', '13cd2b6d-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('13cd2b6d-99a8-11db-937f-000e0c431b59-BCUN-FtA4-ApAc-FkV7-CGTZ-ERh4', '13cd2b6d-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'орех', ''),
('13cd2b6d-99a8-11db-937f-000e0c431b59-BJSs-FHsV-AioL-FIFs-CZY2-Eg3C', '13cd2b6d-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13cd2b6d-99a8-11db-937f-000e0c431b59-BKxg-FtNN-A5T8-FZnb-C61j-EbgR', '13cd2b6d-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'финишная', ''),
('13cd2b6d-99a8-11db-937f-000e0c431b59-BNIf-Fps2-AmyK-FBGs-C54l-EYQk', '13cd2b6d-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13cd2b6d-99a8-11db-937f-000e0c431b59-BtFH-Fz5l-ANUP-FYQn-Cwa7-Efip', '13cd2b6d-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('13cd2b6d-99a8-11db-937f-000e0c431b59-BTJG-FeKN-AMFG-FydX-CZoK-E7YY', '13cd2b6d-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('13cd2b6d-99a8-11db-937f-000e0c431b59-Bw4d-FX9w-Ag7j-FarK-CFuf-ETdf', '13cd2b6d-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13cd2b6d-99a8-11db-937f-000e0c431b59-BX9B-FmWR-AQJr-FNoP-C3eW-EMhm', '13cd2b6d-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '400', 'г'),
('13cd2b6f-99a8-11db-937f-000e0c431b59-B1SO-FUKC-AHnI-F56v-CZmx-EM1i', '13cd2b6f-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '400', 'г'),
('13cd2b6f-99a8-11db-937f-000e0c431b59-B5lm-FlyQ-A2rv-FO4S-C1ek-EH4e', '13cd2b6f-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'сосна', ''),
('13cd2b6f-99a8-11db-937f-000e0c431b59-BiHj-FeWP-ATFf-FI3t-C1CD-EBSl', '13cd2b6f-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('13cd2b6f-99a8-11db-937f-000e0c431b59-Bjxj-FF7b-Aywe-F2yw-CcFw-ESnf', '13cd2b6f-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('13cd2b6f-99a8-11db-937f-000e0c431b59-Bk0D-F83X-AGdF-FNFa-Cq0C-ETl1', '13cd2b6f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13cd2b6f-99a8-11db-937f-000e0c431b59-Bkdh-FVrb-Anh6-FOpz-CtPy-EwNr', '13cd2b6f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13cd2b6f-99a8-11db-937f-000e0c431b59-BKUK-FQhQ-AqOP-Fti2-CjIU-EHdB', '13cd2b6f-99a8-11db-937f-000e0c431b59', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'финишная', ''),
('13cd2b6f-99a8-11db-937f-000e0c431b59-BlRR-FZ5c-AGiX-F3UI-CkrG-EmUd', '13cd2b6f-99a8-11db-937f-000e0c431b59', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('13cd2b6f-99a8-11db-937f-000e0c431b59-BqBx-FNuO-ANfN-FVzr-CzZf-EZeb', '13cd2b6f-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('13cd2b6f-99a8-11db-937f-000e0c431b59-BR01-FhsY-AYSg-FsaA-Cu0H-EUde', '13cd2b6f-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13ce3df2-93b0-11e3-82a4-005056be1f7b-B6a9-FjZ8-ATia-F7Ml-C1Ze-EjvA', '13ce3df2-93b0-11e3-82a4-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('13ce3df2-93b0-11e3-82a4-005056be1f7b-B8Ow-FzC1-ApK1-FpY2-CWof-EkFK', '13ce3df2-93b0-11e3-82a4-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'синий', ''),
('13ce3df2-93b0-11e3-82a4-005056be1f7b-BgTv-FBoZ-ATAO-F3Br-CnP9-E7Ck', '13ce3df2-93b0-11e3-82a4-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('13ce3df2-93b0-11e3-82a4-005056be1f7b-BKRo-FnMO-Axhi-FUde-C4Y6-E29U', '13ce3df2-93b0-11e3-82a4-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('13ce3df2-93b0-11e3-82a4-005056be1f7b-BM4s-FWfl-Agod-F5jJ-CUUg-E77j', '13ce3df2-93b0-11e3-82a4-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('13ce3df2-93b0-11e3-82a4-005056be1f7b-BOQS-Fxlv-ARfK-FNXI-ChMb-Eacq', '13ce3df2-93b0-11e3-82a4-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('13ce3df2-93b0-11e3-82a4-005056be1f7b-BvWl-FmC0-AdYo-F90t-CJdm-EoK4', '13ce3df2-93b0-11e3-82a4-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('13ce3df2-93b0-11e3-82a4-005056be1f7b-BzS4-FPOF-A1Ff-FVoR-CVzj-EAdv', '13ce3df2-93b0-11e3-82a4-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2', 'л'),
('159d7e07-f790-11e3-8c8a-005056be1f7b-B3Qk-FdXp-ASeR-F2t1-CtDP-E8u7', '159d7e07-f790-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('159d7e07-f790-11e3-8c8a-005056be1f7b-BCHu-FuRi-ASgI-F8Tw-CmZW-EB2G', '159d7e07-f790-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('159d7e07-f790-11e3-8c8a-005056be1f7b-BFjY-FbuF-Ai2J-Fb3t-Czm3-EroD', '159d7e07-f790-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('159d7e07-f790-11e3-8c8a-005056be1f7b-BuI2-FCLV-Acrr-FJxh-COkp-Exop', '159d7e07-f790-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('159d7e07-f790-11e3-8c8a-005056be1f7b-BUYN-FrqZ-AA8I-FsyC-C9je-EAId', '159d7e07-f790-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-серый', ''),
('159d7e07-f790-11e3-8c8a-005056be1f7b-BwIi-FE0S-A6tW-FKqH-CHE3-EBkX', '159d7e07-f790-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('159d7e07-f790-11e3-8c8a-005056be1f7b-BXv5-Ffes-AidR-FCea-CgWr-EGzE', '159d7e07-f790-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('17a83679-f78f-11e3-8c8a-005056be1f7b-B9go-FVjq-AhkM-F8K0-Cmhk-EvnI', '17a83679-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('17a83679-f78f-11e3-8c8a-005056be1f7b-BbfT-FDfF-AmRa-FPCX-C4pK-Ec19', '17a83679-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'охра', ''),
('17a83679-f78f-11e3-8c8a-005056be1f7b-BCao-Fdqr-A2jW-FCBM-CBgZ-Ekwo', '17a83679-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('17a83679-f78f-11e3-8c8a-005056be1f7b-BeMj-FQPv-Ayet-F8SU-Cnt1-E8xW', '17a83679-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('17a83679-f78f-11e3-8c8a-005056be1f7b-BLJB-FYGM-AXtt-F8eX-CFqb-EaEx', '17a83679-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('17a83679-f78f-11e3-8c8a-005056be1f7b-BMEU-FXVd-AW0p-FwRV-C2Q2-Eflb', '17a83679-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('17a83679-f78f-11e3-8c8a-005056be1f7b-BWlI-FGib-AaLL-FRJ0-CnMZ-ERpF', '17a83679-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('1a0a8b4f-99a8-11db-937f-000e0c431b59-B9jZ-F1PH-ADki-FkZV-CBzJ-E33U', '1a0a8b4f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b4f-99a8-11db-937f-000e0c431b59-B9TQ-Fyis-Aciz-FMTm-ClRM-EAIc', '1a0a8b4f-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b4f-99a8-11db-937f-000e0c431b59-Be6l-FUI5-A8tM-FJuU-Cm3g-EoiS', '1a0a8b4f-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b4f-99a8-11db-937f-000e0c431b59-BGlF-FYxv-AiTZ-FDG3-CGlx-Es67', '1a0a8b4f-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b4f-99a8-11db-937f-000e0c431b59-BHLC-Fqwb-ACxR-FMpK-Cgoe-EwcD', '1a0a8b4f-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b4f-99a8-11db-937f-000e0c431b59-Bn3p-FzCa-AJoS-FqT2-C9Zc-EExQ', '1a0a8b4f-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '600', 'г'),
('1a0a8b4f-99a8-11db-937f-000e0c431b59-BuVf-FU4k-ABZn-FWPX-Cuux-Egyv', '1a0a8b4f-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('1a0a8b4f-99a8-11db-937f-000e0c431b59-BZx1-FDKF-Aa61-FOco-CAHu-EuxY', '1a0a8b4f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b51-99a8-11db-937f-000e0c431b59-B3AL-FHLi-ABbC-FsT6-CJAZ-EKYl', '1a0a8b51-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b51-99a8-11db-937f-000e0c431b59-BHxl-FYtz-Allr-FrIX-CyGO-ElXv', '1a0a8b51-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b51-99a8-11db-937f-000e0c431b59-BKQq-Fqpq-AsSi-FvHj-CAel-Eq5W', '1a0a8b51-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1500', 'г'),
('1a0a8b51-99a8-11db-937f-000e0c431b59-BreB-FYLK-AwAQ-FAlo-CwTJ-ECfO', '1a0a8b51-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b51-99a8-11db-937f-000e0c431b59-BrfQ-FMFz-Af7P-FKX5-CPer-E23a', '1a0a8b51-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b51-99a8-11db-937f-000e0c431b59-BUKl-FlLN-AP8g-FYAB-Cn3C-EyAO', '1a0a8b51-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b51-99a8-11db-937f-000e0c431b59-BXBq-FZu0-AV50-FvEX-CWZh-E8Bs', '1a0a8b51-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b51-99a8-11db-937f-000e0c431b59-BzWj-FPZq-AIgR-F6OM-C22F-EhqH', '1a0a8b51-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('1a0a8b53-99a8-11db-937f-000e0c431b59-BAo7-FNFB-A9S2-FE8E-C5aN-EPvC', '1a0a8b53-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b53-99a8-11db-937f-000e0c431b59-BdIV-FUz2-A4Uv-FL0v-CyKp-EGTe', '1a0a8b53-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b53-99a8-11db-937f-000e0c431b59-BHoX-F31X-Aoph-FTv2-Cyvg-Eu0l', '1a0a8b53-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b53-99a8-11db-937f-000e0c431b59-BK4R-FJy5-AVbN-FaFu-CM1F-EoN1', '1a0a8b53-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b53-99a8-11db-937f-000e0c431b59-BpPQ-FpAV-ACWu-FkUv-CTeC-E0Lr', '1a0a8b53-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'береза', ''),
('1a0a8b53-99a8-11db-937f-000e0c431b59-Bv95-FmC2-Ar8S-F5ND-C8Us-EVNi', '1a0a8b53-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '600', 'г'),
('1a0a8b53-99a8-11db-937f-000e0c431b59-BvVc-FXuy-A5f2-Frgi-Ce4S-EpAn', '1a0a8b53-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b53-99a8-11db-937f-000e0c431b59-BWuK-FHUe-A4n0-F6nL-CmSF-Enhv', '1a0a8b53-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b55-99a8-11db-937f-000e0c431b59-B0zF-FjN8-ArFR-FxJV-C7ck-EwvY', '1a0a8b55-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b55-99a8-11db-937f-000e0c431b59-B2Kh-FmyR-AWDx-FEO5-CzPu-Ehje', '1a0a8b55-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b55-99a8-11db-937f-000e0c431b59-B6ZF-FsdT-AnTj-FX2I-C3UF-EDDI', '1a0a8b55-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b55-99a8-11db-937f-000e0c431b59-BBQn-FTDx-Ao0P-FPvB-Co8J-E702', '1a0a8b55-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1500', 'г'),
('1a0a8b55-99a8-11db-937f-000e0c431b59-Bd8L-FsDO-AMrA-FijD-CFaN-EnCB', '1a0a8b55-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b55-99a8-11db-937f-000e0c431b59-BLIS-FCr1-A5ST-FM0f-C90U-EEii', '1a0a8b55-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b55-99a8-11db-937f-000e0c431b59-Bs3N-FQM0-AHAu-Fnuu-CPfs-EKHu', '1a0a8b55-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'береза', ''),
('1a0a8b55-99a8-11db-937f-000e0c431b59-BSP1-FTxZ-AW41-Fjh3-CldS-EqLv', '1a0a8b55-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b57-99a8-11db-937f-000e0c431b59-B334-FHM7-A3h6-Fw3F-CG0c-EdzL', '1a0a8b57-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b57-99a8-11db-937f-000e0c431b59-Bge2-FpaC-AW5O-FUDu-CU95-EUKT', '1a0a8b57-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b57-99a8-11db-937f-000e0c431b59-BGWW-F1sW-Aj6J-FNTC-C9zh-E1f9', '1a0a8b57-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b57-99a8-11db-937f-000e0c431b59-Bjis-FzIK-Alqe-FPH7-CGfR-EeyY', '1a0a8b57-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b57-99a8-11db-937f-000e0c431b59-BuNl-FADS-AGFy-FlOU-Ctx3-EbmA', '1a0a8b57-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '600', 'г'),
('1a0a8b57-99a8-11db-937f-000e0c431b59-Bw5K-FGHJ-AlGI-F7Kr-CeM8-EIfA', '1a0a8b57-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бук', ''),
('1a0a8b57-99a8-11db-937f-000e0c431b59-BXUY-FTHQ-AYNP-F1qF-CBgf-EIfH', '1a0a8b57-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b57-99a8-11db-937f-000e0c431b59-BzZH-F0ma-AClQ-Fkbv-CiUo-Ebc1', '1a0a8b57-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b59-99a8-11db-937f-000e0c431b59-B0yl-F9Ax-AMyv-FXuw-CksA-ETMe', '1a0a8b59-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b59-99a8-11db-937f-000e0c431b59-B8Nt-FeeR-A0Um-FPBT-C6Qf-EsYo', '1a0a8b59-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b59-99a8-11db-937f-000e0c431b59-BlLz-FNa2-AgWI-FCEg-CrEU-ESCV', '1a0a8b59-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1500', 'г'),
('1a0a8b59-99a8-11db-937f-000e0c431b59-BMdb-Fhyf-ArhT-FE3I-CffD-EB9k', '1a0a8b59-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b59-99a8-11db-937f-000e0c431b59-BmNr-FGdz-ADjU-FUDJ-CsyW-EUya', '1a0a8b59-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бук', ''),
('1a0a8b59-99a8-11db-937f-000e0c431b59-BPMw-FHIR-AZ79-FMMO-Cx8L-E7BM', '1a0a8b59-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b59-99a8-11db-937f-000e0c431b59-Bu7I-FEBB-AMgg-FQie-C1VP-Erqq', '1a0a8b59-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b59-99a8-11db-937f-000e0c431b59-Bwu1-FVai-AgG3-F6eS-Cyrw-EPPl', '1a0a8b59-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b5b-99a8-11db-937f-000e0c431b59-B1xl-Fwnh-Avyj-FAKd-C3ZC-E0RR', '1a0a8b5b-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b5b-99a8-11db-937f-000e0c431b59-B5tU-FRVK-A671-FXIT-Cc3h-EVMv', '1a0a8b5b-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b5b-99a8-11db-937f-000e0c431b59-BGPJ-F2n5-AoOm-Fphz-CKIA-EAWb', '1a0a8b5b-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'дуб', ''),
('1a0a8b5b-99a8-11db-937f-000e0c431b59-Bn0q-FarG-Aj2X-Fmzo-Ckqb-EMcE', '1a0a8b5b-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b5b-99a8-11db-937f-000e0c431b59-BPiG-F3Oo-ArZw-FsZJ-CKRC-E8R9', '1a0a8b5b-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b5b-99a8-11db-937f-000e0c431b59-BuO4-FTOD-AxHd-F1Gv-CHtu-ExJc', '1a0a8b5b-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b5b-99a8-11db-937f-000e0c431b59-BW45-FNQC-Ags6-FDEI-CzdI-EsX9', '1a0a8b5b-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '600', 'г'),
('1a0a8b5b-99a8-11db-937f-000e0c431b59-BZA4-F410-Ao8t-FZv4-C3pm-EM88', '1a0a8b5b-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b5d-99a8-11db-937f-000e0c431b59-BAz3-FZoD-ALE9-FqaA-C2Oh-EmWy', '1a0a8b5d-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b5d-99a8-11db-937f-000e0c431b59-BBDA-F0eY-AJox-FJrl-Cyxm-Eh3T', '1a0a8b5d-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1500', 'г'),
('1a0a8b5d-99a8-11db-937f-000e0c431b59-BGAt-FErJ-AFiY-FnKu-Cb8p-EuNK', '1a0a8b5d-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b5d-99a8-11db-937f-000e0c431b59-BsB7-Fbbs-AUTY-F8fW-C63P-EzGf', '1a0a8b5d-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'дуб', ''),
('1a0a8b5d-99a8-11db-937f-000e0c431b59-BtCO-FfGc-AnKY-FyKw-Ca5e-EWCK', '1a0a8b5d-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b5d-99a8-11db-937f-000e0c431b59-Bts6-FIpb-AekU-Ftaa-COSC-EcGs', '1a0a8b5d-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b5d-99a8-11db-937f-000e0c431b59-Bx5T-FQfQ-Azz8-FbYK-CJYA-ECyo', '1a0a8b5d-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b5d-99a8-11db-937f-000e0c431b59-Bxgu-FHQL-Aifd-Fl8j-CTrl-EiMs', '1a0a8b5d-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b5f-99a8-11db-937f-000e0c431b59-B4wG-FAsr-A4vc-FWxy-C80e-EkxO', '1a0a8b5f-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '600', 'г'),
('1a0a8b5f-99a8-11db-937f-000e0c431b59-Bcmn-F6sT-AQuG-F6l4-CDud-ECWk', '1a0a8b5f-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b5f-99a8-11db-937f-000e0c431b59-BeVj-FeId-ATsd-FGqU-CBwp-E2wH', '1a0a8b5f-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b5f-99a8-11db-937f-000e0c431b59-BFVz-FAbS-Ax2c-FhJr-C4ev-ESxU', '1a0a8b5f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b5f-99a8-11db-937f-000e0c431b59-BJj0-FlHI-ASBn-FETb-CZxw-E9S6', '1a0a8b5f-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b5f-99a8-11db-937f-000e0c431b59-BLpm-Fyu6-APJt-FBIB-C7kn-EjgW', '1a0a8b5f-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b5f-99a8-11db-937f-000e0c431b59-Br82-FFlC-AzC0-FexN-CpyQ-Epyv', '1a0a8b5f-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'махагон', ''),
('1a0a8b5f-99a8-11db-937f-000e0c431b59-BUEY-FTjL-AhOA-Fx5z-Cj0w-E925', '1a0a8b5f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b61-99a8-11db-937f-000e0c431b59-B4aB-F07D-AICC-FjvE-CNpw-ETQj', '1a0a8b61-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b61-99a8-11db-937f-000e0c431b59-B5rF-Fkx4-AvBv-FSIJ-Ck73-Elba', '1a0a8b61-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b61-99a8-11db-937f-000e0c431b59-B7Sl-FDMM-Apcq-FFyK-CN2h-EHXS', '1a0a8b61-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b61-99a8-11db-937f-000e0c431b59-BfCX-FOEf-AQAG-F4km-CPdZ-EWeH', '1a0a8b61-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'махагон', ''),
('1a0a8b61-99a8-11db-937f-000e0c431b59-Bgig-FiIR-AnV8-FZoN-C02P-Ek1j', '1a0a8b61-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b61-99a8-11db-937f-000e0c431b59-BMBk-F9Ut-AI6p-FBgH-Cbah-EcZd', '1a0a8b61-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b61-99a8-11db-937f-000e0c431b59-BT0f-F0AB-AGbb-Fo52-CIbZ-EpAh', '1a0a8b61-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1500', 'г'),
('1a0a8b61-99a8-11db-937f-000e0c431b59-BysA-FehS-A9lG-FfCI-CG9b-EsBn', '1a0a8b61-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b63-99a8-11db-937f-000e0c431b59-B7n4-F4Ch-AHCZ-FXnP-C87O-Ec7P', '1a0a8b63-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'орех', ''),
('1a0a8b63-99a8-11db-937f-000e0c431b59-BLYU-F6Sl-Ahsk-FwMN-CG7r-ErXy', '1a0a8b63-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '600', 'г'),
('1a0a8b63-99a8-11db-937f-000e0c431b59-BNev-Fm2Y-A3zV-FHRS-CWwV-EDsD', '1a0a8b63-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b63-99a8-11db-937f-000e0c431b59-Bph5-Fsva-Avh4-FbMP-CKZu-E7Cl', '1a0a8b63-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b63-99a8-11db-937f-000e0c431b59-BtnD-FmFQ-A3Pq-FmMs-COho-EpPr', '1a0a8b63-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b63-99a8-11db-937f-000e0c431b59-Buek-FaGw-AJUU-Fx0j-CeXy-ElRX', '1a0a8b63-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b63-99a8-11db-937f-000e0c431b59-BV6b-FrCs-A0Zf-FUdO-CYJv-ES2g', '1a0a8b63-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b63-99a8-11db-937f-000e0c431b59-BYOG-F4jk-AH8t-F4Ql-Ca0P-EdmU', '1a0a8b63-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b65-99a8-11db-937f-000e0c431b59-B6B5-FC9k-Awv5-FbXO-CCdQ-EYMQ', '1a0a8b65-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b65-99a8-11db-937f-000e0c431b59-BdgI-FyTI-AYyf-FMZw-CjlL-E4hd', '1a0a8b65-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'орех', ''),
('1a0a8b65-99a8-11db-937f-000e0c431b59-Begu-FYwH-ArfJ-FyzN-CSuP-EMxN', '1a0a8b65-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b65-99a8-11db-937f-000e0c431b59-BFVW-Flhw-AXGX-FjA5-CDf0-EPm1', '1a0a8b65-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b65-99a8-11db-937f-000e0c431b59-BGCW-Ft0F-ATe4-FPXT-CtBG-ETEd', '1a0a8b65-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b65-99a8-11db-937f-000e0c431b59-Bo6y-F07e-Asvn-F7sk-Cfy6-E3Zd', '1a0a8b65-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b65-99a8-11db-937f-000e0c431b59-Boxk-FCWl-A8aH-F7qt-CxUo-EmUl', '1a0a8b65-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b65-99a8-11db-937f-000e0c431b59-Bwj0-FqAW-A6C1-FMbD-Cc6k-ENTW', '1a0a8b65-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1500', 'г'),
('1a0a8b67-99a8-11db-937f-000e0c431b59-B7Kg-FXI1-AmU8-FZfu-CNDd-EEbZ', '1a0a8b67-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b67-99a8-11db-937f-000e0c431b59-BefX-Fc64-ANJ7-FrOY-CGkR-E4LN', '1a0a8b67-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b67-99a8-11db-937f-000e0c431b59-BG2m-FsIY-ANdp-FPNZ-CMzV-ETZ9', '1a0a8b67-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b67-99a8-11db-937f-000e0c431b59-Bm7G-FjnV-A8t6-FPmH-Cd4b-E0ed', '1a0a8b67-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b67-99a8-11db-937f-000e0c431b59-BoWs-FkmV-AsFP-FJFt-CmLl-EP4u', '1a0a8b67-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '600', 'г'),
('1a0a8b67-99a8-11db-937f-000e0c431b59-BRUg-FlBG-AWIm-FRwf-CVRB-Ett8', '1a0a8b67-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b67-99a8-11db-937f-000e0c431b59-BVB2-Fezq-AsHb-F9UO-CLGx-ELxy', '1a0a8b67-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'сосна', ''),
('1a0a8b67-99a8-11db-937f-000e0c431b59-BW4w-Fk6X-AITU-Frjv-CGf6-En4D', '1a0a8b67-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b69-99a8-11db-937f-000e0c431b59-B1UP-FUZr-A8KQ-FcrK-C8EL-EHf4', '1a0a8b69-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b69-99a8-11db-937f-000e0c431b59-B8to-Fsvw-AuXu-FHPD-C4zU-E2oD', '1a0a8b69-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('1a0a8b69-99a8-11db-937f-000e0c431b59-BGiB-FWm6-ACqe-FFbn-Cvie-Eg5f', '1a0a8b69-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b69-99a8-11db-937f-000e0c431b59-Bgpu-FQ2i-Ae6g-FmDK-CDA4-Ertp', '1a0a8b69-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1500', 'г'),
('1a0a8b69-99a8-11db-937f-000e0c431b59-BI3C-FrT1-AFNu-FCHC-Cm9W-E2Sw', '1a0a8b69-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b69-99a8-11db-937f-000e0c431b59-BjQ8-Fzto-AArt-FLyO-CE8H-EHob', '1a0a8b69-99a8-11db-937f-000e0c431b59', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('1a0a8b69-99a8-11db-937f-000e0c431b59-BnHN-FTXb-AskQ-FE4p-CDiC-EvJp', '1a0a8b69-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'сосна', ''),
('1a0a8b69-99a8-11db-937f-000e0c431b59-BXAJ-FarB-AXJi-FbyY-C457-E5Rj', '1a0a8b69-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b6b-99a8-11db-937f-000e0c431b59-B6yj-F22Y-AZNa-FNKj-ClYR-ERsr', '1a0a8b6b-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('1a0a8b6b-99a8-11db-937f-000e0c431b59-BbbN-FuUV-ALFO-FWpC-Cbya-EemS', '1a0a8b6b-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b6b-99a8-11db-937f-000e0c431b59-BIXD-Fy3s-AnT5-FUob-CszJ-E2eF', '1a0a8b6b-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b6b-99a8-11db-937f-000e0c431b59-BKrJ-Fo7j-A8HS-F3Ib-Cu3K-EkxF', '1a0a8b6b-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бежевый', ''),
('1a0a8b6b-99a8-11db-937f-000e0c431b59-BMPl-FHjQ-AiRG-FrJk-CxlC-EAVX', '1a0a8b6b-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b6b-99a8-11db-937f-000e0c431b59-BNsp-FUaz-A6Nb-F8Nw-CUjU-EwKO', '1a0a8b6b-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b6b-99a8-11db-937f-000e0c431b59-BWhc-Fk4I-AnU7-FDzi-CVCx-E8JX', '1a0a8b6b-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b6d-99a8-11db-937f-000e0c431b59-B16w-FRJ8-A2uW-FIBF-C1It-EvpU', '1a0a8b6d-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b6d-99a8-11db-937f-000e0c431b59-B5AR-FnpA-Ahip-FOAK-Cy2G-EkIP', '1a0a8b6d-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b6d-99a8-11db-937f-000e0c431b59-B9nt-F36N-A6dQ-F8AO-CHjM-ERS4', '1a0a8b6d-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('1a0a8b6d-99a8-11db-937f-000e0c431b59-BGn6-FhlI-AU7s-Fot4-C4or-Ecfj', '1a0a8b6d-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бежевый', ''),
('1a0a8b6d-99a8-11db-937f-000e0c431b59-Bi00-F5IB-A00J-Ftvz-CDpz-EUTe', '1a0a8b6d-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b6d-99a8-11db-937f-000e0c431b59-Bi8J-Fsq6-Aiul-FXF5-C3bu-E5b1', '1a0a8b6d-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b6d-99a8-11db-937f-000e0c431b59-BV1C-FAFD-AL45-FReC-ChCC-Eh8K', '1a0a8b6d-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b6f-99a8-11db-937f-000e0c431b59-BanQ-F3gF-Ag0J-FEIm-CB8H-Eqd4', '1a0a8b6f-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b6f-99a8-11db-937f-000e0c431b59-BHfI-Fn2e-AvRl-FTmt-CRCX-Eh65', '1a0a8b6f-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('1a0a8b6f-99a8-11db-937f-000e0c431b59-BN1n-FyNs-AsFK-FdAm-CU9P-ED2L', '1a0a8b6f-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бежевый', ''),
('1a0a8b6f-99a8-11db-937f-000e0c431b59-BP5p-FZYq-ABsp-FRwh-CcET-EHmD', '1a0a8b6f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b6f-99a8-11db-937f-000e0c431b59-BRwo-Fito-Ax2O-F0Jg-C3XW-EgLk', '1a0a8b6f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b6f-99a8-11db-937f-000e0c431b59-Bva6-FAZF-AgSc-F3yn-CcEi-EId7', '1a0a8b6f-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b6f-99a8-11db-937f-000e0c431b59-Bzep-Ffwb-ACOf-FWVI-CZHi-EVH8', '1a0a8b6f-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b71-99a8-11db-937f-000e0c431b59-BBvH-FnEt-AWWw-Ft4r-CngJ-EhSq', '1a0a8b71-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b71-99a8-11db-937f-000e0c431b59-Bfiu-F66x-Ao8a-FCOm-Cn82-EygI', '1a0a8b71-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b71-99a8-11db-937f-000e0c431b59-BG4Q-FizX-AwaN-FJBi-CYhH-EIcC', '1a0a8b71-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '900', 'г'),
('1a0a8b71-99a8-11db-937f-000e0c431b59-BjqO-FjLc-ACky-FBHy-C2Jj-E0wo', '1a0a8b71-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b71-99a8-11db-937f-000e0c431b59-Bmb4-FvgC-AYhA-FfOd-CYW9-Eh01', '1a0a8b71-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый глянцевый', ''),
('1a0a8b71-99a8-11db-937f-000e0c431b59-BsIA-Ff35-ANfa-FWDs-CCmY-EQMk', '1a0a8b71-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b71-99a8-11db-937f-000e0c431b59-BtOK-FiQS-AWHb-F7HO-Ck1W-ElVO', '1a0a8b71-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b73-99a8-11db-937f-000e0c431b59-B7H0-FXKO-AAxM-F3ls-CAsl-EQQb', '1a0a8b73-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый глянцевый', ''),
('1a0a8b73-99a8-11db-937f-000e0c431b59-BDkR-F5sO-Acqs-FFFM-CVoi-EvE1', '1a0a8b73-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('1a0a8b73-99a8-11db-937f-000e0c431b59-BhFa-F0mK-A4K1-F5t5-CGg9-EEf4', '1a0a8b73-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b73-99a8-11db-937f-000e0c431b59-BiWa-FZRJ-ATXq-FRcL-CLHZ-EBE8', '1a0a8b73-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b73-99a8-11db-937f-000e0c431b59-BnD3-F1M5-AZlb-Fgt5-CiqB-EiDL', '1a0a8b73-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b73-99a8-11db-937f-000e0c431b59-BoNz-F7hB-AfT2-FI7h-C9en-EYdP', '1a0a8b73-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b73-99a8-11db-937f-000e0c431b59-BxD9-F06j-As6S-FTMi-Cvzm-Enqz', '1a0a8b73-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b75-99a8-11db-937f-000e0c431b59-B5XO-Flpq-Ax2y-FM43-CK7c-Eb2L', '1a0a8b75-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый глянцевый', ''),
('1a0a8b75-99a8-11db-937f-000e0c431b59-B6rx-FpLf-AbZH-FCQd-Colb-EeZd', '1a0a8b75-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b75-99a8-11db-937f-000e0c431b59-B6ym-FtBf-AlMc-FEoT-CQUn-EItD', '1a0a8b75-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b75-99a8-11db-937f-000e0c431b59-B9hv-FwSN-AUGv-FLsD-Cfnu-ETT6', '1a0a8b75-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('1a0a8b75-99a8-11db-937f-000e0c431b59-BGTx-FtdT-AZdu-Ferw-COmk-E1Vm', '1a0a8b75-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b75-99a8-11db-937f-000e0c431b59-BpT3-FYZ8-Akum-FJfq-CAaE-EOBu', '1a0a8b75-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b75-99a8-11db-937f-000e0c431b59-BV8z-FyCd-AHSy-Fvbh-Cyi2-ElRU', '1a0a8b75-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b7b-99a8-11db-937f-000e0c431b59-B5dm-Fq3m-AqNR-FEoA-CHCT-E2Xa', '1a0a8b7b-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('1a0a8b7b-99a8-11db-937f-000e0c431b59-BA83-F43R-ACFM-FnI9-CrWI-EfN6', '1a0a8b7b-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b7b-99a8-11db-937f-000e0c431b59-BErd-Fd4g-Agv3-F5YI-CN5l-EDwE', '1a0a8b7b-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('1a0a8b7b-99a8-11db-937f-000e0c431b59-BFIR-FRva-APdw-FY00-CUpX-EasD', '1a0a8b7b-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b7b-99a8-11db-937f-000e0c431b59-BNKx-F2xK-AJJY-FS3g-CB8O-EeaH', '1a0a8b7b-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b7b-99a8-11db-937f-000e0c431b59-BpXF-FDp9-Akq6-FyLW-C6MU-ExGM', '1a0a8b7b-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b7b-99a8-11db-937f-000e0c431b59-BYTu-FUH6-AqCI-FA1O-CM6W-EeNI', '1a0a8b7b-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b7d-99a8-11db-937f-000e0c431b59-B1Xv-FlZU-ALrn-Fuf6-Czlr-EGo4', '1a0a8b7d-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b7d-99a8-11db-937f-000e0c431b59-B4DD-FLHr-ALOt-FeGH-C65K-EZzP', '1a0a8b7d-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b7d-99a8-11db-937f-000e0c431b59-BAtt-FuO1-A2Ju-FCik-CRSj-ExSF', '1a0a8b7d-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b7d-99a8-11db-937f-000e0c431b59-BFvQ-FDMt-AXcG-Fvvo-CQwX-EAgm', '1a0a8b7d-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b7d-99a8-11db-937f-000e0c431b59-Bt0g-F0fR-AdL8-FadU-CQWX-ETie', '1a0a8b7d-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b7d-99a8-11db-937f-000e0c431b59-BxDd-F6EU-AJRQ-Fgvd-Cpp8-ERWz', '1a0a8b7d-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бирюзовый', ''),
('1a0a8b7d-99a8-11db-937f-000e0c431b59-BzCW-F6xH-AkE5-F9Ea-Ck6y-EWgO', '1a0a8b7d-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('1a0a8b7f-99a8-11db-937f-000e0c431b59-BE5t-FOyz-AG0A-F7uS-Cqca-ENVG', '1a0a8b7f-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b7f-99a8-11db-937f-000e0c431b59-BF8j-FH58-AyvL-Fi9V-CFTF-Eriy', '1a0a8b7f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b7f-99a8-11db-937f-000e0c431b59-BrHg-F4qe-AOvy-FUdW-CI1k-EQyT', '1a0a8b7f-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b7f-99a8-11db-937f-000e0c431b59-Brk3-Fg5W-A3DM-FdUB-CwY6-Egnu', '1a0a8b7f-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('1a0a8b7f-99a8-11db-937f-000e0c431b59-Brr6-FUcb-AQSC-F8Yq-C1Nt-EMJh', '1a0a8b7f-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бирюзовый', ''),
('1a0a8b7f-99a8-11db-937f-000e0c431b59-BUul-FPsp-ApTk-FepH-CsWy-EorR', '1a0a8b7f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b7f-99a8-11db-937f-000e0c431b59-BXOH-F9sx-AFaK-F5F3-CLKz-EuSu', '1a0a8b7f-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b81-99a8-11db-937f-000e0c431b59-B3nH-FmpE-AgSk-FP4l-C3DZ-EmD3', '1a0a8b81-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b81-99a8-11db-937f-000e0c431b59-Bbqz-FnKJ-Ap7h-FkcK-CVy5-EFKk', '1a0a8b81-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b81-99a8-11db-937f-000e0c431b59-Bhrw-FFr6-A5Nd-FnK0-C4Dm-EBqR', '1a0a8b81-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('1a0a8b81-99a8-11db-937f-000e0c431b59-Bjy9-Ff5i-AwG1-FoLo-CamV-EPQf', '1a0a8b81-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b81-99a8-11db-937f-000e0c431b59-BJyt-F0c6-Ao4h-F0Jy-Cfit-E8fQ', '1a0a8b81-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b81-99a8-11db-937f-000e0c431b59-BVtt-FVqe-AoX7-FFkR-CMS2-EEyw', '1a0a8b81-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бирюзовый', ''),
('1a0a8b81-99a8-11db-937f-000e0c431b59-BZ6c-F7g6-AH2t-FC74-Cnfs-ElBn', '1a0a8b81-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b83-99a8-11db-937f-000e0c431b59-B4TG-FAdP-A4Bn-FFNp-Czok-EQtU', '1a0a8b83-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b83-99a8-11db-937f-000e0c431b59-BaDz-FViw-AQ3x-FcHQ-CWBk-EdBE', '1a0a8b83-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b83-99a8-11db-937f-000e0c431b59-Bb6a-FFtJ-ATf6-Ff76-CTBL-EOc5', '1a0a8b83-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b83-99a8-11db-937f-000e0c431b59-BEQ6-Fbso-A1MG-FKJ3-CiYM-ELBu', '1a0a8b83-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'вишневый', ''),
('1a0a8b83-99a8-11db-937f-000e0c431b59-BhJL-FVmT-Al0U-FLcV-CPKQ-EVgQ', '1a0a8b83-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b83-99a8-11db-937f-000e0c431b59-BohG-FmJM-ATFt-FE1m-CXYv-EjtX', '1a0a8b83-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('1a0a8b83-99a8-11db-937f-000e0c431b59-Bs5G-FWAT-ABz8-FlGr-C6gu-Ev3T', '1a0a8b83-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b85-99a8-11db-937f-000e0c431b59-BD7p-FOmn-AQGX-FbtY-CdcT-E8wX', '1a0a8b85-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b85-99a8-11db-937f-000e0c431b59-BFMk-Fqce-ARVh-Fr8k-CkfS-EWl0', '1a0a8b85-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'вишневый', ''),
('1a0a8b85-99a8-11db-937f-000e0c431b59-BOTn-FniP-A4qn-FysO-CvvL-EaAy', '1a0a8b85-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('1a0a8b85-99a8-11db-937f-000e0c431b59-Bs5d-FUER-AhPY-FPmQ-CHX5-ECl7', '1a0a8b85-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b85-99a8-11db-937f-000e0c431b59-BSfM-FwJX-AvDb-FYEI-CqKV-EQ2x', '1a0a8b85-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b85-99a8-11db-937f-000e0c431b59-BuII-FS1G-A3bl-FKyM-CKGs-EX32', '1a0a8b85-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b85-99a8-11db-937f-000e0c431b59-Bvo6-FNCA-AVsL-Fq9C-CdtL-EmBC', '1a0a8b85-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b87-99a8-11db-937f-000e0c431b59-B3UW-FNgy-Aiv0-FzHg-CFwE-ELYN', '1a0a8b87-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'вишневый', ''),
('1a0a8b87-99a8-11db-937f-000e0c431b59-B7R8-FNAd-AU3E-F2nu-ClaB-EqB8', '1a0a8b87-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b87-99a8-11db-937f-000e0c431b59-BFZ4-FEOB-AkTx-FofM-C356-EKDs', '1a0a8b87-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b87-99a8-11db-937f-000e0c431b59-BRyv-Fwgu-AW7D-FtPM-CcMd-EaZd', '1a0a8b87-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('1a0a8b87-99a8-11db-937f-000e0c431b59-BTy3-F1Vn-AHPQ-FtfH-C2lg-Evpu', '1a0a8b87-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b87-99a8-11db-937f-000e0c431b59-BwQE-Fk6k-Awyf-Fs9j-CaSX-ETJs', '1a0a8b87-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b87-99a8-11db-937f-000e0c431b59-BYsS-FIxI-AuKh-FguQ-C5nl-EQ1I', '1a0a8b87-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b89-99a8-11db-937f-000e0c431b59-B1kE-FxSr-Ayku-FW9b-CZaW-EYv2', '1a0a8b89-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('1a0a8b89-99a8-11db-937f-000e0c431b59-B5uW-F9lA-AtNa-Fu4c-CsLQ-Ee8w', '1a0a8b89-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'голубой', ''),
('1a0a8b89-99a8-11db-937f-000e0c431b59-Bb50-FVet-AFAR-FXqD-CAag-EpY6', '1a0a8b89-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b89-99a8-11db-937f-000e0c431b59-BbhG-FnfD-AN75-Fjut-CghS-Eqwm', '1a0a8b89-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b89-99a8-11db-937f-000e0c431b59-BOTt-FRD9-AegL-F87k-Cb1V-Exz7', '1a0a8b89-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b89-99a8-11db-937f-000e0c431b59-Btco-F9ZL-ALJ8-FrmA-CRDi-EYqD', '1a0a8b89-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b89-99a8-11db-937f-000e0c431b59-BxiJ-FOTD-AqCO-F7gM-Ctvg-EcDk', '1a0a8b89-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b8b-99a8-11db-937f-000e0c431b59-B9GH-FR92-ANcV-Fsqw-CALJ-EQmU', '1a0a8b8b-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('1a0a8b8b-99a8-11db-937f-000e0c431b59-Bb3n-FatH-A8yS-F2u7-Cdde-EOaS', '1a0a8b8b-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b8b-99a8-11db-937f-000e0c431b59-BfXP-FbKM-AdDq-FEQq-CNsj-E2JS', '1a0a8b8b-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b8b-99a8-11db-937f-000e0c431b59-BhiU-FfiO-A3d0-F1eh-CFL4-E6nm', '1a0a8b8b-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b8b-99a8-11db-937f-000e0c431b59-BI12-FaOh-AdO9-F05X-C6u8-EAiP', '1a0a8b8b-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'голубой', ''),
('1a0a8b8b-99a8-11db-937f-000e0c431b59-BrWz-Fcsx-A5HN-FRg0-CIp1-E0FF', '1a0a8b8b-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b8b-99a8-11db-937f-000e0c431b59-Bthu-F8yR-A777-Fx7B-C3ek-EN0J', '1a0a8b8b-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b8d-99a8-11db-937f-000e0c431b59-B34B-FN1J-AcNm-FccX-CKS9-E46F', '1a0a8b8d-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('1a0a8b8d-99a8-11db-937f-000e0c431b59-BdGY-FJKp-A1YX-FZPg-CsOn-Ezfm', '1a0a8b8d-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'голубой', ''),
('1a0a8b8d-99a8-11db-937f-000e0c431b59-BEGS-FwAc-AAhU-F8HP-CXd0-EOur', '1a0a8b8d-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b8d-99a8-11db-937f-000e0c431b59-BrtE-FDbu-Azc7-F9ti-CTMp-ErWz', '1a0a8b8d-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a0a8b8d-99a8-11db-937f-000e0c431b59-BVt2-FRsl-A1Bx-FfsJ-CVFW-Ekz9', '1a0a8b8d-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b8d-99a8-11db-937f-000e0c431b59-BWMO-Fume-AQUs-F5KN-Cg28-Ek5Z', '1a0a8b8d-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b8d-99a8-11db-937f-000e0c431b59-Bzlt-FnGc-Axch-FJCW-CHGd-Ea3d', '1a0a8b8d-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b8f-99a8-11db-937f-000e0c431b59-BaO2-F0dB-AEAi-FJFF-CqIA-EzdP', '1a0a8b8f-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a0a8b8f-99a8-11db-937f-000e0c431b59-BD5I-FVPo-Aiqe-FfpO-CVNN-EKb7', '1a0a8b8f-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1a0a8b8f-99a8-11db-937f-000e0c431b59-BdC7-F9il-AM4y-FaDQ-CWde-EOd8', '1a0a8b8f-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a0a8b8f-99a8-11db-937f-000e0c431b59-Bi0z-FOsP-Ax6i-FOJF-ChhF-EEhh', '1a0a8b8f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a0a8b8f-99a8-11db-937f-000e0c431b59-BQh9-FyrD-A5YM-F5Np-CKrs-EHqQ', '1a0a8b8f-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('1a0a8b8f-99a8-11db-937f-000e0c431b59-BVth-F33j-APAq-Ftai-CNTb-EOgS', '1a0a8b8f-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желтый', ''),
('1a0a8b8f-99a8-11db-937f-000e0c431b59-BX0g-F0b0-AXlR-FVfN-Ca17-E9tz', '1a0a8b8f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1a1ab87b-f78e-11e3-8c8a-005056be1f7b-BB03-Fa4z-AdIH-FtSg-CM22-E8wt', '1a1ab87b-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'синий', ''),
('1a1ab87b-f78e-11e3-8c8a-005056be1f7b-Bb7x-FipG-AF38-F8zu-CrpB-EJ9Z', '1a1ab87b-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1a1ab87b-f78e-11e3-8c8a-005056be1f7b-BdD5-FDr5-Azc7-FlEZ-CRgV-EEFB', '1a1ab87b-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('1a1ab87b-f78e-11e3-8c8a-005056be1f7b-Bfjc-F4eb-ARy6-FsDb-C2My-EcSw', '1a1ab87b-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('1a1ab87b-f78e-11e3-8c8a-005056be1f7b-BJWl-FF9q-AfPM-F2US-C3fd-Ewpm', '1a1ab87b-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1a1ab87b-f78e-11e3-8c8a-005056be1f7b-BLL4-FJIt-A4zY-F50X-CUdb-EOgI', '1a1ab87b-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1a1ab87b-f78e-11e3-8c8a-005056be1f7b-BzRc-FTYU-AEej-FnAw-CuCv-Emcp', '1a1ab87b-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1b75918d-9fb8-11e3-8705-005056be1f7b-BbDD-FoZ4-AWOT-F2oy-CTfG-Ei1R', '1b75918d-9fb8-11e3-8705-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('1b75918d-9fb8-11e3-8705-005056be1f7b-BEeG-Fhxk-A1og-FNjF-C0XB-EAfz', '1b75918d-9fb8-11e3-8705-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1b75918d-9fb8-11e3-8705-005056be1f7b-Bl85-Ft21-AfRc-FSeS-C26W-E5jw', '1b75918d-9fb8-11e3-8705-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('1b75918d-9fb8-11e3-8705-005056be1f7b-Bpb7-Fzel-Azz1-FxD1-CnIV-EuqI', '1b75918d-9fb8-11e3-8705-005056be1f7b', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('1b75918d-9fb8-11e3-8705-005056be1f7b-Brb7-Fcaq-AsPF-Fb0U-CoVZ-ErhS', '1b75918d-9fb8-11e3-8705-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1b75918d-9fb8-11e3-8705-005056be1f7b-BVEC-FM3G-ACgP-FYR6-Cgmc-EUeM', '1b75918d-9fb8-11e3-8705-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1b75918d-9fb8-11e3-8705-005056be1f7b-BVgx-F2uW-A8tu-F0tQ-CyZs-EuON', '1b75918d-9fb8-11e3-8705-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('1b75918d-9fb8-11e3-8705-005056be1f7b-By6A-FHxp-A7GK-FDoA-CUP8-EO0z', '1b75918d-9fb8-11e3-8705-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1b75918d-9fb8-11e3-8705-005056be1f7b-Byky-FE0F-AAfs-Fc1M-Cphn-Em0E', '1b75918d-9fb8-11e3-8705-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '900', 'г'),
('1bd57597-93b0-11e3-82a4-005056be1f7b-BCtw-FayX-APT0-Fov7-CWJ6-EsHo', '1bd57597-93b0-11e3-82a4-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('1bd57597-93b0-11e3-82a4-005056be1f7b-BEar-FIlI-AUbv-F1hi-C4FO-EaBq', '1bd57597-93b0-11e3-82a4-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('1bd57597-93b0-11e3-82a4-005056be1f7b-Biqh-F6bf-AMlg-FMh8-CB2o-EKK0', '1bd57597-93b0-11e3-82a4-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('1bd57597-93b0-11e3-82a4-005056be1f7b-BLUQ-FJgc-A4eX-Fv8Q-CKAA-E7bz', '1bd57597-93b0-11e3-82a4-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1bd57597-93b0-11e3-82a4-005056be1f7b-BsIg-F9hi-AzXX-FFlz-CemY-Ec7s', '1bd57597-93b0-11e3-82a4-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1bd57597-93b0-11e3-82a4-005056be1f7b-BTqI-FTV5-APsD-FLbL-Czmg-EGwD', '1bd57597-93b0-11e3-82a4-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('1bd57597-93b0-11e3-82a4-005056be1f7b-BX9V-F9td-AMl8-FMLt-C852-Ed4Y', '1bd57597-93b0-11e3-82a4-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1bd57597-93b0-11e3-82a4-005056be1f7b-BXvs-FQvI-AWvQ-FZC1-CzyQ-EObZ', '1bd57597-93b0-11e3-82a4-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'синий', ''),
('1d967145-f787-11e3-8c8a-005056be1f7b-B3Xs-Ff23-Anf7-F5YD-C8i6-EPvG', '1d967145-f787-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1d967145-f787-11e3-8c8a-005056be1f7b-B5JO-FDwR-AuNB-FSQP-CKvv-E0YL', '1d967145-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1d967145-f787-11e3-8c8a-005056be1f7b-Begy-FnZj-AaYN-FmT5-CRsy-EZfJ', '1d967145-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1d967145-f787-11e3-8c8a-005056be1f7b-Bizj-Fwc4-Aqtm-FeJH-CnDR-E3HD', '1d967145-f787-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('1d967145-f787-11e3-8c8a-005056be1f7b-BK3R-FMKi-AbVT-FNVs-CZ5h-E0q0', '1d967145-f787-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1d967145-f787-11e3-8c8a-005056be1f7b-BxMc-FGay-Ayzs-FVyZ-CVrw-EEMo', '1d967145-f787-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('1d967145-f787-11e3-8c8a-005056be1f7b-BY4I-FwVe-AnFI-FnCr-Cbui-ECN3', '1d967145-f787-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серебрянный', ''),
('1f4ff69d-f78f-11e3-8c8a-005056be1f7b-B47r-FcoS-AHKK-F8n9-CV6q-Errp', '1f4ff69d-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('1f4ff69d-f78f-11e3-8c8a-005056be1f7b-BGgq-Fy9A-AxSl-FrpN-CJiK-E2By', '1f4ff69d-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('1f4ff69d-f78f-11e3-8c8a-005056be1f7b-BJI0-FTGn-AScj-F9KQ-CoQw-EVFv', '1f4ff69d-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('1f4ff69d-f78f-11e3-8c8a-005056be1f7b-BQ6D-FBig-AUPj-Frko-Cg31-EcyX', '1f4ff69d-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('1f4ff69d-f78f-11e3-8c8a-005056be1f7b-BQkQ-F7M9-ApMu-FndT-CrCW-EUEz', '1f4ff69d-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серый', ''),
('1f4ff69d-f78f-11e3-8c8a-005056be1f7b-BRM6-F7hz-A49d-FRCD-CCTn-ESQ1', '1f4ff69d-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('1f4ff69d-f78f-11e3-8c8a-005056be1f7b-BSrW-Fv0Y-AyBs-FcU9-CTk4-EWlc', '1f4ff69d-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('206ff829-f790-11e3-8c8a-005056be1f7b-BBhr-FUBB-AYWK-FGx2-CIIH-EEYC', '206ff829-f790-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('206ff829-f790-11e3-8c8a-005056be1f7b-BivN-FCDk-A2Ru-FqvA-CjCG-EpHG', '206ff829-f790-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный', ''),
('206ff829-f790-11e3-8c8a-005056be1f7b-Bkrt-F2kK-AvmT-FPEI-CzFq-EgZs', '206ff829-f790-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('206ff829-f790-11e3-8c8a-005056be1f7b-BMh0-F1i7-A8Q0-FgKA-CAsw-ENv1', '206ff829-f790-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('206ff829-f790-11e3-8c8a-005056be1f7b-BrjZ-FrGk-ArGS-FeUE-CUIr-EbrB', '206ff829-f790-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('206ff829-f790-11e3-8c8a-005056be1f7b-BUQ6-FP6f-ATqR-F4b4-CBId-Ebzk', '206ff829-f790-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('206ff829-f790-11e3-8c8a-005056be1f7b-BynH-FiU3-Ai56-FpjD-Cvvk-EumI', '206ff829-f790-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f87c-99a8-11db-937f-000e0c431b59-BbGR-FLBZ-AlMR-F6hr-CjH7-E5Yd', '20b7f87c-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f87c-99a8-11db-937f-000e0c431b59-BdPB-FvLj-Aduq-FZoF-C4z7-EMc9', '20b7f87c-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f87c-99a8-11db-937f-000e0c431b59-Bjjl-FWGm-AD4F-F18u-Cqb0-ErML', '20b7f87c-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f87c-99a8-11db-937f-000e0c431b59-BjOU-FRhQ-Acyc-FKEd-CkYZ-EZ5Q', '20b7f87c-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f87c-99a8-11db-937f-000e0c431b59-BK1S-FnBX-AHmw-FgBr-Cwcx-EEoz', '20b7f87c-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f87c-99a8-11db-937f-000e0c431b59-Bt4K-FiUN-Ayrr-FT6K-CRMs-EPBZ', '20b7f87c-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желтый', ''),
('20b7f87c-99a8-11db-937f-000e0c431b59-BT6y-Fg1C-AMBu-F5Ia-CL2T-EVan', '20b7f87c-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f87e-99a8-11db-937f-000e0c431b59-B1YZ-FNNf-AWGf-FSvN-CFkt-E6Qv', '20b7f87e-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('20b7f87e-99a8-11db-937f-000e0c431b59-B4xv-Ft1K-AwD1-FgMf-CV7N-EJF6', '20b7f87e-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f87e-99a8-11db-937f-000e0c431b59-BJHm-F5k4-AwmX-FzGI-C407-Eosw', '20b7f87e-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f87e-99a8-11db-937f-000e0c431b59-BMKb-FSBZ-ACr1-FCZD-CNqt-EJoz', '20b7f87e-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f87e-99a8-11db-937f-000e0c431b59-BRq6-F9Fk-AD0Z-FAL3-C9vb-EjHi', '20b7f87e-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желтый', ''),
('20b7f87e-99a8-11db-937f-000e0c431b59-Btsy-FJs0-ABru-FdQ3-CBdC-EdvE', '20b7f87e-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f87e-99a8-11db-937f-000e0c431b59-Bzf1-FpCD-ALX0-FYhF-CUrM-E7lx', '20b7f87e-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f880-99a8-11db-937f-000e0c431b59-B9bJ-F9zq-ADJX-FPG0-CC8X-EcKk', '20b7f880-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'зеленый', ''),
('20b7f880-99a8-11db-937f-000e0c431b59-B9gr-Fdzc-Ar5C-Fb1S-CMyu-EVwj', '20b7f880-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f880-99a8-11db-937f-000e0c431b59-BC1t-FaF1-AaIx-Fxl9-CYjf-EFDU', '20b7f880-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f880-99a8-11db-937f-000e0c431b59-BiuP-FlLF-A4Y5-Four-COwh-E8Nn', '20b7f880-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f880-99a8-11db-937f-000e0c431b59-Bqz0-Fn56-AnUZ-FY0f-CUue-EoZI', '20b7f880-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f880-99a8-11db-937f-000e0c431b59-Bu0U-FpnE-AW21-F5zE-Chns-ETPJ', '20b7f880-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f880-99a8-11db-937f-000e0c431b59-Bynw-FlbX-Aj17-FF60-CZeu-EpF6', '20b7f880-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f882-99a8-11db-937f-000e0c431b59-B3mJ-FRIT-AiH4-FW2T-CEYG-EAas', '20b7f882-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f882-99a8-11db-937f-000e0c431b59-Bagw-F15v-AVOf-F136-C9ks-E9JY', '20b7f882-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f882-99a8-11db-937f-000e0c431b59-Bgw7-FCmy-A8lZ-Fpji-CEWW-Ernf', '20b7f882-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f882-99a8-11db-937f-000e0c431b59-BHju-FA6m-AU0B-FaAb-CJzz-EcE4', '20b7f882-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f882-99a8-11db-937f-000e0c431b59-Bsw0-Fjqz-AnOc-FVhs-CfOh-Ef3c', '20b7f882-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'зеленый', ''),
('20b7f882-99a8-11db-937f-000e0c431b59-Bxxm-FQJK-A9oZ-FgJR-C9kx-Euar', '20b7f882-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f882-99a8-11db-937f-000e0c431b59-BzYT-FOE4-AxIQ-FJ14-Cosf-EyAn', '20b7f882-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f884-99a8-11db-937f-000e0c431b59-B9F9-F7a6-A9pP-F27K-CvHl-EV5D', '20b7f884-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f884-99a8-11db-937f-000e0c431b59-BC5H-FDVH-Aee8-FU8B-COT4-ER65', '20b7f884-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f884-99a8-11db-937f-000e0c431b59-BLbj-FxbC-AaGn-FlfN-CthI-E1ke', '20b7f884-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f884-99a8-11db-937f-000e0c431b59-BqD6-F4bc-ArT9-FkKZ-C57z-E49H', '20b7f884-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('20b7f884-99a8-11db-937f-000e0c431b59-BW2C-FmA4-Afpm-FAdm-CokL-EZkH', '20b7f884-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'зеленый', ''),
('20b7f884-99a8-11db-937f-000e0c431b59-BwZ9-FBR6-AMDC-FyY8-C2wS-EBxP', '20b7f884-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f884-99a8-11db-937f-000e0c431b59-BYVJ-FB7p-APqM-FYgx-C3f4-E1bT', '20b7f884-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f886-99a8-11db-937f-000e0c431b59-B1FB-FMN4-AVlc-Fi75-CMtE-EJez', '20b7f886-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f886-99a8-11db-937f-000e0c431b59-BiX6-FA7A-Ass8-FgeF-ChLk-EKTm', '20b7f886-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f886-99a8-11db-937f-000e0c431b59-Bqen-FICj-ADOS-FIYw-C9ob-Ed0H', '20b7f886-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f886-99a8-11db-937f-000e0c431b59-BQpf-FUpE-AXxc-FjFs-Cv7x-EwIB', '20b7f886-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f886-99a8-11db-937f-000e0c431b59-BtX2-FCgP-Aye5-FQ85-CYfR-ETgO', '20b7f886-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f886-99a8-11db-937f-000e0c431b59-BwJ8-FvuH-ALpE-FAjC-CHYM-ERPL', '20b7f886-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f886-99a8-11db-937f-000e0c431b59-ByKK-F29i-Az1V-FI2J-CYiM-EUcn', '20b7f886-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'коричневый', ''),
('20b7f888-99a8-11db-937f-000e0c431b59-BbGp-FZNS-AoUn-FpIf-CPrM-EYVU', '20b7f888-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f888-99a8-11db-937f-000e0c431b59-Bg1R-F2HR-AcN8-FHnO-CGVB-Ey2j', '20b7f888-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f888-99a8-11db-937f-000e0c431b59-BirJ-FoHp-AY3j-FJQe-C3wU-EKoc', '20b7f888-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f888-99a8-11db-937f-000e0c431b59-BqEU-FkUR-Afsx-FwBU-CAWj-E7nU', '20b7f888-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f888-99a8-11db-937f-000e0c431b59-Bswr-Ffit-A1jG-FZgt-Cu5u-EY5t', '20b7f888-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f888-99a8-11db-937f-000e0c431b59-BUP7-FRvb-AXTm-F8d7-CjNT-EbPz', '20b7f888-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'коричневый', ''),
('20b7f888-99a8-11db-937f-000e0c431b59-BXBn-FA9H-A7iV-FQ0k-CGqo-EaR0', '20b7f888-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f88a-99a8-11db-937f-000e0c431b59-B2GU-FOVI-A950-Fbpg-Cy4K-E9XT', '20b7f88a-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f88a-99a8-11db-937f-000e0c431b59-B4di-FgIq-ACYX-FOxt-Cj2d-EvgX', '20b7f88a-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f88a-99a8-11db-937f-000e0c431b59-BEuM-Fo4c-AIwP-Fd84-C6ZA-EkyO', '20b7f88a-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'коричневый', ''),
('20b7f88a-99a8-11db-937f-000e0c431b59-BFvX-FlJB-A7vj-Fu6n-Cqwu-EBBF', '20b7f88a-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f88a-99a8-11db-937f-000e0c431b59-Bh2n-FHlj-AvSW-FfTX-CldX-Elmy', '20b7f88a-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('20b7f88a-99a8-11db-937f-000e0c431b59-BJ0A-FJbp-ApPj-F1O8-CJTs-Eg52', '20b7f88a-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f88a-99a8-11db-937f-000e0c431b59-BOoJ-FdIG-AXDg-FYoU-Cmhx-EKE7', '20b7f88a-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f88c-99a8-11db-937f-000e0c431b59-B45W-FfbK-ACzf-Fa29-CacL-ErZ6', '20b7f88c-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f88c-99a8-11db-937f-000e0c431b59-Be3R-FjM4-ADby-FT8G-CCqb-Eu3x', '20b7f88c-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f88c-99a8-11db-937f-000e0c431b59-BlNR-F8tk-AUVE-Fs7q-CgO9-ElGF', '20b7f88c-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f88c-99a8-11db-937f-000e0c431b59-BoDu-FJem-AH5E-FTme-CP6P-EfRs', '20b7f88c-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f88c-99a8-11db-937f-000e0c431b59-BRRE-F2HS-AyRm-Fgxg-CYVY-EBc0', '20b7f88c-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красный', ''),
('20b7f88c-99a8-11db-937f-000e0c431b59-BSuQ-FWdN-AD0c-FBli-CHed-EdA5', '20b7f88c-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f88c-99a8-11db-937f-000e0c431b59-BtVs-FLWT-Audy-FN8z-CHl3-E3vW', '20b7f88c-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f88e-99a8-11db-937f-000e0c431b59-B9k5-FXfO-AVwL-F6tg-ClY5-Eo6m', '20b7f88e-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f88e-99a8-11db-937f-000e0c431b59-BanO-FqWu-AzwY-F5U9-CR7k-E7Vp', '20b7f88e-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f88e-99a8-11db-937f-000e0c431b59-BEmR-F41O-As81-Fk1l-C8Ue-EO4q', '20b7f88e-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красный', ''),
('20b7f88e-99a8-11db-937f-000e0c431b59-BH8H-F7QF-ACSv-FdDo-CRIQ-EiBH', '20b7f88e-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f88e-99a8-11db-937f-000e0c431b59-Bmmp-FYFs-ACX2-FT73-Caum-EfY8', '20b7f88e-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f88e-99a8-11db-937f-000e0c431b59-BpXD-Fgr0-AZIu-FCoI-C0Fv-ENvI', '20b7f88e-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f88e-99a8-11db-937f-000e0c431b59-BxtF-FnU6-APRP-FtgI-CZnF-EhjW', '20b7f88e-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f890-99a8-11db-937f-000e0c431b59-B1Te-FUdU-AMcD-FvD5-CNsF-EWjG', '20b7f890-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('20b7f890-99a8-11db-937f-000e0c431b59-B3qm-FI3E-ATrK-F1Qq-CtOr-E9qB', '20b7f890-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f890-99a8-11db-937f-000e0c431b59-B9BP-FcTz-ArtY-FhEU-C4nm-EBYy', '20b7f890-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f890-99a8-11db-937f-000e0c431b59-BjRI-FuM2-ARxP-FMcL-CyGg-Ejf4', '20b7f890-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f890-99a8-11db-937f-000e0c431b59-BoUu-FYXY-AgWd-FSkP-Cai1-EU7V', '20b7f890-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красный', ''),
('20b7f890-99a8-11db-937f-000e0c431b59-BpKJ-F1AZ-Aguo-FOtV-CPht-EAvp', '20b7f890-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f890-99a8-11db-937f-000e0c431b59-ByYv-FN6z-Aiyd-FK13-C9si-Ek2b', '20b7f890-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f896-99a8-11db-937f-000e0c431b59-B7Ch-FaVn-AaqH-FIEi-CdZk-EhLl', '20b7f896-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f896-99a8-11db-937f-000e0c431b59-Bg2X-F4nM-A2Ve-FTG0-CVer-EXaU', '20b7f896-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f896-99a8-11db-937f-000e0c431b59-Bipz-FoGR-A5tq-FM4g-Czrv-EKmK', '20b7f896-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f896-99a8-11db-937f-000e0c431b59-BOvE-FKWy-A2sF-FacP-CmYR-EKzn', '20b7f896-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f896-99a8-11db-937f-000e0c431b59-BUBE-FvBq-Akd7-Flur-CVQi-EtKM', '20b7f896-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f896-99a8-11db-937f-000e0c431b59-BxPU-F6YY-Ae2x-FEZ9-Cpnt-EuyG', '20b7f896-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f896-99a8-11db-937f-000e0c431b59-BXsC-F7n8-Aktb-F0my-CcPB-EQvu', '20b7f896-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'оранжевый', ''),
('20b7f898-99a8-11db-937f-000e0c431b59-B3Ju-F8NV-AzYe-FYYT-CDqB-Ebo7', '20b7f898-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f898-99a8-11db-937f-000e0c431b59-B4n9-Fley-A7RY-Fbuq-CVyS-EE76', '20b7f898-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f898-99a8-11db-937f-000e0c431b59-BB7n-FgVB-AzYr-F21V-Cxje-EdR4', '20b7f898-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f898-99a8-11db-937f-000e0c431b59-BDlt-FHnA-A0jK-FAPR-CPRO-E3xj', '20b7f898-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f898-99a8-11db-937f-000e0c431b59-BiHB-FWLa-AU1E-FEk3-CKJi-EAyp', '20b7f898-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'оранжевый', ''),
('20b7f898-99a8-11db-937f-000e0c431b59-BRsY-F95R-Aeu9-FQ5l-Cacs-Eby4', '20b7f898-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f898-99a8-11db-937f-000e0c431b59-BtIq-FsZk-ATzD-FCR3-C6JB-EqHO', '20b7f898-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f89a-99a8-11db-937f-000e0c431b59-B7R1-F3mN-AgjQ-FYRD-CQzX-EcKs', '20b7f89a-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f89a-99a8-11db-937f-000e0c431b59-BE6f-FP6u-AgLB-FvDz-CU8c-ETi7', '20b7f89a-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'охристо-желтый', ''),
('20b7f89a-99a8-11db-937f-000e0c431b59-BHfN-Fg89-AMSx-FfXt-Caco-E7rk', '20b7f89a-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f89a-99a8-11db-937f-000e0c431b59-BhUM-FUU1-AqSl-Fhd4-CWnY-EckZ', '20b7f89a-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f89a-99a8-11db-937f-000e0c431b59-BJfG-F8Ad-Aqb7-FVXn-C7D2-Esw2', '20b7f89a-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f89a-99a8-11db-937f-000e0c431b59-BqOv-Fs0z-AiUx-FAnV-C8v2-ELSy', '20b7f89a-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f89a-99a8-11db-937f-000e0c431b59-BS1A-F5Ye-AyuH-FNNr-CmK9-EcDl', '20b7f89a-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f89e-99a8-11db-937f-000e0c431b59-B4bj-FNFx-Aaal-FXMI-CQnF-Es2a', '20b7f89e-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f89e-99a8-11db-937f-000e0c431b59-Ba7b-FOVd-AGVK-Fhgy-C7Kb-EjFc', '20b7f89e-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f89e-99a8-11db-937f-000e0c431b59-Bajg-FC8t-ALOW-FQ7O-CqJM-Ecfs', '20b7f89e-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f89e-99a8-11db-937f-000e0c431b59-Bksa-Fs7o-AZiy-FYB2-CArb-ELnZ', '20b7f89e-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f89e-99a8-11db-937f-000e0c431b59-BM9v-FWfS-AKcc-FmBi-CE60-EnIF', '20b7f89e-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f89e-99a8-11db-937f-000e0c431b59-Bnnn-F5AT-AWGT-FoNN-CVy7-Evg4', '20b7f89e-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f89e-99a8-11db-937f-000e0c431b59-BpjK-F78c-A0OR-FXqb-CG0S-EG5q', '20b7f89e-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-голубой', ''),
('20b7f8a0-99a8-11db-937f-000e0c431b59-B0yA-FIjB-AZac-FQx8-CE4m-EGWh', '20b7f8a0-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8a0-99a8-11db-937f-000e0c431b59-B444-FWJr-ATNl-F6U8-CdaB-Emp9', '20b7f8a0-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8a0-99a8-11db-937f-000e0c431b59-B6FA-FgBV-Aeew-FfHb-Ce8B-EBzy', '20b7f8a0-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f8a0-99a8-11db-937f-000e0c431b59-BGDJ-FO8N-A4jC-FNWE-C2W4-E2ed', '20b7f8a0-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8a0-99a8-11db-937f-000e0c431b59-BGpC-Fc60-ArlI-F4Eo-CmyU-EwCn', '20b7f8a0-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8a0-99a8-11db-937f-000e0c431b59-BuqK-FNSM-AvXI-FvAR-C1b1-EXey', '20b7f8a0-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-голубой', ''),
('20b7f8a0-99a8-11db-937f-000e0c431b59-Bzjh-F3x4-A8oP-F1gu-CTZn-ENww', '20b7f8a0-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8a2-99a8-11db-937f-000e0c431b59-B6wc-FLm0-A67Y-FjKK-CVGQ-EWnR', '20b7f8a2-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-голубой', ''),
('20b7f8a2-99a8-11db-937f-000e0c431b59-BAky-F1g8-AgRC-F9fT-CDrf-EFSQ', '20b7f8a2-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8a2-99a8-11db-937f-000e0c431b59-BbdO-FdEx-AKWW-Fcdv-CQhr-EWol', '20b7f8a2-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('20b7f8a2-99a8-11db-937f-000e0c431b59-BE6F-FG5k-Aa8S-F6Ck-CMUp-Ej7x', '20b7f8a2-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8a2-99a8-11db-937f-000e0c431b59-BMMB-FlvM-AwHT-FCd7-CULD-EGor', '20b7f8a2-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8a2-99a8-11db-937f-000e0c431b59-BrHw-Fdn4-A6H1-F7Jp-CuEc-ENQE', '20b7f8a2-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8a2-99a8-11db-937f-000e0c431b59-BSEX-FlH2-AhbC-Flir-CSiR-EGZy', '20b7f8a2-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8a4-99a8-11db-937f-000e0c431b59-B00v-F8fh-A1zu-FNXb-CpsT-Edao', '20b7f8a4-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8a4-99a8-11db-937f-000e0c431b59-B59B-Fj9b-Apml-FqeV-CwjJ-Ewtk', '20b7f8a4-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f8a4-99a8-11db-937f-000e0c431b59-B8Ej-FPAm-A1M8-Fgw4-CTNW-Eirb', '20b7f8a4-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серый', ''),
('20b7f8a4-99a8-11db-937f-000e0c431b59-BeDj-FOR7-Aq7p-F0ZG-CoKA-E3uG', '20b7f8a4-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8a4-99a8-11db-937f-000e0c431b59-BEy0-FJaQ-AYmg-Fnjt-CXDx-E8SE', '20b7f8a4-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8a4-99a8-11db-937f-000e0c431b59-Bu5O-FjFL-AD4F-FmQO-CLPO-E7Nu', '20b7f8a4-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8a4-99a8-11db-937f-000e0c431b59-BV3y-FrUR-Adkz-FL7e-Cx4i-EXJi', '20b7f8a4-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8a6-99a8-11db-937f-000e0c431b59-BCHN-Fivw-ARJ1-FEGI-CJAG-EKkE', '20b7f8a6-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серый', ''),
('20b7f8a6-99a8-11db-937f-000e0c431b59-BlPq-FN6L-Aisv-Fsee-CTgl-EhEX', '20b7f8a6-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8a6-99a8-11db-937f-000e0c431b59-BSiV-FBq9-ASN9-Fs4I-C0N5-Ebp6', '20b7f8a6-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f8a6-99a8-11db-937f-000e0c431b59-BTwb-FcAK-ArmM-FSua-CUf8-E754', '20b7f8a6-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8a6-99a8-11db-937f-000e0c431b59-BUWg-FKan-ATkn-FZuO-CeWe-ELja', '20b7f8a6-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8a6-99a8-11db-937f-000e0c431b59-Bvgl-FZ7W-Anbs-FHnR-ChAZ-EqJQ', '20b7f8a6-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8a6-99a8-11db-937f-000e0c431b59-BXII-FI2m-AmKJ-FOsO-ClCk-EINB', '20b7f8a6-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8a8-99a8-11db-937f-000e0c431b59-BcA6-FAw8-AqjK-FsXX-CRIQ-EfEJ', '20b7f8a8-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8a8-99a8-11db-937f-000e0c431b59-BLWA-F9h8-ArnL-F9Eb-C6dA-EG1R', '20b7f8a8-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8a8-99a8-11db-937f-000e0c431b59-BLXh-FdxP-AbJi-FwCp-CxNB-ExMj', '20b7f8a8-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8a8-99a8-11db-937f-000e0c431b59-BlXh-FypS-AO0x-FL7s-CFOR-EaP8', '20b7f8a8-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серый', ''),
('20b7f8a8-99a8-11db-937f-000e0c431b59-Bu4N-F73R-AYyu-FY5l-CpG9-ENjv', '20b7f8a8-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8a8-99a8-11db-937f-000e0c431b59-Bwd8-Fh23-AIh9-FGuh-C3Mi-ExMU', '20b7f8a8-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('20b7f8a8-99a8-11db-937f-000e0c431b59-BYiK-FXQE-AgQR-Far8-CVTV-E4HA', '20b7f8a8-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8aa-99a8-11db-937f-000e0c431b59-Bcyl-FRa9-AcCg-FRgq-CWR7-EZcQ', '20b7f8aa-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8aa-99a8-11db-937f-000e0c431b59-BIxf-FFHB-AzY7-Fbbh-Ci4W-EKLx', '20b7f8aa-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f8aa-99a8-11db-937f-000e0c431b59-Bj1W-Fh8G-AFzT-Fnnf-C9ZY-E4V0', '20b7f8aa-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8aa-99a8-11db-937f-000e0c431b59-BLo3-FlPQ-AG9b-FEpJ-C5O0-ERw7', '20b7f8aa-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8aa-99a8-11db-937f-000e0c431b59-BuPD-FLUs-AUO8-FUgt-CQ5l-EClH', '20b7f8aa-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8aa-99a8-11db-937f-000e0c431b59-Bv35-F7kR-AT3a-FkYf-CtK9-Eqrz', '20b7f8aa-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'синий', ''),
('20b7f8aa-99a8-11db-937f-000e0c431b59-BY2w-FrfZ-ANez-FlXK-Cliz-EeJE', '20b7f8aa-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8ac-99a8-11db-937f-000e0c431b59-B53E-Fp2B-AmmH-FMO4-CrMC-Efxe', '20b7f8ac-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8ac-99a8-11db-937f-000e0c431b59-B8Ix-Flbf-ArBV-FlGR-CnNE-EDRR', '20b7f8ac-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8ac-99a8-11db-937f-000e0c431b59-BBff-FWGl-Aotz-FswG-CAr0-EFX1', '20b7f8ac-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8ac-99a8-11db-937f-000e0c431b59-BG0d-FOMr-AI45-FKZs-CoaN-EKxT', '20b7f8ac-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8ac-99a8-11db-937f-000e0c431b59-BHwa-FDN2-Alwv-F987-CvGk-Elwf', '20b7f8ac-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8ac-99a8-11db-937f-000e0c431b59-BJnz-Fq6W-AWSn-FSrG-Cj14-EF7B', '20b7f8ac-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'синий', ''),
('20b7f8ac-99a8-11db-937f-000e0c431b59-BvcD-FkL1-ArMi-FqR6-ChY6-EAmH', '20b7f8ac-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f8ae-99a8-11db-937f-000e0c431b59-BHex-FTrz-AHAj-FrV8-CMIp-ERw7', '20b7f8ae-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8ae-99a8-11db-937f-000e0c431b59-BIGG-FfjM-A0WF-FQqT-CCxy-E1Gf', '20b7f8ae-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8ae-99a8-11db-937f-000e0c431b59-BJC1-FPTg-AjWT-FYMa-C54p-EbJk', '20b7f8ae-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('20b7f8ae-99a8-11db-937f-000e0c431b59-BqOg-FQ63-ANHA-F4Zx-C1i5-E7Dd', '20b7f8ae-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8ae-99a8-11db-937f-000e0c431b59-BsuB-Fm6b-AVk3-Fiup-C3gI-E7GU', '20b7f8ae-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'синий', ''),
('20b7f8ae-99a8-11db-937f-000e0c431b59-BwsF-FoR1-AUJW-FcGd-Cx3R-ETOw', '20b7f8ae-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8ae-99a8-11db-937f-000e0c431b59-Bwxg-FVex-AQBL-FMBy-CTuj-EVXf', '20b7f8ae-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8b0-99a8-11db-937f-000e0c431b59-B1zX-FQ7Q-AUvW-F1S6-CaDf-EqgX', '20b7f8b0-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8b0-99a8-11db-937f-000e0c431b59-B47m-FD8Q-AYUa-FG4D-CyFf-Ehjk', '20b7f8b0-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8b0-99a8-11db-937f-000e0c431b59-BbWJ-FPho-AYfC-FeFd-Cg6T-E5MP', '20b7f8b0-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f8b0-99a8-11db-937f-000e0c431b59-BgXL-Fc0n-AyAR-Fmeh-CleR-Ezql', '20b7f8b0-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'темно-зеленый', ''),
('20b7f8b0-99a8-11db-937f-000e0c431b59-Bi7x-FRcL-AlzJ-FAnV-CXKs-Eimr', '20b7f8b0-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8b0-99a8-11db-937f-000e0c431b59-BMbs-FdEN-AApr-FSfX-C5DU-ErUw', '20b7f8b0-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8b0-99a8-11db-937f-000e0c431b59-BujP-Fc3u-A1wy-FLeJ-C8XF-EjbC', '20b7f8b0-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8b2-99a8-11db-937f-000e0c431b59-B4cw-FhhU-AUaE-FqlA-CFLm-EDGO', '20b7f8b2-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8b2-99a8-11db-937f-000e0c431b59-B670-F0nl-AAsx-Fnw5-C3Sb-E99e', '20b7f8b2-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f8b2-99a8-11db-937f-000e0c431b59-BghG-FpDN-AB06-FELj-CyEB-Ekmj', '20b7f8b2-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8b2-99a8-11db-937f-000e0c431b59-BjrO-F7qs-AzCn-FEix-C3tW-EL7Y', '20b7f8b2-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8b2-99a8-11db-937f-000e0c431b59-BKiT-FMCY-AqjU-F0eg-CPpD-EQNb', '20b7f8b2-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8b2-99a8-11db-937f-000e0c431b59-Bkm9-F5lc-Ab2I-FfHW-C7rD-ELnt', '20b7f8b2-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8b2-99a8-11db-937f-000e0c431b59-BLhA-FhXT-AdxW-F9d3-CW5P-EgKx', '20b7f8b2-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'темно-зеленый', ''),
('20b7f8b4-99a8-11db-937f-000e0c431b59-B4Yo-FrBb-Al4u-FD2s-CiEs-ECLw', '20b7f8b4-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8b4-99a8-11db-937f-000e0c431b59-B8Eu-FfN6-AaTB-FuDy-CFPN-EUKq', '20b7f8b4-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8b4-99a8-11db-937f-000e0c431b59-Bbyq-FmLu-A0Ug-FPIw-CFG1-EzlE', '20b7f8b4-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8b4-99a8-11db-937f-000e0c431b59-BLYO-F6cG-AoAL-FWDW-CJwP-EyP1', '20b7f8b4-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8b4-99a8-11db-937f-000e0c431b59-BM0e-FHEp-Aq3u-FsdW-CSYT-ESY7', '20b7f8b4-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'темно-зеленый', ''),
('20b7f8b4-99a8-11db-937f-000e0c431b59-Bs3p-FdlI-Az4h-FIL6-CFFT-EuxV', '20b7f8b4-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8b4-99a8-11db-937f-000e0c431b59-BvBY-Fxwb-Am3q-F1M2-Cgoq-ENR2', '20b7f8b4-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('20b7f8b6-99a8-11db-937f-000e0c431b59-B8RL-FegU-AQmb-FHbC-CMNE-EkB2', '20b7f8b6-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'фисташковый', ''),
('20b7f8b6-99a8-11db-937f-000e0c431b59-BCnt-Ftd7-AlAk-FRN3-CJLJ-EVqp', '20b7f8b6-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8b6-99a8-11db-937f-000e0c431b59-BFAf-FCPY-ABUT-FoJ9-Cu5O-E2Qw', '20b7f8b6-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8b6-99a8-11db-937f-000e0c431b59-BMed-Fs3g-A66P-FERG-CSWG-EyYW', '20b7f8b6-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8b6-99a8-11db-937f-000e0c431b59-BNaq-FgE1-Afzv-FtrB-Cf4g-E0lZ', '20b7f8b6-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f8b6-99a8-11db-937f-000e0c431b59-Bq8R-FHEt-AJR8-FO39-CF6m-EyoG', '20b7f8b6-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8b6-99a8-11db-937f-000e0c431b59-BvQG-FVhU-AOrg-FXCM-CDtJ-EV1O', '20b7f8b6-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8b8-99a8-11db-937f-000e0c431b59-B1l6-FdRq-AizU-FmDl-CYqh-EYkq', '20b7f8b8-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8b8-99a8-11db-937f-000e0c431b59-B39q-FnrY-ApNR-FLN4-Clta-E6fB', '20b7f8b8-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8b8-99a8-11db-937f-000e0c431b59-BggU-Fwll-A359-F0tW-CV7x-ECd2', '20b7f8b8-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'фисташковый', ''),
('20b7f8b8-99a8-11db-937f-000e0c431b59-BhX7-FfXp-A3sm-FpuF-ChnE-EORv', '20b7f8b8-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8b8-99a8-11db-937f-000e0c431b59-BkXa-FglF-A91T-FxBC-CA3o-E6V7', '20b7f8b8-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8b8-99a8-11db-937f-000e0c431b59-Bm5v-F7hz-Ah6g-FFTG-Cv5e-ELaG', '20b7f8b8-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f8b8-99a8-11db-937f-000e0c431b59-Bm70-F5IM-Axt6-FNpb-CPNz-ELtM', '20b7f8b8-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8bc-99a8-11db-937f-000e0c431b59-B9wD-FzEM-ADR7-FLRn-C1F2-EaaL', '20b7f8bc-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8bc-99a8-11db-937f-000e0c431b59-BKta-FH5r-Auux-FmLO-CxhG-EEq7', '20b7f8bc-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8bc-99a8-11db-937f-000e0c431b59-BmGy-FuKq-ABFg-FFDM-COO6-EoV1', '20b7f8bc-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8bc-99a8-11db-937f-000e0c431b59-BRZ7-FkM9-AnM2-FRIN-CNuH-E0qp', '20b7f8bc-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный', ''),
('20b7f8bc-99a8-11db-937f-000e0c431b59-BV3Q-FJzi-AZ3H-FD2R-C51E-E9qI', '20b7f8bc-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8bc-99a8-11db-937f-000e0c431b59-BVGl-FItx-AWhU-FdlB-CaOH-EO9R', '20b7f8bc-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '900', 'г'),
('20b7f8bc-99a8-11db-937f-000e0c431b59-ByOk-FVT5-AbFy-F7RP-CCjo-E0J2', '20b7f8bc-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8be-99a8-11db-937f-000e0c431b59-B2dG-F2rF-AUw3-FoRy-CSv6-ErfT', '20b7f8be-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8be-99a8-11db-937f-000e0c431b59-B5AX-FbGb-AnUp-Fj0B-CZUI-EBd2', '20b7f8be-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный', ''),
('20b7f8be-99a8-11db-937f-000e0c431b59-B6f2-FyJI-Amb5-FiJa-C3O4-EKlk', '20b7f8be-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('20b7f8be-99a8-11db-937f-000e0c431b59-BeGY-FtYX-A89R-FM6m-ChTl-ENXI', '20b7f8be-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8be-99a8-11db-937f-000e0c431b59-BFdS-FWqN-A0Oh-Fkb5-CtTX-E1KE', '20b7f8be-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8be-99a8-11db-937f-000e0c431b59-By1Y-FIUA-AKuP-FR0O-Cj4O-E8UV', '20b7f8be-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8be-99a8-11db-937f-000e0c431b59-BY9p-FDho-AF80-FN9d-CFxT-Ee7o', '20b7f8be-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8c0-99a8-11db-937f-000e0c431b59-B9q9-FMNs-ABVz-FcQ3-CFcv-EnM2', '20b7f8c0-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8c0-99a8-11db-937f-000e0c431b59-B9rQ-FBay-Akiq-FShu-Crfa-Eqro', '20b7f8c0-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8c0-99a8-11db-937f-000e0c431b59-BL3i-FuGU-AeYC-Ftii-CI2r-E9DZ', '20b7f8c0-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8c0-99a8-11db-937f-000e0c431b59-BSI1-FMr0-AnjO-Fgtz-CHHa-E6Cm', '20b7f8c0-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8c0-99a8-11db-937f-000e0c431b59-Bxfm-FdyJ-ANgo-FoMW-CTkF-ETyR', '20b7f8c0-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('20b7f8c0-99a8-11db-937f-000e0c431b59-BXly-F6MP-Az6j-FNwt-CSrP-EJgY', '20b7f8c0-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный', ''),
('20b7f8c0-99a8-11db-937f-000e0c431b59-BYtA-FNLQ-AGQt-F256-Cs4m-E96D', '20b7f8c0-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8c2-99a8-11db-937f-000e0c431b59-BGb5-FdTX-AuPp-Fhxa-CJeY-ER1C', '20b7f8c2-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8c2-99a8-11db-937f-000e0c431b59-Bk5i-FTvd-APeW-F3dR-C6Rx-Ehvl', '20b7f8c2-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'шоколадно-коричневый', ''),
('20b7f8c2-99a8-11db-937f-000e0c431b59-Bli0-FfVR-AObI-F3EU-CSLv-ENoF', '20b7f8c2-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8c2-99a8-11db-937f-000e0c431b59-BLoI-Fytf-AQ1d-FR97-CoXp-Ec5Q', '20b7f8c2-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f8c2-99a8-11db-937f-000e0c431b59-BlYU-FQ7H-AqFm-FEWc-CH8B-EHdW', '20b7f8c2-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8c2-99a8-11db-937f-000e0c431b59-Br9H-FVnT-As85-FxRt-CF2n-EnLZ', '20b7f8c2-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8c2-99a8-11db-937f-000e0c431b59-BYsx-Fhl3-A35D-FnHr-CtsG-ED9C', '20b7f8c2-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8c4-99a8-11db-937f-000e0c431b59-B4eN-FWwL-ATbi-F05d-CQPP-Eaoq', '20b7f8c4-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8c4-99a8-11db-937f-000e0c431b59-B5x8-FcKz-AoNb-FlHv-CgFy-EpgK', '20b7f8c4-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8c4-99a8-11db-937f-000e0c431b59-B8CI-FaWu-AHDP-FR8H-COCT-Emqf', '20b7f8c4-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8c4-99a8-11db-937f-000e0c431b59-BFMY-FnLS-AHbh-FW3M-CDl8-E4U6', '20b7f8c4-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8c4-99a8-11db-937f-000e0c431b59-Bsv1-Ft8D-ArNc-FUlq-CqfK-E437', '20b7f8c4-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8c4-99a8-11db-937f-000e0c431b59-BVwK-FYaR-AGJA-FMN9-CPZm-EYNW', '20b7f8c4-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'ярко-зеленый', ''),
('20b7f8c4-99a8-11db-937f-000e0c431b59-BZnO-Fo5L-AwJN-FGv5-Clqr-EjJ2', '20b7f8c4-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f8c6-99a8-11db-937f-000e0c431b59-B0kQ-FSB3-AHm4-Fkbj-C8bB-Edpj', '20b7f8c6-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8c6-99a8-11db-937f-000e0c431b59-BAcg-FOiS-AIK9-FztH-CrI6-Ew9U', '20b7f8c6-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8c6-99a8-11db-937f-000e0c431b59-Bk7J-FMuQ-Ax4W-F0Tw-CMlU-EBwb', '20b7f8c6-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8c6-99a8-11db-937f-000e0c431b59-BRgg-F0SE-AXoY-Fjuc-CYUZ-EhhK', '20b7f8c6-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f8c6-99a8-11db-937f-000e0c431b59-BShz-FLHQ-AuEs-FviX-CVTL-EGEy', '20b7f8c6-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8c6-99a8-11db-937f-000e0c431b59-Bvxu-Fund-A3Um-FxGk-CIGL-EZZM', '20b7f8c6-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8c6-99a8-11db-937f-000e0c431b59-BYxF-F1ZN-Am7S-Falz-ClAc-EzpX', '20b7f8c6-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'ярко-зеленый', ''),
('20b7f8c8-99a8-11db-937f-000e0c431b59-B8GQ-FRs8-AHeb-FSTF-Cwfq-Ewoi', '20b7f8c8-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8c8-99a8-11db-937f-000e0c431b59-Bbir-FmuM-AsEo-F6oY-C2LP-ERKY', '20b7f8c8-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('20b7f8c8-99a8-11db-937f-000e0c431b59-Bh2Z-F9Jt-AD6O-Fts4-CSCc-EbsM', '20b7f8c8-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8c8-99a8-11db-937f-000e0c431b59-BLkA-FJ3h-A4lV-FL1K-CvLW-E05H', '20b7f8c8-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8c8-99a8-11db-937f-000e0c431b59-BUiJ-FptA-A1fL-FMeG-CTcM-Ekt6', '20b7f8c8-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8c8-99a8-11db-937f-000e0c431b59-BULO-Ftv9-AMJT-Flq1-CvdK-Ezoe', '20b7f8c8-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8c8-99a8-11db-937f-000e0c431b59-BxUD-FKTW-A7f8-FRgu-CtyR-EPyj', '20b7f8c8-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'ярко-зеленый', ''),
('20b7f8d0-99a8-11db-937f-000e0c431b59-B06w-FU1h-ATdd-F5bw-Cfja-E61C', '20b7f8d0-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8d0-99a8-11db-937f-000e0c431b59-B08k-FuZM-AaBF-FFFM-CIFI-E5Z0', '20b7f8d0-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8d0-99a8-11db-937f-000e0c431b59-Bbtd-F6n6-ArJe-FIFU-CLES-Evzs', '20b7f8d0-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f8d0-99a8-11db-937f-000e0c431b59-BEcI-FM1N-AFT8-FYaj-CVbG-EBns', '20b7f8d0-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желто-коричневый', ''),
('20b7f8d0-99a8-11db-937f-000e0c431b59-BHoa-FQmD-AHhv-Fblp-Cl3p-EEHC', '20b7f8d0-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8d0-99a8-11db-937f-000e0c431b59-BLmU-FVAJ-AWyJ-F8n2-C6rT-ED5J', '20b7f8d0-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8d0-99a8-11db-937f-000e0c431b59-BR0d-FOX5-AytV-F5u9-Cn7k-E8Sl', '20b7f8d0-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8d2-99a8-11db-937f-000e0c431b59-B7Lm-F7GI-Awun-F2IL-CRU0-EKbN', '20b7f8d2-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8d2-99a8-11db-937f-000e0c431b59-B9Pt-FDUz-AQc5-FZXU-CYyD-E2uq', '20b7f8d2-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желто-коричневый', ''),
('20b7f8d2-99a8-11db-937f-000e0c431b59-Ba3y-FfXS-AVij-FmjI-CdgT-EFca', '20b7f8d2-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8d2-99a8-11db-937f-000e0c431b59-BMy4-FGNQ-AblF-Fedz-CLQR-EBi2', '20b7f8d2-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8d2-99a8-11db-937f-000e0c431b59-BOOL-F3GT-ADXo-FDhF-CQ99-EFeV', '20b7f8d2-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8d2-99a8-11db-937f-000e0c431b59-Bxb1-FRj6-AmuA-F6gz-CneF-EXia', '20b7f8d2-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8d2-99a8-11db-937f-000e0c431b59-BYz4-F8cd-AF70-FZCb-CzQq-EAIx', '20b7f8d2-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f8d4-99a8-11db-937f-000e0c431b59-Bjq3-FQte-AbHf-FcZe-C7Ki-EW5B', '20b7f8d4-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8d4-99a8-11db-937f-000e0c431b59-BLyc-FrR3-ALOC-Fuk8-CvZE-EG7F', '20b7f8d4-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8d4-99a8-11db-937f-000e0c431b59-BNXI-FQHt-AO4I-FS0E-CYua-EKwP', '20b7f8d4-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('20b7f8d4-99a8-11db-937f-000e0c431b59-BUMK-F9Qs-AEhq-FCmL-CYBB-ER9d', '20b7f8d4-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желто-коричневый', ''),
('20b7f8d4-99a8-11db-937f-000e0c431b59-BuVw-FCyT-A8na-FiTx-C4em-EVM5', '20b7f8d4-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8d4-99a8-11db-937f-000e0c431b59-BvEZ-Fudc-AMSs-F4T2-CqoE-E1mU', '20b7f8d4-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8d4-99a8-11db-937f-000e0c431b59-ByHU-FhAo-AYqS-Fdh5-CyGl-EqXU', '20b7f8d4-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8d6-99a8-11db-937f-000e0c431b59-B29A-F4tH-Asur-FPnN-CFsb-EFdB', '20b7f8d6-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8d6-99a8-11db-937f-000e0c431b59-B7Yh-FonL-A2s4-FTyX-CVbe-EMVg', '20b7f8d6-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8d6-99a8-11db-937f-000e0c431b59-BEOA-Fvjh-An1R-F5OS-CSWh-EkmE', '20b7f8d6-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8d6-99a8-11db-937f-000e0c431b59-Bet3-F5RL-AsLq-FVg3-CQuQ-EYAY', '20b7f8d6-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'золотисто-коричневый', ''),
('20b7f8d6-99a8-11db-937f-000e0c431b59-BHOR-FQhR-AV7B-FvGy-CAkh-E4fz', '20b7f8d6-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8d6-99a8-11db-937f-000e0c431b59-BmH2-F5BG-AMUc-Ft5F-CywD-Ezqx', '20b7f8d6-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8d6-99a8-11db-937f-000e0c431b59-BTi1-FvRu-A2Gg-F66M-Cs3k-EQgO', '20b7f8d6-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f8d8-99a8-11db-937f-000e0c431b59-B74Q-F21L-AyyI-FROn-C848-EB2P', '20b7f8d8-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8d8-99a8-11db-937f-000e0c431b59-BBgb-FiNO-AyXT-F0M7-CiXt-EWbp', '20b7f8d8-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8d8-99a8-11db-937f-000e0c431b59-BhIt-FgP5-Alw6-F767-C97c-EZfq', '20b7f8d8-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8d8-99a8-11db-937f-000e0c431b59-BKxy-FD6K-ArE9-FGKF-ChAU-EIBC', '20b7f8d8-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8d8-99a8-11db-937f-000e0c431b59-BoTD-F8SQ-A52n-FnOE-CSvN-ECRd', '20b7f8d8-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8d8-99a8-11db-937f-000e0c431b59-BRvG-F5YU-A0qG-FNtY-CrqS-E9hI', '20b7f8d8-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('20b7f8d8-99a8-11db-937f-000e0c431b59-BzOk-FBs4-AeYg-FrxQ-CJEK-Ezmi', '20b7f8d8-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'золотисто-коричневый', ''),
('20b7f8da-99a8-11db-937f-000e0c431b59-B4XO-FMCU-AB64-FOxw-CKbX-EHSL', '20b7f8da-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8da-99a8-11db-937f-000e0c431b59-Bbv7-FUAu-AGKL-FeSd-CqnM-EZtc', '20b7f8da-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8da-99a8-11db-937f-000e0c431b59-BbY8-FVrw-AsCN-FMPj-CtiH-EjUZ', '20b7f8da-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'золотисто-коричневый', ''),
('20b7f8da-99a8-11db-937f-000e0c431b59-Bnl8-F2yM-Aahv-FhHF-C7bR-EcSY', '20b7f8da-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8da-99a8-11db-937f-000e0c431b59-BQ5p-FiYV-AKP4-FIWn-CJxZ-EFHa', '20b7f8da-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f8da-99a8-11db-937f-000e0c431b59-BULf-F2Ha-AEzS-FpGz-C4iN-E246', '20b7f8da-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8da-99a8-11db-937f-000e0c431b59-BUst-FGQ1-ALNS-Fdpl-C2i9-EGuA', '20b7f8da-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8dc-99a8-11db-937f-000e0c431b59-B7JL-FzDW-A4sN-FEux-CQuF-Emnv', '20b7f8dc-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8dc-99a8-11db-937f-000e0c431b59-BARV-F4qv-AkLw-FGee-CoUR-E7Wd', '20b7f8dc-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8dc-99a8-11db-937f-000e0c431b59-BKW8-FSnL-A7lF-F4m7-CJ4r-EPyG', '20b7f8dc-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красно-коричневый', ''),
('20b7f8dc-99a8-11db-937f-000e0c431b59-Bkyx-FrCg-AFtM-FYsu-Cg3H-EdLu', '20b7f8dc-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8dc-99a8-11db-937f-000e0c431b59-BpHW-FuA9-AqJ3-FYZr-CfAf-ESri', '20b7f8dc-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('20b7f8dc-99a8-11db-937f-000e0c431b59-BYO8-FKUb-Ao0v-F76I-Ca3R-ElsV', '20b7f8dc-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('20b7f8dc-99a8-11db-937f-000e0c431b59-BzxS-FCLA-Axr3-F5LD-Cp1L-EBkL', '20b7f8dc-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8de-99a8-11db-937f-000e0c431b59-B9lE-FLqy-A08i-FFjM-C18a-EyIv', '20b7f8de-99a8-11db-937f-000e0c431b59', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красно-коричневый', ''),
('20b7f8de-99a8-11db-937f-000e0c431b59-BClF-FGeu-ASIp-FRhm-CAnt-E3RS', '20b7f8de-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('20b7f8de-99a8-11db-937f-000e0c431b59-BcyM-FIGu-AuGX-Fe0o-Cxf3-EcX7', '20b7f8de-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('20b7f8de-99a8-11db-937f-000e0c431b59-BFH3-Fojn-A7WW-FzOS-CZ5N-E6JO', '20b7f8de-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('20b7f8de-99a8-11db-937f-000e0c431b59-BfNp-F3D4-ALcy-FYY9-Cmaj-EsgD', '20b7f8de-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('20b7f8de-99a8-11db-937f-000e0c431b59-BPwu-FBtq-AKJj-FcvR-Cxt4-E26j', '20b7f8de-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('20b7f8de-99a8-11db-937f-000e0c431b59-Bq6g-FPAG-Ab2E-F3pM-Co60-EZ7s', '20b7f8de-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('211dadff-f788-11e3-8c8a-005056be1f7b-B80t-FGZn-ALac-Foau-CPfq-EJsz', '211dadff-f788-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'охра', ''),
('211dadff-f788-11e3-8c8a-005056be1f7b-B8GL-FZum-AK0I-F2I1-CqN8-E9Mr', '211dadff-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('211dadff-f788-11e3-8c8a-005056be1f7b-BauC-FWl3-AsMq-FDgl-Cxdr-E04b', '211dadff-f788-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('211dadff-f788-11e3-8c8a-005056be1f7b-BEHS-F0tb-AiU7-F21V-CkyV-EU5u', '211dadff-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('211dadff-f788-11e3-8c8a-005056be1f7b-BKFi-F1IE-Ab7i-FJ6c-Ckhg-EBRc', '211dadff-f788-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('211dadff-f788-11e3-8c8a-005056be1f7b-Bl2D-FYZo-AXop-FH7C-CcGI-EB8R', '211dadff-f788-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('211dadff-f788-11e3-8c8a-005056be1f7b-BlEb-Ft6j-Aklw-Fik0-CPAt-ERXV', '211dadff-f788-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2133814d-f78e-11e3-8c8a-005056be1f7b-B3yP-Fd9m-AWVy-FQnU-CPgb-EJ3z', '2133814d-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'голубой', ''),
('2133814d-f78e-11e3-8c8a-005056be1f7b-BmhV-FURC-AmuZ-F1TS-CRjA-EKE9', '2133814d-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('2133814d-f78e-11e3-8c8a-005056be1f7b-BppB-Fjey-A6GW-FzG6-Chtc-E4Et', '2133814d-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('2133814d-f78e-11e3-8c8a-005056be1f7b-Bq7E-FfMs-AzcO-FQlG-CFZN-Esbw', '2133814d-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2133814d-f78e-11e3-8c8a-005056be1f7b-BQr3-Fe9e-AlD5-FywV-Clh4-EAjs', '2133814d-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2133814d-f78e-11e3-8c8a-005056be1f7b-BviY-FBym-A9ns-FtrR-CdXO-Ei3a', '2133814d-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('2133814d-f78e-11e3-8c8a-005056be1f7b-BxGn-FBjC-AHlQ-FQN8-CyFv-EDjt', '2133814d-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('23b6c6e7-f789-11e3-8c8a-005056be1f7b-B0Gq-F6hg-AoXB-FxQP-Cjqv-EtJa', '23b6c6e7-f789-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('23b6c6e7-f789-11e3-8c8a-005056be1f7b-BA0J-FIEY-AS27-Fb1s-C1eI-E3Nw', '23b6c6e7-f789-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('23b6c6e7-f789-11e3-8c8a-005056be1f7b-BJfo-FUgL-AL0I-FEOJ-CxiJ-E9wY', '23b6c6e7-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('23b6c6e7-f789-11e3-8c8a-005056be1f7b-BOvQ-FLC6-A8dk-FsEY-ChDe-EN0C', '23b6c6e7-f789-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('23b6c6e7-f789-11e3-8c8a-005056be1f7b-BoZC-Fsnh-ARYD-FJUI-CKdo-EyxK', '23b6c6e7-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('23b6c6e7-f789-11e3-8c8a-005056be1f7b-BT0K-FOPq-AnnE-FNfj-Cug2-E6FA', '23b6c6e7-f789-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('23b6c6e7-f789-11e3-8c8a-005056be1f7b-BZfK-Fdpe-Amz8-FQov-Cbpu-Elyz', '23b6c6e7-f789-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2461ad51-9fb8-11e3-8705-005056be1f7b-B8Mq-FFas-ADLS-FmTH-C4UW-ERj1', '2461ad51-9fb8-11e3-8705-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('2461ad51-9fb8-11e3-8705-005056be1f7b-BBpk-FUR4-AbLN-Fydw-CofO-E09l', '2461ad51-9fb8-11e3-8705-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('2461ad51-9fb8-11e3-8705-005056be1f7b-BBPY-FPdu-A3ea-F6xJ-C1PF-EUY5', '2461ad51-9fb8-11e3-8705-005056be1f7b', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('2461ad51-9fb8-11e3-8705-005056be1f7b-Bc7d-FIzn-AyvH-FNB9-Cvki-EHyQ', '2461ad51-9fb8-11e3-8705-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2461ad51-9fb8-11e3-8705-005056be1f7b-BCbU-FcXH-AmOX-Friv-Cmg9-ETlY', '2461ad51-9fb8-11e3-8705-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2461ad51-9fb8-11e3-8705-005056be1f7b-BHkz-FeSY-AQ65-FPOf-CoQK-EOkc', '2461ad51-9fb8-11e3-8705-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2500', 'г'),
('2461ad51-9fb8-11e3-8705-005056be1f7b-BjkW-FNr4-AaHO-FOWn-CAqC-ETs6', '2461ad51-9fb8-11e3-8705-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2461ad51-9fb8-11e3-8705-005056be1f7b-BSsT-FYJT-Asyo-FHgM-CZVx-EOZw', '2461ad51-9fb8-11e3-8705-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('2461ad51-9fb8-11e3-8705-005056be1f7b-BUZS-FC3I-AOiq-F3Kq-C7dY-EP2i', '2461ad51-9fb8-11e3-8705-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('25a027ef-9e45-11e1-9d3e-005056be3bd8-B91z-F67I-AaJN-FCNt-C72B-Ebo1', '25a027ef-9e45-11e1-9d3e-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('25a027ef-9e45-11e1-9d3e-005056be3bd8-BB7J-FFsN-AA67-FGSf-CMEl-EDg5', '25a027ef-9e45-11e1-9d3e-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('25a027ef-9e45-11e1-9d3e-005056be3bd8-BeU3-F0Ok-ANzU-FYkK-CSiB-EId8', '25a027ef-9e45-11e1-9d3e-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('25a027ef-9e45-11e1-9d3e-005056be3bd8-BiBO-F4ay-AEtX-FF31-CDIv-EKmr', '25a027ef-9e45-11e1-9d3e-005056be3bd8', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('25a027ef-9e45-11e1-9d3e-005056be3bd8-BoSe-FwzD-AqBe-F4sO-CkuL-Euz4', '25a027ef-9e45-11e1-9d3e-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('25a027ef-9e45-11e1-9d3e-005056be3bd8-BQ5H-Fd7U-AN4M-FOU1-CFzL-E9yZ', '25a027ef-9e45-11e1-9d3e-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('25a027ef-9e45-11e1-9d3e-005056be3bd8-BwF2-FbTk-AwjI-Fgj4-CMaN-Equr', '25a027ef-9e45-11e1-9d3e-005056be3bd8', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'кремовый', ''),
('25a027f1-9e45-11e1-9d3e-005056be3bd8-BcdD-FOkm-AMAj-F56n-CGdZ-E3Wc', '25a027f1-9e45-11e1-9d3e-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('25a027f1-9e45-11e1-9d3e-005056be3bd8-Bezk-FrE6-AhKu-FsIi-CIrk-EWlB', '25a027f1-9e45-11e1-9d3e-005056be3bd8', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'кремовый', ''),
('25a027f1-9e45-11e1-9d3e-005056be3bd8-Bivw-F4Du-A1W3-Feak-C6Hp-ELl6', '25a027f1-9e45-11e1-9d3e-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('25a027f1-9e45-11e1-9d3e-005056be3bd8-BLqu-Fiwn-AYzv-FJAY-C2fO-EcMT', '25a027f1-9e45-11e1-9d3e-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('25a027f1-9e45-11e1-9d3e-005056be3bd8-BnNy-FgsP-AGnX-Fwz9-CrRb-EvfB', '25a027f1-9e45-11e1-9d3e-005056be3bd8', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('25a027f1-9e45-11e1-9d3e-005056be3bd8-BrFQ-FdPQ-A3Hv-FGj9-Ca7s-E5EL', '25a027f1-9e45-11e1-9d3e-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('25a027f1-9e45-11e1-9d3e-005056be3bd8-BXue-FHcn-AqlV-FR88-CTIn-EEra', '25a027f1-9e45-11e1-9d3e-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('277ee1ed-f788-11e3-8c8a-005056be1f7b-B7zK-F3uj-A6rI-F284-C9uG-Ea2g', '277ee1ed-f788-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серый', ''),
('277ee1ed-f788-11e3-8c8a-005056be1f7b-B91V-FDhx-A0vd-FlUI-CPEJ-EQrU', '277ee1ed-f788-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('277ee1ed-f788-11e3-8c8a-005056be1f7b-BiLX-FrDU-AkBE-Frc7-CNql-Ejon', '277ee1ed-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('277ee1ed-f788-11e3-8c8a-005056be1f7b-BOpV-F8BK-AWX3-FJbF-CyX5-E0Pp', '277ee1ed-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('277ee1ed-f788-11e3-8c8a-005056be1f7b-BrYT-FhAS-AmR1-F37F-CM67-Eh0d', '277ee1ed-f788-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('277ee1ed-f788-11e3-8c8a-005056be1f7b-BU0O-Fylj-A71o-FGGV-Cayt-EuVu', '277ee1ed-f788-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('277ee1ed-f788-11e3-8c8a-005056be1f7b-BuBA-FmKb-Ar0z-Fm9E-CRhQ-EoPT', '277ee1ed-f788-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('28110f45-99a8-11db-937f-000e0c431b59-B3xZ-FOOS-AolU-F0EV-Coty-ErLo', '28110f45-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('28110f45-99a8-11db-937f-000e0c431b59-B4YO-FOXS-AkBC-FYtO-CCwp-ExxK', '28110f45-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('28110f45-99a8-11db-937f-000e0c431b59-BanV-FdSI-As6V-Fa3Z-CXCV-EcBo', '28110f45-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('28110f45-99a8-11db-937f-000e0c431b59-BDbu-FAe5-Ai4f-Fsnk-CMfY-Elum', '28110f45-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('28110f45-99a8-11db-937f-000e0c431b59-BpcD-FbzV-APG8-FDKh-CYkK-EuEd', '28110f45-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('28110f45-99a8-11db-937f-000e0c431b59-BsVD-FOEq-AzQM-FN37-C1wU-EEAs', '28110f45-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'антисептический состав', ''),
('28110f47-99a8-11db-937f-000e0c431b59-BacT-F1QN-A2Hy-FYHc-CEj7-E5B4', '28110f47-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('28110f47-99a8-11db-937f-000e0c431b59-Bbez-Fc7Z-A84o-FilF-Ccpm-EwL8', '28110f47-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('28110f47-99a8-11db-937f-000e0c431b59-BEhU-FgUn-AQWa-Fx4A-C2lg-E0nq', '28110f47-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('28110f47-99a8-11db-937f-000e0c431b59-BJ6F-F9TM-AbYw-FXSx-CQlx-EDjV', '28110f47-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'антисептический состав', ''),
('28110f47-99a8-11db-937f-000e0c431b59-BsgH-FBJc-A2IA-Fbkf-C7Pl-Era4', '28110f47-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('28110f47-99a8-11db-937f-000e0c431b59-BT0w-F9iX-ADAD-FpwO-CmNr-E7E8', '28110f47-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('28110f49-99a8-11db-937f-000e0c431b59-B4jy-FJ8z-AtD9-Fz3Z-COqj-Ev9C', '28110f49-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('28110f49-99a8-11db-937f-000e0c431b59-B8V2-FRv8-AbOh-FDn5-Cchd-ERqb', '28110f49-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('28110f49-99a8-11db-937f-000e0c431b59-Bea6-Fvyf-ANYP-FYAj-CFJG-EzaZ', '28110f49-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('28110f49-99a8-11db-937f-000e0c431b59-BHZf-FFOX-AfdE-FFPC-CHMY-E9dJ', '28110f49-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'биоцидный состав', ''),
('28110f49-99a8-11db-937f-000e0c431b59-BJgt-FRS9-AtHf-FSpE-CWHD-EQ2D', '28110f49-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('28110f49-99a8-11db-937f-000e0c431b59-BxKg-FScL-AWzT-FZFK-Cdkl-EYWZ', '28110f49-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('28110f4b-99a8-11db-937f-000e0c431b59-B66Y-Fd9C-AXbj-F2tP-CS1p-Ex65', '28110f4b-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('28110f4b-99a8-11db-937f-000e0c431b59-Bczm-FW5j-ASLx-FnH3-CPaE-Ea7D', '28110f4b-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'биоцидный состав', ''),
('28110f4b-99a8-11db-937f-000e0c431b59-BLbX-FQgn-ASnz-FrmT-C1hO-EPBM', '28110f4b-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('28110f4b-99a8-11db-937f-000e0c431b59-BrIu-FhzW-A1q5-FF76-CRNU-E6Fl', '28110f4b-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('28110f4b-99a8-11db-937f-000e0c431b59-BRZn-F2QX-AHjN-FwXJ-Cqjk-EEzG', '28110f4b-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('28110f4b-99a8-11db-937f-000e0c431b59-BSML-Fg9j-AppI-FPt9-CWbG-EG97', '28110f4b-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('28110f4f-99a8-11db-937f-000e0c431b59-B0ls-FI2b-AGN4-FMU2-CJwq-EwJk', '28110f4f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('28110f4f-99a8-11db-937f-000e0c431b59-BBlG-FWq2-Anyl-Fhpe-CR9d-EQKo', '28110f4f-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('28110f4f-99a8-11db-937f-000e0c431b59-BjNA-Fp8H-A5Rj-FlYK-CYav-Eewb', '28110f4f-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('28110f4f-99a8-11db-937f-000e0c431b59-BS99-FLLS-ADVF-FtHP-CUcr-EHkw', '28110f4f-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('28110f4f-99a8-11db-937f-000e0c431b59-BVbw-FIF5-AAUU-FFuR-CIu4-E13u', '28110f4f-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('28110f4f-99a8-11db-937f-000e0c431b59-BVZQ-F877-AbO5-F6fE-CkFR-EkuO', '28110f4f-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('28110f51-99a8-11db-937f-000e0c431b59-B26t-Fw1O-A2aT-FIAE-CXst-E50A', '28110f51-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('28110f51-99a8-11db-937f-000e0c431b59-B4fF-FNVU-AAqa-FrvU-CQEE-EOr8', '28110f51-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('28110f51-99a8-11db-937f-000e0c431b59-BNYO-F5ya-AkPc-FsUo-CeOK-Ejbg', '28110f51-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '11000', 'г'),
('28110f51-99a8-11db-937f-000e0c431b59-Brog-FRQ6-AboV-FNJH-Cpfh-E6de', '28110f51-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('28110f51-99a8-11db-937f-000e0c431b59-BTu9-Fm49-ArRr-FaLq-CaBH-EFMv', '28110f51-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('28110f51-99a8-11db-937f-000e0c431b59-Bzbo-FLoy-ASTT-F1Ow-CUGr-EE4i', '28110f51-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('28110f53-99a8-11db-937f-000e0c431b59-BAxO-FiUV-Ae4c-FdFi-C5y6-ENld', '28110f53-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('28110f53-99a8-11db-937f-000e0c431b59-BbIP-Ft5D-Acoi-FgG6-CiH0-EMGb', '28110f53-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('28110f53-99a8-11db-937f-000e0c431b59-BCBr-F2LA-AD5T-FB3M-CVLi-Eh8Z', '28110f53-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '5000', 'г'),
('28110f53-99a8-11db-937f-000e0c431b59-Bk7E-F8pO-AeWz-FJTL-CtT9-E93T', '28110f53-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('28110f53-99a8-11db-937f-000e0c431b59-BTWM-Fv1R-AUvG-FP9s-Ctjp-ExhU', '28110f53-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('28110f53-99a8-11db-937f-000e0c431b59-BtWT-FxiX-AUkW-FtKg-Cqlp-E7Vj', '28110f53-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('28110f55-99a8-11db-937f-000e0c431b59-BeVP-FMvB-A5pL-Fo6E-Cbc1-EpcF', '28110f55-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('28110f55-99a8-11db-937f-000e0c431b59-BhwN-F0PK-AZG8-FGIr-CWTG-E3M1', '28110f55-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('28110f55-99a8-11db-937f-000e0c431b59-BKZg-F4tl-AIZs-Fawr-C4Kt-EQ3x', '28110f55-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('28110f55-99a8-11db-937f-000e0c431b59-BYCX-FsEQ-A5Zc-Fc8Z-C2xr-EBtP', '28110f55-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('28110f55-99a8-11db-937f-000e0c431b59-Bz2M-Fx9V-AeUo-FlN1-CbrM-Er59', '28110f55-99a8-11db-937f-000e0c431b59', '1d08380b-ce34-11e4-a80e-005056be1f7a', '10000', 'г'),
('28110f55-99a8-11db-937f-000e0c431b59-BzSK-F7hI-ApRs-FUEP-CpHR-EX0c', '28110f55-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('28110f57-99a8-11db-937f-000e0c431b59-Bcso-FHT2-A9vj-FKcd-CJLS-EwGv', '28110f57-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('28110f57-99a8-11db-937f-000e0c431b59-BEgr-ForK-AI1W-Fand-CM0i-E3Xd', '28110f57-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('28110f57-99a8-11db-937f-000e0c431b59-BJPU-F1eS-AtCt-FWPR-CSUy-EA9f', '28110f57-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '200', 'л'),
('28110f57-99a8-11db-937f-000e0c431b59-BLGV-Fhh0-AAt9-FjmV-CDwl-EXmF', '28110f57-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('28110f57-99a8-11db-937f-000e0c431b59-Bsyn-F5cj-A95C-Fzke-C6ZV-EHNT', '28110f57-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('28110f57-99a8-11db-937f-000e0c431b59-BVFq-FY6Q-A31q-FO94-Cibm-EMi7', '28110f57-99a8-11db-937f-000e0c431b59', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('28b335ed-f78f-11e3-8c8a-005056be1f7b-BbcL-FEZR-AHD6-F5EX-CpMc-Exz6', '28b335ed-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('28b335ed-f78f-11e3-8c8a-005056be1f7b-BGD9-FC8D-AZmP-F3aF-CxhR-EwSz', '28b335ed-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('28b335ed-f78f-11e3-8c8a-005056be1f7b-BGL0-Fviq-ADlK-F7YD-Cn1g-Ez66', '28b335ed-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('28b335ed-f78f-11e3-8c8a-005056be1f7b-BHFH-FncT-AWEo-FWqS-CDe3-Ex4r', '28b335ed-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('28b335ed-f78f-11e3-8c8a-005056be1f7b-BIRA-FTqL-A6Dl-FP5J-Co9Y-ElZq', '28b335ed-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-серый', ''),
('28b335ed-f78f-11e3-8c8a-005056be1f7b-BitX-Fy0G-AmWg-FXLs-CmUA-Emoq', '28b335ed-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('28b335ed-f78f-11e3-8c8a-005056be1f7b-Bxju-FZzo-Aidn-F8FD-Cnnw-EBcv', '28b335ed-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2997b29e-f78e-11e3-8c8a-005056be1f7b-Bek2-FpGe-AZLz-FSG8-CGPz-EIK2', '2997b29e-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2997b29e-f78e-11e3-8c8a-005056be1f7b-BFH7-F5ZC-A2gS-Froc-CjzM-E71H', '2997b29e-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('2997b29e-f78e-11e3-8c8a-005056be1f7b-BHrX-FRJe-AH7L-Ffnu-CEU3-E6Ix', '2997b29e-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2997b29e-f78e-11e3-8c8a-005056be1f7b-BJ3C-F5CC-Ajfz-FKDD-CnLv-EAc5', '2997b29e-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('2997b29e-f78e-11e3-8c8a-005056be1f7b-BKtX-FA5a-ADhl-FzhE-CtCp-Ekrv', '2997b29e-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('2997b29e-f78e-11e3-8c8a-005056be1f7b-BqI1-Fx6O-AuOv-FJ0o-Cdxl-EhNc', '2997b29e-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2997b29e-f78e-11e3-8c8a-005056be1f7b-Bx7D-FZ2k-Ae5J-FbGz-CxrX-Erij', '2997b29e-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'шоколадный', ''),
('299c6ffe-f790-11e3-8c8a-005056be1f7b-B2rM-FkKq-AgKd-FN7t-CO3j-ETZZ', '299c6ffe-f790-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('299c6ffe-f790-11e3-8c8a-005056be1f7b-B6zE-Fg1M-AeGK-FV2H-Cmnn-EfRx', '299c6ffe-f790-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('299c6ffe-f790-11e3-8c8a-005056be1f7b-Bf4g-FqPX-Ay2B-FbWT-CONA-EbyK', '299c6ffe-f790-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('299c6ffe-f790-11e3-8c8a-005056be1f7b-BIVV-FljR-AVxK-F5Hj-CUnd-E1Ts', '299c6ffe-f790-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('299c6ffe-f790-11e3-8c8a-005056be1f7b-BNHj-FOj7-AhxJ-FiP8-CsYT-ED03', '299c6ffe-f790-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('299c6ffe-f790-11e3-8c8a-005056be1f7b-BSvw-FeTJ-AiEl-FAH8-CQ91-Ev8Q', '299c6ffe-f790-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красно-коричневый', ''),
('299c6ffe-f790-11e3-8c8a-005056be1f7b-Bwf3-FoKW-AZZt-Fdd6-C0wr-EwQA', '299c6ffe-f790-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2cbf73b5-f789-11e3-8c8a-005056be1f7b-BCLE-Fa9z-A8Mz-FRqA-CmFI-EbE0', '2cbf73b5-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2cbf73b5-f789-11e3-8c8a-005056be1f7b-BEOw-FaDY-A66D-Fl2J-CQnM-EIOg', '2cbf73b5-f789-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('2cbf73b5-f789-11e3-8c8a-005056be1f7b-Brzd-FVj2-AESk-FPYl-Cvd1-Eh55', '2cbf73b5-f789-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('2cbf73b5-f789-11e3-8c8a-005056be1f7b-BUcX-FRV9-AOQV-Fyme-C2oq-E7Fp', '2cbf73b5-f789-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('2cbf73b5-f789-11e3-8c8a-005056be1f7b-Buoa-Fwbr-ACBX-Fxvh-CN0T-EdLV', '2cbf73b5-f789-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('2cbf73b5-f789-11e3-8c8a-005056be1f7b-BvD2-FkUi-Al7n-FtYs-CttL-EGAg', '2cbf73b5-f789-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2cbf73b5-f789-11e3-8c8a-005056be1f7b-BYIy-F014-AXX7-F3l7-C6Wk-EVJC', '2cbf73b5-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2ced73cf-59ef-11e0-894e-000e0c431b58-BEh5-FL4V-Axxl-FIBQ-CKkK-EDZI', '2ced73cf-59ef-11e0-894e-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'растворитель', ''),
('2ced73cf-59ef-11e0-894e-000e0c431b58-Bi53-Fy8s-Ayx1-FySJ-CFDP-EOmi', '2ced73cf-59ef-11e0-894e-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '1', 'л'),
('2ced73cf-59ef-11e0-894e-000e0c431b58-BiDB-FQHu-ANxi-F892-CJ6x-E0uw', '2ced73cf-59ef-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2ced73cf-59ef-11e0-894e-000e0c431b58-BR0p-FLRP-Ax2x-FMrW-CCPa-EEfh', '2ced73cf-59ef-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2ced73cf-59ef-11e0-894e-000e0c431b58-BvGI-FiT1-A6VG-FVam-C4QV-EOoC', '2ced73cf-59ef-11e0-894e-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2ced73cf-59ef-11e0-894e-000e0c431b58-BztV-FYqU-AP1P-FD1A-CzH0-EfSR', '2ced73cf-59ef-11e0-894e-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'COSMOFEN', ''),
('2eadcbef-99a8-11db-937f-000e0c431b59-B1oj-Fsbi-AFkB-F7xb-CFhF-Epsg', '2eadcbef-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2eadcbef-99a8-11db-937f-000e0c431b59-BOe4-FwkM-Aab3-Fx0W-CIc2-EMZI', '2eadcbef-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2eadcbef-99a8-11db-937f-000e0c431b59-Bq7a-FgQn-AkBF-FIoT-CQf8-E1OY', '2eadcbef-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '1', 'л'),
('2eadcbef-99a8-11db-937f-000e0c431b59-Bunk-FKbA-AN41-FUND-Cubh-EnNI', '2eadcbef-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2eadcbef-99a8-11db-937f-000e0c431b59-BZT9-FaQv-A3WT-F8BC-Cds9-E5OP', '2eadcbef-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'керосин', ''),
('2eadcbf1-99a8-11db-937f-000e0c431b59-B2Oj-FSIm-A8bE-F7t8-CMws-EyKb', '2eadcbf1-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2eadcbf1-99a8-11db-937f-000e0c431b59-Bcko-FyAv-AZpa-Fzkt-CLc9-EuuH', '2eadcbf1-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('2eadcbf1-99a8-11db-937f-000e0c431b59-BDvm-FXsn-AaMW-FZHk-CppZ-E6SW', '2eadcbf1-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2eadcbf1-99a8-11db-937f-000e0c431b59-BiyQ-Fn76-A7Ma-F4Dp-CSc0-ER3P', '2eadcbf1-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2eadcbf1-99a8-11db-937f-000e0c431b59-BWsi-FbpR-AY2E-FHqP-CjIz-EO8z', '2eadcbf1-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'керосин', ''),
('2eadcbf3-99a8-11db-937f-000e0c431b59-BdeE-F8Ri-ANba-FxaC-CczH-ETNZ', '2eadcbf3-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'керосин', ''),
('2eadcbf3-99a8-11db-937f-000e0c431b59-Bk7o-Fc7h-Am5b-FQQL-Cthx-EvxX', '2eadcbf3-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2eadcbf3-99a8-11db-937f-000e0c431b59-BWsq-Fy97-A0sd-FxdQ-CK2j-E9mp', '2eadcbf3-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2eadcbf3-99a8-11db-937f-000e0c431b59-BYTy-FuFa-AcL9-FOD3-CLnz-EzGv', '2eadcbf3-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2eadcbf3-99a8-11db-937f-000e0c431b59-BZE1-FYS5-AQdi-FFTo-C2pW-EheV', '2eadcbf3-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.5', 'л'),
('2eadcbfc-99a8-11db-937f-000e0c431b59-B0Ez-FJIp-AvgT-Fp2L-CfBj-EUaN', '2eadcbfc-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.5', 'л'),
('2eadcbfc-99a8-11db-937f-000e0c431b59-BJYy-FZnB-A4hR-FU0T-CGno-Ex7Z', '2eadcbfc-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2eadcbfc-99a8-11db-937f-000e0c431b59-BoUr-FSvM-AHZJ-FD1m-CXo5-EV2z', '2eadcbfc-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2eadcbfc-99a8-11db-937f-000e0c431b59-BVTu-Fnou-A8uY-FliU-CBiZ-E1rh', '2eadcbfc-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'растворитель', ''),
('2eadcbfc-99a8-11db-937f-000e0c431b59-BxS8-FN6x-Ag0Q-FPMd-C4Qb-EcCv', '2eadcbfc-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2eadcbfe-99a8-11db-937f-000e0c431b59-B0uI-F7VG-ATLa-FAvY-CVFS-Ecxy', '2eadcbfe-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2eadcbfe-99a8-11db-937f-000e0c431b59-BfcD-FzI6-ABo7-Fl9X-CzTq-Ek8V', '2eadcbfe-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2eadcbfe-99a8-11db-937f-000e0c431b59-BG1V-FSTt-AMUm-FiYW-CDYG-ELUc', '2eadcbfe-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '1', 'л'),
('2eadcbfe-99a8-11db-937f-000e0c431b59-BSon-FtoY-AHAd-FadR-COjI-Ek3b', '2eadcbfe-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'растворитель', ''),
('2eadcbfe-99a8-11db-937f-000e0c431b59-BU5G-Fsgo-ADhM-FcX4-CA4W-EEte', '2eadcbfe-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2eadcc00-99a8-11db-937f-000e0c431b59-B5CN-FYcq-AprQ-FxSJ-CPmO-EBj2', '2eadcc00-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2eadcc00-99a8-11db-937f-000e0c431b59-BL4i-FtSb-AnLn-FLri-CYll-Em0E', '2eadcc00-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2eadcc00-99a8-11db-937f-000e0c431b59-BTpv-FjdE-Assr-F7tR-Cy5K-EXod', '2eadcc00-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('2eadcc00-99a8-11db-937f-000e0c431b59-BUFv-F8nK-ATri-FZ44-C3Lh-Ef6M', '2eadcc00-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2eadcc00-99a8-11db-937f-000e0c431b59-BzSo-FddV-AC37-Fne7-Csyl-EdXE', '2eadcc00-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'растворитель', ''),
('2eadcc10-99a8-11db-937f-000e0c431b59-B77z-Fy9R-AP44-FRkm-CkhY-E1j1', '2eadcc10-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'растворитель', ''),
('2eadcc10-99a8-11db-937f-000e0c431b59-B8wQ-FBbr-AeLr-FDt8-Cqxt-ELTM', '2eadcc10-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.5', 'л'),
('2eadcc10-99a8-11db-937f-000e0c431b59-BEwf-Fgdv-Amn2-FCba-C6lC-EqsS', '2eadcc10-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2eadcc10-99a8-11db-937f-000e0c431b59-BiGx-FPDg-Ag3b-FqQG-CKFZ-Eyj4', '2eadcc10-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2eadcc10-99a8-11db-937f-000e0c431b59-BKlv-FGPQ-AD8E-Fpbc-CuAj-EhPm', '2eadcc10-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2eadcc2e-99a8-11db-937f-000e0c431b59-BFo5-FrlE-AHNC-F0V2-CMci-EsWf', '2eadcc2e-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'уайт-спирит', ''),
('2eadcc2e-99a8-11db-937f-000e0c431b59-BGqg-F58C-AloX-FrwS-Cn3D-EPk2', '2eadcc2e-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.5', 'л'),
('2eadcc2e-99a8-11db-937f-000e0c431b59-BGum-Fsxz-ADDm-F8JZ-Cl92-EIzN', '2eadcc2e-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2eadcc2e-99a8-11db-937f-000e0c431b59-Bych-F1V9-A2Sx-FQgq-CqVG-EI66', '2eadcc2e-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2eadcc2e-99a8-11db-937f-000e0c431b59-ByZb-Fkz9-Azqm-FCNV-CPw4-EGxo', '2eadcc2e-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2eadcc30-99a8-11db-937f-000e0c431b59-BatA-FPOj-AolO-Fs4l-CXPE-EQoh', '2eadcc30-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2eadcc30-99a8-11db-937f-000e0c431b59-Be6M-FLuk-AOEu-FQjC-C8Av-E8PA', '2eadcc30-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '1', 'л'),
('2eadcc30-99a8-11db-937f-000e0c431b59-Bh4m-Fwlf-AX0v-FcPZ-CAtU-EM6E', '2eadcc30-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'уайт-спирит', ''),
('2eadcc30-99a8-11db-937f-000e0c431b59-Bv8J-FIp7-AbTy-FfjZ-CWoD-ERWp', '2eadcc30-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('2eadcc30-99a8-11db-937f-000e0c431b59-BWd3-FYcO-AQpq-FzYD-CUJB-EeRr', '2eadcc30-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2eadcc32-99a8-11db-937f-000e0c431b59-B8pU-FrBp-ApYi-FhWN-CB2R-EdGx', '2eadcc32-99a8-11db-937f-000e0c431b59', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('2eadcc32-99a8-11db-937f-000e0c431b59-BeDc-FPgs-Apgc-F0tX-CEhh-EOF8', '2eadcc32-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('2eadcc32-99a8-11db-937f-000e0c431b59-Bfav-FD8I-AR0A-FidH-CWp3-EqTo', '2eadcc32-99a8-11db-937f-000e0c431b59', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'уайт-спирит', ''),
('2eadcc32-99a8-11db-937f-000e0c431b59-BMvU-FovD-AB1k-FiFq-CfCV-EzuX', '2eadcc32-99a8-11db-937f-000e0c431b59', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('2eadcc32-99a8-11db-937f-000e0c431b59-BxJJ-FiZt-AkXt-FVV9-CW32-E9pd', '2eadcc32-99a8-11db-937f-000e0c431b59', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('30047f82-f788-11e3-8c8a-005056be1f7b-B5Z8-FCcd-ANdX-FbW2-Cuo0-E7iy', '30047f82-f788-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('30047f82-f788-11e3-8c8a-005056be1f7b-BFgM-FCow-A95J-FChG-CyNC-EqxQ', '30047f82-f788-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-серый', ''),
('30047f82-f788-11e3-8c8a-005056be1f7b-BRHM-F4zv-ATxu-Fc1z-Cmql-ExoE', '30047f82-f788-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('30047f82-f788-11e3-8c8a-005056be1f7b-Bs2l-FcTc-AS7I-F4ux-C9oM-E6qo', '30047f82-f788-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('30047f82-f788-11e3-8c8a-005056be1f7b-BYuF-FHAw-ApAI-Fr6w-CZBT-EmD8', '30047f82-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('30047f82-f788-11e3-8c8a-005056be1f7b-BZC2-FiFY-Ao4m-FrjZ-C99J-EDFJ', '30047f82-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('30047f82-f788-11e3-8c8a-005056be1f7b-BzvK-F9dG-Au4H-FDfL-CB5N-E3dT', '30047f82-f788-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('3114fa55-f78f-11e3-8c8a-005056be1f7b-BbBH-FPJo-AfMW-F2Wc-CVyf-Er9D', '3114fa55-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('3114fa55-f78f-11e3-8c8a-005056be1f7b-BbDV-FJhB-AshJ-Fpht-CIph-EGxr', '3114fa55-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('3114fa55-f78f-11e3-8c8a-005056be1f7b-BIy9-FIJU-ANZx-FHhQ-CDsV-EKFe', '3114fa55-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('3114fa55-f78f-11e3-8c8a-005056be1f7b-BKEH-FXIQ-A82s-Fepi-C0H8-EAkd', '3114fa55-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный', ''),
('3114fa55-f78f-11e3-8c8a-005056be1f7b-Bny8-FAqU-AcBJ-F9tH-CBcy-ElVK', '3114fa55-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('3114fa55-f78f-11e3-8c8a-005056be1f7b-Bt8p-FgHR-AH0U-Ft8n-Cflb-EdlH', '3114fa55-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('3114fa55-f78f-11e3-8c8a-005056be1f7b-Btqk-F3WH-Amex-FKll-C2Dm-E9Sv', '3114fa55-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('3409410b-5b1f-11e2-8bea-005056be271d-B3Pi-FARp-AKXN-FygI-CCwf-E3gU', '3409410b-5b1f-11e2-8bea-005056be271d', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('3409410b-5b1f-11e2-8bea-005056be271d-BbVU-FuB3-AuEB-Fj30-CE86-ERGU', '3409410b-5b1f-11e2-8bea-005056be271d', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('3409410b-5b1f-11e2-8bea-005056be271d-BE6M-FIYx-AtLB-FDSn-C6Be-Exus', '3409410b-5b1f-11e2-8bea-005056be271d', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('3409410b-5b1f-11e2-8bea-005056be271d-BF1f-FH4y-Auy1-FOll-C8D7-ERy9', '3409410b-5b1f-11e2-8bea-005056be271d', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('3409410b-5b1f-11e2-8bea-005056be271d-BJiC-FLH6-AKM3-FGd0-Cajz-E7qs', '3409410b-5b1f-11e2-8bea-005056be271d', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('3409410b-5b1f-11e2-8bea-005056be271d-Bl1u-FzpR-A8sD-Fclk-CwNT-EHl2', '3409410b-5b1f-11e2-8bea-005056be271d', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('3409410b-5b1f-11e2-8bea-005056be271d-BmtU-FXhl-APAB-FXw1-CXoF-E7pW', '3409410b-5b1f-11e2-8bea-005056be271d', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('3409410b-5b1f-11e2-8bea-005056be271d-BQWz-Fuyu-AMAu-FyQ3-CdaH-Evz0', '3409410b-5b1f-11e2-8bea-005056be271d', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('3409410b-5b1f-11e2-8bea-005056be271d-Bs13-FtOo-AklT-Fqh0-CDJz-Ex9e', '3409410b-5b1f-11e2-8bea-005056be271d', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('3442e089-0125-11e4-8695-005056be1f7b-B2V8-F7Nz-AgEI-FqVF-CHGn-EUe3', '3442e089-0125-11e4-8695-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('3442e089-0125-11e4-8695-005056be1f7b-Bd6A-Fvmo-AOLe-FbIU-CigO-ENf8', '3442e089-0125-11e4-8695-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('3442e089-0125-11e4-8695-005056be1f7b-BtiQ-FyNy-ATHM-FfZ4-CxRO-EuNc', '3442e089-0125-11e4-8695-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2200', 'г'),
('3442e089-0125-11e4-8695-005056be1f7b-BviM-FXOZ-AEYE-Fpif-C4XL-ESrR', '3442e089-0125-11e4-8695-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('3442e089-0125-11e4-8695-005056be1f7b-BX5o-F0tM-ADcO-FsD7-CeIE-EaDe', '3442e089-0125-11e4-8695-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серебрянный', ''),
('3442e089-0125-11e4-8695-005056be1f7b-BZja-FoRe-Alvm-FpMq-CJpl-EKbN', '3442e089-0125-11e4-8695-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('3442e089-0125-11e4-8695-005056be1f7b-BzpZ-FTGi-AopE-F33k-C1SJ-ER8b', '3442e089-0125-11e4-8695-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('3479e733-bce7-11e4-a1f3-005056be1f7b-BfeR-Fnoe-A91k-FZ9v-CCGR-EKAc', '3479e733-bce7-11e4-a1f3-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серебристый', ''),
('3479e733-bce7-11e4-a1f3-005056be1f7b-BHlo-Fk92-AMXj-FSE6-CDQQ-EoCA', '3479e733-bce7-11e4-a1f3-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('3479e733-bce7-11e4-a1f3-005056be1f7b-BLUl-Fvuj-Ahwq-Fz8r-CStm-Epik', '3479e733-bce7-11e4-a1f3-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('3479e733-bce7-11e4-a1f3-005056be1f7b-BOkx-F6Zu-Amre-FPXD-Czfo-EeGn', '3479e733-bce7-11e4-a1f3-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('3479e733-bce7-11e4-a1f3-005056be1f7b-Boyn-FA88-AZGf-FXD9-CvvF-E29a', '3479e733-bce7-11e4-a1f3-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('3479e733-bce7-11e4-a1f3-005056be1f7b-BrGF-FMVd-APK9-F5pF-ChBX-Ei70', '3479e733-bce7-11e4-a1f3-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2', 'л'),
('3479e733-bce7-11e4-a1f3-005056be1f7b-BUNl-FTIQ-AYqR-FwPO-Cv5D-EZ6A', '3479e733-bce7-11e4-a1f3-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'молотковая эмаль-грунт', ''),
('3479e733-bce7-11e4-a1f3-005056be1f7b-BVSA-F6lF-A2oW-FITY-CJi9-E8dY', '3479e733-bce7-11e4-a1f3-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('3526e5c9-f78e-11e3-8c8a-005056be1f7b-BBHy-FXhZ-AanC-FX0X-C5wc-EQs5', '3526e5c9-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'розово-бежевый', ''),
('3526e5c9-f78e-11e3-8c8a-005056be1f7b-BdnQ-FfAP-A45C-FVKu-CQcJ-E7JC', '3526e5c9-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('3526e5c9-f78e-11e3-8c8a-005056be1f7b-BHMx-FCOk-AAdZ-FFhl-CsAP-E9gP', '3526e5c9-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('3526e5c9-f78e-11e3-8c8a-005056be1f7b-BlcG-FYnE-AV2J-Ff3R-C3eZ-Eugm', '3526e5c9-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('3526e5c9-f78e-11e3-8c8a-005056be1f7b-BmI2-FBNY-An7Z-F356-CHJU-ERaF', '3526e5c9-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('3526e5c9-f78e-11e3-8c8a-005056be1f7b-BOZJ-FQuU-ABBw-FL87-CNFJ-EBHX', '3526e5c9-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('3526e5c9-f78e-11e3-8c8a-005056be1f7b-BRYq-Fr4K-ACu6-FBx8-CPyF-EDMn', '3526e5c9-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b-B1Fu-F50x-A1i6-Fy7B-CCvW-Eqi2', '36e5c1e5-bbba-11e3-b52a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b-BaGw-F49o-AkVM-FR4n-CItt-E3ns', '36e5c1e5-bbba-11e3-b52a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b-BFKX-FFJZ-AnA2-FRnO-C56K-E3aZ', '36e5c1e5-bbba-11e3-b52a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b-BIrx-FA9b-AO4W-FZwx-CygV-Ek1w', '36e5c1e5-bbba-11e3-b52a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'шпатлевка', ''),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b-BkZx-Fgsq-A0Ep-Flxt-CY6a-EL7Z', '36e5c1e5-bbba-11e3-b52a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '10000', 'г'),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b-BpAL-F4JS-Ao5D-F4D7-CjH8-EYGO', '36e5c1e5-bbba-11e3-b52a-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b-BqeR-FlSN-AnV0-F0Bi-C2co-EnWm', '36e5c1e5-bbba-11e3-b52a-005056be1f7b', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'финишная', ''),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b-BR79-FeO2-AIWk-F2OO-Ck6t-E2gC', '36e5c1e5-bbba-11e3-b52a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b-Btiv-FUaA-AjB6-FS4c-CV9m-EtDw', '36e5c1e5-bbba-11e3-b52a-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по дереву', ''),
('36e5c1e5-bbba-11e3-b52a-005056be1f7b-ByUo-Fxfu-Ah5d-F33q-CWhr-Ehb1', '36e5c1e5-bbba-11e3-b52a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('380e3f79-f788-11e3-8c8a-005056be1f7b-B9Lf-FVUY-AeCR-F9Hg-C8LY-E9fE', '380e3f79-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('380e3f79-f788-11e3-8c8a-005056be1f7b-BD2B-FUqG-AigO-FRnZ-C55R-EYaQ', '380e3f79-f788-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный', ''),
('380e3f79-f788-11e3-8c8a-005056be1f7b-BEBx-F01Z-A4wM-FR1d-CHLt-EX8W', '380e3f79-f788-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('380e3f79-f788-11e3-8c8a-005056be1f7b-BFEl-FTVP-AtQJ-FAok-CRmv-Ew9G', '380e3f79-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('380e3f79-f788-11e3-8c8a-005056be1f7b-BLdI-FdcQ-A0Zb-FXY8-CcdB-EExX', '380e3f79-f788-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('380e3f79-f788-11e3-8c8a-005056be1f7b-BTgn-FdhS-ADy6-Fzl5-C6xX-EEQz', '380e3f79-f788-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('380e3f79-f788-11e3-8c8a-005056be1f7b-BUPP-Fwno-AtFH-FvJ6-CIdb-Ew80', '380e3f79-f788-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('3bfb5c69-9fb8-11e3-8705-005056be1f7b-B0F4-FmaY-ANXA-FZKG-C3Vd-ERaG', '3bfb5c69-9fb8-11e3-8705-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('3bfb5c69-9fb8-11e3-8705-005056be1f7b-B6BX-Fzx3-AUBf-F25d-CP5i-EIg0', '3bfb5c69-9fb8-11e3-8705-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('3bfb5c69-9fb8-11e3-8705-005056be1f7b-B6Wa-Fydu-AHrA-FcRF-Ckuf-Etuw', '3bfb5c69-9fb8-11e3-8705-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('3bfb5c69-9fb8-11e3-8705-005056be1f7b-BdZJ-F0RD-Adg8-FBpe-CBMO-EXtY', '3bfb5c69-9fb8-11e3-8705-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('3bfb5c69-9fb8-11e3-8705-005056be1f7b-BEfa-FE8s-AKhd-FpRN-CcEa-Euzp', '3bfb5c69-9fb8-11e3-8705-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '900', 'г'),
('3bfb5c69-9fb8-11e3-8705-005056be1f7b-BHCo-FU1H-AHfm-FVel-C8lL-EwGd', '3bfb5c69-9fb8-11e3-8705-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('3bfb5c69-9fb8-11e3-8705-005056be1f7b-BhuW-FhJh-AnC3-FHUT-CNPU-EkFH', '3bfb5c69-9fb8-11e3-8705-005056be1f7b', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('3bfb5c69-9fb8-11e3-8705-005056be1f7b-BKXZ-FFmn-AkR5-Fvfe-COnh-E38X', '3bfb5c69-9fb8-11e3-8705-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый глянцевый', ''),
('3bfb5c69-9fb8-11e3-8705-005056be1f7b-BxNS-FuP8-APQJ-Feo4-C3jP-ETXt', '3bfb5c69-9fb8-11e3-8705-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('3d601a65-f78f-11e3-8c8a-005056be1f7b-B0Qs-FUcn-ApPV-FstK-CyNF-Em2z', '3d601a65-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('3d601a65-f78f-11e3-8c8a-005056be1f7b-Bd5x-FouK-Aehn-FaJ9-Ctea-E62Z', '3d601a65-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('3d601a65-f78f-11e3-8c8a-005056be1f7b-BFFy-F3Xt-AH3B-Fg4C-CUPw-ElAl', '3d601a65-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('3d601a65-f78f-11e3-8c8a-005056be1f7b-BVcL-FW9E-AZTU-FL5V-CxrC-EdzF', '3d601a65-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('3d601a65-f78f-11e3-8c8a-005056be1f7b-BWuQ-FvzL-ArDU-FUU9-CpKu-Eoq8', '3d601a65-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('3d601a65-f78f-11e3-8c8a-005056be1f7b-Bxrp-FHCA-AFsK-FzW1-Cxc6-ElVT', '3d601a65-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('3d601a65-f78f-11e3-8c8a-005056be1f7b-Bzv0-FfMa-AZ2x-FR6O-CeRZ-EBBx', '3d601a65-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красно-коричневый', ''),
('3d822ed4-f78e-11e3-8c8a-005056be1f7b-BB4Q-Fskb-AtyJ-FXpt-CSYy-Et6X', '3d822ed4-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('3d822ed4-f78e-11e3-8c8a-005056be1f7b-Bhnm-F3Q3-Aeey-FeGL-COf1-EAvx', '3d822ed4-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('3d822ed4-f78e-11e3-8c8a-005056be1f7b-Bjgn-FSVB-AMkq-FrKA-COso-E1k6', '3d822ed4-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('3d822ed4-f78e-11e3-8c8a-005056be1f7b-BPoK-FRO9-AFkW-FZlD-CFm7-EVVh', '3d822ed4-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('3d822ed4-f78e-11e3-8c8a-005056be1f7b-BsEa-Fhjg-AsxC-Fjxx-CWXU-EAqq', '3d822ed4-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('3d822ed4-f78e-11e3-8c8a-005056be1f7b-BwEW-F7cB-ApvZ-FeeV-C2u0-ECCN', '3d822ed4-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('3d822ed4-f78e-11e3-8c8a-005056be1f7b-BZpw-FP7j-Au1s-FzY4-COof-EkUg', '3d822ed4-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'охра', ''),
('41f9a64a-f788-11e3-8c8a-005056be1f7b-B1HF-FcHZ-AmTU-Fyj0-CSt5-EIpp', '41f9a64a-f788-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('41f9a64a-f788-11e3-8c8a-005056be1f7b-Bgq3-F1ec-A1wL-Fv62-Caqt-EdcK', '41f9a64a-f788-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('41f9a64a-f788-11e3-8c8a-005056be1f7b-BK51-F6vm-ANXA-FhMb-Cczg-E3PQ', '41f9a64a-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('41f9a64a-f788-11e3-8c8a-005056be1f7b-BlBE-FtS4-APVv-F1wS-CmYU-Eza5', '41f9a64a-f788-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красно-коричневый', ''),
('41f9a64a-f788-11e3-8c8a-005056be1f7b-BmEZ-Fau9-A3zl-F0TK-CL6L-EQpe', '41f9a64a-f788-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('41f9a64a-f788-11e3-8c8a-005056be1f7b-BsqD-FxZy-AGaa-Fihe-CHDL-E05q', '41f9a64a-f788-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('41f9a64a-f788-11e3-8c8a-005056be1f7b-Bv3C-FvaP-AN4E-FtvT-CAlb-EGEj', '41f9a64a-f788-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('441a7da1-9fb8-11e3-8705-005056be1f7b-B4Fh-FWuz-AkM4-FA8t-Cqpz-EmiY', '441a7da1-9fb8-11e3-8705-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый глянцевый', ''),
('441a7da1-9fb8-11e3-8705-005056be1f7b-B8rz-FvqA-AH4b-FkgE-CLjl-Elp4', '441a7da1-9fb8-11e3-8705-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('441a7da1-9fb8-11e3-8705-005056be1f7b-BbYU-F5Dv-AW0z-FqSB-CyPs-EoAY', '441a7da1-9fb8-11e3-8705-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('441a7da1-9fb8-11e3-8705-005056be1f7b-BChZ-FGRz-Asad-Foac-C7EU-ETLH', '441a7da1-9fb8-11e3-8705-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('441a7da1-9fb8-11e3-8705-005056be1f7b-BMT2-FWUn-A4Fd-F6RY-C5Kd-EchO', '441a7da1-9fb8-11e3-8705-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('441a7da1-9fb8-11e3-8705-005056be1f7b-Bn3W-FHxn-Afsy-F9KV-CNbd-Enml', '441a7da1-9fb8-11e3-8705-005056be1f7b', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('441a7da1-9fb8-11e3-8705-005056be1f7b-BoIR-FGty-AK6X-FwgD-Cq8b-EA3e', '441a7da1-9fb8-11e3-8705-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2400', 'г'),
('441a7da1-9fb8-11e3-8705-005056be1f7b-BRHa-FLHY-A5yE-Fuam-CIn7-EA0R', '441a7da1-9fb8-11e3-8705-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('441a7da1-9fb8-11e3-8705-005056be1f7b-BsF6-F3jk-AvcJ-FBvh-Cu1C-EL50', '441a7da1-9fb8-11e3-8705-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('45794d11-f78e-11e3-8c8a-005056be1f7b-BdCU-FpVM-Agbk-FtGy-CO3I-ELnT', '45794d11-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('45794d11-f78e-11e3-8c8a-005056be1f7b-BgVi-FzRH-AFc9-F3Ny-Camb-EyBB', '45794d11-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серый', ''),
('45794d11-f78e-11e3-8c8a-005056be1f7b-BiVu-F533-Aese-FH3v-CFPj-EfMG', '45794d11-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('45794d11-f78e-11e3-8c8a-005056be1f7b-Bixz-FOrl-AzAL-FT32-CGYM-EoNe', '45794d11-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('45794d11-f78e-11e3-8c8a-005056be1f7b-BVN7-FHOX-A6QW-FgIk-C1lm-EKR9', '45794d11-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('45794d11-f78e-11e3-8c8a-005056be1f7b-BwT7-FvLK-Ajmw-FBbx-CC0l-E2NT', '45794d11-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('45794d11-f78e-11e3-8c8a-005056be1f7b-BWxZ-F8hg-AwvY-F57C-CORP-EKZd', '45794d11-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('47de42e5-f789-11e3-8c8a-005056be1f7b-B3Eb-FAwm-AjQX-Fd2Q-CqWc-E4Qa', '47de42e5-f789-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('47de42e5-f789-11e3-8c8a-005056be1f7b-BckE-FSPy-AQaP-FvVc-C24I-Eq39', '47de42e5-f789-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('47de42e5-f789-11e3-8c8a-005056be1f7b-BFBT-FnNq-AYNG-FE5p-CGwt-Eiwf', '47de42e5-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('47de42e5-f789-11e3-8c8a-005056be1f7b-BGw6-FGCU-AXtz-Fpu8-CLae-E5NG', '47de42e5-f789-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('47de42e5-f789-11e3-8c8a-005056be1f7b-Bipz-F91F-AMhg-FwAf-CMGR-EHNU', '47de42e5-f789-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('47de42e5-f789-11e3-8c8a-005056be1f7b-BKWw-Fhzn-Ayg0-FQZQ-CqeS-EAIf', '47de42e5-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('47de42e5-f789-11e3-8c8a-005056be1f7b-Bqgt-Fwln-Absa-FLQN-Cqbk-Ed9Z', '47de42e5-f789-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('4dd1de14-f78e-11e3-8c8a-005056be1f7b-BiqU-FR8f-AkWp-FNEz-CEVH-EgXT', '4dd1de14-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('4dd1de14-f78e-11e3-8c8a-005056be1f7b-Bkut-F8Qz-A0JR-FZGk-CcoQ-Ex7O', '4dd1de14-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('4dd1de14-f78e-11e3-8c8a-005056be1f7b-BRRb-FCLE-AWaW-FgGB-C3ca-E7SD', '4dd1de14-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('4dd1de14-f78e-11e3-8c8a-005056be1f7b-BShk-F9uo-Ayz0-F6VX-CO7I-E95Y', '4dd1de14-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('4dd1de14-f78e-11e3-8c8a-005056be1f7b-BVYE-F1ml-AXQt-FRLS-CYKm-ErK2', '4dd1de14-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-серый', ''),
('4dd1de14-f78e-11e3-8c8a-005056be1f7b-Bx4i-FFSo-ApvT-F7iP-CK2x-Euzi', '4dd1de14-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('4dd1de14-f78e-11e3-8c8a-005056be1f7b-BZnX-FYjt-Awyq-F5wk-CTke-E2pw', '4dd1de14-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('4ed5aaa1-f789-11e3-8c8a-005056be1f7b-B26e-F48A-A3o1-FFcQ-CPrs-EPRU', '4ed5aaa1-f789-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('4ed5aaa1-f789-11e3-8c8a-005056be1f7b-BEi4-F6nW-AL4D-F4IV-CO6b-ETjn', '4ed5aaa1-f789-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('4ed5aaa1-f789-11e3-8c8a-005056be1f7b-BJcN-FviY-Al0C-FBf0-Cr1M-ExZK', '4ed5aaa1-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('4ed5aaa1-f789-11e3-8c8a-005056be1f7b-BPbA-Fkmh-Axu1-FGYe-CPi7-EcUe', '4ed5aaa1-f789-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('4ed5aaa1-f789-11e3-8c8a-005056be1f7b-BUMG-Fj9b-ACzV-FKgN-CITS-EonJ', '4ed5aaa1-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('4ed5aaa1-f789-11e3-8c8a-005056be1f7b-BwEf-FT2f-AyDm-FGLz-Cboa-Ef7p', '4ed5aaa1-f789-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('4ed5aaa1-f789-11e3-8c8a-005056be1f7b-BwFF-FnMd-AIbC-FE5W-CjwS-EDpP', '4ed5aaa1-f789-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('500c0ee4-4f2c-11de-8f53-000e0c431b58-B4ik-FBnc-AvTc-FGxg-CItt-EmeG', '500c0ee4-4f2c-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('500c0ee4-4f2c-11de-8f53-000e0c431b58-B6Md-FuXU-AXq5-Fsxl-Cuw5-EBH8', '500c0ee4-4f2c-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('500c0ee4-4f2c-11de-8f53-000e0c431b58-B72w-F1kk-AcUW-FWWe-CTPD-E5Rq', '500c0ee4-4f2c-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('500c0ee4-4f2c-11de-8f53-000e0c431b58-B9TQ-FVC3-AanI-FF3u-Cp0U-EeEC', '500c0ee4-4f2c-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('500c0ee4-4f2c-11de-8f53-000e0c431b58-BHjz-FEsa-AIaz-FK1n-CTjV-EHrC', '500c0ee4-4f2c-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('500c0ee4-4f2c-11de-8f53-000e0c431b58-BXDA-FzJy-AWSh-FF5B-CL14-E9rd', '500c0ee4-4f2c-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('500c0ee6-4f2c-11de-8f53-000e0c431b58-B4bN-FUJ9-AoZC-Ftot-Cr2I-E7v7', '500c0ee6-4f2c-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('500c0ee6-4f2c-11de-8f53-000e0c431b58-B4eu-FmF9-Atfi-F3Jf-Cxqk-EL95', '500c0ee6-4f2c-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('500c0ee6-4f2c-11de-8f53-000e0c431b58-B7Dh-Frrq-A62t-FkOG-CZjJ-Eo85', '500c0ee6-4f2c-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('500c0ee6-4f2c-11de-8f53-000e0c431b58-BhEX-FRUw-Axgi-Fq6I-Co2M-EMj4', '500c0ee6-4f2c-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('500c0ee6-4f2c-11de-8f53-000e0c431b58-BVCO-FXv3-AHcu-FPYg-CMv3-EYk9', '500c0ee6-4f2c-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('500c0ee6-4f2c-11de-8f53-000e0c431b58-BWWM-FyFh-Adjv-FnJN-CJCp-EXXz', '500c0ee6-4f2c-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('55c10657-f78e-11e3-8c8a-005056be1f7b-BAJ7-F3RP-AZBD-FhOv-CI3u-Eicc', '55c10657-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('55c10657-f78e-11e3-8c8a-005056be1f7b-BBdB-FrTC-Ao6M-Fajr-C1k2-EwcI', '55c10657-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('55c10657-f78e-11e3-8c8a-005056be1f7b-BC3J-FGZX-A3hQ-FnFs-CFHM-EGyg', '55c10657-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('55c10657-f78e-11e3-8c8a-005056be1f7b-BIxB-FVoW-Aog3-FHSh-CuyH-EMrl', '55c10657-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный', ''),
('55c10657-f78e-11e3-8c8a-005056be1f7b-BJdc-FV4C-ADum-F5gE-CCj7-EMpW', '55c10657-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('55c10657-f78e-11e3-8c8a-005056be1f7b-Bki4-F2L0-AkRH-FwX7-CThZ-Ev4T', '55c10657-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('55c10657-f78e-11e3-8c8a-005056be1f7b-Bo0Z-Fjrd-ABip-FzB8-CmJv-EofZ', '55c10657-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('56a6f723-ea03-11de-860d-000e0c431b58-B94L-FYlg-AoiQ-F7Nh-CKZm-ETEt', '56a6f723-ea03-11de-860d-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('56a6f723-ea03-11de-860d-000e0c431b58-Bbjp-FVKv-Ai7Z-Fw4L-CuEr-EVLG', '56a6f723-ea03-11de-860d-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('56a6f723-ea03-11de-860d-000e0c431b58-BH7l-FVQu-AmHS-FWkb-CJBA-EyXL', '56a6f723-ea03-11de-860d-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('56a6f723-ea03-11de-860d-000e0c431b58-BiAM-FHuN-Aum6-F3Ln-CGbj-EnCg', '56a6f723-ea03-11de-860d-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('56a6f723-ea03-11de-860d-000e0c431b58-Bk6H-FAsB-AMcG-F4yR-C07O-ElSe', '56a6f723-ea03-11de-860d-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('56a6f723-ea03-11de-860d-000e0c431b58-BKfk-FGYw-AufN-FUIQ-C1ht-EdJx', '56a6f723-ea03-11de-860d-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('56a6f723-ea03-11de-860d-000e0c431b58-BkWY-FW9U-ArDj-FtAn-C3sI-EisN', '56a6f723-ea03-11de-860d-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('56a6f723-ea03-11de-860d-000e0c431b58-BV5l-FnQM-AEZN-FFOl-CQzh-EY1P', '56a6f723-ea03-11de-860d-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('56a6f723-ea03-11de-860d-000e0c431b58-BVjV-Fjpk-AK6Z-FrUQ-C7uS-EpQN', '56a6f723-ea03-11de-860d-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для обоев', ''),
('56f519d0-4f2c-11de-8f53-000e0c431b58-B1YI-FR8X-Acy3-Fo5c-C2OL-Emsx', '56f519d0-4f2c-11de-8f53-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('56f519d0-4f2c-11de-8f53-000e0c431b58-B3Qs-FoVx-AgmS-F3M7-CjnY-EJuS', '56f519d0-4f2c-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('56f519d0-4f2c-11de-8f53-000e0c431b58-B5nk-FNgx-AKFa-FiOK-C1eL-EGkN', '56f519d0-4f2c-11de-8f53-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная особопрочная', ''),
('56f519d0-4f2c-11de-8f53-000e0c431b58-B7kx-FsE4-Amh5-FJkJ-CMai-EVsf', '56f519d0-4f2c-11de-8f53-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('56f519d0-4f2c-11de-8f53-000e0c431b58-B8Fb-FVcs-AcUr-FsfS-Cx59-Eiv4', '56f519d0-4f2c-11de-8f53-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('56f519d0-4f2c-11de-8f53-000e0c431b58-B9rf-FOu2-ADNv-FFF2-CReW-Ekoq', '56f519d0-4f2c-11de-8f53-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('56f519d0-4f2c-11de-8f53-000e0c431b58-BLk9-Fev8-Ae0P-FCVz-Cc5B-E3FL', '56f519d0-4f2c-11de-8f53-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('56f519d0-4f2c-11de-8f53-000e0c431b58-BQAP-FFBN-AIhK-F3jW-CYcm-EGG9', '56f519d0-4f2c-11de-8f53-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('56f519d0-4f2c-11de-8f53-000e0c431b58-BTsu-FelU-A20w-FeG4-CcBg-EDOD', '56f519d0-4f2c-11de-8f53-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('56f519d0-4f2c-11de-8f53-000e0c431b58-BZeT-FJU1-Aw4q-FdhJ-CCst-EBNf', '56f519d0-4f2c-11de-8f53-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('5ed5699a-f78e-11e3-8c8a-005056be1f7b-B0Jx-FeMX-AYUm-FGKX-C1fM-Eg5A', '5ed5699a-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('5ed5699a-f78e-11e3-8c8a-005056be1f7b-BfiR-F0JB-Aao1-FMwh-C5k6-EzaG', '5ed5699a-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('5ed5699a-f78e-11e3-8c8a-005056be1f7b-Bhnh-FZbE-AJnE-Fs3V-CWY5-EnXE', '5ed5699a-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('5ed5699a-f78e-11e3-8c8a-005056be1f7b-Bpys-FfBe-AD7E-F0vf-CFSJ-Enrk', '5ed5699a-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('5ed5699a-f78e-11e3-8c8a-005056be1f7b-Br2N-FwjG-AI6f-FDj4-CHPs-E1vt', '5ed5699a-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('5ed5699a-f78e-11e3-8c8a-005056be1f7b-BUyp-FZxb-A54t-FDgb-CoOS-E3A2', '5ed5699a-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('5ed5699a-f78e-11e3-8c8a-005056be1f7b-ByY5-FzKs-ANb3-Fxgt-CMAi-EPRo', '5ed5699a-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красно-коричневый', ''),
('5fde6d12-f789-11e3-8c8a-005056be1f7b-B4iF-Fkv2-AL4t-F2Ao-CdL9-EtlL', '5fde6d12-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('5fde6d12-f789-11e3-8c8a-005056be1f7b-BcWb-FmS1-Aq7q-FMvl-CI3p-EH5m', '5fde6d12-f789-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серебрянный', ''),
('5fde6d12-f789-11e3-8c8a-005056be1f7b-BDPR-FxGR-Acjd-FbSF-CmrM-ExTG', '5fde6d12-f789-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('5fde6d12-f789-11e3-8c8a-005056be1f7b-BiCn-FCd7-AHGo-FU48-CbnX-EEkv', '5fde6d12-f789-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('5fde6d12-f789-11e3-8c8a-005056be1f7b-BKUP-FaMp-Af0M-Fwwf-CmO2-ED2J', '5fde6d12-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('5fde6d12-f789-11e3-8c8a-005056be1f7b-BuZn-F7XM-AAfp-Fmrs-C0v8-EQjD', '5fde6d12-f789-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('5fde6d12-f789-11e3-8c8a-005056be1f7b-BYHK-Fl58-AGgL-F8jD-CHdm-EMDX', '5fde6d12-f789-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('612d8834-6137-11e1-96bd-005056be3bd8-B2Vy-FOIV-ARyS-FtzK-CNlZ-EqNU', '612d8834-6137-11e1-96bd-005056be3bd8', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый глянцевый', ''),
('612d8834-6137-11e1-96bd-005056be3bd8-BaPn-FBB1-As9x-Fz5y-CEoE-Eoy8', '612d8834-6137-11e1-96bd-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('612d8834-6137-11e1-96bd-005056be3bd8-Bc2E-FeNd-Ag9g-FqAr-Ck3C-EZHK', '612d8834-6137-11e1-96bd-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('612d8834-6137-11e1-96bd-005056be3bd8-Bgfq-FDMr-Auxk-FwMr-C78G-E6BO', '612d8834-6137-11e1-96bd-005056be3bd8', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('612d8834-6137-11e1-96bd-005056be3bd8-Bh25-FVrz-AKvd-FOaS-CLs6-EAJ2', '612d8834-6137-11e1-96bd-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('612d8834-6137-11e1-96bd-005056be3bd8-BSmy-Fa7t-Ai9K-FMrp-CDI5-EqJ7', '612d8834-6137-11e1-96bd-005056be3bd8', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для радиаторов', ''),
('612d8834-6137-11e1-96bd-005056be3bd8-BuPk-FK4n-Ay2I-FT5I-CBbn-Ese1', '612d8834-6137-11e1-96bd-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('612d8834-6137-11e1-96bd-005056be3bd8-Bus1-F56h-Ak9p-Feoz-CaMq-EVhY', '612d8834-6137-11e1-96bd-005056be3bd8', '1d08380b-ce34-11e4-a80e-005056be1f7a', '900', 'г'),
('612d8834-6137-11e1-96bd-005056be3bd8-BuZ9-FDIy-AOVa-FnCn-C9ff-ED0s', '612d8834-6137-11e1-96bd-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('612d8834-6137-11e1-96bd-005056be3bd8-BwOd-Fl6v-AnuB-FWYC-CuDK-ECK4', '612d8834-6137-11e1-96bd-005056be3bd8', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('67c85be4-6208-11de-9531-000e0c431b58-B8wb-FfdW-AnIO-FzUx-CtOS-Ed1X', '67c85be4-6208-11de-9531-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('67c85be4-6208-11de-9531-000e0c431b58-Bck3-FBdC-AgRt-FHcr-CBZd-Ec57', '67c85be4-6208-11de-9531-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('67c85be4-6208-11de-9531-000e0c431b58-Bcnz-FLuR-A3wr-FWOm-CSEK-EXHj', '67c85be4-6208-11de-9531-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('67c85be4-6208-11de-9531-000e0c431b58-Bojn-FV63-A8O7-FIlE-CsYC-EZxJ', '67c85be4-6208-11de-9531-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('67c85be4-6208-11de-9531-000e0c431b58-Btsx-FHr2-AlOX-FtlE-CkQo-EOlk', '67c85be4-6208-11de-9531-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('67c85be4-6208-11de-9531-000e0c431b58-Bw9r-FZHT-A5oY-F0De-ChgH-EXr2', '67c85be4-6208-11de-9531-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('67c85be4-6208-11de-9531-000e0c431b58-BziE-FDYZ-A1Hn-FJle-CgEE-EZGi', '67c85be4-6208-11de-9531-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'с индикатором', ''),
('67c85be6-6208-11de-9531-000e0c431b58-B6hK-FVC5-ACOC-Fwa0-CqaT-E39t', '67c85be6-6208-11de-9531-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'с индикатором', ''),
('67c85be6-6208-11de-9531-000e0c431b58-B9hU-F6A5-Aj8E-FXsL-Crnt-E29v', '67c85be6-6208-11de-9531-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('67c85be6-6208-11de-9531-000e0c431b58-BATL-FhZG-Ajl7-Fcko-C7Kx-EuGU', '67c85be6-6208-11de-9531-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('67c85be6-6208-11de-9531-000e0c431b58-BG2U-FLOC-AW6q-FGxo-C3jp-E3Ye', '67c85be6-6208-11de-9531-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('67c85be6-6208-11de-9531-000e0c431b58-BjJy-F7gK-Ab1Z-Feur-CLHu-EL84', '67c85be6-6208-11de-9531-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('67c85be6-6208-11de-9531-000e0c431b58-BSN9-FJVW-A9Ms-FVY0-Csf1-EDqF', '67c85be6-6208-11de-9531-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('67c85be6-6208-11de-9531-000e0c431b58-BwBA-Fyya-Aye1-FIXy-C2WW-ELRX', '67c85be6-6208-11de-9531-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('680965ab-f789-11e3-8c8a-005056be1f7b-B7Cg-F0B2-AEez-FB9Y-CQWC-EGOx', '680965ab-f789-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('680965ab-f789-11e3-8c8a-005056be1f7b-BHC7-Fue2-Ah1U-FCGb-C7Dd-EdCf', '680965ab-f789-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('680965ab-f789-11e3-8c8a-005056be1f7b-Biq5-FnZq-A6mC-F0VF-Cc87-EeiO', '680965ab-f789-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('680965ab-f789-11e3-8c8a-005056be1f7b-Bjuh-Fra3-Axh0-Fb3d-CTlC-EkZQ', '680965ab-f789-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('680965ab-f789-11e3-8c8a-005056be1f7b-Bm1B-FlR4-AFlf-FHL5-CXko-EvL4', '680965ab-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('680965ab-f789-11e3-8c8a-005056be1f7b-BXn1-F3vB-AxJm-Fc5x-CVde-EQG5', '680965ab-f789-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('680965ab-f789-11e3-8c8a-005056be1f7b-BYtX-FlOx-AeBE-FtvS-CMVD-EtDd', '680965ab-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('727c8145-f789-11e3-8c8a-005056be1f7b-B6ay-FQAT-AzY8-FatU-Ch6P-EecN', '727c8145-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('727c8145-f789-11e3-8c8a-005056be1f7b-B7SK-FIW0-AMzt-FrFt-CMpi-EGNz', '727c8145-f789-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('727c8145-f789-11e3-8c8a-005056be1f7b-BiaH-Fo3e-Ax1M-FDyE-Ccue-EQAf', '727c8145-f789-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('727c8145-f789-11e3-8c8a-005056be1f7b-Bkz4-FhQn-A2xi-FHSA-CU1b-EcfU', '727c8145-f789-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('727c8145-f789-11e3-8c8a-005056be1f7b-BM67-Fg8D-A94G-FcXI-C8rQ-E83Y', '727c8145-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('727c8145-f789-11e3-8c8a-005056be1f7b-BtFn-FSM6-AThw-Fu0R-CE6k-EPE7', '727c8145-f789-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('727c8145-f789-11e3-8c8a-005056be1f7b-BUH0-FKI9-AiZU-Fkfj-CXnl-EUXG', '727c8145-f789-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('747ef690-551c-11dc-beb4-000e0c431b58-B2zW-F5kV-AjuY-FLDD-C3WX-EnPT', '747ef690-551c-11dc-beb4-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('747ef690-551c-11dc-beb4-000e0c431b58-B7jS-Fxyp-AUvi-FI1D-C9j7-EFw0', '747ef690-551c-11dc-beb4-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('747ef690-551c-11dc-beb4-000e0c431b58-BD7J-FlFA-ApDj-FlIV-Clbu-EyMR', '747ef690-551c-11dc-beb4-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('747ef690-551c-11dc-beb4-000e0c431b58-Bgdz-F2cK-AYtn-FmWS-CWNI-EsIt', '747ef690-551c-11dc-beb4-000e0c431b58', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('747ef690-551c-11dc-beb4-000e0c431b58-BIqW-FLgO-ALlC-Fv0p-CJCm-ETor', '747ef690-551c-11dc-beb4-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('747ef690-551c-11dc-beb4-000e0c431b58-BTUu-F364-AOgU-F0Vh-CQdO-Enou', '747ef690-551c-11dc-beb4-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('747ef690-551c-11dc-beb4-000e0c431b58-BTZN-FugT-AeFD-Fz2A-CFyj-EXmY', '747ef690-551c-11dc-beb4-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('78e43dfb-fbee-11e1-8f72-005056be3bd8-B0Si-Fngh-Adbn-F2rN-CfEo-E1o8', '78e43dfb-fbee-11e1-8f72-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('78e43dfb-fbee-11e1-8f72-005056be3bd8-BBAG-FqRH-Au92-FJDw-COCF-Exqm', '78e43dfb-fbee-11e1-8f72-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('78e43dfb-fbee-11e1-8f72-005056be3bd8-BC1u-F5Ay-ArP2-FwCh-CZXr-EcVt', '78e43dfb-fbee-11e1-8f72-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('78e43dfb-fbee-11e1-8f72-005056be3bd8-BNgR-FCXo-AgLE-FBGK-CxJB-EiDB', '78e43dfb-fbee-11e1-8f72-005056be3bd8', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '20', 'л'),
('78e43dfb-fbee-11e1-8f72-005056be3bd8-BUKD-F9Bu-ALhz-F1Xe-CyZe-E5Gw', '78e43dfb-fbee-11e1-8f72-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('78e43dfb-fbee-11e1-8f72-005056be3bd8-BXuR-FOhU-Aw7r-FeZD-CNmk-Efp8', '78e43dfb-fbee-11e1-8f72-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'антисептический состав', ''),
('7a3c5db1-777c-11de-9531-000e0c431b58-B50U-F9zd-AgEZ-F5hN-CuOL-EvXD', '7a3c5db1-777c-11de-9531-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для потолков', ''),
('7a3c5db1-777c-11de-9531-000e0c431b58-BbtT-FTAk-AfhO-FZGR-CHjU-EJJE', '7a3c5db1-777c-11de-9531-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('7a3c5db1-777c-11de-9531-000e0c431b58-BGT6-FeN1-A2m7-FR7x-Ct2w-EE1m', '7a3c5db1-777c-11de-9531-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('7a3c5db1-777c-11de-9531-000e0c431b58-Bh1X-FPAY-Ayu2-FQRL-Cgo5-EjDs', '7a3c5db1-777c-11de-9531-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('7a3c5db1-777c-11de-9531-000e0c431b58-BPga-FGTj-Ay0O-FWCI-C5e3-ENx3', '7a3c5db1-777c-11de-9531-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('7a3c5db1-777c-11de-9531-000e0c431b58-Bq8B-FI2V-A72X-F56W-CYFa-EU1c', '7a3c5db1-777c-11de-9531-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для стен', ''),
('7a3c5db1-777c-11de-9531-000e0c431b58-BrpI-FFbv-AAes-FJBj-Cudb-EgTQ', '7a3c5db1-777c-11de-9531-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('7a3c5db1-777c-11de-9531-000e0c431b58-BsKE-F7gG-AFbk-F8oY-C1cq-EQfY', '7a3c5db1-777c-11de-9531-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('7a3c5db1-777c-11de-9531-000e0c431b58-BxSa-FCrg-ATzF-Fn0P-CsOv-EJVF', '7a3c5db1-777c-11de-9531-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('7a3c5db1-777c-11de-9531-000e0c431b58-BXsC-FYy4-A0UI-FrDv-Cmva-Ev13', '7a3c5db1-777c-11de-9531-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('7a3c5db1-777c-11de-9531-000e0c431b58-BxyO-F3cN-AIKc-F5Ux-C0C8-ED9e', '7a3c5db1-777c-11de-9531-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('7a3c5db3-777c-11de-9531-000e0c431b58-B0ie-F5X2-AAP8-FywS-COQL-ELm8', '7a3c5db3-777c-11de-9531-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('7a3c5db3-777c-11de-9531-000e0c431b58-BAPS-F32M-AVbl-FMva-C6y0-EIES', '7a3c5db3-777c-11de-9531-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('7a3c5db3-777c-11de-9531-000e0c431b58-Bb3v-F1y1-AYwB-FF1k-CgPs-Etn5', '7a3c5db3-777c-11de-9531-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('7a3c5db3-777c-11de-9531-000e0c431b58-BeXt-FZ3t-AueN-Fuvm-CzuK-ETpi', '7a3c5db3-777c-11de-9531-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('7a3c5db3-777c-11de-9531-000e0c431b58-BFxJ-FnIM-A0CQ-FkPM-CDoe-E9p8', '7a3c5db3-777c-11de-9531-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('7a3c5db3-777c-11de-9531-000e0c431b58-BH8b-F2A5-AQmi-FVDV-C5Dk-EM6c', '7a3c5db3-777c-11de-9531-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('7a3c5db3-777c-11de-9531-000e0c431b58-BLqy-FJek-Abt2-Fm5d-CkY1-ETys', '7a3c5db3-777c-11de-9531-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('7a3c5db3-777c-11de-9531-000e0c431b58-BoFX-FIf5-AqOk-FMZH-Cte5-E4IC', '7a3c5db3-777c-11de-9531-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('7a3c5db3-777c-11de-9531-000e0c431b58-BTOe-F5b5-ABLZ-F6Ei-C9Lq-EDia', '7a3c5db3-777c-11de-9531-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для стен', ''),
('7a3c5db3-777c-11de-9531-000e0c431b58-BYIN-FXM9-ACOX-Fwm6-CC7J-Eh1k', '7a3c5db3-777c-11de-9531-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для потолков', ''),
('7a3c5db3-777c-11de-9531-000e0c431b58-BZR5-FAdp-AaZe-Fahi-Cspf-EKgg', '7a3c5db3-777c-11de-9531-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('7a3c5db5-777c-11de-9531-000e0c431b58-B7Cn-FlU1-Aq6z-FLsr-CVaw-Eemn', '7a3c5db5-777c-11de-9531-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная особопрочная', ''),
('7a3c5db5-777c-11de-9531-000e0c431b58-B8FW-FFzR-ARLM-FZJZ-CmUZ-EAZT', '7a3c5db5-777c-11de-9531-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('7a3c5db5-777c-11de-9531-000e0c431b58-Bc3G-FOTi-A3tQ-FrVb-CHRe-Eu3y', '7a3c5db5-777c-11de-9531-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('7a3c5db5-777c-11de-9531-000e0c431b58-BjEz-FwjA-AtQl-FjRc-CNLG-EMA5', '7a3c5db5-777c-11de-9531-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('7a3c5db5-777c-11de-9531-000e0c431b58-BK0X-FE5w-AA2G-FPvU-CSgi-E2l1', '7a3c5db5-777c-11de-9531-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('7a3c5db5-777c-11de-9531-000e0c431b58-Bkit-Fatb-AIF3-F5je-CiCX-EpQq', '7a3c5db5-777c-11de-9531-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('7a3c5db5-777c-11de-9531-000e0c431b58-BNIa-Fd1v-A59C-FYt6-CNTd-E7uN', '7a3c5db5-777c-11de-9531-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('7a3c5db5-777c-11de-9531-000e0c431b58-BQKL-FckU-A3Np-FRNE-Cl0e-Ew2K', '7a3c5db5-777c-11de-9531-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('7a3c5db5-777c-11de-9531-000e0c431b58-BsFI-FL19-AQdv-Fabo-Carz-ElKZ', '7a3c5db5-777c-11de-9531-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('7a3c5db5-777c-11de-9531-000e0c431b58-BvNi-FFRG-AefH-Ft6M-CV5H-E9MM', '7a3c5db5-777c-11de-9531-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('7a3c5db7-777c-11de-9531-000e0c431b58-B4Di-FfrW-Amev-Frsa-Cd6r-EvBf', '7a3c5db7-777c-11de-9531-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('7a3c5db7-777c-11de-9531-000e0c431b58-B96m-FSFM-AwK4-F5Y6-C7TO-E4OD', '7a3c5db7-777c-11de-9531-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('7a3c5db7-777c-11de-9531-000e0c431b58-BElO-FYfb-A97l-FoyH-CwYF-EOpw', '7a3c5db7-777c-11de-9531-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('7a3c5db7-777c-11de-9531-000e0c431b58-BFvv-FD8X-AiKD-FomH-CQgK-EyB3', '7a3c5db7-777c-11de-9531-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('7a3c5db7-777c-11de-9531-000e0c431b58-Bh0X-FnFY-AuCm-FgWv-CnvT-EjK6', '7a3c5db7-777c-11de-9531-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('7a3c5db7-777c-11de-9531-000e0c431b58-Bk9c-FRq9-Ake3-FiDo-Ccob-EVfB', '7a3c5db7-777c-11de-9531-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('7a3c5db7-777c-11de-9531-000e0c431b58-Bkx4-F2kt-AGMU-F4Mk-CaKp-E3fH', '7a3c5db7-777c-11de-9531-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('7a3c5db7-777c-11de-9531-000e0c431b58-BLnW-F7VF-AXzA-FEkC-Ckpy-EWtv', '7a3c5db7-777c-11de-9531-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная особопрочная', ''),
('7a3c5db7-777c-11de-9531-000e0c431b58-BtR7-Fw7j-A5MF-FFBH-C8Nv-ETJH', '7a3c5db7-777c-11de-9531-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('7a3c5db7-777c-11de-9531-000e0c431b58-BYh7-FZmh-AcMN-FQi7-CCSO-E9FK', '7a3c5db7-777c-11de-9531-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('7ab6caa7-b1ee-11e0-aa21-000e0c431b58-B45m-F0yN-AFMU-FKXg-CVVi-EXUj', '7ab6caa7-b1ee-11e0-aa21-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по старым покрытиям', ''),
('7ab6caa7-b1ee-11e0-aa21-000e0c431b58-B8CC-F9Ap-A7jW-FZS7-Caip-E29x', '7ab6caa7-b1ee-11e0-aa21-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('7ab6caa7-b1ee-11e0-aa21-000e0c431b58-BDQI-FZpa-AVF9-FA87-Cx12-EZzq', '7ab6caa7-b1ee-11e0-aa21-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'спецгрунт', ''),
('7ab6caa7-b1ee-11e0-aa21-000e0c431b58-BeaF-F5fs-A0Tk-FGAu-CvOI-Ev6k', '7ab6caa7-b1ee-11e0-aa21-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('7ab6caa7-b1ee-11e0-aa21-000e0c431b58-BEgK-F3hh-AJbJ-FZkg-CqE8-Ew0d', '7ab6caa7-b1ee-11e0-aa21-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('7ab6caa7-b1ee-11e0-aa21-000e0c431b58-Bf0w-FFGw-A12B-F9m8-Cird-EsjA', '7ab6caa7-b1ee-11e0-aa21-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('7ab6caa7-b1ee-11e0-aa21-000e0c431b58-BO0P-FvBV-ADya-FFmE-Cx3H-EqKo', '7ab6caa7-b1ee-11e0-aa21-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('7ab6caa7-b1ee-11e0-aa21-000e0c431b58-BOXA-FrcS-Akjy-FAXQ-C4lP-EJXR', '7ab6caa7-b1ee-11e0-aa21-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('7ab6caa7-b1ee-11e0-aa21-000e0c431b58-BQsb-FZIB-A7yG-F5lF-CXGE-EKML', '7ab6caa7-b1ee-11e0-aa21-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('7c1e70d5-5a9d-11dc-be42-000e0c431b58-BgQH-FlCo-AXRe-FKGZ-CKNe-E3Rb', '7c1e70d5-5a9d-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('7c1e70d5-5a9d-11dc-be42-000e0c431b58-BHEs-FE8u-ATwl-FT7Y-CGrm-EVpr', '7c1e70d5-5a9d-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('7c1e70d5-5a9d-11dc-be42-000e0c431b58-BmlN-FN6J-AmB2-FPXg-C74x-EEez', '7c1e70d5-5a9d-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('7c1e70d5-5a9d-11dc-be42-000e0c431b58-Bs3H-FNDN-AmNb-FHGt-CitV-Ew8Q', '7c1e70d5-5a9d-11dc-be42-000e0c431b58', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('7c1e70d5-5a9d-11dc-be42-000e0c431b58-BTBk-FFMS-AIs7-F4CP-Cy1A-EJxw', '7c1e70d5-5a9d-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('7c1e70d5-5a9d-11dc-be42-000e0c431b58-BvNO-F9FK-AlZF-Fvgw-CO1x-Ey60', '7c1e70d5-5a9d-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('7c1e70d5-5a9d-11dc-be42-000e0c431b58-ByuV-F7wl-AabN-F27m-CU5K-EGqd', '7c1e70d5-5a9d-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('7e531df3-b5f5-11e1-83ba-005056be3bd8-BcGx-FfYV-Azna-FnzS-CDct-ENNn', '7e531df3-b5f5-11e1-83ba-005056be3bd8', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '1', 'л'),
('7e531df3-b5f5-11e1-83ba-005056be3bd8-BD8j-FwTM-AR7o-Fbez-Cn86-EbdU', '7e531df3-b5f5-11e1-83ba-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'очиститель', ''),
('7e531df3-b5f5-11e1-83ba-005056be3bd8-Bge7-Fxma-AjtI-Fcp9-CC4m-ErxP', '7e531df3-b5f5-11e1-83ba-005056be3bd8', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'прозрачный', ''),
('7e531df3-b5f5-11e1-83ba-005056be3bd8-BJJW-FIlk-AO0Q-FIdw-CGs3-E7zk', '7e531df3-b5f5-11e1-83ba-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('7e531df3-b5f5-11e1-83ba-005056be3bd8-BmbJ-Fv4z-At6s-FWnf-CmbJ-EiKL', '7e531df3-b5f5-11e1-83ba-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('7e531df3-b5f5-11e1-83ba-005056be3bd8-BNoo-F5nH-A1p5-FY0M-CjIW-E7Q8', '7e531df3-b5f5-11e1-83ba-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('7e531df3-b5f5-11e1-83ba-005056be3bd8-Byn6-FtC5-A6lC-FRiT-CPEx-EM2a', '7e531df3-b5f5-11e1-83ba-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'COSMOFEN', ''),
('7ff8df4e-f789-11e3-8c8a-005056be1f7b-Bbgo-F5ZE-ACVg-FRCs-CySN-E2qp', '7ff8df4e-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('7ff8df4e-f789-11e3-8c8a-005056be1f7b-BHa8-FR31-AAsc-F4ZH-C7bP-ErMg', '7ff8df4e-f789-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серебрянный', ''),
('7ff8df4e-f789-11e3-8c8a-005056be1f7b-BK4N-FQm3-A2S9-F0m9-CgBB-EZ7V', '7ff8df4e-f789-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('7ff8df4e-f789-11e3-8c8a-005056be1f7b-BO2v-FAZ2-AoCG-Ftol-CpGH-EUAh', '7ff8df4e-f789-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('7ff8df4e-f789-11e3-8c8a-005056be1f7b-BPeD-FYcW-ALFw-FhGn-CnOE-Elf7', '7ff8df4e-f789-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('7ff8df4e-f789-11e3-8c8a-005056be1f7b-BUkd-Fibc-Ad9q-FOQ5-CZay-Enra', '7ff8df4e-f789-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('7ff8df4e-f789-11e3-8c8a-005056be1f7b-BYC3-F6T6-AnIN-F205-ChNv-ESOL', '7ff8df4e-f789-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('82ebcce8-bce7-11e4-a1f3-005056be1f7b-B4F6-FFMA-AUev-FpdB-CubH-EIKD', '82ebcce8-bce7-11e4-a1f3-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('82ebcce8-bce7-11e4-a1f3-005056be1f7b-B7cT-FrNG-Aeh9-Fped-CoQN-EKCL', '82ebcce8-bce7-11e4-a1f3-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('82ebcce8-bce7-11e4-a1f3-005056be1f7b-B7GC-FHsW-AWOI-FJMU-CMGa-EHLn', '82ebcce8-bce7-11e4-a1f3-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('82ebcce8-bce7-11e4-a1f3-005056be1f7b-B8FY-Fs7y-A79K-FmUO-Cgvx-E8MC', '82ebcce8-bce7-11e4-a1f3-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('82ebcce8-bce7-11e4-a1f3-005056be1f7b-Bbib-FaO6-A44M-FGEO-CSuU-E0QF', '82ebcce8-bce7-11e4-a1f3-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('82ebcce8-bce7-11e4-a1f3-005056be1f7b-Beqj-FpLz-AAGu-Fuxx-CU3L-E7e9', '82ebcce8-bce7-11e4-a1f3-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серебристый', ''),
('82ebcce8-bce7-11e4-a1f3-005056be1f7b-BIfH-F4Kl-A66D-FCEN-CGAT-EIIC', '82ebcce8-bce7-11e4-a1f3-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'молотковая эмаль-грунт', ''),
('82ebcce8-bce7-11e4-a1f3-005056be1f7b-BqGq-Ffu9-AzSv-F1aN-CCWq-EVD4', '82ebcce8-bce7-11e4-a1f3-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('8522912f-f3fb-11e4-9746-005056be1f7b-B7JE-FAqD-AmiK-FBoW-CqTm-EsyI', '8522912f-f3fb-11e4-9746-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('8522912f-f3fb-11e4-9746-005056be1f7b-B7NR-Fcaz-AZbq-FDl1-CDqR-Euz3', '8522912f-f3fb-11e4-9746-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'синий', ''),
('8522912f-f3fb-11e4-9746-005056be1f7b-Bh2h-FZm4-AOQ2-FxD1-CIA0-ENAq', '8522912f-f3fb-11e4-9746-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('8522912f-f3fb-11e4-9746-005056be1f7b-BHwO-FFPi-ADXz-FQxi-C3Cr-E784', '8522912f-f3fb-11e4-9746-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('8522912f-f3fb-11e4-9746-005056be1f7b-BmtJ-F0wJ-ALsD-Fg0m-C2GZ-EGLo', '8522912f-f3fb-11e4-9746-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('8522912f-f3fb-11e4-9746-005056be1f7b-BOIE-F6Mp-AvPW-FDAL-C74V-EQjV', '8522912f-f3fb-11e4-9746-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('8522912f-f3fb-11e4-9746-005056be1f7b-BpPB-Fegz-ADZ2-FuVz-Co9i-Ex9V', '8522912f-f3fb-11e4-9746-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('8522912f-f3fb-11e4-9746-005056be1f7b-BQnO-Fap4-AwVN-FYDB-Chk4-EEAf', '8522912f-f3fb-11e4-9746-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('897bb5a6-b0fa-11e3-b34d-005056be1f7b-B1aI-FciK-Astv-F4wK-CBiX-E8La', '897bb5a6-b0fa-11e3-b34d-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('897bb5a6-b0fa-11e3-b34d-005056be1f7b-BCH7-FynP-A0JC-FQXE-CjGf-E45u', '897bb5a6-b0fa-11e3-b34d-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'растворитель', ''),
('897bb5a6-b0fa-11e3-b34d-005056be1f7b-BdHs-FOAf-AZCE-Fw0P-CNKM-EwnL', '897bb5a6-b0fa-11e3-b34d-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('897bb5a6-b0fa-11e3-b34d-005056be1f7b-BL8i-Fc96-AXjX-FzFA-CK6a-ETY0', '897bb5a6-b0fa-11e3-b34d-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('897bb5a6-b0fa-11e3-b34d-005056be1f7b-BM8L-FqMZ-AxnV-F5zW-C13d-ExqH', '897bb5a6-b0fa-11e3-b34d-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '0,7', 'г'),
('897bb5a6-b0fa-11e3-b34d-005056be1f7b-BsAv-FFz1-AF0w-FgTK-CfxR-EOCS', '897bb5a6-b0fa-11e3-b34d-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для эмали', ''),
('897bb5a6-b0fa-11e3-b34d-005056be1f7b-BtbU-FxOT-ADbd-FPNG-Cb6H-EMB7', '897bb5a6-b0fa-11e3-b34d-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для краски', ''),
('897bb5a6-b0fa-11e3-b34d-005056be1f7b-BwN6-FmCO-AvIR-FBW5-Ckbb-EfmV', '897bb5a6-b0fa-11e3-b34d-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('89cb1aab-b1c3-11e0-aa21-000e0c431b58-B0lE-F2kB-ABbI-FAzv-CdWH-EdeU', '89cb1aab-b1c3-11e0-aa21-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('89cb1aab-b1c3-11e0-aa21-000e0c431b58-B9uB-Fjqb-AYKC-Fdo6-Cz73-E6ZB', '89cb1aab-b1c3-11e0-aa21-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('89cb1aab-b1c3-11e0-aa21-000e0c431b58-BgW0-FHMr-AmMU-FGyf-Co6R-EfFv', '89cb1aab-b1c3-11e0-aa21-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('89cb1aab-b1c3-11e0-aa21-000e0c431b58-BJP0-FSQy-AEtL-FMNp-CgYv-ED40', '89cb1aab-b1c3-11e0-aa21-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('89cb1aab-b1c3-11e0-aa21-000e0c431b58-BKGg-FfNU-AB2Q-FSXV-CEW7-EIOh', '89cb1aab-b1c3-11e0-aa21-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('89cb1aab-b1c3-11e0-aa21-000e0c431b58-BOhr-F6ca-AgVh-FCGR-CwEB-Exos', '89cb1aab-b1c3-11e0-aa21-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по старым покрытиям', ''),
('89cb1aab-b1c3-11e0-aa21-000e0c431b58-BPC4-FSgh-ANWd-FFR3-CGga-Eyc4', '89cb1aab-b1c3-11e0-aa21-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'спецгрунт', ''),
('89cb1aab-b1c3-11e0-aa21-000e0c431b58-BR8F-FdJT-AIpr-F5tl-C4Gg-Euut', '89cb1aab-b1c3-11e0-aa21-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('89cb1aab-b1c3-11e0-aa21-000e0c431b58-BX61-FnNO-A0Rk-F7az-CekF-Ed3V', '89cb1aab-b1c3-11e0-aa21-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('9291c63a-5ab3-11dc-be42-000e0c431b58-B3zi-FUpP-AYPb-FTHY-CYUD-Et5l', '9291c63a-5ab3-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('9291c63a-5ab3-11dc-be42-000e0c431b58-BAZB-F1KE-Ahce-FesL-CdkA-EB6q', '9291c63a-5ab3-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('9291c63a-5ab3-11dc-be42-000e0c431b58-BezS-FuLU-ArPX-F476-C3iP-El2g', '9291c63a-5ab3-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('9291c63a-5ab3-11dc-be42-000e0c431b58-BLzn-FwDV-ANiQ-FVB7-CECL-Eqi0', '9291c63a-5ab3-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый глянцевый', ''),
('9291c63a-5ab3-11dc-be42-000e0c431b58-BMoV-FjhR-Afaz-FvCq-CRZ7-EQq0', '9291c63a-5ab3-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('9291c63a-5ab3-11dc-be42-000e0c431b58-BmUt-FSRv-AYb5-Fwo2-Cfzq-EJmu', '9291c63a-5ab3-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('9291c63a-5ab3-11dc-be42-000e0c431b58-BRU6-FtnD-AICX-FLvR-Cxwr-Ezn3', '9291c63a-5ab3-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('9291c63a-5ab3-11dc-be42-000e0c431b58-BXP9-FRCm-AIic-FzrE-CjM5-E37F', '9291c63a-5ab3-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('9291c63c-5ab3-11dc-be42-000e0c431b58-BAaN-FwWU-AfNP-FKvj-CIv6-EW0Y', '9291c63c-5ab3-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('9291c63c-5ab3-11dc-be42-000e0c431b58-BADS-FPu2-AC5q-FpVn-ClEM-Ei85', '9291c63c-5ab3-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный глянцевый', ''),
('9291c63c-5ab3-11dc-be42-000e0c431b58-BAVN-FNcL-A2qL-FhNa-C0ms-EUro', '9291c63c-5ab3-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('9291c63c-5ab3-11dc-be42-000e0c431b58-BEAm-FTKX-A4TJ-FypI-CNN0-ES7X', '9291c63c-5ab3-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('9291c63c-5ab3-11dc-be42-000e0c431b58-Bh1F-FtYS-AJX6-F2rm-CgsC-EteZ', '9291c63c-5ab3-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('9291c63c-5ab3-11dc-be42-000e0c431b58-BlFu-Fg8c-AJdL-FLNp-ClSq-ENm1', '9291c63c-5ab3-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('9291c63c-5ab3-11dc-be42-000e0c431b58-Bw7r-FaTb-ABON-FG9n-CN0q-EgPb', '9291c63c-5ab3-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('9291c63c-5ab3-11dc-be42-000e0c431b58-BYRV-FF7q-Ativ-F7Hs-C15p-EiU9', '9291c63c-5ab3-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('9291c63e-5ab3-11dc-be42-000e0c431b58-B14u-FWGR-A96F-FQoD-CsWP-E5eH', '9291c63e-5ab3-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('9291c63e-5ab3-11dc-be42-000e0c431b58-B6qS-Fznk-Ac9j-FvmW-CCP0-E0Ls', '9291c63e-5ab3-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('9291c63e-5ab3-11dc-be42-000e0c431b58-B7AC-FRKi-Ap15-F7Rm-CU0T-EowR', '9291c63e-5ab3-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('9291c63e-5ab3-11dc-be42-000e0c431b58-Bh8p-Fd2c-AuLM-FBjN-Cde4-EwUh', '9291c63e-5ab3-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('9291c63e-5ab3-11dc-be42-000e0c431b58-Bmn8-F7th-Av77-F4xQ-CUtR-EXAb', '9291c63e-5ab3-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('9291c63e-5ab3-11dc-be42-000e0c431b58-BsLL-FH34-AzeI-F0et-CTNf-E4Ef', '9291c63e-5ab3-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красный', ''),
('9291c63e-5ab3-11dc-be42-000e0c431b58-BsrT-Fx88-A1qU-FFky-CNYI-E1Ua', '9291c63e-5ab3-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('9291c63e-5ab3-11dc-be42-000e0c431b58-BxTm-F7SG-AplU-FKfY-CpVR-EasY', '9291c63e-5ab3-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('9291c640-5ab3-11dc-be42-000e0c431b58-BgSE-FEzu-AQCs-FbLr-CAYF-EUu5', '9291c640-5ab3-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('9291c640-5ab3-11dc-be42-000e0c431b58-BHuU-FCCn-As2s-F1id-CZEv-EdJl', '9291c640-5ab3-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('9291c640-5ab3-11dc-be42-000e0c431b58-BmlS-FpQ3-AqU5-F892-CFs9-EKnq', '9291c640-5ab3-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('9291c640-5ab3-11dc-be42-000e0c431b58-BNYT-FVzx-AAZ5-FRSp-CzEI-Equi', '9291c640-5ab3-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('9291c640-5ab3-11dc-be42-000e0c431b58-BOZn-F71y-An2N-FtL8-CoTr-E9Vu', '9291c640-5ab3-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('9291c640-5ab3-11dc-be42-000e0c431b58-BR06-FAYE-AZuI-Fadp-CkGQ-E3vh', '9291c640-5ab3-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('9291c640-5ab3-11dc-be42-000e0c431b58-BtGF-F6rH-AVPs-FYIZ-CWEB-EtgJ', '9291c640-5ab3-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'вишневый', ''),
('9291c640-5ab3-11dc-be42-000e0c431b58-Bvc2-Fqaz-Ahfh-FgqL-CN9L-EI9j', '9291c640-5ab3-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('963b6b0a-04a8-11e3-94de-005056be3574-BKm8-FJn6-AFbv-F81l-Cneg-Egbm', '963b6b0a-04a8-11e3-94de-005056be3574', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('963b6b0a-04a8-11e3-94de-005056be3574-BlwR-Fo9J-AIxz-Fio6-C8XV-E8zU', '963b6b0a-04a8-11e3-94de-005056be3574', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'штукатурка роллерная', ''),
('963b6b0a-04a8-11e3-94de-005056be3574-BMKJ-FCty-A8rL-FToB-Cn7S-EVEq', '963b6b0a-04a8-11e3-94de-005056be3574', '1ea6fcc4-d206-11e4-9be0-005056be1f7c', '0', 'мм'),
('963b6b0a-04a8-11e3-94de-005056be3574-Bn64-F8FQ-Aeal-FCy6-Cl2M-EuR2', '963b6b0a-04a8-11e3-94de-005056be3574', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('963b6b0a-04a8-11e3-94de-005056be3574-BRRr-FHXb-Alte-Fzwl-CvXX-EDBW', '963b6b0a-04a8-11e3-94de-005056be3574', '1d08380b-ce34-11e4-a80e-005056be1f7a', '15000', 'г'),
('963b6b0a-04a8-11e3-94de-005056be3574-Bsa0-Fc9U-AcXz-FFud-CVCO-EDG6', '963b6b0a-04a8-11e3-94de-005056be3574', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('963b6b0a-04a8-11e3-94de-005056be3574-BSur-FDri-ApVC-FM3e-Cyqa-E2FZ', '963b6b0a-04a8-11e3-94de-005056be3574', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('963b6b0a-04a8-11e3-94de-005056be3574-Bx6C-FZ92-AVkt-FhUA-CZfn-EXoQ', '963b6b0a-04a8-11e3-94de-005056be3574', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'декоративная с эффектом "короеда"', ''),
('992163db-a731-11de-90d4-000e0c431b58-B0vl-FYjd-AeWF-Fr3S-CEpO-Emvv', '992163db-a731-11de-90d4-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('992163db-a731-11de-90d4-000e0c431b58-B4Zv-FGOp-AoTZ-Fx3G-CxlM-EfMX', '992163db-a731-11de-90d4-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('992163db-a731-11de-90d4-000e0c431b58-B91Y-FQma-Apqc-FzV2-Ciev-EosW', '992163db-a731-11de-90d4-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для потолков', ''),
('992163db-a731-11de-90d4-000e0c431b58-BpBz-FUeP-ANOI-FRpb-C1rp-E1Q5', '992163db-a731-11de-90d4-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('992163db-a731-11de-90d4-000e0c431b58-BpFr-FI6C-AAeh-FwJP-CIwe-ELEe', '992163db-a731-11de-90d4-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('992163db-a731-11de-90d4-000e0c431b58-BtGs-FlKQ-AtJT-FknL-C3Fy-ErXa', '992163db-a731-11de-90d4-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('992163db-a731-11de-90d4-000e0c431b58-Bw7h-FGgK-ASZQ-FHHn-ChAD-ETGS', '992163db-a731-11de-90d4-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('992163db-a731-11de-90d4-000e0c431b58-BxEK-FDLR-ArtS-FvCY-CDBK-EpZt', '992163db-a731-11de-90d4-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('992163db-a731-11de-90d4-000e0c431b58-Bzje-F82K-AZr3-FEiI-C9D1-Ed2S', '992163db-a731-11de-90d4-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('992163dd-a731-11de-90d4-000e0c431b58-B1bY-FcXR-A8Al-FaIf-Cgvu-EyXv', '992163dd-a731-11de-90d4-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для кухни', ''),
('992163dd-a731-11de-90d4-000e0c431b58-B4ho-FFYJ-ACr6-FAjF-CpMH-EtP1', '992163dd-a731-11de-90d4-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('992163dd-a731-11de-90d4-000e0c431b58-B6F5-FyL1-AZCl-F63e-CnUd-EH4G', '992163dd-a731-11de-90d4-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('992163dd-a731-11de-90d4-000e0c431b58-Bb0e-Fjmg-AVL9-FwXu-C4w9-EXlu', '992163dd-a731-11de-90d4-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('992163dd-a731-11de-90d4-000e0c431b58-BdQb-FfQb-AzTM-F1f7-CTw8-E2Jp', '992163dd-a731-11de-90d4-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('992163dd-a731-11de-90d4-000e0c431b58-Beur-F8F0-ABKN-FMLP-ChCr-E6eF', '992163dd-a731-11de-90d4-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для ванной', ''),
('992163dd-a731-11de-90d4-000e0c431b58-BMbG-Fx3O-ATZ0-FDOX-CzsH-EgpN', '992163dd-a731-11de-90d4-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('992163dd-a731-11de-90d4-000e0c431b58-BnBD-FCtf-ArfJ-FOsx-CAME-EcrU', '992163dd-a731-11de-90d4-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('992163dd-a731-11de-90d4-000e0c431b58-Bz58-FHLl-AGwI-FnCv-Cjbb-EMwH', '992163dd-a731-11de-90d4-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('992163dd-a731-11de-90d4-000e0c431b58-BZNd-Fyvi-AdK3-FF6l-C2vg-Ez3r', '992163dd-a731-11de-90d4-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('992163dd-a731-11de-90d4-000e0c431b58-BZpn-FVqM-AaVZ-FiFp-CYUl-Eusw', '992163dd-a731-11de-90d4-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('993a4aa8-6b1e-11dc-be42-000e0c431b58-B0XY-Fb8X-A0Kk-F6Pj-CxCf-EMAP', '993a4aa8-6b1e-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('993a4aa8-6b1e-11dc-be42-000e0c431b58-B6q1-FoMu-Ab8g-FDQo-CmaJ-EeGn', '993a4aa8-6b1e-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('993a4aa8-6b1e-11dc-be42-000e0c431b58-BJe2-Fqet-AQOj-FjzI-Cke3-EPr1', '993a4aa8-6b1e-11dc-be42-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('993a4aa8-6b1e-11dc-be42-000e0c431b58-BN9I-Fx4Y-AXqa-F43b-CIPT-Eveo', '993a4aa8-6b1e-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('993a4aa8-6b1e-11dc-be42-000e0c431b58-BNW2-Fx7r-A6gL-Fyv4-Corj-EfWw', '993a4aa8-6b1e-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('993a4aa8-6b1e-11dc-be42-000e0c431b58-Bouo-FN8q-A9As-Fg5x-Cuvl-ETHi', '993a4aa8-6b1e-11dc-be42-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('993a4aa8-6b1e-11dc-be42-000e0c431b58-BQyu-Fw2B-Abeb-Fk9i-CNM6-EE02', '993a4aa8-6b1e-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('993a4aa8-6b1e-11dc-be42-000e0c431b58-BW3n-FPUg-Adiq-Fghm-CagA-Ez98', '993a4aa8-6b1e-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('993a4aa8-6b1e-11dc-be42-000e0c431b58-Bw6Y-F9tK-A3Y3-Fb4O-COJC-E975', '993a4aa8-6b1e-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('993a4aaa-6b1e-11dc-be42-000e0c431b58-B0t1-FrrD-AMoj-FNCu-CCBi-E5FO', '993a4aaa-6b1e-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('993a4aaa-6b1e-11dc-be42-000e0c431b58-B0x2-FDp8-AtUe-FIRB-CWql-EiDv', '993a4aaa-6b1e-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('993a4aaa-6b1e-11dc-be42-000e0c431b58-B2yi-FV71-AXTg-F02j-Cu1T-EliA', '993a4aaa-6b1e-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('993a4aaa-6b1e-11dc-be42-000e0c431b58-BB7M-FetL-AubW-FRK8-COcO-EClx', '993a4aaa-6b1e-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('993a4aaa-6b1e-11dc-be42-000e0c431b58-BbsS-FAzb-AD78-FiPU-C6RQ-EIv0', '993a4aaa-6b1e-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('993a4aaa-6b1e-11dc-be42-000e0c431b58-BSRy-FJiY-AGfi-FHID-CHgf-ESWW', '993a4aaa-6b1e-11dc-be42-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('993a4aaa-6b1e-11dc-be42-000e0c431b58-BTgb-Fpyl-AmCE-F2Fp-CohY-E8hO', '993a4aaa-6b1e-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('993a4aaa-6b1e-11dc-be42-000e0c431b58-BXcL-Fz1t-Ak1c-Fw9P-CsKh-Esl7', '993a4aaa-6b1e-11dc-be42-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('993a4aaa-6b1e-11dc-be42-000e0c431b58-BYkL-FWJb-AqEs-F8Me-C7gB-EYLz', '993a4aaa-6b1e-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('993a4aac-6b1e-11dc-be42-000e0c431b58-B2wU-F0Aq-ABrm-FOnB-CwQX-EpmD', '993a4aac-6b1e-11dc-be42-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('993a4aac-6b1e-11dc-be42-000e0c431b58-Bbk9-Fc62-AsEm-FZEg-CS6S-En6T', '993a4aac-6b1e-11dc-be42-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('993a4aac-6b1e-11dc-be42-000e0c431b58-BjCr-FV0t-A8Lb-FYhu-C0tM-EIx6', '993a4aac-6b1e-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('993a4aac-6b1e-11dc-be42-000e0c431b58-BLbI-FEtE-AdEO-FIjO-CbQm-EsHp', '993a4aac-6b1e-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('993a4aac-6b1e-11dc-be42-000e0c431b58-BMRA-FaZj-Ap21-FRk8-C7JA-EneA', '993a4aac-6b1e-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('993a4aac-6b1e-11dc-be42-000e0c431b58-BOPI-F1oN-AW8I-FpkE-C05C-EA2N', '993a4aac-6b1e-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('993a4aac-6b1e-11dc-be42-000e0c431b58-BpyL-FkJy-AIi3-FR6Z-CVJo-EeAT', '993a4aac-6b1e-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('993a4aac-6b1e-11dc-be42-000e0c431b58-BrXQ-F1C2-A6Cv-F8Cm-CLrb-EWSk', '993a4aac-6b1e-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('993a4aac-6b1e-11dc-be42-000e0c431b58-BU8B-F7Lo-A886-FVni-CYEI-EXgE', '993a4aac-6b1e-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('993a4aae-6b1e-11dc-be42-000e0c431b58-B2c3-FbRy-ACaV-FGFt-CVsl-EZIK', '993a4aae-6b1e-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('993a4aae-6b1e-11dc-be42-000e0c431b58-Bcsv-Fx35-ABpZ-FCCE-CCfw-EDe4', '993a4aae-6b1e-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('993a4aae-6b1e-11dc-be42-000e0c431b58-BdsB-F0G0-ATIs-FgOf-CsdH-EOlJ', '993a4aae-6b1e-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('993a4aae-6b1e-11dc-be42-000e0c431b58-BHKL-FHkR-AWAk-Fy6l-CJgE-EpYO', '993a4aae-6b1e-11dc-be42-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('993a4aae-6b1e-11dc-be42-000e0c431b58-Bm3D-FZi8-A5xa-Fg2G-CY9R-EjF3', '993a4aae-6b1e-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('993a4aae-6b1e-11dc-be42-000e0c431b58-BPlf-FHBO-AHlU-FKIN-CwfB-EWp0', '993a4aae-6b1e-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('993a4aae-6b1e-11dc-be42-000e0c431b58-Bu2D-FF9J-AyU2-FZtA-CjFC-Eh4m', '993a4aae-6b1e-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная', ''),
('993a4aae-6b1e-11dc-be42-000e0c431b58-BWC8-Fxjy-A58x-FLh4-CDYV-E7zn', '993a4aae-6b1e-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('993a4aae-6b1e-11dc-be42-000e0c431b58-BWxj-FJ9H-ADCf-FY9U-CBsM-EFxL', '993a4aae-6b1e-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('a0f3c4de-cf2d-11e1-92a4-005056be3bd8-B5Kg-FCdW-ARzH-FyZ0-CVa8-Epjv', 'a0f3c4de-cf2d-11e1-92a4-005056be3bd8', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('a0f3c4de-cf2d-11e1-92a4-005056be3bd8-B6SM-FG0c-AGxH-F1WH-CPp7-ExK8', 'a0f3c4de-cf2d-11e1-92a4-005056be3bd8', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'интерьерная', ''),
('a0f3c4de-cf2d-11e1-92a4-005056be3bd8-BB8U-FIyq-AQDW-FM1h-CK51-E8kV', 'a0f3c4de-cf2d-11e1-92a4-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a0f3c4de-cf2d-11e1-92a4-005056be3bd8-BCzA-F5UQ-AMIK-FqPA-Cxpu-EjAY', 'a0f3c4de-cf2d-11e1-92a4-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a0f3c4de-cf2d-11e1-92a4-005056be3bd8-BESx-Fpf7-AjKI-FS1O-CWvh-Ej2g', 'a0f3c4de-cf2d-11e1-92a4-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('a0f3c4de-cf2d-11e1-92a4-005056be3bd8-Bmcf-F8Xt-Agh2-FfPS-Cy5d-EHzH', 'a0f3c4de-cf2d-11e1-92a4-005056be3bd8', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('a0f3c4de-cf2d-11e1-92a4-005056be3bd8-BSyi-FfBQ-AHzl-FMJ4-CpMt-EpGD', 'a0f3c4de-cf2d-11e1-92a4-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a0f3c4de-cf2d-11e1-92a4-005056be3bd8-BW1y-FtDp-AQNk-FHLL-CcFV-E0Iy', 'a0f3c4de-cf2d-11e1-92a4-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a0f3c4de-cf2d-11e1-92a4-005056be3bd8-BZuw-FUot-AyJM-FNsm-CyVF-ETSc', 'a0f3c4de-cf2d-11e1-92a4-005056be3bd8', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('a1a9b4a6-f787-11e3-8c8a-005056be1f7b-B5Yi-FDjO-A5Lr-FvXZ-CLzm-EkL3', 'a1a9b4a6-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a1a9b4a6-f787-11e3-8c8a-005056be1f7b-B6Y9-FdIF-AnSH-FMBM-CV0N-Epo9', 'a1a9b4a6-f787-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a1a9b4a6-f787-11e3-8c8a-005056be1f7b-B8AU-Fpvr-AE7g-Frhr-Cjqx-E46m', 'a1a9b4a6-f787-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('a1a9b4a6-f787-11e3-8c8a-005056be1f7b-BcMZ-FVQj-A6bE-FssO-CggQ-Evla', 'a1a9b4a6-f787-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'оранжевый', ''),
('a1a9b4a6-f787-11e3-8c8a-005056be1f7b-BF64-FMI6-AZd5-FmIj-CkfS-EfYt', 'a1a9b4a6-f787-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('a1a9b4a6-f787-11e3-8c8a-005056be1f7b-BJGT-FOyB-AdVi-FtHJ-CKCi-EtFI', 'a1a9b4a6-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a1a9b4a6-f787-11e3-8c8a-005056be1f7b-BWt5-F4ac-AlAI-FZ4E-CByc-E0Sl', 'a1a9b4a6-f787-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('a48048ba-ec8c-11e3-9eab-005056be1f7b-BAXe-FbMF-AKXi-FIHT-CPeB-Ey7q', 'a48048ba-ec8c-11e3-9eab-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a48048ba-ec8c-11e3-9eab-005056be1f7b-BEwr-FcC8-AyIO-Fhs7-CcZy-Euoz', 'a48048ba-ec8c-11e3-9eab-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.5', 'л'),
('a48048ba-ec8c-11e3-9eab-005056be1f7b-BGUi-FLcP-AaCY-FPQV-CFQs-Ekr5', 'a48048ba-ec8c-11e3-9eab-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a48048ba-ec8c-11e3-9eab-005056be1f7b-BKMG-FFwL-A8CX-FJ3u-Cx8h-EfZk', 'a48048ba-ec8c-11e3-9eab-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'ксилол', ''),
('a48048ba-ec8c-11e3-9eab-005056be1f7b-Bq3S-FOAa-AiQ6-FjF2-CQLM-EzWo', 'a48048ba-ec8c-11e3-9eab-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a663cb7c-fadf-11e3-b5e8-005056be1f7b-B0XS-F02c-APEx-F8nf-CPbm-EPkq', 'a663cb7c-fadf-11e3-b5e8-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('a663cb7c-fadf-11e3-b5e8-005056be1f7b-B41c-FymV-AbHA-FeJP-CNUr-EisS', 'a663cb7c-fadf-11e3-b5e8-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a663cb7c-fadf-11e3-b5e8-005056be1f7b-BFa3-F8gW-A776-Fv4m-CeoD-ECPs', 'a663cb7c-fadf-11e3-b5e8-005056be1f7b', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('a663cb7c-fadf-11e3-b5e8-005056be1f7b-BGRX-F48l-AlJs-FKxo-CWxC-Epx4', 'a663cb7c-fadf-11e3-b5e8-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a663cb7c-fadf-11e3-b5e8-005056be1f7b-BHC9-F50m-AaPE-FDeo-Ctk6-EHe3', 'a663cb7c-fadf-11e3-b5e8-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('a663cb7c-fadf-11e3-b5e8-005056be1f7b-BLbV-FXkP-AYrT-F82j-Cn70-Eg5f', 'a663cb7c-fadf-11e3-b5e8-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('a663cb7c-fadf-11e3-b5e8-005056be1f7b-BsGB-FbQz-AGmm-FISa-CCZc-EBUc', 'a663cb7c-fadf-11e3-b5e8-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a663cb7c-fadf-11e3-b5e8-005056be1f7b-Bvah-FlpJ-AMmM-FI5A-CGEi-EJPq', 'a663cb7c-fadf-11e3-b5e8-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('a663cb7c-fadf-11e3-b5e8-005056be1f7b-ByG0-FID2-Arrx-FqNr-CLHi-Eo7L', 'a663cb7c-fadf-11e3-b5e8-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a6f80c96-516a-11dd-a89a-000e0c431b58-B6bt-FDEZ-ALGh-Fz4N-CjUb-E60W', 'a6f80c96-516a-11dd-a89a-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('a6f80c96-516a-11dd-a89a-000e0c431b58-BaNW-Fo5j-AitF-F4U0-C7cJ-EmhO', 'a6f80c96-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a6f80c96-516a-11dd-a89a-000e0c431b58-BfhF-Fkba-AjY4-FtBb-C973-Es07', 'a6f80c96-516a-11dd-a89a-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a6f80c96-516a-11dd-a89a-000e0c431b58-BHLC-FpA7-A4kR-FUgQ-CqBy-EwmP', 'a6f80c96-516a-11dd-a89a-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('a6f80c96-516a-11dd-a89a-000e0c431b58-BIKq-FEFS-A4fH-FmpI-CBIn-Expu', 'a6f80c96-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a6f80c96-516a-11dd-a89a-000e0c431b58-BRcv-FYqh-AQn7-F5mz-CZzt-EKAZ', 'a6f80c96-516a-11dd-a89a-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('a6f80c96-516a-11dd-a89a-000e0c431b58-BtHI-FEAp-AxmG-FOw2-C7Yo-E03f', 'a6f80c96-516a-11dd-a89a-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('a6f80c96-516a-11dd-a89a-000e0c431b58-BVIq-FR1x-A1yI-Flaj-CTqj-E7i0', 'a6f80c96-516a-11dd-a89a-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a6f80c96-516a-11dd-a89a-000e0c431b58-BWTX-Fnn5-A5U7-FsHi-C8Uv-Elbr', 'a6f80c96-516a-11dd-a89a-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для обоев', ''),
('a6f80c98-516a-11dd-a89a-000e0c431b58-B5Ar-Fwk9-AC0Y-FiCD-C6Ki-EdCb', 'a6f80c98-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a6f80c98-516a-11dd-a89a-000e0c431b58-BIOs-FFxJ-Ae9w-F5IL-CoCL-EVyw', 'a6f80c98-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a6f80c98-516a-11dd-a89a-000e0c431b58-BJSq-FHmh-AIYg-FY3l-CbgJ-Ed8m', 'a6f80c98-516a-11dd-a89a-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('a6f80c98-516a-11dd-a89a-000e0c431b58-BKBw-FKRA-AjUl-FRwz-CnH9-EUYz', 'a6f80c98-516a-11dd-a89a-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('a6f80c98-516a-11dd-a89a-000e0c431b58-BLB9-FwTu-Al82-FjRQ-CZZf-EDpX', 'a6f80c98-516a-11dd-a89a-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('a6f80c98-516a-11dd-a89a-000e0c431b58-BoiB-FadJ-AlHM-FxdB-Cjx4-EVgU', 'a6f80c98-516a-11dd-a89a-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a6f80c98-516a-11dd-a89a-000e0c431b58-Bsfq-F0Fr-ANSV-FAPy-CJaJ-EOmO', 'a6f80c98-516a-11dd-a89a-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a6f80c98-516a-11dd-a89a-000e0c431b58-BTr3-FzGu-AahR-FkBO-CMox-E8dJ', 'a6f80c98-516a-11dd-a89a-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для обоев', ''),
('a6f80c98-516a-11dd-a89a-000e0c431b58-BU2v-Fsay-AwW9-FU1A-Cv0P-EeEC', 'a6f80c98-516a-11dd-a89a-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('a6f80c9c-516a-11dd-a89a-000e0c431b58-B1bi-FMii-AS6g-FRf4-C4k5-EC73', 'a6f80c9c-516a-11dd-a89a-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('a6f80c9c-516a-11dd-a89a-000e0c431b58-B9eY-FekM-AgmW-FHAF-CX90-EjWl', 'a6f80c9c-516a-11dd-a89a-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('a6f80c9c-516a-11dd-a89a-000e0c431b58-Bait-F81O-A2tz-Fvwv-CnLl-EoY6', 'a6f80c9c-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a6f80c9c-516a-11dd-a89a-000e0c431b58-BGbf-F0zt-AwJw-FCCC-Czdl-Ejab', 'a6f80c9c-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a6f80c9c-516a-11dd-a89a-000e0c431b58-BLO9-F8QA-AAGd-Flq5-CDeM-EOHQ', 'a6f80c9c-516a-11dd-a89a-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a6f80c9c-516a-11dd-a89a-000e0c431b58-BMg9-FVhU-A4dw-F35O-CqGd-EoDt', 'a6f80c9c-516a-11dd-a89a-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('a6f80c9c-516a-11dd-a89a-000e0c431b58-BvKn-FceR-AMjl-FBeE-Cg6k-EvYY', 'a6f80c9c-516a-11dd-a89a-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a6f80c9c-516a-11dd-a89a-000e0c431b58-BySL-FnD8-AZrJ-FAVh-C7c9-Ebby', 'a6f80c9c-516a-11dd-a89a-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('a6f80c9c-516a-11dd-a89a-000e0c431b58-Bzaq-FmSl-A20r-FUou-CETy-E5ce', 'a6f80c9c-516a-11dd-a89a-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для потолков', ''),
('a6f80c9e-516a-11dd-a89a-000e0c431b58-B90t-FWQj-ARuQ-Fm5j-CPqt-E4IO', 'a6f80c9e-516a-11dd-a89a-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('a6f80c9e-516a-11dd-a89a-000e0c431b58-BBNA-FiPo-AckU-Ftd7-CF2N-Ez6u', 'a6f80c9e-516a-11dd-a89a-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a6f80c9e-516a-11dd-a89a-000e0c431b58-Bcx8-FuQl-ACmX-Flji-CDFs-Eoyk', 'a6f80c9e-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a6f80c9e-516a-11dd-a89a-000e0c431b58-BdKr-FZek-A6bg-FBo4-CUpR-E4mW', 'a6f80c9e-516a-11dd-a89a-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для потолков', ''),
('a6f80c9e-516a-11dd-a89a-000e0c431b58-BDlP-FbMz-A0P5-Fr5s-CSNl-EsVR', 'a6f80c9e-516a-11dd-a89a-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a6f80c9e-516a-11dd-a89a-000e0c431b58-BfJl-Fs3n-AEz1-Fwkz-C1nn-Ez54', 'a6f80c9e-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a6f80c9e-516a-11dd-a89a-000e0c431b58-BIRm-FZ4h-A9JN-FsCW-C8Mr-Ev9E', 'a6f80c9e-516a-11dd-a89a-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('a6f80c9e-516a-11dd-a89a-000e0c431b58-BS4a-FIpA-A8go-FlVj-CeyW-Ecin', 'a6f80c9e-516a-11dd-a89a-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('a6f80c9e-516a-11dd-a89a-000e0c431b58-BtTx-FX6I-A8a7-FT3f-C87G-EMXT', 'a6f80c9e-516a-11dd-a89a-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('a6f80ca2-516a-11dd-a89a-000e0c431b58-Bdjc-FrK4-A759-F87V-CWax-E6xQ', 'a6f80ca2-516a-11dd-a89a-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a6f80ca2-516a-11dd-a89a-000e0c431b58-Becj-FXde-AFAv-FOIz-COQd-EsCp', 'a6f80ca2-516a-11dd-a89a-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для потолков', ''),
('a6f80ca2-516a-11dd-a89a-000e0c431b58-Bfw0-F58M-AdyW-F3Dx-C5t4-El3y', 'a6f80ca2-516a-11dd-a89a-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('a6f80ca2-516a-11dd-a89a-000e0c431b58-BIod-FwMu-AgwO-FlbP-CuEB-EBWY', 'a6f80ca2-516a-11dd-a89a-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для стен', ''),
('a6f80ca2-516a-11dd-a89a-000e0c431b58-Bl23-F9u7-Avop-FpQh-Ce5a-ExGE', 'a6f80ca2-516a-11dd-a89a-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('a6f80ca2-516a-11dd-a89a-000e0c431b58-BLKI-FeEa-AMCU-Fv4M-CEq2-ECIK', 'a6f80ca2-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a6f80ca2-516a-11dd-a89a-000e0c431b58-BNTF-FhE9-AuIo-FlKx-Cwa7-Evyf', 'a6f80ca2-516a-11dd-a89a-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a6f80ca2-516a-11dd-a89a-000e0c431b58-BPJ9-FYjk-AmEb-FYax-Com8-EwHC', 'a6f80ca2-516a-11dd-a89a-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('a6f80ca2-516a-11dd-a89a-000e0c431b58-BVbk-Fw1B-Aken-FhQu-CkdE-EpBI', 'a6f80ca2-516a-11dd-a89a-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('a6f80ca2-516a-11dd-a89a-000e0c431b58-Bwo8-FcTN-AAxI-FalO-Ce2w-EWVP', 'a6f80ca2-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a6f80ca4-516a-11dd-a89a-000e0c431b58-B7o4-FxaI-AnVp-FOVg-Cxk5-ED2F', 'a6f80ca4-516a-11dd-a89a-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('a6f80ca4-516a-11dd-a89a-000e0c431b58-Ba4R-FMIZ-ABWq-FfFs-CLiR-EnPc', 'a6f80ca4-516a-11dd-a89a-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('a6f80ca4-516a-11dd-a89a-000e0c431b58-BmH7-FSnB-ABzj-FTdz-CvAB-EJgL', 'a6f80ca4-516a-11dd-a89a-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('a6f80ca4-516a-11dd-a89a-000e0c431b58-BPjf-FqeQ-AGI9-FLqc-CqXl-Egt9', 'a6f80ca4-516a-11dd-a89a-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для потолков', ''),
('a6f80ca4-516a-11dd-a89a-000e0c431b58-BPXQ-FQLr-AW52-FhXU-CHE7-E30t', 'a6f80ca4-516a-11dd-a89a-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a6f80ca4-516a-11dd-a89a-000e0c431b58-BqI1-FVXM-A3Kx-FwOo-C302-E3mm', 'a6f80ca4-516a-11dd-a89a-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для стен', ''),
('a6f80ca4-516a-11dd-a89a-000e0c431b58-Bqmu-F5xE-ApJ1-FwP1-C5gl-EA2i', 'a6f80ca4-516a-11dd-a89a-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('a6f80ca4-516a-11dd-a89a-000e0c431b58-BQuF-FV8O-AfsB-FxaF-CsJL-Eddk', 'a6f80ca4-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a6f80ca4-516a-11dd-a89a-000e0c431b58-BsmI-FfZW-AKRW-FCJ0-CpYj-EKED', 'a6f80ca4-516a-11dd-a89a-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a6f80ca4-516a-11dd-a89a-000e0c431b58-BtFu-FTYN-AIKO-FKTu-CWwH-EF0I', 'a6f80ca4-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a6f80ca8-516a-11dd-a89a-000e0c431b58-B29y-F9i5-AiEo-FK6o-CwYq-EPhW', 'a6f80ca8-516a-11dd-a89a-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('a6f80ca8-516a-11dd-a89a-000e0c431b58-BAOA-Fr8Q-AcYh-FVqA-CINY-E9Z1', 'a6f80ca8-516a-11dd-a89a-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('a6f80ca8-516a-11dd-a89a-000e0c431b58-BAZX-FShb-ADaL-FOwP-CCoO-E1nw', 'a6f80ca8-516a-11dd-a89a-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('a6f80ca8-516a-11dd-a89a-000e0c431b58-BBI1-FM4P-A5Co-FChW-CsdH-EylH', 'a6f80ca8-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a6f80ca8-516a-11dd-a89a-000e0c431b58-BhYz-FMbW-AiJ1-Fq8b-Cyoa-E82B', 'a6f80ca8-516a-11dd-a89a-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная особопрочная', ''),
('a6f80ca8-516a-11dd-a89a-000e0c431b58-BiMZ-FLKh-AYHu-Fzhn-Cizq-Eodj', 'a6f80ca8-516a-11dd-a89a-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a6f80ca8-516a-11dd-a89a-000e0c431b58-Bq9J-FNkC-AX0q-FsPu-CaR4-ERdx', 'a6f80ca8-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a6f80ca8-516a-11dd-a89a-000e0c431b58-BV90-FLo8-Ancl-FDac-CEbr-EFIp', 'a6f80ca8-516a-11dd-a89a-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a6f80ca8-516a-11dd-a89a-000e0c431b58-BvL1-FZWw-AEIK-FvYs-CIZI-Efrp', 'a6f80ca8-516a-11dd-a89a-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('a6f80ca8-516a-11dd-a89a-000e0c431b58-BVlD-F38t-A4G8-FSEW-CIZU-EIk0', 'a6f80ca8-516a-11dd-a89a-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('a6f80cac-516a-11dd-a89a-000e0c431b58-B2Y0-FA6y-Af1M-FvDo-CvKr-EEW0', 'a6f80cac-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a6f80cac-516a-11dd-a89a-000e0c431b58-BAke-FUNe-AXRs-Fsfs-C8S6-E9zH', 'a6f80cac-516a-11dd-a89a-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для ванной', ''),
('a6f80cac-516a-11dd-a89a-000e0c431b58-BFmr-FQoT-Alti-FlWY-C1Ox-E1Os', 'a6f80cac-516a-11dd-a89a-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('a6f80cac-516a-11dd-a89a-000e0c431b58-BGDS-FMRB-AQsK-FBlV-CFP0-Em1P', 'a6f80cac-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a6f80cac-516a-11dd-a89a-000e0c431b58-BjuS-FDt4-AlTF-FOsD-CaJv-E4KD', 'a6f80cac-516a-11dd-a89a-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('a6f80cac-516a-11dd-a89a-000e0c431b58-BjXA-FZpK-AWOO-F7V0-CXWk-E3rx', 'a6f80cac-516a-11dd-a89a-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a6f80cac-516a-11dd-a89a-000e0c431b58-BNBj-FbXf-AY5d-F9li-CjLm-EZ9L', 'a6f80cac-516a-11dd-a89a-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('a6f80cac-516a-11dd-a89a-000e0c431b58-BOTK-Fx5h-ALuv-F9kA-CrPu-ERGQ', 'a6f80cac-516a-11dd-a89a-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('a6f80cac-516a-11dd-a89a-000e0c431b58-Bouj-F2gm-AgRw-FNVJ-CNbw-E6rb', 'a6f80cac-516a-11dd-a89a-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a6f80cac-516a-11dd-a89a-000e0c431b58-BwMA-FhLk-Ah41-FSK8-CjEj-EGua', 'a6f80cac-516a-11dd-a89a-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для кухни', ''),
('a6f80cae-516a-11dd-a89a-000e0c431b58-B0Rh-FCUb-AyKY-FoAm-CeOG-EsLb', 'a6f80cae-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a6f80cae-516a-11dd-a89a-000e0c431b58-B1qY-FOVZ-A2zn-F8iz-CZvY-E2E2', 'a6f80cae-516a-11dd-a89a-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('a6f80cae-516a-11dd-a89a-000e0c431b58-B5s4-Fhqb-AXFM-Fw7R-CnAb-EHX9', 'a6f80cae-516a-11dd-a89a-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('a6f80cae-516a-11dd-a89a-000e0c431b58-BEKd-FWhU-A9YJ-F3wC-CGmt-Ef2E', 'a6f80cae-516a-11dd-a89a-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a6f80cae-516a-11dd-a89a-000e0c431b58-BM3a-F0OQ-AnpB-F00U-CCvA-ELuc', 'a6f80cae-516a-11dd-a89a-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для ванной', ''),
('a6f80cae-516a-11dd-a89a-000e0c431b58-BMjc-FTcM-AGmS-FW1m-C1z4-EY3O', 'a6f80cae-516a-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a6f80cae-516a-11dd-a89a-000e0c431b58-BRAi-FXrv-A2YZ-Frbo-Cwoh-EMnw', 'a6f80cae-516a-11dd-a89a-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a6f80cae-516a-11dd-a89a-000e0c431b58-BVdC-FONv-A8DD-FD5v-Cz7z-E1N1', 'a6f80cae-516a-11dd-a89a-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('a6f80cae-516a-11dd-a89a-000e0c431b58-BvqI-F9cF-AQFG-FrMd-Cqo1-EDPE', 'a6f80cae-516a-11dd-a89a-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для кухни', ''),
('a6f80cae-516a-11dd-a89a-000e0c431b58-BWEF-FEwl-Axu4-Ftss-C1SG-E2rw', 'a6f80cae-516a-11dd-a89a-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('a6fd4151-ec8b-11e3-9eab-005056be1f7b-B3X0-FTNg-AB62-FjZj-CU9f-EuUa', 'a6fd4151-ec8b-11e3-9eab-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a6fd4151-ec8b-11e3-9eab-005056be1f7b-BEjY-F7Jx-Afdw-FBOG-Cbif-EqUe', 'a6fd4151-ec8b-11e3-9eab-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a6fd4151-ec8b-11e3-9eab-005056be1f7b-BGFy-Fg3R-Abvb-F1hr-CrUi-Edru', 'a6fd4151-ec8b-11e3-9eab-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a6fd4151-ec8b-11e3-9eab-005056be1f7b-Bj6a-FV6k-AExa-FjSP-CwZU-El6N', 'a6fd4151-ec8b-11e3-9eab-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('a6fd4151-ec8b-11e3-9eab-005056be1f7b-Bqvm-F9rl-AQla-Fwc5-C4KY-EvP2', 'a6fd4151-ec8b-11e3-9eab-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бесцветный', ''),
('a6fd4151-ec8b-11e3-9eab-005056be1f7b-Brd3-FFcB-Al5j-FUU2-Cdpv-Ee83', 'a6fd4151-ec8b-11e3-9eab-005056be1f7b', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('a6fd4151-ec8b-11e3-9eab-005056be1f7b-BUYO-Fv9g-AAv6-FVW2-CiOP-Ehid', 'a6fd4151-ec8b-11e3-9eab-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('a6fd4151-ec8b-11e3-9eab-005056be1f7b-BV5A-FRHL-AyuS-F79S-C4yf-E1eG', 'a6fd4151-ec8b-11e3-9eab-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('a6fd4151-ec8b-11e3-9eab-005056be1f7b-Bx2v-FWLG-AOpv-F0Kt-C31e-EfyM', 'a6fd4151-ec8b-11e3-9eab-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a7555009-7f46-11e3-af7c-005056be1f7b-B5fV-FtX5-A5Of-FaA1-CgKe-EC26', 'a7555009-7f46-11e3-af7c-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('a7555009-7f46-11e3-af7c-005056be1f7b-B6B7-FwY8-A5D0-F685-CFNv-EBV0', 'a7555009-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('a7555009-7f46-11e3-af7c-005056be1f7b-BA3N-F4JX-A6v2-FXE2-CsrP-Eg2j', 'a7555009-7f46-11e3-af7c-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('a7555009-7f46-11e3-af7c-005056be1f7b-Bbuq-Fqyr-Agd5-F3vT-Crqz-EDZN', 'a7555009-7f46-11e3-af7c-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('a7555009-7f46-11e3-af7c-005056be1f7b-BBV6-FtkX-ATZh-Fx4K-CTzM-EPlk', 'a7555009-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('a7555009-7f46-11e3-af7c-005056be1f7b-BJof-FrbZ-A3uO-FEA1-CoNW-ESZy', 'a7555009-7f46-11e3-af7c-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('a7555009-7f46-11e3-af7c-005056be1f7b-BMgo-FMbl-AGhz-F2iK-C1kg-EwUG', 'a7555009-7f46-11e3-af7c-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('a7555009-7f46-11e3-af7c-005056be1f7b-BQ16-FINA-A07s-FPcj-CyJd-Eeng', 'a7555009-7f46-11e3-af7c-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('a7555009-7f46-11e3-af7c-005056be1f7b-Bq4p-FdCb-AXa2-FWBH-CpBA-E46K', 'a7555009-7f46-11e3-af7c-005056be1f7b', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('ab383e71-f78f-11e3-8c8a-005056be1f7b-B1Mz-FMi8-ArDg-F8IZ-Cw8K-EcT0', 'ab383e71-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ab383e71-f78f-11e3-8c8a-005056be1f7b-Bau9-F7sH-AWeE-Fg7X-CfQV-E4b1', 'ab383e71-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('ab383e71-f78f-11e3-8c8a-005056be1f7b-BMbv-FR8s-Apd0-FBXa-C2ou-ExWX', 'ab383e71-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('ab383e71-f78f-11e3-8c8a-005056be1f7b-BRU6-Frm6-A1Pv-FMsy-CHIj-EFFR', 'ab383e71-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ab383e71-f78f-11e3-8c8a-005056be1f7b-BsMn-FdZW-ARge-F2mk-CIzB-E5H9', 'ab383e71-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('ab383e71-f78f-11e3-8c8a-005056be1f7b-BU9X-FKeX-A3Ea-FS0J-Cm1W-EcC5', 'ab383e71-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ab383e71-f78f-11e3-8c8a-005056be1f7b-Bzup-FVz2-AoY1-Fg0s-CkCZ-E5tU', 'ab383e71-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'оранжевый', ''),
('ad93144b-f787-11e3-8c8a-005056be1f7b-B0zd-F1q9-Aiki-FH3g-Cc1N-EIK7', 'ad93144b-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ad93144b-f787-11e3-8c8a-005056be1f7b-B9rq-FTsa-AhMA-FsJ4-Cn6T-EeFR', 'ad93144b-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ad93144b-f787-11e3-8c8a-005056be1f7b-Bh0i-FrzO-ABme-FDhU-Cfwo-EBOv', 'ad93144b-f787-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('ad93144b-f787-11e3-8c8a-005056be1f7b-Bh7b-FFET-AmhK-FzqU-CwPB-E61c', 'ad93144b-f787-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ad93144b-f787-11e3-8c8a-005056be1f7b-BjrJ-FkaS-AdDO-FxiU-CEhJ-EiY1', 'ad93144b-f787-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('ad93144b-f787-11e3-8c8a-005056be1f7b-BOTg-FcHE-AwLl-F7u0-CwR7-ENXA', 'ad93144b-f787-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('ad93144b-f787-11e3-8c8a-005056be1f7b-BwZ1-FK8f-AtM1-F1er-C5kj-ER8V', 'ad93144b-f787-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желтый', ''),
('b08b1d7e-ec8c-11e3-9eab-005056be1f7b-BFmj-FwhN-AWeM-FQbv-CYyK-EExa', 'b08b1d7e-ec8c-11e3-9eab-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'сольвент', ''),
('b08b1d7e-ec8c-11e3-9eab-005056be1f7b-BgyP-FIFI-Ag1Q-F1jW-CwsF-Et2C', 'b08b1d7e-ec8c-11e3-9eab-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('b08b1d7e-ec8c-11e3-9eab-005056be1f7b-BMSZ-FcI0-Az6r-F5oj-C705-E7iI', 'b08b1d7e-ec8c-11e3-9eab-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('b08b1d7e-ec8c-11e3-9eab-005056be1f7b-BUVA-FjOa-A1hl-F1Hp-Cynd-EEvj', 'b08b1d7e-ec8c-11e3-9eab-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('b08b1d7e-ec8c-11e3-9eab-005056be1f7b-BXYp-F9Px-AnDa-FHIM-CqUf-EGxo', 'b08b1d7e-ec8c-11e3-9eab-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.5', 'л'),
('b182dc4f-f994-11e2-98ef-005056be3574-B14G-FcCu-AEdn-FE4B-COgJ-EUTF', 'b182dc4f-f994-11e2-98ef-005056be3574', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('b182dc4f-f994-11e2-98ef-005056be3574-B60m-FiDf-AjSC-FtnV-CyYe-EoR1', 'b182dc4f-f994-11e2-98ef-005056be3574', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('b182dc4f-f994-11e2-98ef-005056be3574-BHv1-FJee-AfS3-F07J-C1H0-EYmc', 'b182dc4f-f994-11e2-98ef-005056be3574', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'молотковая эмаль-грунт', ''),
('b182dc4f-f994-11e2-98ef-005056be3574-BHZk-FEU7-A0qm-FJol-Cb30-EZXK', 'b182dc4f-f994-11e2-98ef-005056be3574', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('b182dc4f-f994-11e2-98ef-005056be3574-BKzh-FfdI-Athk-F1re-C0me-EmLi', 'b182dc4f-f994-11e2-98ef-005056be3574', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('b182dc4f-f994-11e2-98ef-005056be3574-BnIF-Fw6a-AzuH-FNqq-CUyF-E54Z', 'b182dc4f-f994-11e2-98ef-005056be3574', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('b182dc4f-f994-11e2-98ef-005056be3574-BvIz-F3Wg-AiqU-FnlN-CDbG-EK5J', 'b182dc4f-f994-11e2-98ef-005056be3574', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('b182dc4f-f994-11e2-98ef-005056be3574-BWUH-F2sL-A1e8-F6V6-CWqJ-E80R', 'b182dc4f-f994-11e2-98ef-005056be3574', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный', ''),
('b182dc51-f994-11e2-98ef-005056be3574-BGkb-F1eH-AiJI-FZmb-CCvo-EwzE', 'b182dc51-f994-11e2-98ef-005056be3574', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('b182dc51-f994-11e2-98ef-005056be3574-BINu-FEZm-AlwO-F1D3-Czum-EpBh', 'b182dc51-f994-11e2-98ef-005056be3574', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('b182dc51-f994-11e2-98ef-005056be3574-BPR7-FYqj-AztU-FegJ-Cj6k-Ebi3', 'b182dc51-f994-11e2-98ef-005056be3574', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('b182dc51-f994-11e2-98ef-005056be3574-Bru1-FQ5a-Ai5t-F5pr-CpB2-EdTn', 'b182dc51-f994-11e2-98ef-005056be3574', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('b182dc51-f994-11e2-98ef-005056be3574-BsCw-FoZk-ALD7-Fn2m-CTQS-EvlK', 'b182dc51-f994-11e2-98ef-005056be3574', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'зеленый', ''),
('b182dc51-f994-11e2-98ef-005056be3574-BVF0-FBPw-As7p-FAEZ-CxUq-EtsX', 'b182dc51-f994-11e2-98ef-005056be3574', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'молотковая эмаль-грунт', ''),
('b182dc51-f994-11e2-98ef-005056be3574-BVJx-FSwp-A5G6-FM3h-CWmP-EQo9', 'b182dc51-f994-11e2-98ef-005056be3574', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('b182dc51-f994-11e2-98ef-005056be3574-BZa2-FnR5-AgGp-FJwr-Cr4R-EItw', 'b182dc51-f994-11e2-98ef-005056be3574', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('b1a9595a-7f46-11e3-af7c-005056be1f7b-B2Bk-Flt2-AW4c-FdwB-CuqC-E4Wu', 'b1a9595a-7f46-11e3-af7c-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('b1a9595a-7f46-11e3-af7c-005056be1f7b-B4AJ-Fqsc-A5d3-FFxV-CHZK-ErBK', 'b1a9595a-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('b1a9595a-7f46-11e3-af7c-005056be1f7b-B4SD-FUDO-Aw9R-FPe5-Cd26-EkrZ', 'b1a9595a-7f46-11e3-af7c-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('b1a9595a-7f46-11e3-af7c-005056be1f7b-B8Tc-Fdtc-ATQn-FxTf-CtvP-EabE', 'b1a9595a-7f46-11e3-af7c-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('b1a9595a-7f46-11e3-af7c-005056be1f7b-BH8h-FC1T-AVh0-FLkY-CZir-E2Cb', 'b1a9595a-7f46-11e3-af7c-005056be1f7b', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('b1a9595a-7f46-11e3-af7c-005056be1f7b-Bmyj-FlAK-AAZt-FsRv-CKlH-E3iQ', 'b1a9595a-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('b1a9595a-7f46-11e3-af7c-005056be1f7b-BUVs-F8JB-Ac3w-FrTN-CvaL-ETcB', 'b1a9595a-7f46-11e3-af7c-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('b1a9595a-7f46-11e3-af7c-005056be1f7b-BVQO-FOWB-Akea-FuLb-C6Cd-EfnN', 'b1a9595a-7f46-11e3-af7c-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('b1a9595a-7f46-11e3-af7c-005056be1f7b-BXAH-F1e4-A2Oj-F4H6-CodM-E3sj', 'b1a9595a-7f46-11e3-af7c-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('b3740593-f78f-11e3-8c8a-005056be1f7b-BavF-FEEC-Alei-FoAY-CpCh-EEG9', 'b3740593-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('b3740593-f78f-11e3-8c8a-005056be1f7b-BBJZ-FEaC-AVe3-Fk9g-Cxyw-EXv0', 'b3740593-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('b3740593-f78f-11e3-8c8a-005056be1f7b-BHbd-FACb-Ah1Q-FTNB-CTnx-EZr2', 'b3740593-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('b3740593-f78f-11e3-8c8a-005056be1f7b-BIO9-FRys-Am9s-FdaB-Cah7-ENOx', 'b3740593-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желтый', ''),
('b3740593-f78f-11e3-8c8a-005056be1f7b-BjfF-FS9f-AUYC-FQmR-CE1P-EdnM', 'b3740593-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('b3740593-f78f-11e3-8c8a-005056be1f7b-BN9Z-Fx8W-AlXG-F8dD-C3lS-E13H', 'b3740593-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('b3740593-f78f-11e3-8c8a-005056be1f7b-BzPj-F7NC-AAFo-FT7h-CagC-EfzB', 'b3740593-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('b54ba125-f78e-11e3-8c8a-005056be1f7b-B6wC-F7rb-AJNB-F53O-C7qL-Efnv', 'b54ba125-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('b54ba125-f78e-11e3-8c8a-005056be1f7b-BkF9-Fl02-Az7i-FAcL-Cwuq-EmvL', 'b54ba125-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('b54ba125-f78e-11e3-8c8a-005056be1f7b-Bmxj-FKxB-AWkw-FCMi-CO9I-Eykq', 'b54ba125-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('b54ba125-f78e-11e3-8c8a-005056be1f7b-BSez-FBfJ-AyX1-F8DS-CF0E-EI7v', 'b54ba125-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('b54ba125-f78e-11e3-8c8a-005056be1f7b-Bvkj-Fmin-A6nm-FAvi-CvVn-Eu8n', 'b54ba125-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('b54ba125-f78e-11e3-8c8a-005056be1f7b-BXVx-Fu9Q-AU6A-F6YM-Cfju-EpMC', 'b54ba125-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'оранжевый', ''),
('b54ba125-f78e-11e3-8c8a-005056be1f7b-By7i-F7kw-A2Dt-FBTx-C3rJ-EpbH', 'b54ba125-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('b5957aa3-f787-11e3-8c8a-005056be1f7b-B2hn-FfZC-ApcI-FGVp-Cg8V-E8vH', 'b5957aa3-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('b5957aa3-f787-11e3-8c8a-005056be1f7b-BB6S-FwEy-AqCn-F3ZK-CCFa-E3gZ', 'b5957aa3-f787-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'вишневый', ''),
('b5957aa3-f787-11e3-8c8a-005056be1f7b-BgYp-Fu6X-Atky-FYwS-CXhX-EY7k', 'b5957aa3-f787-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('b5957aa3-f787-11e3-8c8a-005056be1f7b-Bmqa-Fxvw-A5ZS-FnCk-CtEf-EC1k', 'b5957aa3-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('b5957aa3-f787-11e3-8c8a-005056be1f7b-Btpg-FBTj-AmDn-FHFe-Cs8B-EVcb', 'b5957aa3-f787-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('b5957aa3-f787-11e3-8c8a-005056be1f7b-BvFB-FYNH-A46E-F5Rh-CWpp-EQM5', 'b5957aa3-f787-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('b5957aa3-f787-11e3-8c8a-005056be1f7b-BYI5-FgOP-ALuN-Fhs0-Cobp-ELd9', 'b5957aa3-f787-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('b7e28649-21de-11df-860d-000e0c431b58-BHAF-Fivz-A0RI-FWye-CAzO-E2xj', 'b7e28649-21de-11df-860d-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('b7e28649-21de-11df-860d-000e0c431b58-Biog-FWeA-AU12-FrIM-CRwB-EsVW', 'b7e28649-21de-11df-860d-000e0c431b58', '1d08380b-ce34-11e4-a80e-005056be1f7a', '9000', 'г'),
('b7e28649-21de-11df-860d-000e0c431b58-BJ11-FqIf-ANaG-FzaA-CohA-EuGw', 'b7e28649-21de-11df-860d-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('b7e28649-21de-11df-860d-000e0c431b58-BkFE-Fsc4-ANcs-FbTg-CBdW-E2Kf', 'b7e28649-21de-11df-860d-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('b7e28649-21de-11df-860d-000e0c431b58-BOIA-F8kU-Adlx-F1d9-CV1W-ERVj', 'b7e28649-21de-11df-860d-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('b7e28649-21de-11df-860d-000e0c431b58-Bozb-FiUD-AjmQ-Fp9L-CNNU-EOK5', 'b7e28649-21de-11df-860d-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска фактурная', ''),
('b7e28649-21de-11df-860d-000e0c431b58-BXY7-FeNW-Ae25-FfmA-CRMF-EV6i', 'b7e28649-21de-11df-860d-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('b7e2864b-21de-11df-860d-000e0c431b58-B4za-FqGG-A7Qd-FTcT-C8dP-EOHU', 'b7e2864b-21de-11df-860d-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('b7e2864b-21de-11df-860d-000e0c431b58-B7Er-FSNH-AGQb-Fvta-CgTX-EhWn', 'b7e2864b-21de-11df-860d-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска фактурная', ''),
('b7e2864b-21de-11df-860d-000e0c431b58-BAt2-F8VS-ACRg-FSog-CSll-E04z', 'b7e2864b-21de-11df-860d-000e0c431b58', '1d08380b-ce34-11e4-a80e-005056be1f7a', '18000', 'г'),
('b7e2864b-21de-11df-860d-000e0c431b58-BB6Q-FoEi-AEH9-FgIT-C0vE-Erd4', 'b7e2864b-21de-11df-860d-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('b7e2864b-21de-11df-860d-000e0c431b58-Bj7B-FDQd-AWN8-FmbE-C7OQ-EX00', 'b7e2864b-21de-11df-860d-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('b7e2864b-21de-11df-860d-000e0c431b58-Bnvr-FryL-AVhw-FRpQ-CJXW-ELzn', 'b7e2864b-21de-11df-860d-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('b7e2864b-21de-11df-860d-000e0c431b58-BwLb-Fvsj-AEsV-FJay-CCTo-Ed0u', 'b7e2864b-21de-11df-860d-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('b8d52c0e-7f46-11e3-af7c-005056be1f7b-B1Bt-FBGl-AFCX-FQku-CtBE-EBIS', 'b8d52c0e-7f46-11e3-af7c-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('b8d52c0e-7f46-11e3-af7c-005056be1f7b-B6Hk-FkQ4-A8zp-F4Ce-CTBS-E2PS', 'b8d52c0e-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('b8d52c0e-7f46-11e3-af7c-005056be1f7b-B9yh-FO0g-AMuZ-Fdin-Cykn-EH43', 'b8d52c0e-7f46-11e3-af7c-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('b8d52c0e-7f46-11e3-af7c-005056be1f7b-BbUR-FGNU-AlhV-F5Yl-CNwD-EPk0', 'b8d52c0e-7f46-11e3-af7c-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('b8d52c0e-7f46-11e3-af7c-005056be1f7b-BC0T-FTPx-AOsp-FJSX-Ciw7-EMzZ', 'b8d52c0e-7f46-11e3-af7c-005056be1f7b', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('b8d52c0e-7f46-11e3-af7c-005056be1f7b-Bdjn-FCdv-A9HP-FL09-Cu4R-ExNU', 'b8d52c0e-7f46-11e3-af7c-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('b8d52c0e-7f46-11e3-af7c-005056be1f7b-BqEx-FEVX-AyFZ-F4Gh-CMbQ-EDI6', 'b8d52c0e-7f46-11e3-af7c-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('b8d52c0e-7f46-11e3-af7c-005056be1f7b-BVt1-FqoP-AS2C-FVHn-CV9o-EE0u', 'b8d52c0e-7f46-11e3-af7c-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('b8d52c0e-7f46-11e3-af7c-005056be1f7b-BXcC-Fx6k-AbuK-FE2E-C7wL-EhWc', 'b8d52c0e-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ba1232df-ec8c-11e3-9eab-005056be1f7b-BBGb-FWAR-At2J-FNo1-CUqg-Elvd', 'ba1232df-ec8c-11e3-9eab-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ba1232df-ec8c-11e3-9eab-005056be1f7b-BCpQ-FF7n-AJfu-FpZo-Caml-ElSx', 'ba1232df-ec8c-11e3-9eab-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ba1232df-ec8c-11e3-9eab-005056be1f7b-BIs8-FJ7k-Ad8P-F3aQ-CTKA-EkE8', 'ba1232df-ec8c-11e3-9eab-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'растворитель', ''),
('ba1232df-ec8c-11e3-9eab-005056be1f7b-BO60-F9lY-AmBA-FNnT-CBoZ-EcBa', 'ba1232df-ec8c-11e3-9eab-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ba1232df-ec8c-11e3-9eab-005056be1f7b-BtuR-F486-AuRm-FR3Y-CuHT-EtG6', 'ba1232df-ec8c-11e3-9eab-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.5', 'л'),
('bb036923-a661-11e2-9827-005056be3574-B6Ew-FVLr-ACr3-FA4J-C95o-EVud', 'bb036923-a661-11e2-9827-005056be3574', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.5', 'л'),
('bb036923-a661-11e2-9827-005056be3574-BAeX-Fzz6-A2h0-F9lQ-C1tQ-ELVT', 'bb036923-a661-11e2-9827-005056be3574', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('bb036923-a661-11e2-9827-005056be3574-BgFV-FMvD-Atce-FDZG-CYpX-EcRZ', 'bb036923-a661-11e2-9827-005056be3574', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('bb036923-a661-11e2-9827-005056be3574-BHAU-FlDu-AscZ-FG6r-CgK8-EMR9', 'bb036923-a661-11e2-9827-005056be3574', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('bb036923-a661-11e2-9827-005056be3574-BPQq-FHAy-AMZz-FVhB-CsEH-EDQ3', 'bb036923-a661-11e2-9827-005056be3574', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('bb036923-a661-11e2-9827-005056be3574-BPRE-FmBw-A9Q3-FuIF-CYAI-EIMX', 'bb036923-a661-11e2-9827-005056be3574', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серебрянный', ''),
('bb036923-a661-11e2-9827-005056be3574-BQlB-FQkm-AgaW-Fwmr-CFiv-E348', 'bb036923-a661-11e2-9827-005056be3574', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('bc816f7f-f78f-11e3-8c8a-005056be1f7b-B2KA-FFov-AsH1-Fohp-CBol-Ej7T', 'bc816f7f-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('bc816f7f-f78f-11e3-8c8a-005056be1f7b-B98d-FTA1-Aihb-F6mD-CiRb-EXZ9', 'bc816f7f-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('bc816f7f-f78f-11e3-8c8a-005056be1f7b-Bh4T-F9y7-ACWN-Fdun-CcF7-EayW', 'bc816f7f-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('bc816f7f-f78f-11e3-8c8a-005056be1f7b-BH7i-FRsk-AE6l-F1m7-ClJz-E6Io', 'bc816f7f-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('bc816f7f-f78f-11e3-8c8a-005056be1f7b-BKBP-Fv22-AsdB-FhYJ-CLQU-EMW9', 'bc816f7f-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('bc816f7f-f78f-11e3-8c8a-005056be1f7b-BoXy-FHh9-A49X-FHsY-Cvdo-E1mb', 'bc816f7f-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'вишневый', ''),
('bc816f7f-f78f-11e3-8c8a-005056be1f7b-BVT8-Ftaq-AHLK-FvCx-CNAv-EqUv', 'bc816f7f-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('beb861cb-f787-11e3-8c8a-005056be1f7b-B7Tv-FBiK-Aj9S-FwbN-CZtP-Edb1', 'beb861cb-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('beb861cb-f787-11e3-8c8a-005056be1f7b-Bcud-FofY-Af7E-FPZh-CZHN-Ed6n', 'beb861cb-f787-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красный', ''),
('beb861cb-f787-11e3-8c8a-005056be1f7b-BEoi-FsDQ-ARIb-FkqP-CZnj-EKpH', 'beb861cb-f787-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('beb861cb-f787-11e3-8c8a-005056be1f7b-BRCD-Fskk-ANso-FYsi-CEKT-Eiyz', 'beb861cb-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('beb861cb-f787-11e3-8c8a-005056be1f7b-BVOF-FoAh-A3aQ-FH5s-C90X-Egsb', 'beb861cb-f787-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('beb861cb-f787-11e3-8c8a-005056be1f7b-Bx0j-FOjQ-Ae04-FDJj-CLfx-EQJy', 'beb861cb-f787-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('beb861cb-f787-11e3-8c8a-005056be1f7b-ByCO-FFKJ-AxII-FKp1-Cld1-ELsa', 'beb861cb-f787-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('bef8d7ea-f78e-11e3-8c8a-005056be1f7b-BcuK-F1GL-ABWC-FNSU-C0iX-EtLk', 'bef8d7ea-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('bef8d7ea-f78e-11e3-8c8a-005056be1f7b-BNYk-F98V-AoAk-FFPp-Cmov-EfHG', 'bef8d7ea-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('bef8d7ea-f78e-11e3-8c8a-005056be1f7b-BQCt-FmME-A7EQ-FlIZ-CE7F-E97f', 'bef8d7ea-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('bef8d7ea-f78e-11e3-8c8a-005056be1f7b-Br5a-FcFd-AYzU-FbQQ-COdo-Eycm', 'bef8d7ea-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('bef8d7ea-f78e-11e3-8c8a-005056be1f7b-BxHp-FEtx-Adxu-Fivq-CDOa-EOEg', 'bef8d7ea-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('bef8d7ea-f78e-11e3-8c8a-005056be1f7b-Bxp5-F0Ze-AypX-FWAL-CQ2M-E6Rv', 'bef8d7ea-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желтый', ''),
('bef8d7ea-f78e-11e3-8c8a-005056be1f7b-BZG4-FcUL-AxTu-FKD6-Cu2D-Ea6w', 'bef8d7ea-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('bf4804e2-fc0e-11dd-bd91-000e0c431b58-B31y-FJcj-AYCi-FluV-Cr1g-EfXj', 'bf4804e2-fc0e-11dd-bd91-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бесцветный', ''),
('bf4804e2-fc0e-11dd-bd91-000e0c431b58-BEej-FWbt-AX6I-Ff7T-CWQm-Ensk', 'bf4804e2-fc0e-11dd-bd91-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('bf4804e2-fc0e-11dd-bd91-000e0c431b58-BGKx-FgDq-A8L6-FR8a-C6PY-EIO4', 'bf4804e2-fc0e-11dd-bd91-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('bf4804e2-fc0e-11dd-bd91-000e0c431b58-BLVv-FHms-Ahi9-F7qN-CzjD-Ensf', 'bf4804e2-fc0e-11dd-bd91-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('bf4804e2-fc0e-11dd-bd91-000e0c431b58-BNHh-FwsS-AIaI-Fo6g-CNH2-E0Od', 'bf4804e2-fc0e-11dd-bd91-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('bf4804e2-fc0e-11dd-bd91-000e0c431b58-BS9M-F9eu-Al6Q-FlvO-Cj9N-EswG', 'bf4804e2-fc0e-11dd-bd91-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('bf4804e2-fc0e-11dd-bd91-000e0c431b58-BsvC-Fqrs-A5hS-F8KA-CdYI-EBL1', 'bf4804e2-fc0e-11dd-bd91-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('bf4804e2-fc0e-11dd-bd91-000e0c431b58-BTTR-Fc8M-A9LT-FzKi-CT4U-EVjC', 'bf4804e2-fc0e-11dd-bd91-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('bf4804e2-fc0e-11dd-bd91-000e0c431b58-Bzqw-FJg7-Ar1z-FCLZ-CEQ5-EnmV', 'bf4804e2-fc0e-11dd-bd91-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('bf4804e4-fc0e-11dd-bd91-000e0c431b58-BBSU-F30d-AEQP-FG0l-Ccwg-EbzG', 'bf4804e4-fc0e-11dd-bd91-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бесцветный', ''),
('bf4804e4-fc0e-11dd-bd91-000e0c431b58-Bg4a-FDvi-AiIr-FU1r-CGAx-EJb9', 'bf4804e4-fc0e-11dd-bd91-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная', ''),
('bf4804e4-fc0e-11dd-bd91-000e0c431b58-BIwb-FSHq-Advb-Fi1Q-CZdn-EYyV', 'bf4804e4-fc0e-11dd-bd91-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('bf4804e4-fc0e-11dd-bd91-000e0c431b58-BKFC-FaLC-ABny-FhEn-Cocr-EjAT', 'bf4804e4-fc0e-11dd-bd91-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('bf4804e4-fc0e-11dd-bd91-000e0c431b58-BLdm-F0Br-AnpK-FUPL-CovE-EFy1', 'bf4804e4-fc0e-11dd-bd91-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('bf4804e4-fc0e-11dd-bd91-000e0c431b58-BN1K-FDqI-AVeS-FG6c-C2DP-ETWW', 'bf4804e4-fc0e-11dd-bd91-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('bf4804e4-fc0e-11dd-bd91-000e0c431b58-BnX0-FUrz-ACy1-Fz9R-CyJu-EaJv', 'bf4804e4-fc0e-11dd-bd91-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('bf4804e4-fc0e-11dd-bd91-000e0c431b58-Bw69-FDk7-AOxJ-FjCU-Cek0-EA8e', 'bf4804e4-fc0e-11dd-bd91-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('bf4804e4-fc0e-11dd-bd91-000e0c431b58-BXD5-Fhm7-A3Gh-F3He-CWIw-ErAw', 'bf4804e4-fc0e-11dd-bd91-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c017590e-fbe7-11e0-b702-001cc494be80-B0hR-F0EA-AqUO-Fryl-Cok0-E0VD', 'c017590e-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c017590e-fbe7-11e0-b702-001cc494be80-BCKr-F2iL-AcAA-Fhtq-CQOB-EdW8', 'c017590e-fbe7-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('c017590e-fbe7-11e0-b702-001cc494be80-BIG6-FKvm-Age5-FwZN-CyrD-ErlM', 'c017590e-fbe7-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('c017590e-fbe7-11e0-b702-001cc494be80-Bl4M-F0vX-Ai2l-FRpq-CioN-EzoR', 'c017590e-fbe7-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'интерьерная', ''),
('c017590e-fbe7-11e0-b702-001cc494be80-BQK4-Fe8Z-AXCv-FltM-C13S-EwCE', 'c017590e-fbe7-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '3000', 'г'),
('c017590e-fbe7-11e0-b702-001cc494be80-BS14-F4Ij-AjqO-Fwg3-CEWN-EraP', 'c017590e-fbe7-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c017590e-fbe7-11e0-b702-001cc494be80-BvYV-FuDl-AhIY-F3Li-CGNs-ExEQ', 'c017590e-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c017590e-fbe7-11e0-b702-001cc494be80-BzUm-FEBb-ApqB-FpqW-CsSP-E5SB', 'c017590e-fbe7-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('c0175910-fbe7-11e0-b702-001cc494be80-B2Lm-FztH-AyWn-FTM2-C8JG-EgVz', 'c0175910-fbe7-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c0175910-fbe7-11e0-b702-001cc494be80-B7Oj-FLsL-AEn4-F0Cd-ChnH-EjVI', 'c0175910-fbe7-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('c0175910-fbe7-11e0-b702-001cc494be80-BBhO-FsIG-AA6P-Fdm4-C5s5-EYkh', 'c0175910-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c0175910-fbe7-11e0-b702-001cc494be80-BEBw-FrV0-AjTI-Fqzd-Cgh4-E0IT', 'c0175910-fbe7-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('c0175910-fbe7-11e0-b702-001cc494be80-BGBd-F2nN-AEdF-FXQI-Ccqs-EBAD', 'c0175910-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c0175910-fbe7-11e0-b702-001cc494be80-BloB-FrBS-A1d9-Fif9-Cmgf-E1On', 'c0175910-fbe7-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'интерьерная', ''),
('c0175910-fbe7-11e0-b702-001cc494be80-Brad-FlZf-AE8J-FLge-CUXq-E8Na', 'c0175910-fbe7-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('c0175910-fbe7-11e0-b702-001cc494be80-BZjj-FUV0-AhKr-Fk3S-CxId-Eqna', 'c0175910-fbe7-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('c0175912-fbe7-11e0-b702-001cc494be80-B149-FetG-AaiI-Fwlz-CHBb-Ehzs', 'c0175912-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c0175912-fbe7-11e0-b702-001cc494be80-B7fU-FLNB-AeMd-FUzp-Coqi-EmLS', 'c0175912-fbe7-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'моющаяся', ''),
('c0175912-fbe7-11e0-b702-001cc494be80-Bjkg-FDtk-AYkl-FOwy-CR0f-Ehqh', 'c0175912-fbe7-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('c0175912-fbe7-11e0-b702-001cc494be80-BMrQ-FqBF-AWqw-F6S8-COBk-EG40', 'c0175912-fbe7-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c0175912-fbe7-11e0-b702-001cc494be80-BnCN-Fa9g-AYMh-F9Sb-C82C-Ed6v', 'c0175912-fbe7-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '3000', 'г'),
('c0175912-fbe7-11e0-b702-001cc494be80-Btm2-F2Zd-Arge-FIEU-C2B1-ELMD', 'c0175912-fbe7-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('c0175912-fbe7-11e0-b702-001cc494be80-Bwfn-FteO-Aqon-F1I7-CyBV-ECqU', 'c0175912-fbe7-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('c0175912-fbe7-11e0-b702-001cc494be80-BZma-FyQY-ApmO-FrqT-C0cz-EmMT', 'c0175912-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c0175914-fbe7-11e0-b702-001cc494be80-BC7p-FdqS-AEIM-F35r-CgOg-ETPm', 'c0175914-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c0175914-fbe7-11e0-b702-001cc494be80-Bfh8-FY30-A0ey-FXel-CcyE-Espt', 'c0175914-fbe7-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('c0175914-fbe7-11e0-b702-001cc494be80-BfUN-FH7S-ABY0-FpQw-CEwU-ECKN', 'c0175914-fbe7-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '14000', 'г'),
('c0175914-fbe7-11e0-b702-001cc494be80-Bmua-FGun-Aui3-FUCl-ClyY-EAxE', 'c0175914-fbe7-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('c0175914-fbe7-11e0-b702-001cc494be80-BTcQ-F2ow-Aoem-FlE4-Cbro-E3xZ', 'c0175914-fbe7-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c0175914-fbe7-11e0-b702-001cc494be80-BTJv-Fc4B-Acke-FAMn-CxPk-EdsQ', 'c0175914-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c0175914-fbe7-11e0-b702-001cc494be80-BTzw-FBG0-A5IJ-FtPA-Crch-EmJx', 'c0175914-fbe7-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('c0175914-fbe7-11e0-b702-001cc494be80-BwwZ-F9pT-ApMh-FMgx-Czz7-EkR1', 'c0175914-fbe7-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'интерьерная', ''),
('c0175916-fbe7-11e0-b702-001cc494be80-B4oM-Fd6E-AI4S-FYiH-CisQ-ExXQ', 'c0175916-fbe7-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('c0175916-fbe7-11e0-b702-001cc494be80-BeGH-FqYW-Aybq-FP2r-CQZM-EGFq', 'c0175916-fbe7-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'моющаяся', ''),
('c0175916-fbe7-11e0-b702-001cc494be80-BEUW-FqiI-Ae1I-F0Xy-ChB1-Euby', 'c0175916-fbe7-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('c0175916-fbe7-11e0-b702-001cc494be80-Bie1-FqeO-AeBQ-FVvr-CJCh-EL1V', 'c0175916-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c0175916-fbe7-11e0-b702-001cc494be80-BJIO-Fp0e-ADMP-Fgfq-CYM6-Esja', 'c0175916-fbe7-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('c0175916-fbe7-11e0-b702-001cc494be80-BqPT-FXfK-AEvk-FQ3p-C8NP-EpzK', 'c0175916-fbe7-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c0175916-fbe7-11e0-b702-001cc494be80-BQzB-FyyT-APvL-FRPH-CDUb-EZAA', 'c0175916-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c0175916-fbe7-11e0-b702-001cc494be80-BVjs-Fl5e-ATEg-F1PX-CMud-ETb3', 'c0175916-fbe7-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('c0175918-fbe7-11e0-b702-001cc494be80-B2Ks-FPQs-AaV8-F9k8-CKZK-EeS8', 'c0175918-fbe7-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('c0175918-fbe7-11e0-b702-001cc494be80-B4dx-Fa89-ArAY-FGAK-CFOh-EP0M', 'c0175918-fbe7-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('c0175918-fbe7-11e0-b702-001cc494be80-B4ZO-Fo0W-A6FY-Fo92-CVzB-EDFS', 'c0175918-fbe7-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '14000', 'г'),
('c0175918-fbe7-11e0-b702-001cc494be80-BE5d-FqfU-AEh1-Fxm1-COeg-E4vi', 'c0175918-fbe7-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('c0175918-fbe7-11e0-b702-001cc494be80-BOXK-Fuoj-ANHD-FkFO-CcWd-E3ef', 'c0175918-fbe7-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'моющаяся', ''),
('c0175918-fbe7-11e0-b702-001cc494be80-BPG7-FVkO-AlLg-FQZc-CddW-E8K3', 'c0175918-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c0175918-fbe7-11e0-b702-001cc494be80-BROZ-FHCB-A9Rg-FeKR-CDaY-E0v9', 'c0175918-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c0175918-fbe7-11e0-b702-001cc494be80-BzNT-F3xZ-AGQv-FkIQ-CFCt-E4cr', 'c0175918-fbe7-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c017591a-fbe7-11e0-b702-001cc494be80-B2OR-FKY7-A6D8-FCRJ-CPju-Ebq4', 'c017591a-fbe7-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('c017591a-fbe7-11e0-b702-001cc494be80-BHM2-FjD0-AlfY-FUh6-CgYK-Eyji', 'c017591a-fbe7-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '3000', 'г'),
('c017591a-fbe7-11e0-b702-001cc494be80-BN3m-FyLx-AXAc-FTzV-Cusp-EOs2', 'c017591a-fbe7-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('c017591a-fbe7-11e0-b702-001cc494be80-BQ35-F8Ey-A5By-FtgO-C3uH-EfjS', 'c017591a-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c017591a-fbe7-11e0-b702-001cc494be80-BRqk-FIcy-ArGT-FJov-CpBH-ENLN', 'c017591a-fbe7-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('c017591a-fbe7-11e0-b702-001cc494be80-BSlL-FHIp-Af9c-F1HC-CbZs-EChL', 'c017591a-fbe7-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c017591a-fbe7-11e0-b702-001cc494be80-BT7T-FwPI-AHA1-FwOj-Cnec-Eibg', 'c017591a-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c017591a-fbe7-11e0-b702-001cc494be80-BWWh-FKFE-AZ9z-FhdY-CzxU-EJjk', 'c017591a-fbe7-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная', ''),
('c017591c-fbe7-11e0-b702-001cc494be80-B2pQ-FnlS-ADAO-F9qi-C02Z-Ek5L', 'c017591c-fbe7-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c017591c-fbe7-11e0-b702-001cc494be80-B5eQ-FXFf-Ahk2-F57x-CUTV-EPDN', 'c017591c-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c017591c-fbe7-11e0-b702-001cc494be80-Ba0o-Fp9V-AO8M-FoiH-Czr3-EGs1', 'c017591c-fbe7-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('c017591c-fbe7-11e0-b702-001cc494be80-BJvQ-FA8m-A6Xr-FkaV-C2RB-EI6n', 'c017591c-fbe7-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('c017591c-fbe7-11e0-b702-001cc494be80-BL2l-FCvi-A1F2-FMV6-CaEp-ECoQ', 'c017591c-fbe7-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('c017591c-fbe7-11e0-b702-001cc494be80-Bsum-Fklz-AAAv-F7Ba-CZ75-EpTA', 'c017591c-fbe7-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная', ''),
('c017591c-fbe7-11e0-b702-001cc494be80-Buem-Frh4-A1xc-FlPJ-CeWW-EW6a', 'c017591c-fbe7-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('c017591c-fbe7-11e0-b702-001cc494be80-BWh6-Fu3c-AqY2-F1Ma-CZ76-EBoc', 'c017591c-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c017591e-fbe7-11e0-b702-001cc494be80-B2xb-FgyQ-AN6X-FwLV-Cz9q-Eleb', 'c017591e-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c017591e-fbe7-11e0-b702-001cc494be80-B4Td-F0MB-AKDr-FL57-C80y-EfaJ', 'c017591e-fbe7-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '14000', 'г'),
('c017591e-fbe7-11e0-b702-001cc494be80-B7M7-FCim-AvAc-F7PC-C9H1-Eaop', 'c017591e-fbe7-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c017591e-fbe7-11e0-b702-001cc494be80-BdX0-FNeE-AbCG-F3iK-C2pA-E1Pw', 'c017591e-fbe7-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c017591e-fbe7-11e0-b702-001cc494be80-BF2h-FbUs-Abcl-FTLi-Czp7-Ey3a', 'c017591e-fbe7-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('c017591e-fbe7-11e0-b702-001cc494be80-BHz0-FjwO-AmuV-FcLA-CI32-Es8f', 'c017591e-fbe7-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('c017591e-fbe7-11e0-b702-001cc494be80-Br2k-FFnv-Aadt-FHFO-CiBa-EfE0', 'c017591e-fbe7-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная', ''),
('c017591e-fbe7-11e0-b702-001cc494be80-BwVv-FguU-AsfG-FVps-Cb1L-EPkC', 'c017591e-fbe7-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('c2d90e40-f78f-11e3-8c8a-005056be1f7b-Baui-FUju-A22g-FELT-Cj92-El2D', 'c2d90e40-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('c2d90e40-f78f-11e3-8c8a-005056be1f7b-BCrU-Fq66-AdfW-FVHf-CfiP-EE4y', 'c2d90e40-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('c2d90e40-f78f-11e3-8c8a-005056be1f7b-BkrC-FBQc-AvhF-FnZ8-CEMX-EUJW', 'c2d90e40-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c2d90e40-f78f-11e3-8c8a-005056be1f7b-BVUq-FfPx-AFja-FiZu-CRn3-E23b', 'c2d90e40-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красный', ''),
('c2d90e40-f78f-11e3-8c8a-005056be1f7b-BwiC-F3Lb-A1Qn-FNlx-Cja2-EmIK', 'c2d90e40-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c2d90e40-f78f-11e3-8c8a-005056be1f7b-BxaP-F79f-A5q4-FOu3-CGGN-Ewmd', 'c2d90e40-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c2d90e40-f78f-11e3-8c8a-005056be1f7b-BzED-FsSx-AlY5-FyLg-CSvN-EUwe', 'c2d90e40-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('c4df9e0d-00c0-11e2-a554-005056be3bd8-B6av-Fdyz-AkEP-FxTr-CPV3-EnCD', 'c4df9e0d-00c0-11e2-a554-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c4df9e0d-00c0-11e2-a554-005056be3bd8-B6ik-FpEA-ADsV-F2HK-CdXk-EK3y', 'c4df9e0d-00c0-11e2-a554-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c4df9e0d-00c0-11e2-a554-005056be3bd8-BfLE-F2CM-ACgk-Fmqd-Ca1j-EsWv', 'c4df9e0d-00c0-11e2-a554-005056be3bd8', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('c4df9e0d-00c0-11e2-a554-005056be3bd8-BGIC-F57t-AaHu-FfZX-CoVy-EZym', 'c4df9e0d-00c0-11e2-a554-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c4df9e0d-00c0-11e2-a554-005056be3bd8-BGQG-Frrn-AblF-FuGN-CGmY-ELeb', 'c4df9e0d-00c0-11e2-a554-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'молотковая эмаль-грунт', ''),
('c4df9e0d-00c0-11e2-a554-005056be3bd8-BKGR-FfLY-A4Vl-Fagt-C5cS-EfHW', 'c4df9e0d-00c0-11e2-a554-005056be3bd8', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('c4df9e0d-00c0-11e2-a554-005056be3bd8-BPZq-FfNA-ANdV-FFGY-CJNh-ELHd', 'c4df9e0d-00c0-11e2-a554-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('c4df9e0d-00c0-11e2-a554-005056be3bd8-BSiH-FnDn-Awni-FXEH-CQaM-EPbb', 'c4df9e0d-00c0-11e2-a554-005056be3bd8', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'коричневый', ''),
('c4df9e0f-00c0-11e2-a554-005056be3bd8-B28j-Feno-APHP-FiAa-CJZa-EL9m', 'c4df9e0f-00c0-11e2-a554-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('c4df9e0f-00c0-11e2-a554-005056be3bd8-Bedo-FtBo-AKLE-FkWD-CMJN-Eohu', 'c4df9e0f-00c0-11e2-a554-005056be3bd8', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('c4df9e0f-00c0-11e2-a554-005056be3bd8-Bgd0-FEW2-AAnl-F4d1-Ca8T-EErV', 'c4df9e0f-00c0-11e2-a554-005056be3bd8', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('c4df9e0f-00c0-11e2-a554-005056be3bd8-BOZ6-FsaO-AjMn-FqEu-CdkT-E4Ll', 'c4df9e0f-00c0-11e2-a554-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c4df9e0f-00c0-11e2-a554-005056be3bd8-Bt3g-Fyc4-A2pD-FFTk-C11D-Ez6a', 'c4df9e0f-00c0-11e2-a554-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'молотковая эмаль-грунт', ''),
('c4df9e0f-00c0-11e2-a554-005056be3bd8-BwKb-FXh3-A6Oh-F436-CQt4-E1Og', 'c4df9e0f-00c0-11e2-a554-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c4df9e0f-00c0-11e2-a554-005056be3bd8-BYh8-F9Jn-Abke-FBS1-CwZG-E3Gx', 'c4df9e0f-00c0-11e2-a554-005056be3bd8', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'медный', ''),
('c4df9e0f-00c0-11e2-a554-005056be3bd8-BZ0B-FiMl-AMzk-FWai-Crp8-EnYX', 'c4df9e0f-00c0-11e2-a554-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c4df9e11-00c0-11e2-a554-005056be3bd8-B0RL-FrHG-APVb-FZnN-COHF-EJGS', 'c4df9e11-00c0-11e2-a554-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('c4df9e11-00c0-11e2-a554-005056be3bd8-B2C8-FLaa-AGxs-F15i-CNUJ-ESwz', 'c4df9e11-00c0-11e2-a554-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c4df9e11-00c0-11e2-a554-005056be3bd8-B8Vt-FGU2-AB61-F0dB-CXcS-EjJa', 'c4df9e11-00c0-11e2-a554-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c4df9e11-00c0-11e2-a554-005056be3bd8-Bdcd-FZ3K-ARVU-FXd5-CWRt-EH1X', 'c4df9e11-00c0-11e2-a554-005056be3bd8', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серебристый', ''),
('c4df9e11-00c0-11e2-a554-005056be3bd8-Be26-F9Nx-APaJ-F9H5-Ck08-EiKY', 'c4df9e11-00c0-11e2-a554-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c4df9e11-00c0-11e2-a554-005056be3bd8-BFXm-Fmxz-APgA-FO0R-ChTk-Ewe4', 'c4df9e11-00c0-11e2-a554-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'молотковая эмаль-грунт', ''),
('c4df9e11-00c0-11e2-a554-005056be3bd8-BpZv-FHyZ-AUDg-FaNn-CtK9-EcRT', 'c4df9e11-00c0-11e2-a554-005056be3bd8', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('c4df9e11-00c0-11e2-a554-005056be3bd8-BUTO-FKSs-AMqL-FePU-C66u-EqCj', 'c4df9e11-00c0-11e2-a554-005056be3bd8', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('c4df9e13-00c0-11e2-a554-005056be3bd8-B7jD-FpSX-ARj8-FpDy-C3Dj-EwbQ', 'c4df9e13-00c0-11e2-a554-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('c4df9e13-00c0-11e2-a554-005056be3bd8-B8rT-FcKo-Ao0s-FtUm-CQjX-Ed2N', 'c4df9e13-00c0-11e2-a554-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c4df9e13-00c0-11e2-a554-005056be3bd8-BAu4-FXqa-AqEo-F5eM-C9c4-ES5E', 'c4df9e13-00c0-11e2-a554-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c4df9e13-00c0-11e2-a554-005056be3bd8-BcNn-Fa3r-APvu-FyhL-CEuT-EYkV', 'c4df9e13-00c0-11e2-a554-005056be3bd8', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('c4df9e13-00c0-11e2-a554-005056be3bd8-BMHU-F1Cy-ADBQ-F7TL-CBQu-EE6D', 'c4df9e13-00c0-11e2-a554-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c4df9e13-00c0-11e2-a554-005056be3bd8-BNnW-Fdkq-Apm7-Faq3-CdJG-EHk0', 'c4df9e13-00c0-11e2-a554-005056be3bd8', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('c4df9e13-00c0-11e2-a554-005056be3bd8-Br6D-FTzg-AJPe-FdUM-CyEE-EV4h', 'c4df9e13-00c0-11e2-a554-005056be3bd8', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серый', ''),
('c4df9e13-00c0-11e2-a554-005056be3bd8-Byzu-FinS-AurC-FEGn-CaTQ-Eww2', 'c4df9e13-00c0-11e2-a554-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'молотковая эмаль-грунт', ''),
('c6d784e3-f78e-11e3-8c8a-005056be1f7b-B29u-FA7g-A5jy-FT1i-CCbB-Ef9G', 'c6d784e3-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'вишневый', ''),
('c6d784e3-f78e-11e3-8c8a-005056be1f7b-BaDb-FPXS-AyZu-Fz6s-C6ny-EF8p', 'c6d784e3-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c6d784e3-f78e-11e3-8c8a-005056be1f7b-BcPO-FMFK-A6Ay-FtFv-CYcV-ENZB', 'c6d784e3-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('c6d784e3-f78e-11e3-8c8a-005056be1f7b-Bmjl-FaSr-AMrK-Fi5j-CjN3-EbvA', 'c6d784e3-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('c6d784e3-f78e-11e3-8c8a-005056be1f7b-BsFJ-FT2R-AmIj-FGR7-CKI6-E5J3', 'c6d784e3-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c6d784e3-f78e-11e3-8c8a-005056be1f7b-BTT2-FhIm-A6zy-FX0Q-CMbg-Ebol', 'c6d784e3-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('c6d784e3-f78e-11e3-8c8a-005056be1f7b-BWjy-F7pF-A41O-FzvY-CrLb-EJbz', 'c6d784e3-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('c9d25e2b-f787-11e3-8c8a-005056be1f7b-B9qf-FwR0-AHlY-Fr3A-CrdA-EM7R', 'c9d25e2b-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('c9d25e2b-f787-11e3-8c8a-005056be1f7b-BJn0-FwXY-AmMu-FJg5-C8zL-EXgK', 'c9d25e2b-f787-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('c9d25e2b-f787-11e3-8c8a-005056be1f7b-BjNT-Fcmz-Asbn-FuYz-CyWg-ETJy', 'c9d25e2b-f787-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('c9d25e2b-f787-11e3-8c8a-005056be1f7b-Bl0f-FcQW-AQB3-FZfQ-CyxB-E7ME', 'c9d25e2b-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('c9d25e2b-f787-11e3-8c8a-005056be1f7b-BpP1-Fb0t-AJAL-FFVG-Cnft-EnSG', 'c9d25e2b-f787-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('c9d25e2b-f787-11e3-8c8a-005056be1f7b-BRvH-FYCB-Aeay-FkeU-CUZk-ERm0', 'c9d25e2b-f787-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бирюзовый', ''),
('c9d25e2b-f787-11e3-8c8a-005056be1f7b-BTRZ-Fr9S-Asqv-Ft4s-CBc6-EU5i', 'c9d25e2b-f787-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ca79b0fb-f78f-11e3-8c8a-005056be1f7b-B2nA-FY5S-AJAU-F9so-CBXS-Elxp', 'ca79b0fb-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ca79b0fb-f78f-11e3-8c8a-005056be1f7b-BKfI-Fpx1-APCy-FGCu-C74X-E8SS', 'ca79b0fb-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('ca79b0fb-f78f-11e3-8c8a-005056be1f7b-BNIh-FBPj-AvMd-FJJv-CbZN-EtAn', 'ca79b0fb-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('ca79b0fb-f78f-11e3-8c8a-005056be1f7b-Bonj-FaXj-Arcf-FSsj-CO82-EA6z', 'ca79b0fb-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ca79b0fb-f78f-11e3-8c8a-005056be1f7b-BPRv-F992-ArLh-FQRu-CFBz-EsUC', 'ca79b0fb-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бирюзовый', ''),
('ca79b0fb-f78f-11e3-8c8a-005056be1f7b-BQbS-FkaB-APbY-FhCL-CNNr-EW4f', 'ca79b0fb-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ca79b0fb-f78f-11e3-8c8a-005056be1f7b-BuPF-FJxI-AVBV-FCXO-ChkX-EEmm', 'ca79b0fb-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('cb22e29d-68ed-11dd-b117-000e0c431b58-BGiW-FdQG-A2qN-F21u-C1e6-E2YZ', 'cb22e29d-68ed-11dd-b117-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('cb22e29d-68ed-11dd-b117-000e0c431b58-BnKB-F4e2-A79a-FUgN-Cxu1-EfLp', 'cb22e29d-68ed-11dd-b117-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('cb22e29d-68ed-11dd-b117-000e0c431b58-BOms-Fazk-AXqX-FruX-CaH0-EKg0', 'cb22e29d-68ed-11dd-b117-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('cb22e29d-68ed-11dd-b117-000e0c431b58-BtVY-FKq5-AYdo-FO0z-C5FY-EQjo', 'cb22e29d-68ed-11dd-b117-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('cb22e29d-68ed-11dd-b117-000e0c431b58-BWbU-FkSL-AVIp-FRAD-CquY-EF5F', 'cb22e29d-68ed-11dd-b117-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'антисептический состав', ''),
('cb22e29d-68ed-11dd-b117-000e0c431b58-BWlu-FZ0d-AnCP-FT1C-CeiY-Ehxc', 'cb22e29d-68ed-11dd-b117-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('cb22e29f-68ed-11dd-b117-000e0c431b58-Bc95-FtAN-Aj2Q-FYjb-CkuL-ElUr', 'cb22e29f-68ed-11dd-b117-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'антисептический состав', ''),
('cb22e29f-68ed-11dd-b117-000e0c431b58-BC9q-FucF-Axqs-FXLY-CUVl-Edjz', 'cb22e29f-68ed-11dd-b117-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('cb22e29f-68ed-11dd-b117-000e0c431b58-BKMI-FOOP-AYBY-FZkb-Cb8M-EsMu', 'cb22e29f-68ed-11dd-b117-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('cb22e29f-68ed-11dd-b117-000e0c431b58-BKtA-Fkfi-ALCH-FwOb-Cyhj-EhiE', 'cb22e29f-68ed-11dd-b117-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('cb22e29f-68ed-11dd-b117-000e0c431b58-BSHt-FBe5-AazQ-FBT1-C2Cy-EsKM', 'cb22e29f-68ed-11dd-b117-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('cb22e29f-68ed-11dd-b117-000e0c431b58-Bt92-FHXc-AjyZ-Fwhl-Cgjk-EMTC', 'cb22e29f-68ed-11dd-b117-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('cce4b552-7f46-11e3-af7c-005056be1f7b-B6Tm-FrU1-AywZ-FTct-CypE-EDyu', 'cce4b552-7f46-11e3-af7c-005056be1f7b', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('cce4b552-7f46-11e3-af7c-005056be1f7b-Bcfe-Ftjs-Aird-FusK-CkCg-E6Xm', 'cce4b552-7f46-11e3-af7c-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('cce4b552-7f46-11e3-af7c-005056be1f7b-BGih-FkTP-Au4S-FQyq-C3lM-EFbf', 'cce4b552-7f46-11e3-af7c-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('cce4b552-7f46-11e3-af7c-005056be1f7b-BgV2-F6pU-Apd0-Fthy-CeMn-Edrs', 'cce4b552-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('cce4b552-7f46-11e3-af7c-005056be1f7b-BMUP-FIql-AAO1-FPwZ-Cs20-EHxI', 'cce4b552-7f46-11e3-af7c-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('cce4b552-7f46-11e3-af7c-005056be1f7b-BPmg-F3gb-ATjR-FDOz-CIuL-EAq1', 'cce4b552-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('cce4b552-7f46-11e3-af7c-005056be1f7b-Bpz0-FfEv-A5xn-F56a-CC1u-EphE', 'cce4b552-7f46-11e3-af7c-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('cce4b552-7f46-11e3-af7c-005056be1f7b-BUWU-FUG2-AIkD-FwDv-CeTX-EAL5', 'cce4b552-7f46-11e3-af7c-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('cce4b552-7f46-11e3-af7c-005056be1f7b-BwgM-FzSQ-Alxj-F0yv-C4QQ-EX0z', 'cce4b552-7f46-11e3-af7c-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('cce7530f-27b6-11dd-942f-000e0c431b58-B63i-FKi2-A8RS-Fwys-CufE-EbWC', 'cce7530f-27b6-11dd-942f-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('cce7530f-27b6-11dd-942f-000e0c431b58-BBDn-F9bh-AQ2D-FMEh-CB0Z-EjK8', 'cce7530f-27b6-11dd-942f-000e0c431b58', '1d08380b-ce34-11e4-a80e-005056be1f7a', '23000', 'г'),
('cce7530f-27b6-11dd-942f-000e0c431b58-Bg3p-F6TT-AVuU-FN8b-C2fR-EjiD', 'cce7530f-27b6-11dd-942f-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('cce7530f-27b6-11dd-942f-000e0c431b58-BHBw-F0JK-A6tK-Fm3z-CnYr-ESTB', 'cce7530f-27b6-11dd-942f-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('cce7530f-27b6-11dd-942f-000e0c431b58-Bmpw-F83t-AYtO-FqTx-Ctay-Ega8', 'cce7530f-27b6-11dd-942f-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('cce7530f-27b6-11dd-942f-000e0c431b58-BqVr-F29j-Aql8-FY4R-Cag7-EMdy', 'cce7530f-27b6-11dd-942f-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ce1ffcf9-f78e-11e3-8c8a-005056be1f7b-B5KS-F70t-AzNK-F9K6-CjuW-Eapf', 'ce1ffcf9-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ce1ffcf9-f78e-11e3-8c8a-005056be1f7b-BAvc-Fx7B-Ac7Y-FcUK-COPU-EhMT', 'ce1ffcf9-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('ce1ffcf9-f78e-11e3-8c8a-005056be1f7b-Bka1-F6Jk-AF8x-FKjo-CAWA-EYww', 'ce1ffcf9-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ce1ffcf9-f78e-11e3-8c8a-005056be1f7b-BKiJ-FmRI-AugI-FnN5-Cd7J-EPE2', 'ce1ffcf9-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('ce1ffcf9-f78e-11e3-8c8a-005056be1f7b-BQBh-Fb0r-AWib-Ft0H-CO04-Erwz', 'ce1ffcf9-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ce1ffcf9-f78e-11e3-8c8a-005056be1f7b-BtOw-FHrH-AR7X-Fmdj-C7ul-EdLk', 'ce1ffcf9-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('ce1ffcf9-f78e-11e3-8c8a-005056be1f7b-BwVX-FZwg-AYfB-Fyb3-COaI-E7vl', 'ce1ffcf9-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красный', ''),
('ce813bcf-2257-11e1-ae36-001cc494be80-B87E-FqIF-Aq8d-FtfH-ClB6-EuJs', 'ce813bcf-2257-11e1-ae36-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ce813bcf-2257-11e1-ae36-001cc494be80-B8Lu-FAz3-AwTt-FLBA-CyXC-Eio3', 'ce813bcf-2257-11e1-ae36-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'интерьерная', ''),
('ce813bcf-2257-11e1-ae36-001cc494be80-Baiw-FnMV-AuCD-FnIv-Cd1Z-ErQn', 'ce813bcf-2257-11e1-ae36-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ce813bcf-2257-11e1-ae36-001cc494be80-BfxJ-FIxg-AFlT-FkNu-CTK7-EEKv', 'ce813bcf-2257-11e1-ae36-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('ce813bcf-2257-11e1-ae36-001cc494be80-BNh5-FqQa-Ax2b-Ftmk-Cb4y-Ewen', 'ce813bcf-2257-11e1-ae36-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1300', 'г'),
('ce813bcf-2257-11e1-ae36-001cc494be80-BROU-Fkzh-AUIr-FQM3-CCKz-EH18', 'ce813bcf-2257-11e1-ae36-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('ce813bcf-2257-11e1-ae36-001cc494be80-BsnN-FZOn-AvF6-FxO2-Cbo1-EFUy', 'ce813bcf-2257-11e1-ae36-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('ce813bcf-2257-11e1-ae36-001cc494be80-BVCt-FRz8-AIRm-F0W7-Cyxf-Elas', 'ce813bcf-2257-11e1-ae36-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ce813bd1-2257-11e1-ae36-001cc494be80-B0CD-FIt4-AlPb-FfOj-Cztw-EFWL', 'ce813bd1-2257-11e1-ae36-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ce813bd1-2257-11e1-ae36-001cc494be80-B0Zn-Fnh1-A9Qm-Fl1X-CBgt-EFAa', 'ce813bd1-2257-11e1-ae36-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('ce813bd1-2257-11e1-ae36-001cc494be80-B3f5-FDTl-AahW-F1iz-Cli3-Epql', 'ce813bd1-2257-11e1-ae36-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ce813bd1-2257-11e1-ae36-001cc494be80-B3pp-FQBV-AUYF-FeSP-CkRp-EO6M', 'ce813bd1-2257-11e1-ae36-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1300', 'г'),
('ce813bd1-2257-11e1-ae36-001cc494be80-BDFh-FZ7F-APho-FHMU-Ctvm-Ekva', 'ce813bd1-2257-11e1-ae36-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('ce813bd1-2257-11e1-ae36-001cc494be80-BeMQ-FnYw-AItK-FyqX-COvZ-EAdu', 'ce813bd1-2257-11e1-ae36-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('ce813bd1-2257-11e1-ae36-001cc494be80-BiS1-FAxF-Ajny-FWtL-Chlq-Ecp0', 'ce813bd1-2257-11e1-ae36-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'моющаяся', ''),
('ce813bd1-2257-11e1-ae36-001cc494be80-BpVD-Ferw-ApOY-FWqD-CWuJ-E4KG', 'ce813bd1-2257-11e1-ae36-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('cf6aa526-48b8-11dd-9342-000e0c431b58-B1wj-Fj1i-A1AL-F5fa-CTgV-EVsg', 'cf6aa526-48b8-11dd-9342-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('cf6aa526-48b8-11dd-9342-000e0c431b58-B6lX-FcI4-AFIC-FokB-CEBQ-En8H', 'cf6aa526-48b8-11dd-9342-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('cf6aa526-48b8-11dd-9342-000e0c431b58-BA6C-FMKO-AeZh-FRjS-C6A1-EPTQ', 'cf6aa526-48b8-11dd-9342-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('cf6aa526-48b8-11dd-9342-000e0c431b58-BahT-FTal-AcSt-FE0R-CJnD-EfOZ', 'cf6aa526-48b8-11dd-9342-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бронза', ''),
('cf6aa526-48b8-11dd-9342-000e0c431b58-BaPj-F61F-AJ9L-FlBZ-ChlD-E4q8', 'cf6aa526-48b8-11dd-9342-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('cf6aa526-48b8-11dd-9342-000e0c431b58-BjnW-FF4B-A5ah-Fhfm-C0Jj-Ec0Z', 'cf6aa526-48b8-11dd-9342-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('cf6aa526-48b8-11dd-9342-000e0c431b58-BkN7-FHef-AZaf-FQpz-Cgfm-EFFc', 'cf6aa526-48b8-11dd-9342-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('cf6aa526-48b8-11dd-9342-000e0c431b58-Bn7c-Fz19-APKe-FlfN-CHGb-EDN7', 'cf6aa526-48b8-11dd-9342-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('d0659fe4-f787-11e3-8c8a-005056be1f7b-BbOy-F6SW-AQxJ-F5zY-Cq5Z-EnmX', 'd0659fe4-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('d0659fe4-f787-11e3-8c8a-005056be1f7b-BCFX-FpKL-Aeca-Fiil-C5BC-EEoY', 'd0659fe4-f787-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('d0659fe4-f787-11e3-8c8a-005056be1f7b-BdbJ-FmV9-AAC4-Faqf-CxBz-E7Xv', 'd0659fe4-f787-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('d0659fe4-f787-11e3-8c8a-005056be1f7b-BDoa-F7EG-Ac3I-FRyf-CD2l-Eahv', 'd0659fe4-f787-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('d0659fe4-f787-11e3-8c8a-005056be1f7b-BFB8-Fr8r-Aru0-Fn9W-CofW-EMMM', 'd0659fe4-f787-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'зеленый', ''),
('d0659fe4-f787-11e3-8c8a-005056be1f7b-BlBN-FCkw-Anfy-Fqjc-CEmH-EeiM', 'd0659fe4-f787-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('d0659fe4-f787-11e3-8c8a-005056be1f7b-BVTI-FV7G-Aslm-FFyz-CRPD-EGKV', 'd0659fe4-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('d1aa2ade-a3ef-11e1-ad4e-005056be3bd8-B0c0-F159-AVLI-FCjX-CgJk-EDG7', 'd1aa2ade-a3ef-11e1-ad4e-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'COSMOFEN', ''),
('d1aa2ade-a3ef-11e1-ad4e-005056be3bd8-BcOs-Frvb-AnN1-Fb9f-CRJr-EXPd', 'd1aa2ade-a3ef-11e1-ad4e-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('d1aa2ade-a3ef-11e1-ad4e-005056be3bd8-BcyF-FyDu-Ak33-Flar-CXZJ-EXPE', 'd1aa2ade-a3ef-11e1-ad4e-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('d1aa2ade-a3ef-11e1-ad4e-005056be3bd8-BjMg-F8VZ-ArJW-FPow-CzHA-Ehyv', 'd1aa2ade-a3ef-11e1-ad4e-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('d1aa2ade-a3ef-11e1-ad4e-005056be3bd8-BOG1-FHrQ-AyEq-F9c7-CCxh-ETRL', 'd1aa2ade-a3ef-11e1-ad4e-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'очиститель', ''),
('d1aa2ade-a3ef-11e1-ad4e-005056be3bd8-BVlQ-Fdnz-A2K0-FbOF-CYq5-Eef8', 'd1aa2ade-a3ef-11e1-ad4e-005056be3bd8', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '1', 'л'),
('d1eaa4c2-f78f-11e3-8c8a-005056be1f7b-B14e-F0aB-Aim3-Fpdu-COXE-EEMg', 'd1eaa4c2-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('d1eaa4c2-f78f-11e3-8c8a-005056be1f7b-B5Tz-FycO-AiQL-FiWE-Cucb-EDWP', 'd1eaa4c2-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('d1eaa4c2-f78f-11e3-8c8a-005056be1f7b-BbTW-FA8X-AYmZ-F7rg-C5y8-EYzA', 'd1eaa4c2-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'зеленый', ''),
('d1eaa4c2-f78f-11e3-8c8a-005056be1f7b-BFWS-F4xx-AhPI-Fggi-CM2H-E23j', 'd1eaa4c2-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('d1eaa4c2-f78f-11e3-8c8a-005056be1f7b-BhPS-F8L0-AdGy-Faen-CbU0-ERap', 'd1eaa4c2-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('d1eaa4c2-f78f-11e3-8c8a-005056be1f7b-BUio-FBcD-AaP4-FIZu-Cy70-EG4L', 'd1eaa4c2-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('d1eaa4c2-f78f-11e3-8c8a-005056be1f7b-BzW1-FFpD-AH0q-F5YY-Cw1s-EJ1p', 'd1eaa4c2-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('d5823752-947b-11e3-8d88-005056be1f7b-B9nF-F5sw-AHt3-F4Jz-CwVa-EJxM', 'd5823752-947b-11e3-8d88-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('d5823752-947b-11e3-8d88-005056be1f7b-BfsZ-FQAr-Azdg-Frqx-CdNf-Exfl', 'd5823752-947b-11e3-8d88-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('d5823752-947b-11e3-8d88-005056be1f7b-Bfyn-FCgT-Az0h-FVwD-C8UC-E7BU', 'd5823752-947b-11e3-8d88-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '15000', 'г'),
('d5823752-947b-11e3-8d88-005056be1f7b-BgrT-FSGu-AdXJ-FSsd-Cz16-EF3R', 'd5823752-947b-11e3-8d88-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('d5823752-947b-11e3-8d88-005056be1f7b-Bh00-FqRr-AKHi-FGNa-CYsJ-Ey0J', 'd5823752-947b-11e3-8d88-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'штукатурка фактурная', ''),
('d5823752-947b-11e3-8d88-005056be1f7b-BhTt-Fc4T-Aahv-FZaL-CQZy-EVUh', 'd5823752-947b-11e3-8d88-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('d5823752-947b-11e3-8d88-005056be1f7b-BIbQ-FBVZ-A1Hv-FRRi-Cdz3-ENRv', 'd5823752-947b-11e3-8d88-005056be1f7b', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'декоративная с эффектом "шубы"', ''),
('d5823752-947b-11e3-8d88-005056be1f7b-BnMb-FMSp-AmrY-FwfY-C6BN-EiDt', 'd5823752-947b-11e3-8d88-005056be1f7b', '1ea6fcc4-d206-11e4-9be0-005056be1f7c', '0', 'мм'),
('d63bb09c-055c-11dd-b9c0-000e0c431b58-B0zH-FbY8-Arxb-FVLQ-CrZG-E2dx', 'd63bb09c-055c-11dd-b9c0-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('d63bb09c-055c-11dd-b9c0-000e0c431b58-B1Xv-FLZL-A06N-FBsH-CR4h-EKg8', 'd63bb09c-055c-11dd-b9c0-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('d63bb09c-055c-11dd-b9c0-000e0c431b58-BAyS-FT5N-AvwR-FAFn-CXFd-Eeg3', 'd63bb09c-055c-11dd-b9c0-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бесцветный', ''),
('d63bb09c-055c-11dd-b9c0-000e0c431b58-BcOp-F5j2-AKQR-FRIu-CFJj-EXce', 'd63bb09c-055c-11dd-b9c0-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('d63bb09c-055c-11dd-b9c0-000e0c431b58-BKa3-FmaA-AlRk-FyzF-CkPu-Eo6s', 'd63bb09c-055c-11dd-b9c0-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('d63bb09c-055c-11dd-b9c0-000e0c431b58-BKIP-Fu7F-AzhU-FkLQ-CSCo-EEOD', 'd63bb09c-055c-11dd-b9c0-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('d63bb09c-055c-11dd-b9c0-000e0c431b58-BlNR-F3OX-Agmc-F0H9-C2kM-Ehew', 'd63bb09c-055c-11dd-b9c0-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('d63bb09c-055c-11dd-b9c0-000e0c431b58-BPN9-FdOr-Akgl-FIrH-CG2Q-EWmM', 'd63bb09c-055c-11dd-b9c0-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('d63bb09c-055c-11dd-b9c0-000e0c431b58-BZpD-Fq8M-AbCV-FBax-CgBB-Ex5Q', 'd63bb09c-055c-11dd-b9c0-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная', ''),
('d72ce04c-7f46-11e3-af7c-005056be1f7b-BaNe-FAc0-AyuJ-FgBV-CDj7-ENz1', 'd72ce04c-7f46-11e3-af7c-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('d72ce04c-7f46-11e3-af7c-005056be1f7b-BikJ-FP5E-A7di-FXK6-Cyy1-EIBh', 'd72ce04c-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('d72ce04c-7f46-11e3-af7c-005056be1f7b-BjtI-F3A8-Ai3i-Fv80-CQSC-EiND', 'd72ce04c-7f46-11e3-af7c-005056be1f7b', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('d72ce04c-7f46-11e3-af7c-005056be1f7b-BnXu-Fw4v-AI8V-FELK-C6c8-EPSH', 'd72ce04c-7f46-11e3-af7c-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('d72ce04c-7f46-11e3-af7c-005056be1f7b-Bo6T-FMqR-AM7k-FOfy-CRKr-EQMh', 'd72ce04c-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('d72ce04c-7f46-11e3-af7c-005056be1f7b-Bp49-FBzR-AYlr-FT6r-Ciea-ErWb', 'd72ce04c-7f46-11e3-af7c-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('d72ce04c-7f46-11e3-af7c-005056be1f7b-BRwT-F1Kd-Av9S-FmHT-CJhh-EniA', 'd72ce04c-7f46-11e3-af7c-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('d72ce04c-7f46-11e3-af7c-005056be1f7b-BsDF-FBqN-AVzv-F3dT-C4Gr-En4l', 'd72ce04c-7f46-11e3-af7c-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('d72ce04c-7f46-11e3-af7c-005056be1f7b-BVCS-F5BG-Ap6W-F7TW-CvZ6-ET0O', 'd72ce04c-7f46-11e3-af7c-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('d76b7387-f78e-11e3-8c8a-005056be1f7b-B9kh-FCeq-AXsm-FzBM-Ccy5-Ehnq', 'd76b7387-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('d76b7387-f78e-11e3-8c8a-005056be1f7b-Bggp-FaTT-Atu6-Fmtk-C9Yo-EErg', 'd76b7387-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('d76b7387-f78e-11e3-8c8a-005056be1f7b-BhyB-FUSa-AwB4-FwnS-Cbm3-E9pW', 'd76b7387-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('d76b7387-f78e-11e3-8c8a-005056be1f7b-Bkcd-FgEM-AHDl-FvHS-CRSe-EIWE', 'd76b7387-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('d76b7387-f78e-11e3-8c8a-005056be1f7b-BKL1-FEkt-AmpJ-F9v4-CmSZ-ERts', 'd76b7387-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('d76b7387-f78e-11e3-8c8a-005056be1f7b-BpDF-FS3G-AeU5-FY3h-CFaW-EGuo', 'd76b7387-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('d76b7387-f78e-11e3-8c8a-005056be1f7b-BwrF-FzwA-ALVw-FdYb-CsdA-EmYo', 'd76b7387-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бирюзовый', ''),
('d9eaaa65-f78f-11e3-8c8a-005056be1f7b-B4c3-Fe0h-AfIa-Fj73-CBRb-E280', 'd9eaaa65-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('d9eaaa65-f78f-11e3-8c8a-005056be1f7b-BgtI-F7TF-AzUW-FRMT-CRss-E24P', 'd9eaaa65-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('d9eaaa65-f78f-11e3-8c8a-005056be1f7b-BgYj-FKh4-Aivz-Fhzh-CGtA-E9O0', 'd9eaaa65-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('d9eaaa65-f78f-11e3-8c8a-005056be1f7b-BMEo-FkWg-AFYU-F9yv-CC0s-EtsE', 'd9eaaa65-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-зеленый', ''),
('d9eaaa65-f78f-11e3-8c8a-005056be1f7b-Bmm1-Fvjz-AuTl-FgpA-CJ3E-Excb', 'd9eaaa65-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('d9eaaa65-f78f-11e3-8c8a-005056be1f7b-BubB-Fj02-AHGl-FHFz-CGmi-EPj3', 'd9eaaa65-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('d9eaaa65-f78f-11e3-8c8a-005056be1f7b-BUi1-Fpho-Abko-FJTX-CO70-EEri', 'd9eaaa65-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('da49edc1-58f9-11e0-894e-000e0c431b58-B2DM-FLen-AGQR-Fwbj-C9zT-EP94', 'da49edc1-58f9-11e0-894e-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('da49edc1-58f9-11e0-894e-000e0c431b58-B6dy-FdFK-AgZv-FGfJ-CZWN-Elhr', 'da49edc1-58f9-11e0-894e-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('da49edc1-58f9-11e0-894e-000e0c431b58-BauI-Folw-ABEi-FL04-CKiu-EhlV', 'da49edc1-58f9-11e0-894e-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('da49edc1-58f9-11e0-894e-000e0c431b58-BfkF-Fv0t-A0TT-FraX-Cet8-Eryo', 'da49edc1-58f9-11e0-894e-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('da49edc1-58f9-11e0-894e-000e0c431b58-BOhw-Fwsv-Aq4U-Fab6-Cvnp-ELRL', 'da49edc1-58f9-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('da49edc1-58f9-11e0-894e-000e0c431b58-BPo8-FgaZ-AGZP-FZoO-CTkr-EHDx', 'da49edc1-58f9-11e0-894e-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('da49edc1-58f9-11e0-894e-000e0c431b58-BSkM-FEqs-ANFE-Fbrl-CI8P-EGeq', 'da49edc1-58f9-11e0-894e-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('da49edc1-58f9-11e0-894e-000e0c431b58-BYtQ-FIkq-Af5h-FlWC-CTkj-EFXS', 'da49edc1-58f9-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('da49edc3-58f9-11e0-894e-000e0c431b58-B15S-Famr-AyyB-FvvI-CWwC-Egoe', 'da49edc3-58f9-11e0-894e-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('da49edc3-58f9-11e0-894e-000e0c431b58-B59o-FniW-AAn3-Fkq3-CcZt-EBRS', 'da49edc3-58f9-11e0-894e-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('da49edc3-58f9-11e0-894e-000e0c431b58-BA5J-F3cS-Ahdo-FHrY-CYd1-ERpq', 'da49edc3-58f9-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('da49edc3-58f9-11e0-894e-000e0c431b58-BN6N-FXqh-AsmZ-FXqD-CxAc-Ewye', 'da49edc3-58f9-11e0-894e-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'зеленый', ''),
('da49edc3-58f9-11e0-894e-000e0c431b58-Bs1j-F3ih-Aq7V-Fanl-CwBo-E8ad', 'da49edc3-58f9-11e0-894e-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('da49edc3-58f9-11e0-894e-000e0c431b58-Bwc4-FLzj-APmj-FrZX-CMT7-E8Hl', 'da49edc3-58f9-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('da49edc3-58f9-11e0-894e-000e0c431b58-BYDK-FZy7-AhLt-FkrX-CEgj-EC03', 'da49edc3-58f9-11e0-894e-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('da49edc3-58f9-11e0-894e-000e0c431b58-ByL8-FdSp-A2qJ-Fr9y-CYyt-EqPW', 'da49edc3-58f9-11e0-894e-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('da49edc5-58f9-11e0-894e-000e0c431b58-B0md-FwsE-AgDe-FBXZ-CP5W-E5jR', 'da49edc5-58f9-11e0-894e-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('da49edc5-58f9-11e0-894e-000e0c431b58-B4nm-F0EF-Avtp-FANh-Cq76-EmqT', 'da49edc5-58f9-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('da49edc5-58f9-11e0-894e-000e0c431b58-Bg8o-Fp5r-AfLR-F699-CcU5-ELrn', 'da49edc5-58f9-11e0-894e-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('da49edc5-58f9-11e0-894e-000e0c431b58-Bgkf-FHFj-APMB-FwFh-CH9L-Eu9P', 'da49edc5-58f9-11e0-894e-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('da49edc5-58f9-11e0-894e-000e0c431b58-BIdz-FSbN-AePB-FA9K-Cyqk-E1hl', 'da49edc5-58f9-11e0-894e-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'коричневый', ''),
('da49edc5-58f9-11e0-894e-000e0c431b58-BsX6-FuY5-A5Mk-FfDH-CGbh-E3gV', 'da49edc5-58f9-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('da49edc5-58f9-11e0-894e-000e0c431b58-BW7s-FXsy-A51w-FFku-CVae-EU5O', 'da49edc5-58f9-11e0-894e-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('da49edc5-58f9-11e0-894e-000e0c431b58-Bzt9-FetM-ACaJ-F8Cz-CQja-Ewrg', 'da49edc5-58f9-11e0-894e-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('da49edc7-58f9-11e0-894e-000e0c431b58-B4E1-FVhT-AguQ-FAr7-C2ao-ELgG', 'da49edc7-58f9-11e0-894e-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('da49edc7-58f9-11e0-894e-000e0c431b58-BcSu-FuWw-ABdV-FuyS-Cn4k-E3Ze', 'da49edc7-58f9-11e0-894e-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('da49edc7-58f9-11e0-894e-000e0c431b58-BFSP-Fg57-AnFR-FWPG-CemQ-Ejtu', 'da49edc7-58f9-11e0-894e-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('da49edc7-58f9-11e0-894e-000e0c431b58-BhcO-FWIu-AWWb-FlqH-CLVs-EKyH', 'da49edc7-58f9-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('da49edc7-58f9-11e0-894e-000e0c431b58-BkCf-Flhf-AcMz-Fqf0-COqP-ETqj', 'da49edc7-58f9-11e0-894e-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красно-коричневый', ''),
('da49edc7-58f9-11e0-894e-000e0c431b58-BtrT-FFcI-AXFB-F98b-Cdwf-ED36', 'da49edc7-58f9-11e0-894e-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('da49edc7-58f9-11e0-894e-000e0c431b58-BWKF-FGd4-AjAR-FECR-CGjt-EV73', 'da49edc7-58f9-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('da49edc7-58f9-11e0-894e-000e0c431b58-ByDk-FGaz-AM5c-FcdL-CM7d-E8q1', 'da49edc7-58f9-11e0-894e-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('da49edc9-58f9-11e0-894e-000e0c431b58-B8Fe-FdDY-A44Z-F6T6-CIhP-EBvD', 'da49edc9-58f9-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('da49edc9-58f9-11e0-894e-000e0c431b58-BdC8-F9BG-AODh-FYWb-C8jh-EKcL', 'da49edc9-58f9-11e0-894e-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('da49edc9-58f9-11e0-894e-000e0c431b58-BGlk-FfKx-Axp0-FeY6-CY5W-Eciu', 'da49edc9-58f9-11e0-894e-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серый', ''),
('da49edc9-58f9-11e0-894e-000e0c431b58-BH6T-FuEb-Ah87-FXeQ-CM9S-EJ7T', 'da49edc9-58f9-11e0-894e-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('da49edc9-58f9-11e0-894e-000e0c431b58-BNFN-F3o7-AdIn-FJHw-C4fz-EgTz', 'da49edc9-58f9-11e0-894e-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('da49edc9-58f9-11e0-894e-000e0c431b58-BOT3-FNyQ-AIMK-Feot-CPvW-EE56', 'da49edc9-58f9-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('da49edc9-58f9-11e0-894e-000e0c431b58-BR4Q-FcY5-ALop-Fitk-Ceqq-E0Jt', 'da49edc9-58f9-11e0-894e-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('da49edc9-58f9-11e0-894e-000e0c431b58-BYDn-Fx08-AtIe-F9JP-CCbJ-ES4i', 'da49edc9-58f9-11e0-894e-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('da49edcb-58f9-11e0-894e-000e0c431b58-B8BE-FGxF-AHDb-FNKl-CSXy-EI7s', 'da49edcb-58f9-11e0-894e-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('da49edcb-58f9-11e0-894e-000e0c431b58-BdU2-FLTW-AOXc-F3NP-CxRn-EZ8e', 'da49edcb-58f9-11e0-894e-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный', ''),
('da49edcb-58f9-11e0-894e-000e0c431b58-BEIe-FujM-AyB2-F6in-CyLg-EuPn', 'da49edcb-58f9-11e0-894e-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('da49edcb-58f9-11e0-894e-000e0c431b58-BKzy-FHAC-ASNp-FasE-CcpG-Ehv4', 'da49edcb-58f9-11e0-894e-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('da49edcb-58f9-11e0-894e-000e0c431b58-Bm37-FEGH-ApYe-Fehb-CNsQ-EBzQ', 'da49edcb-58f9-11e0-894e-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('da49edcb-58f9-11e0-894e-000e0c431b58-BMN1-Fi5C-A3F7-FLOL-CNmH-EeZC', 'da49edcb-58f9-11e0-894e-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('da49edcb-58f9-11e0-894e-000e0c431b58-BVF2-Fx9F-ADwW-FqLT-CL5S-EJOC', 'da49edcb-58f9-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('da49edcb-58f9-11e0-894e-000e0c431b58-BX7Q-Fw5d-AlCJ-FvBA-CPWG-EHJE', 'da49edcb-58f9-11e0-894e-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ddd32665-666b-11dc-be42-000e0c431b58-BaLt-Ficb-AoKc-Fi40-CrJZ-Ery8', 'ddd32665-666b-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('ddd32665-666b-11dc-be42-000e0c431b58-BcCA-F6k5-A5RD-FT03-CRDD-EHbS', 'ddd32665-666b-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('ddd32665-666b-11dc-be42-000e0c431b58-BELz-FXPo-AMPk-FOYM-CSzY-EBY1', 'ddd32665-666b-11dc-be42-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для обоев', ''),
('ddd32665-666b-11dc-be42-000e0c431b58-BHNI-FpBR-AjpH-FQsF-CrA4-EtgI', 'ddd32665-666b-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('ddd32665-666b-11dc-be42-000e0c431b58-Bj8n-FjQK-ArLh-FyJ5-Co1r-EC8a', 'ddd32665-666b-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ddd32665-666b-11dc-be42-000e0c431b58-BPZA-FoiW-AX2T-FDyy-CA7C-EJlD', 'ddd32665-666b-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ddd32665-666b-11dc-be42-000e0c431b58-BqwY-FHtQ-A1lN-FaeX-Cm3P-EfUK', 'ddd32665-666b-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('ddd32665-666b-11dc-be42-000e0c431b58-BSyB-FfOg-A42Y-FIWs-CT7q-E7f7', 'ddd32665-666b-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ddd32665-666b-11dc-be42-000e0c431b58-BX33-Fc5E-AndA-FShH-C6XG-E8Wz', 'ddd32665-666b-11dc-be42-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('ddd32665-666b-11dc-be42-000e0c431b58-Bz0B-F0tt-Aaia-F72s-C28k-E4JM', 'ddd32665-666b-11dc-be42-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('ddd3266a-666b-11dc-be42-000e0c431b58-B0lW-FzpX-A7xA-Ff88-C7gm-E3Qw', 'ddd3266a-666b-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ddd3266a-666b-11dc-be42-000e0c431b58-Bbct-FwC6-ACV8-FrZM-CupZ-EtJo', 'ddd3266a-666b-11dc-be42-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('ddd3266a-666b-11dc-be42-000e0c431b58-BbtL-FC33-AK0t-FaVW-Cmxy-EWj1', 'ddd3266a-666b-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('ddd3266a-666b-11dc-be42-000e0c431b58-Bio7-FuJy-Afg9-F4EZ-CmPS-EZrD', 'ddd3266a-666b-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('ddd3266a-666b-11dc-be42-000e0c431b58-BJcX-FJ8V-AH52-FtwH-Cfc4-ExGi', 'ddd3266a-666b-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('ddd3266a-666b-11dc-be42-000e0c431b58-BK4w-Fcvk-A4Sz-FEBH-CHmi-EK8a', 'ddd3266a-666b-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная', ''),
('ddd3266a-666b-11dc-be42-000e0c431b58-BlbC-FU3Y-ArfL-Ff2v-CWKY-Eias', 'ddd3266a-666b-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ddd3266a-666b-11dc-be42-000e0c431b58-BqvS-FopW-ADRl-FVqT-CZq5-Evgk', 'ddd3266a-666b-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('ddd3266a-666b-11dc-be42-000e0c431b58-BSmM-FQUm-AcER-F3xa-ChOK-EsRD', 'ddd3266a-666b-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ddd3266c-666b-11dc-be42-000e0c431b58-Bcg9-FvrI-AMcc-FxDi-C5Mt-E8j6', 'ddd3266c-666b-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ddd3266c-666b-11dc-be42-000e0c431b58-BiGz-FOPD-AdU0-FaFP-CZSb-E6BU', 'ddd3266c-666b-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('ddd3266c-666b-11dc-be42-000e0c431b58-BILC-FXLu-AHwl-FUum-CfDu-EkOl', 'ddd3266c-666b-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ddd3266c-666b-11dc-be42-000e0c431b58-Bkcf-F2K8-Aezx-Fq5e-COcl-EDq2', 'ddd3266c-666b-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('ddd3266c-666b-11dc-be42-000e0c431b58-BKK1-Fvgh-AF6O-FAru-Ck2N-E9AL', 'ddd3266c-666b-11dc-be42-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('ddd3266c-666b-11dc-be42-000e0c431b58-BNMg-Fs3p-AbKQ-Frbn-Co1M-EEri', 'ddd3266c-666b-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ddd3266c-666b-11dc-be42-000e0c431b58-Bsrr-FTBb-A7hf-FqIt-CSkP-EQW8', 'ddd3266c-666b-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная', ''),
('ddd3266c-666b-11dc-be42-000e0c431b58-BTHF-FK22-ASWT-FLJa-CuUk-ElFH', 'ddd3266c-666b-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('ddd3266c-666b-11dc-be42-000e0c431b58-BYjZ-F2Wd-AZQp-FIOP-CE77-EvQ9', 'ddd3266c-666b-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('ddd32674-666b-11dc-be42-000e0c431b58-B7GW-FK1p-AWE7-FPjA-CcTp-EfzJ', 'ddd32674-666b-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ddd32674-666b-11dc-be42-000e0c431b58-B9qR-FvTO-Alzw-FzyX-CPch-E8Wy', 'ddd32674-666b-11dc-be42-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('ddd32674-666b-11dc-be42-000e0c431b58-BG18-FBNw-A6Bh-F7Lc-CxBu-EuxS', 'ddd32674-666b-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ddd32674-666b-11dc-be42-000e0c431b58-Bkwk-FR5u-AfkB-FjNT-C1mg-EJjq', 'ddd32674-666b-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('ddd32674-666b-11dc-be42-000e0c431b58-BmWJ-FpYh-AG6O-FuSM-CNR4-EfDN', 'ddd32674-666b-11dc-be42-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('ddd32674-666b-11dc-be42-000e0c431b58-BPkT-FFCz-Auoq-FHKN-CpQE-EnRR', 'ddd32674-666b-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('ddd32674-666b-11dc-be42-000e0c431b58-BtpC-Ffe1-A4tT-Fbrp-CPTC-EY0b', 'ddd32674-666b-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('ddd32674-666b-11dc-be42-000e0c431b58-BVs4-FoKk-AUZ5-FWy5-CxvA-EK62', 'ddd32674-666b-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ddd32674-666b-11dc-be42-000e0c431b58-BZNS-F7Je-AZ8f-FJrT-Cc84-EvC6', 'ddd32674-666b-11dc-be42-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для обоев', ''),
('ddd32674-666b-11dc-be42-000e0c431b58-BzR7-Fwhf-AwAz-Fcgo-Cm2X-Efgh', 'ddd32674-666b-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('ddd32676-666b-11dc-be42-000e0c431b58-B0Fd-FkYw-AjGG-Fudg-CEjT-EfHg', 'ddd32676-666b-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '5', 'л'),
('ddd32676-666b-11dc-be42-000e0c431b58-BBLn-FFIt-AXIc-Favy-CvPI-ERM6', 'ddd32676-666b-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ddd32676-666b-11dc-be42-000e0c431b58-BdTf-F8xz-A08x-FAw5-CK6e-E5Xa', 'ddd32676-666b-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ddd32676-666b-11dc-be42-000e0c431b58-BF2B-FMme-AsqE-FCML-Ci6p-EDHn', 'ddd32676-666b-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('ddd32676-666b-11dc-be42-000e0c431b58-BFxb-FhNN-AW0c-FeQp-CaX3-ETRF', 'ddd32676-666b-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ddd32676-666b-11dc-be42-000e0c431b58-BGM4-F4Np-AyYl-FSS0-CsUL-EWZT', 'ddd32676-666b-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('ddd32676-666b-11dc-be42-000e0c431b58-BJju-Fc6G-AxND-F7FS-C0sC-EnWV', 'ddd32676-666b-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('ddd32676-666b-11dc-be42-000e0c431b58-Bmtn-FnT1-A8Jd-FdTC-CK8B-EyHJ', 'ddd32676-666b-11dc-be42-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('ddd32676-666b-11dc-be42-000e0c431b58-Bo9n-FJIV-AckS-FVWV-CR8I-E3OD', 'ddd32676-666b-11dc-be42-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('ddd32676-666b-11dc-be42-000e0c431b58-Btdf-FM9w-A2YJ-Ftsa-Czrg-ETR5', 'ddd32676-666b-11dc-be42-000e0c431b58', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для обоев', ''),
('de1409cf-f787-11e3-8c8a-005056be1f7b-BhpR-FL2q-AIQy-FkpX-CY1T-EtcR', 'de1409cf-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('de1409cf-f787-11e3-8c8a-005056be1f7b-BK7S-Fzbw-AnKn-FMPk-CyxP-EF9H', 'de1409cf-f787-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('de1409cf-f787-11e3-8c8a-005056be1f7b-BL7U-Fm8a-AdBp-Feey-Ct1i-EF8l', 'de1409cf-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('de1409cf-f787-11e3-8c8a-005056be1f7b-Bpd5-FSqK-A3e8-FIk7-CPWD-En8v', 'de1409cf-f787-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('de1409cf-f787-11e3-8c8a-005056be1f7b-Bq63-FkOs-A7ys-FQqi-CAVB-E5os', 'de1409cf-f787-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('de1409cf-f787-11e3-8c8a-005056be1f7b-BwHX-FkrC-A9G4-FS1W-CjAT-E3zu', 'de1409cf-f787-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('de1409cf-f787-11e3-8c8a-005056be1f7b-BWuW-FGCb-Aspo-FMZ7-CYHb-EYjy', 'de1409cf-f787-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-зеленый', ''),
('de9b7b14-7f46-11e3-af7c-005056be1f7b-B7WV-Fe2f-A8oA-FAf3-C5PG-ELFE', 'de9b7b14-7f46-11e3-af7c-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('de9b7b14-7f46-11e3-af7c-005056be1f7b-BA3s-FMv0-Arv0-FQ2A-CfKX-EjPm', 'de9b7b14-7f46-11e3-af7c-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('de9b7b14-7f46-11e3-af7c-005056be1f7b-BIou-Fxug-AVbr-F7ro-Cnrg-EW4R', 'de9b7b14-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('de9b7b14-7f46-11e3-af7c-005056be1f7b-BmOK-FUK2-A9xi-FfJc-CxfD-E125', 'de9b7b14-7f46-11e3-af7c-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('de9b7b14-7f46-11e3-af7c-005056be1f7b-BTWE-FEPi-AYIp-FFvi-CqLk-EP7q', 'de9b7b14-7f46-11e3-af7c-005056be1f7b', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('de9b7b14-7f46-11e3-af7c-005056be1f7b-BuOQ-F19M-ALUR-FKaJ-C5DX-EEXh', 'de9b7b14-7f46-11e3-af7c-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('de9b7b14-7f46-11e3-af7c-005056be1f7b-BWlD-FV25-AWWF-Ft7V-CWE0-EG3t', 'de9b7b14-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('de9b7b14-7f46-11e3-af7c-005056be1f7b-BYRZ-Fpb1-AyW4-FMaR-CuWo-EF2f', 'de9b7b14-7f46-11e3-af7c-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('de9b7b14-7f46-11e3-af7c-005056be1f7b-BZBj-FvGu-A6BM-F3Qe-CA0i-EFBO', 'de9b7b14-7f46-11e3-af7c-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('df210450-93af-11e3-82a4-005056be1f7b-B0ba-FsNC-AAhy-FWq1-CgKR-E8OH', 'df210450-93af-11e3-82a4-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('df210450-93af-11e3-82a4-005056be1f7b-BcJc-Ft3T-ALwJ-FFHr-CMeQ-E2pL', 'df210450-93af-11e3-82a4-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('df210450-93af-11e3-82a4-005056be1f7b-Bdbb-FEzQ-AUeR-F1xd-CT2t-EHLK', 'df210450-93af-11e3-82a4-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('df210450-93af-11e3-82a4-005056be1f7b-BKEy-FPwU-AaRk-FXyQ-CoBf-ESMc', 'df210450-93af-11e3-82a4-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желтый', ''),
('df210450-93af-11e3-82a4-005056be1f7b-BMrm-FrAC-Abbq-Fufz-Cc80-E6r2', 'df210450-93af-11e3-82a4-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('df210450-93af-11e3-82a4-005056be1f7b-BO4o-FX9v-AFLP-FVC5-CgOm-EJ7m', 'df210450-93af-11e3-82a4-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('df210450-93af-11e3-82a4-005056be1f7b-BOjm-FfZZ-A0tR-Ft1c-C414-EUiG', 'df210450-93af-11e3-82a4-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('df210450-93af-11e3-82a4-005056be1f7b-BXio-FL6V-ABbf-FTZt-CbnS-EDJs', 'df210450-93af-11e3-82a4-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('df2d81cd-f78e-11e3-8c8a-005056be1f7b-B60Z-FEUS-AsTX-FOy9-CEDV-EchK', 'df2d81cd-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('df2d81cd-f78e-11e3-8c8a-005056be1f7b-Bjsy-FG4I-AvLJ-FV4n-C0Ff-Eelz', 'df2d81cd-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('df2d81cd-f78e-11e3-8c8a-005056be1f7b-BKGn-FuM3-AZyh-FLUo-CRBj-Erdo', 'df2d81cd-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'зеленый', ''),
('df2d81cd-f78e-11e3-8c8a-005056be1f7b-BL2e-FgTu-AwiO-FaXq-CDhx-EqS0', 'df2d81cd-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('df2d81cd-f78e-11e3-8c8a-005056be1f7b-BNrB-Fgqj-AHoq-Fbb4-CoW3-EDbM', 'df2d81cd-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('df2d81cd-f78e-11e3-8c8a-005056be1f7b-BPXX-Fdyv-AK2S-F9hl-C9GT-EwNN', 'df2d81cd-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('df2d81cd-f78e-11e3-8c8a-005056be1f7b-BWKg-FtYV-AscY-FE66-COIn-EQoU', 'df2d81cd-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('e017a0ce-f78d-11e3-8c8a-005056be1f7b-BlIb-Flmn-A5Dn-FvCa-Cms9-EmNp', 'e017a0ce-f78d-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e017a0ce-f78d-11e3-8c8a-005056be1f7b-BphA-FerL-AdYF-FjbL-CfNS-EoG5', 'e017a0ce-f78d-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e017a0ce-f78d-11e3-8c8a-005056be1f7b-BQlW-FpA7-ATGU-FnPm-CO70-ElXu', 'e017a0ce-f78d-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('e017a0ce-f78d-11e3-8c8a-005056be1f7b-BqWX-Faux-ASC1-FRwf-C4JE-EiKZ', 'e017a0ce-f78d-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('e017a0ce-f78d-11e3-8c8a-005056be1f7b-BwHJ-F4l8-ABh0-FeMT-Ca01-E0w2', 'e017a0ce-f78d-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'оранжевый', ''),
('e017a0ce-f78d-11e3-8c8a-005056be1f7b-BXjp-FAUr-Ab8Z-FZkn-CFYU-EJRk', 'e017a0ce-f78d-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e017a0ce-f78d-11e3-8c8a-005056be1f7b-BxrE-F4Qg-AEwu-FXa2-CSC0-Etol', 'e017a0ce-f78d-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('e12e57a9-f78f-11e3-8c8a-005056be1f7b-BB7o-FDvV-AyiG-FpQN-C5MW-ELYF', 'e12e57a9-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'синий', ''),
('e12e57a9-f78f-11e3-8c8a-005056be1f7b-BFaK-F86o-Aute-FRXy-CNJz-EeQ4', 'e12e57a9-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('e12e57a9-f78f-11e3-8c8a-005056be1f7b-BfVE-Fd5d-AwMo-Fy1l-CW2h-EA5S', 'e12e57a9-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e12e57a9-f78f-11e3-8c8a-005056be1f7b-BQFF-FF0g-AZ4o-FA8H-CsCi-E4Ae', 'e12e57a9-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('e12e57a9-f78f-11e3-8c8a-005056be1f7b-BrRL-FVGB-A8c3-Fedx-Cx1g-EoT7', 'e12e57a9-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('e12e57a9-f78f-11e3-8c8a-005056be1f7b-BwAQ-FGDw-AzMy-F5aT-C4Hl-EEds', 'e12e57a9-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e12e57a9-f78f-11e3-8c8a-005056be1f7b-BWt1-FdZH-AqUU-FDgt-CIBE-ENf0', 'e12e57a9-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e213c98a-ccbb-11e4-a1f9-005056be1f7b-B2ae-FSim-AfP8-FAVu-CoaX-ENM6', 'e213c98a-ccbb-11e4-a1f9-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e213c98a-ccbb-11e4-a1f9-005056be1f7b-BbiZ-Foz1-AaOp-FlTc-CBK4-Efdb', 'e213c98a-ccbb-11e4-a1f9-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e213c98a-ccbb-11e4-a1f9-005056be1f7b-BH9q-FE0B-Aznb-FM2o-CITN-Eh9D', 'e213c98a-ccbb-11e4-a1f9-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e213c98a-ccbb-11e4-a1f9-005056be1f7b-Bii1-FAus-Ap4C-F4aA-C7zZ-EO4Z', 'e213c98a-ccbb-11e4-a1f9-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '400', 'г'),
('e213c98a-ccbb-11e4-a1f9-005056be1f7b-BYZR-FDAk-AgBv-FZgO-C1oN-EhsM', 'e213c98a-ccbb-11e4-a1f9-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'сольвент', ''),
('e242e97f-f29b-11dd-9439-000e0c431b58-BdCd-FJpv-A3AR-FHDv-C3uL-EWEy', 'e242e97f-f29b-11dd-9439-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('e242e97f-f29b-11dd-9439-000e0c431b58-BGRE-F75U-AGgM-FO2t-CFAY-E3M5', 'e242e97f-f29b-11dd-9439-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('e242e97f-f29b-11dd-9439-000e0c431b58-BhXr-F7RP-AKBd-FVx2-CZ5K-EUYY', 'e242e97f-f29b-11dd-9439-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('e242e97f-f29b-11dd-9439-000e0c431b58-BIow-FLf5-AlmM-FRSe-C63e-E2QO', 'e242e97f-f29b-11dd-9439-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная всесезонная', ''),
('e242e97f-f29b-11dd-9439-000e0c431b58-Bk06-FXuP-AAzz-FnQK-Cm2H-EVg2', 'e242e97f-f29b-11dd-9439-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e242e97f-f29b-11dd-9439-000e0c431b58-BKQB-FHh9-A5R1-FrVq-CT4D-EBzU', 'e242e97f-f29b-11dd-9439-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('e242e97f-f29b-11dd-9439-000e0c431b58-Bl8t-Fptx-AH6D-F1HZ-CHSq-EpSo', 'e242e97f-f29b-11dd-9439-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e242e97f-f29b-11dd-9439-000e0c431b58-BmDr-FzSj-AjYk-F9Qw-C3Dl-EZCr', 'e242e97f-f29b-11dd-9439-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('e242e97f-f29b-11dd-9439-000e0c431b58-BQ0W-FuVJ-AmuD-FwEc-CLPs-EMWQ', 'e242e97f-f29b-11dd-9439-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('e242e97f-f29b-11dd-9439-000e0c431b58-Bwyh-F0Fz-AdBs-F949-CNAQ-ER8K', 'e242e97f-f29b-11dd-9439-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e2e51024-e980-11e4-ab92-005056be1f7b-B6ll-F41l-AN91-FX5S-CLhA-EWHc', 'e2e51024-e980-11e4-ab92-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e2e51024-e980-11e4-ab92-005056be1f7b-BDs1-Fiym-AAM9-FP0T-CIPK-E6by', 'e2e51024-e980-11e4-ab92-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e2e51024-e980-11e4-ab92-005056be1f7b-BjvX-F0pd-Ag36-Fx6E-CsOe-EfjR', 'e2e51024-e980-11e4-ab92-005056be1f7b', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('e2e51024-e980-11e4-ab92-005056be1f7b-BnrK-FjcC-AGfU-FL83-CcBl-ESkZ', 'e2e51024-e980-11e4-ab92-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('e2e51024-e980-11e4-ab92-005056be1f7b-BQ2w-FLos-AQW7-Fv2g-CCRF-EbiQ', 'e2e51024-e980-11e4-ab92-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e2e51024-e980-11e4-ab92-005056be1f7b-BSaw-FVw5-A9H3-FnM2-CY37-EL8S', 'e2e51024-e980-11e4-ab92-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('e2e51024-e980-11e4-ab92-005056be1f7b-BZiZ-FRLm-AJje-FFvc-CYVO-EwU4', 'e2e51024-e980-11e4-ab92-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('e2e51024-e980-11e4-ab92-005056be1f7b-BzN7-Fqk1-A9wY-F9If-Cbit-EZRI', 'e2e51024-e980-11e4-ab92-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('e2e51024-e980-11e4-ab92-005056be1f7b-BZN9-FtZ6-Am27-FNKg-CmGH-EOA8', 'e2e51024-e980-11e4-ab92-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('e39c5eb8-24d0-11e2-8158-005056be3bd8-BEcO-FXIf-A508-FMeD-Czqq-EniB', 'e39c5eb8-24d0-11e2-8158-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e39c5eb8-24d0-11e2-8158-005056be3bd8-BEw6-Femq-Aq70-FnHF-CeMi-Esjq', 'e39c5eb8-24d0-11e2-8158-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('e39c5eb8-24d0-11e2-8158-005056be3bd8-BkZu-FjD3-AphE-FNQo-C4eI-Ejqz', 'e39c5eb8-24d0-11e2-8158-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('e39c5eb8-24d0-11e2-8158-005056be3bd8-BMmy-F3Ua-AN5Z-F1uM-CTS7-ELG1', 'e39c5eb8-24d0-11e2-8158-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e39c5eb8-24d0-11e2-8158-005056be3bd8-BOep-FMrK-APg1-F7KZ-C8OL-E4sy', 'e39c5eb8-24d0-11e2-8158-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e39c5eb8-24d0-11e2-8158-005056be3bd8-Bt7W-Fk4g-A02u-FLud-CAU4-Eu57', 'e39c5eb8-24d0-11e2-8158-005056be3bd8', '1d08380b-ce34-11e4-a80e-005056be1f7a', '200000', 'г'),
('e4020814-4598-11e1-8212-001cc494be80-B1cJ-Fyjw-AuQS-FhRO-Ctc7-EakJ', 'e4020814-4598-11e1-8212-001cc494be80', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для ванной', ''),
('e4020814-4598-11e1-8212-001cc494be80-B2iv-F9AA-AMmb-FCLf-CfXC-EB9j', 'e4020814-4598-11e1-8212-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e4020814-4598-11e1-8212-001cc494be80-B32U-FaXJ-Avf8-FeAN-CV2v-EH1w', 'e4020814-4598-11e1-8212-001cc494be80', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('e4020814-4598-11e1-8212-001cc494be80-B8XX-FcHW-AS6G-FbOO-Claz-EjEc', 'e4020814-4598-11e1-8212-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e4020814-4598-11e1-8212-001cc494be80-BfrY-Ft4j-A0bl-FrWG-Cwjh-E3Xa', 'e4020814-4598-11e1-8212-001cc494be80', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('e4020814-4598-11e1-8212-001cc494be80-BGqz-FGtD-Adiw-FlFc-CylK-EMUE', 'e4020814-4598-11e1-8212-001cc494be80', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('e4020814-4598-11e1-8212-001cc494be80-BI6s-FrCY-AH5L-FjMj-CICB-ES1k', 'e4020814-4598-11e1-8212-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('e4020814-4598-11e1-8212-001cc494be80-BKsr-FHNr-AVij-FGpZ-C3xc-ERXi', 'e4020814-4598-11e1-8212-001cc494be80', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'для кухни', ''),
('e4020814-4598-11e1-8212-001cc494be80-BLl8-Fnmm-AdDZ-F0VR-CPqn-EDxl', 'e4020814-4598-11e1-8212-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e4020814-4598-11e1-8212-001cc494be80-BMhg-Flg2-A3vh-FgzV-CHxs-EfQ1', 'e4020814-4598-11e1-8212-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('e4020814-4598-11e1-8212-001cc494be80-BvTf-FXA3-Adxb-FBpz-Cbwg-ER3P', 'e4020814-4598-11e1-8212-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('e545e44e-298d-11e2-8829-005056be3bd8-BfQr-Fuv9-AqH0-Fjyl-CVCM-E9A0', 'e545e44e-298d-11e2-8829-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('e545e44e-298d-11e2-8829-005056be3bd8-Bh1s-FDwh-Acs2-FIX7-CjAq-EIoA', 'e545e44e-298d-11e2-8829-005056be3bd8', '1d08380b-ce34-11e4-a80e-005056be1f7a', '23000', 'г'),
('e545e44e-298d-11e2-8829-005056be3bd8-Bnjd-Fsxu-AWrO-FfR6-CVA3-Erlw', 'e545e44e-298d-11e2-8829-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e545e44e-298d-11e2-8829-005056be3bd8-BNln-F9wY-Abws-FUhn-CRLN-Ev4A', 'e545e44e-298d-11e2-8829-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e545e44e-298d-11e2-8829-005056be3bd8-Bnui-FnTX-AOpZ-FbnZ-CaA2-ENGo', 'e545e44e-298d-11e2-8829-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('e545e44e-298d-11e2-8829-005056be3bd8-BXbw-FFwU-AtDf-F7zZ-C7Up-EoEb', 'e545e44e-298d-11e2-8829-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e545e450-298d-11e2-8829-005056be3bd8-B7Uh-Fop7-AoYb-FfbI-CkhM-ElTV', 'e545e450-298d-11e2-8829-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e545e450-298d-11e2-8829-005056be3bd8-BFDA-FwJx-AbBX-FH5v-ClM0-EkWU', 'e545e450-298d-11e2-8829-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e545e450-298d-11e2-8829-005056be3bd8-Biu2-Fx43-AWYT-FpRg-C2bS-EfGm', 'e545e450-298d-11e2-8829-005056be3bd8', '1d08380b-ce34-11e4-a80e-005056be1f7a', '10000', 'г'),
('e545e450-298d-11e2-8829-005056be3bd8-BKvo-FoTq-AgMq-FsmU-Cj9n-E1xc', 'e545e450-298d-11e2-8829-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('e545e450-298d-11e2-8829-005056be3bd8-BWTQ-Fyyr-A8ZP-FJAi-CfaT-E3NL', 'e545e450-298d-11e2-8829-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e545e450-298d-11e2-8829-005056be3bd8-BZuX-Fw2R-Aice-FhC2-C30L-Eao2', 'e545e450-298d-11e2-8829-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('e63d2bae-f78d-11e3-8c8a-005056be1f7b-B6qe-FVhx-AoyX-Fo9b-CmnH-EoNl', 'e63d2bae-f78d-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желтый', ''),
('e63d2bae-f78d-11e3-8c8a-005056be1f7b-BcIs-Fy8z-Atei-FMXn-C7TU-Eap2', 'e63d2bae-f78d-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e63d2bae-f78d-11e3-8c8a-005056be1f7b-BCqS-FU2f-A1oL-FeIq-CFc5-ELUV', 'e63d2bae-f78d-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e63d2bae-f78d-11e3-8c8a-005056be1f7b-BL7X-FXag-ADg0-F9rU-CUVK-ECx1', 'e63d2bae-f78d-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('e63d2bae-f78d-11e3-8c8a-005056be1f7b-Bo1s-Fbpf-A4Wh-FouL-CXw3-EpGt', 'e63d2bae-f78d-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('e63d2bae-f78d-11e3-8c8a-005056be1f7b-BOTq-Fl8o-ADjS-FKNf-Cwqn-Eeel', 'e63d2bae-f78d-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e63d2bae-f78d-11e3-8c8a-005056be1f7b-BTOF-F3ad-AfWw-Fzxb-CrCv-EXns', 'e63d2bae-f78d-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('e755f307-f787-11e3-8c8a-005056be1f7b-B0VX-FWe9-AnDR-FyEO-C1Is-EGKn', 'e755f307-f787-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('e755f307-f787-11e3-8c8a-005056be1f7b-BD8C-F410-A0C5-F6k4-CZ54-Ente', 'e755f307-f787-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'синий', ''),
('e755f307-f787-11e3-8c8a-005056be1f7b-BEeQ-FB6J-As1P-FGGO-CQxZ-Eovh', 'e755f307-f787-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e755f307-f787-11e3-8c8a-005056be1f7b-BNqU-F2wb-ANNQ-F88l-CrAj-Eu5Z', 'e755f307-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e755f307-f787-11e3-8c8a-005056be1f7b-BQ3d-Fg9j-AuPX-FJ4J-Cr3e-EFO9', 'e755f307-f787-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('e755f307-f787-11e3-8c8a-005056be1f7b-BrLX-F8IV-Aj1W-FJkR-CiTL-EB7B', 'e755f307-f787-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('e755f307-f787-11e3-8c8a-005056be1f7b-Bt5c-FnzC-AhP8-Fa3r-C6GX-EP9K', 'e755f307-f787-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e7f145bb-f78f-11e3-8c8a-005056be1f7b-B8EG-Fytn-AevS-FFUP-CZfR-EpQI', 'e7f145bb-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'голубой', ''),
('e7f145bb-f78f-11e3-8c8a-005056be1f7b-Bh0m-FigB-AssR-FC6n-CB4s-EHsc', 'e7f145bb-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e7f145bb-f78f-11e3-8c8a-005056be1f7b-BH6x-Fr1A-Aumj-F97y-CauV-EG76', 'e7f145bb-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('e7f145bb-f78f-11e3-8c8a-005056be1f7b-BPfR-FSGp-Am1k-F6MD-CvjO-EUOb', 'e7f145bb-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e7f145bb-f78f-11e3-8c8a-005056be1f7b-BvMN-FESi-ATsD-FlXU-Ct5T-EWdz', 'e7f145bb-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e7f145bb-f78f-11e3-8c8a-005056be1f7b-BXLi-FoNe-ASOX-FBVF-CeHR-ErLj', 'e7f145bb-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('e7f145bb-f78f-11e3-8c8a-005056be1f7b-Byhq-FMjC-ARDJ-FjuU-CJA1-EbS8', 'e7f145bb-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('e8976171-93af-11e3-82a4-005056be1f7b-BAoA-F5md-AeSo-FEzN-CENM-ED9p', 'e8976171-93af-11e3-82a4-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2', 'л'),
('e8976171-93af-11e3-82a4-005056be1f7b-BdCH-FJQm-ABwJ-FMTj-C85c-EUNN', 'e8976171-93af-11e3-82a4-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желтый', ''),
('e8976171-93af-11e3-82a4-005056be1f7b-BsA1-FXY2-AZ0W-FesB-CzDq-E7ij', 'e8976171-93af-11e3-82a4-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e8976171-93af-11e3-82a4-005056be1f7b-BVpH-Fe3b-AEzV-FhKj-CuUp-Eipr', 'e8976171-93af-11e3-82a4-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e8976171-93af-11e3-82a4-005056be1f7b-Bvv8-FgOL-A1Qx-FxsJ-C4sx-E5na', 'e8976171-93af-11e3-82a4-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('e8976171-93af-11e3-82a4-005056be1f7b-BXHs-FCMh-APQv-FbTu-CHFf-EElu', 'e8976171-93af-11e3-82a4-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('e8976171-93af-11e3-82a4-005056be1f7b-BXmY-FtJj-AS54-F9cj-CqLk-Egj0', 'e8976171-93af-11e3-82a4-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('e8976171-93af-11e3-82a4-005056be1f7b-BY90-Fvcr-AwRv-FdOT-CCm7-EbVG', 'e8976171-93af-11e3-82a4-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('e9f3fc4e-47c0-11dc-8bad-000e0c431b58-B2Ct-FLPX-A48q-Fpsg-CraU-E7mV', 'e9f3fc4e-47c0-11dc-8bad-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('e9f3fc4e-47c0-11dc-8bad-000e0c431b58-B6pW-FEJF-Arf3-FK5a-C9iP-E17e', 'e9f3fc4e-47c0-11dc-8bad-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('e9f3fc4e-47c0-11dc-8bad-000e0c431b58-BAoR-F6ZY-AZGt-FeYr-CLTX-EiXg', 'e9f3fc4e-47c0-11dc-8bad-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная', ''),
('e9f3fc4e-47c0-11dc-8bad-000e0c431b58-BDyB-FvVP-AREt-FZSU-CivC-ETi6', 'e9f3fc4e-47c0-11dc-8bad-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('e9f3fc4e-47c0-11dc-8bad-000e0c431b58-BNkl-Fnnn-ArpI-Fdsn-CWwc-EYhy', 'e9f3fc4e-47c0-11dc-8bad-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('e9f3fc4e-47c0-11dc-8bad-000e0c431b58-BoFC-FhP7-A8Nf-FNDb-CrDF-E00f', 'e9f3fc4e-47c0-11dc-8bad-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('e9f3fc4e-47c0-11dc-8bad-000e0c431b58-Boz3-FXOK-Asx6-FvHe-CqUE-ER9r', 'e9f3fc4e-47c0-11dc-8bad-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('e9f3fc4e-47c0-11dc-8bad-000e0c431b58-BrxP-FMBS-AosW-FusW-CPFv-E2No', 'e9f3fc4e-47c0-11dc-8bad-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('e9f3fc4e-47c0-11dc-8bad-000e0c431b58-BXZl-FH4A-AzFT-FMnr-CsSw-Eu1B', 'e9f3fc4e-47c0-11dc-8bad-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ebcc7a29-f78e-11e3-8c8a-005056be1f7b-BACI-Flmy-AOh4-FXsk-CdJU-EbfW', 'ebcc7a29-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ebcc7a29-f78e-11e3-8c8a-005056be1f7b-Bbu8-FVB3-AkQ6-FDCK-COaI-EdMu', 'ebcc7a29-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ebcc7a29-f78e-11e3-8c8a-005056be1f7b-BEP8-FbR7-ATqQ-FQsx-CWZu-EzMO', 'ebcc7a29-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('ebcc7a29-f78e-11e3-8c8a-005056be1f7b-BOre-FHFN-AriW-FC02-CYT8-EBhG', 'ebcc7a29-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ebcc7a29-f78e-11e3-8c8a-005056be1f7b-Br7d-FwdT-AEvK-FZLm-CWaT-E2hY', 'ebcc7a29-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('ebcc7a29-f78e-11e3-8c8a-005056be1f7b-BTFm-FOIp-AYWF-Fg1R-CR2U-Eac7', 'ebcc7a29-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('ebcc7a29-f78e-11e3-8c8a-005056be1f7b-BY8O-Fvmh-A1Yk-Fjpn-C6EI-EKrF', 'ebcc7a29-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-зеленый', ''),
('ece048eb-fbaf-11e0-b702-001cc494be80-B3ZL-FuaP-AG22-FEMF-CidC-EM7R', 'ece048eb-fbaf-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('ece048eb-fbaf-11e0-b702-001cc494be80-B7gL-FRIu-ALe2-FAEV-Cal9-EUOe', 'ece048eb-fbaf-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ece048eb-fbaf-11e0-b702-001cc494be80-BfnX-FWrj-AcQC-Fec0-Cw3e-EQpR', 'ece048eb-fbaf-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('ece048eb-fbaf-11e0-b702-001cc494be80-Bhm5-Fmg7-ArIM-FTkE-C7Ku-Eyoo', 'ece048eb-fbaf-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ece048eb-fbaf-11e0-b702-001cc494be80-Bkp3-Fd5H-A3gV-Fmi4-CVHy-Ejda', 'ece048eb-fbaf-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('ece048eb-fbaf-11e0-b702-001cc494be80-BR7n-FdPN-AiMX-FSAB-C87i-EIOq', 'ece048eb-fbaf-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'интерьерная', ''),
('ece048eb-fbaf-11e0-b702-001cc494be80-BveB-FN25-A47q-F0LO-Cfr2-E3Ei', 'ece048eb-fbaf-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('ece048eb-fbaf-11e0-b702-001cc494be80-BZee-Fxxe-Azub-FX4q-CEwF-EPhg', 'ece048eb-fbaf-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ece048ee-fbaf-11e0-b702-001cc494be80-B0Wa-FU9g-AWdw-Frvx-C2Hu-Ei0s', 'ece048ee-fbaf-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ece048ee-fbaf-11e0-b702-001cc494be80-BbTt-Ft4A-A3EU-FmGC-CfQU-ERBK', 'ece048ee-fbaf-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'интерьерная', ''),
('ece048ee-fbaf-11e0-b702-001cc494be80-BEl2-FWJI-Ak3k-FhTK-CrbF-EZJI', 'ece048ee-fbaf-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('ece048ee-fbaf-11e0-b702-001cc494be80-Bi5N-FVl9-AJdF-F4CE-CmPl-Eb3m', 'ece048ee-fbaf-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '13000', 'г'),
('ece048ee-fbaf-11e0-b702-001cc494be80-BKSv-FuzE-A6hg-FB7p-CJu6-EMuv', 'ece048ee-fbaf-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ece048ee-fbaf-11e0-b702-001cc494be80-BNhz-FmAI-AwP4-FPOY-ClOu-ECit', 'ece048ee-fbaf-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('ece048ee-fbaf-11e0-b702-001cc494be80-BV7r-F38o-AhHZ-FdTJ-CPuc-E0eW', 'ece048ee-fbaf-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('ece048ee-fbaf-11e0-b702-001cc494be80-BxQD-F0zP-Ai9R-FkQI-CKUt-EBr4', 'ece048ee-fbaf-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ece048f0-fbaf-11e0-b702-001cc494be80-B6g1-FVkJ-Aaur-F804-Cvpw-EUAk', 'ece048f0-fbaf-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ece048f0-fbaf-11e0-b702-001cc494be80-BfQ3-FJOV-AIma-FDSE-CJhh-EPMx', 'ece048f0-fbaf-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('ece048f0-fbaf-11e0-b702-001cc494be80-BKcx-Fu2l-ANYp-FAzq-CGHi-EP8D', 'ece048f0-fbaf-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('ece048f0-fbaf-11e0-b702-001cc494be80-BNcY-FzcB-A1rj-FYxd-ChDx-EaBF', 'ece048f0-fbaf-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ece048f0-fbaf-11e0-b702-001cc494be80-BPU3-F8S3-A1Dh-FnXh-CNMB-E1cW', 'ece048f0-fbaf-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('ece048f0-fbaf-11e0-b702-001cc494be80-Bq3i-FUxd-AdCb-F2uu-CrPA-EkYO', 'ece048f0-fbaf-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ece048f0-fbaf-11e0-b702-001cc494be80-BS2J-F1eh-AXst-FZiL-Cvwn-EJlG', 'ece048f0-fbaf-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('ece048f0-fbaf-11e0-b702-001cc494be80-Bydm-FPUW-AACm-FAmB-CPih-EG4I', 'ece048f0-fbaf-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная', ''),
('ece048f2-fbaf-11e0-b702-001cc494be80-B3Mo-FRF3-AvJS-FMUl-CkzB-EaVY', 'ece048f2-fbaf-11e0-b702-001cc494be80', 'e8287600-ad96-11e3-b114-005056be1f7c', 'НОВЫЕ ТЕХНОЛОГИИ', ''),
('ece048f2-fbaf-11e0-b702-001cc494be80-Bbhy-FeBR-AdyJ-F8Fy-CP2T-EQEL', 'ece048f2-fbaf-11e0-b702-001cc494be80', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'супербелый', ''),
('ece048f2-fbaf-11e0-b702-001cc494be80-BCPc-FVbx-A8Cn-F9c0-CXE6-EqoF', 'ece048f2-fbaf-11e0-b702-001cc494be80', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('ece048f2-fbaf-11e0-b702-001cc494be80-BeZ1-FfXL-Ak58-FNPO-C220-EUmr', 'ece048f2-fbaf-11e0-b702-001cc494be80', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'фасадная', ''),
('ece048f2-fbaf-11e0-b702-001cc494be80-Bl7T-FjJi-AyAZ-FxUC-CeNO-EJeT', 'ece048f2-fbaf-11e0-b702-001cc494be80', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('ece048f2-fbaf-11e0-b702-001cc494be80-BL8H-F37T-AGcA-F8UF-Cgwm-EVQo', 'ece048f2-fbaf-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('ece048f2-fbaf-11e0-b702-001cc494be80-Bmuc-Fvsi-Aj8Z-F3Od-CEab-ELSY', 'ece048f2-fbaf-11e0-b702-001cc494be80', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('ece048f2-fbaf-11e0-b702-001cc494be80-BOcG-FoQb-Aqvo-F65I-CO8Y-ErS1', 'ece048f2-fbaf-11e0-b702-001cc494be80', '1d08380b-ce34-11e4-a80e-005056be1f7a', '13000', 'г'),
('efa9ef8e-f78d-11e3-8c8a-005056be1f7b-B3H4-FWYn-AOxO-FdZF-CCNI-Elri', 'efa9ef8e-f78d-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('efa9ef8e-f78d-11e3-8c8a-005056be1f7b-BmZa-F9JI-Arsd-FGoT-Cx4p-E1YI', 'efa9ef8e-f78d-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('efa9ef8e-f78d-11e3-8c8a-005056be1f7b-BOVD-Ffd0-A9Cc-F8C4-CqbM-Er93', 'efa9ef8e-f78d-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('efa9ef8e-f78d-11e3-8c8a-005056be1f7b-ByCj-FdaQ-AHql-FKX4-CWM4-ESf0', 'efa9ef8e-f78d-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('efa9ef8e-f78d-11e3-8c8a-005056be1f7b-Bz06-FSGk-Al4d-FRu3-CZkO-El2j', 'efa9ef8e-f78d-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('efa9ef8e-f78d-11e3-8c8a-005056be1f7b-BZTB-Fhq6-AahV-Furt-CiVZ-E7zq', 'efa9ef8e-f78d-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'вишневый', ''),
('efa9ef8e-f78d-11e3-8c8a-005056be1f7b-BzWL-FRUN-ALAo-FXrn-CQUC-EqSM', 'efa9ef8e-f78d-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('f0ad1dd1-1f91-11e4-9591-005056be1f7b-B5f6-FaEV-APnw-FHxv-CsEj-EmMR', 'f0ad1dd1-1f91-11e4-9591-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('f0ad1dd1-1f91-11e4-9591-005056be1f7b-BBCl-FitG-AxS1-F6f9-CBdL-ESqt', 'f0ad1dd1-1f91-11e4-9591-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('f0ad1dd1-1f91-11e4-9591-005056be1f7b-BBSB-F4kD-Acls-F2ci-C1WE-EwxJ', 'f0ad1dd1-1f91-11e4-9591-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '10', 'л'),
('f0ad1dd1-1f91-11e4-9591-005056be1f7b-BHDw-F4Kk-Ap4p-FOf3-CfgK-Ehav', 'f0ad1dd1-1f91-11e4-9591-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('f0ad1dd1-1f91-11e4-9591-005056be1f7b-Bk3W-FTuz-A3kL-F7W0-CFeC-E3XN', 'f0ad1dd1-1f91-11e4-9591-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('f0ad1dd1-1f91-11e4-9591-005056be1f7b-BMXE-F3Hj-Askh-FrfO-CitH-ENHG', 'f0ad1dd1-1f91-11e4-9591-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желтый', ''),
('f0ad1dd1-1f91-11e4-9591-005056be1f7b-Bmzz-FKjE-Ap8f-FiZz-Cja2-EK0l', 'f0ad1dd1-1f91-11e4-9591-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('f0ad1dd1-1f91-11e4-9591-005056be1f7b-BQx4-FHsY-AGt3-FRCj-CBoY-E1z9', 'f0ad1dd1-1f91-11e4-9591-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('f1be6b3a-f081-11df-a0c5-000e0c431b58-B3Cb-FMao-AmVi-FRwr-C3GE-ElbU', 'f1be6b3a-f081-11df-a0c5-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('f1be6b3a-f081-11df-a0c5-000e0c431b58-B49L-FsaK-A0N4-F1aC-CUHW-E8dl', 'f1be6b3a-f081-11df-a0c5-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('f1be6b3a-f081-11df-a0c5-000e0c431b58-BF84-Fllo-As1h-FBCI-Cz6G-EBoh', 'f1be6b3a-f081-11df-a0c5-000e0c431b58', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1000', 'г'),
('f1be6b3a-f081-11df-a0c5-000e0c431b58-BIM7-Fqes-AYXz-Fc0Q-Cwt1-ENJd', 'f1be6b3a-f081-11df-a0c5-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('f1be6b3a-f081-11df-a0c5-000e0c431b58-BqTm-FVPI-AeRg-FovG-CP4T-ELkx', 'f1be6b3a-f081-11df-a0c5-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('f1be6b3a-f081-11df-a0c5-000e0c431b58-Btka-Famd-AKJp-F7fI-CBXK-Edkk', 'f1be6b3a-f081-11df-a0c5-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('f1be6b3a-f081-11df-a0c5-000e0c431b58-BUWs-FVPI-AIFq-FCCt-CgMw-EWcF', 'f1be6b3a-f081-11df-a0c5-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'сиреневый', ''),
('f1be6b3c-f081-11df-a0c5-000e0c431b58-B0uN-FLUt-AQLs-FgXU-CX9Y-EyLW', 'f1be6b3c-f081-11df-a0c5-000e0c431b58', '1d08380b-ce34-11e4-a80e-005056be1f7a', '2000', 'г'),
('f1be6b3c-f081-11df-a0c5-000e0c431b58-B5dw-FO8i-AADZ-FtD4-CEqE-EQ3R', 'f1be6b3c-f081-11df-a0c5-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('f1be6b3c-f081-11df-a0c5-000e0c431b58-BdLU-FnlY-Abjn-F4S9-C2Mb-EnaY', 'f1be6b3c-f081-11df-a0c5-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('f1be6b3c-f081-11df-a0c5-000e0c431b58-BkDa-FN8s-ALy6-FmcW-CBnx-EdP9', 'f1be6b3c-f081-11df-a0c5-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('f1be6b3c-f081-11df-a0c5-000e0c431b58-BLbc-FlKf-AePM-FjfE-C20P-EMm2', 'f1be6b3c-f081-11df-a0c5-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('f1be6b3c-f081-11df-a0c5-000e0c431b58-BLov-FFeM-AIzT-Feww-CG2t-E0dU', 'f1be6b3c-f081-11df-a0c5-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'сиреневый', ''),
('f1be6b3c-f081-11df-a0c5-000e0c431b58-BnLL-FLNN-ATCJ-FaDy-C8Pc-EsU8', 'f1be6b3c-f081-11df-a0c5-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('f31a0079-f78e-11e3-8c8a-005056be1f7b-B82u-FPNV-AiYG-FAjK-CjXh-Ekt3', 'f31a0079-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('f31a0079-f78e-11e3-8c8a-005056be1f7b-BbZB-FcfH-ANeA-FVWF-CPc5-EHd6', 'f31a0079-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('f31a0079-f78e-11e3-8c8a-005056be1f7b-BFz2-FAAD-AlMM-FDJk-Ctbh-Exze', 'f31a0079-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('f31a0079-f78e-11e3-8c8a-005056be1f7b-BS7E-FY8n-AjgA-FGGu-C03H-E2F5', 'f31a0079-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('f31a0079-f78e-11e3-8c8a-005056be1f7b-BvX3-FMwN-Au86-FLLk-CLJc-E7Yp', 'f31a0079-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('f31a0079-f78e-11e3-8c8a-005056be1f7b-BW4D-F9ks-ALtR-FWlT-CKuc-EKEi', 'f31a0079-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'синий', ''),
('f31a0079-f78e-11e3-8c8a-005056be1f7b-BxWA-FWVK-An0b-FZVh-CKra-EOpA', 'f31a0079-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('f33aec8f-f78f-11e3-8c8a-005056be1f7b-BC6r-FIVL-AfZI-FsKj-Cev4-Ek4N', 'f33aec8f-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('f33aec8f-f78f-11e3-8c8a-005056be1f7b-Bd1r-Feiz-A4Ui-F0yI-Cqdf-E0cH', 'f33aec8f-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('f33aec8f-f78f-11e3-8c8a-005056be1f7b-BfLM-F59M-Av3i-FLXu-C0Zq-EriB', 'f33aec8f-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('f33aec8f-f78f-11e3-8c8a-005056be1f7b-BiyE-Fs63-AkDA-FsIZ-CvsG-Eekq', 'f33aec8f-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'шоколадный', ''),
('f33aec8f-f78f-11e3-8c8a-005056be1f7b-BkUG-FIT5-AR0Y-Fw02-C5Wa-EeMx', 'f33aec8f-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('f33aec8f-f78f-11e3-8c8a-005056be1f7b-BpWT-F9mX-AHcc-Fx03-Cghr-EkQn', 'f33aec8f-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('f33aec8f-f78f-11e3-8c8a-005056be1f7b-BXjj-F1Xi-As4G-FadW-CD8N-Eubv', 'f33aec8f-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('f5ec168e-f78d-11e3-8c8a-005056be1f7b-B0jN-Fn0n-ATSC-FIY7-CJ2P-Ee8o', 'f5ec168e-f78d-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('f5ec168e-f78d-11e3-8c8a-005056be1f7b-B8z4-Fq4Z-AIio-Faap-CSZy-EG5B', 'f5ec168e-f78d-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красный', ''),
('f5ec168e-f78d-11e3-8c8a-005056be1f7b-BAb5-FBHq-A8yb-FsX3-CXXb-EkBb', 'f5ec168e-f78d-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('f5ec168e-f78d-11e3-8c8a-005056be1f7b-BdSV-FFZf-AdPA-Fqw6-Cquv-Ejbp', 'f5ec168e-f78d-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('f5ec168e-f78d-11e3-8c8a-005056be1f7b-BOUt-FRdI-ANm0-FdH8-CHIZ-ECJh', 'f5ec168e-f78d-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('f5ec168e-f78d-11e3-8c8a-005056be1f7b-BtHV-FKzt-ACNG-FdyI-C6Cd-EpT7', 'f5ec168e-f78d-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('f5ec168e-f78d-11e3-8c8a-005056be1f7b-Bxhi-FxAq-AuIy-FKL9-Cr5F-ECF6', 'f5ec168e-f78d-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '1900', 'г'),
('f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b-B2tl-Fo1a-AfoC-FC17-CEOu-EXMz', 'f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b-B35r-FT9L-A82p-FVSU-Czw4-EOcn', 'f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b', '1ea6fcc4-d206-11e4-9be0-005056be1f7c', '0,0015', 'мм'),
('f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b-BAuh-FKFD-A55L-FK7G-CRy1-E4cr', 'f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b-BejY-FpuU-AwCJ-Fm6l-CUOk-Eplm', 'f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '15000', 'г'),
('f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b-BlgL-Fx11-Ayew-FHz2-Cxmg-EM5B', 'f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b-BT9V-FWBM-ATFb-FDdn-C3eY-Eaod', 'f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'штукатурка структурная', ''),
('f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b-BxpZ-FRfL-A4Rj-FRUl-Cngv-Exje', 'f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b-BXxT-F8En-AisK-FUgt-CzHQ-EB6H', 'f5f1fcd6-d1c2-11e3-8b7a-005056be1f7b', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'декоративная с эффектом "зернистости"', ''),
('f63c664a-52ee-11dd-a89a-000e0c431b58-B6ri-FTRc-ABU3-FELg-CYuv-ERV5', 'f63c664a-52ee-11dd-a89a-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('f63c664a-52ee-11dd-a89a-000e0c431b58-BgVw-FOQs-AjiB-F5G1-Cv4e-EeKk', 'f63c664a-52ee-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('f63c664a-52ee-11dd-a89a-000e0c431b58-BjO3-FlJ0-Ab53-F7ZC-CgHr-EPXs', 'f63c664a-52ee-11dd-a89a-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('f63c664a-52ee-11dd-a89a-000e0c431b58-BmwC-Fe1N-ABP9-FwgT-CqxH-Ef62', 'f63c664a-52ee-11dd-a89a-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('f63c664a-52ee-11dd-a89a-000e0c431b58-BQxy-FIuN-ALRV-F3gt-Clba-EKus', 'f63c664a-52ee-11dd-a89a-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '9', 'л'),
('f63c664a-52ee-11dd-a89a-000e0c431b58-Bsos-FQBp-ATzY-Fj4s-CDaD-E1oU', 'f63c664a-52ee-11dd-a89a-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('f63c664a-52ee-11dd-a89a-000e0c431b58-BvMQ-FlOc-ABSs-F66U-CRTV-Eiy1', 'f63c664a-52ee-11dd-a89a-000e0c431b58', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база С', ''),
('f63c664a-52ee-11dd-a89a-000e0c431b58-Bwns-FQFN-AdIi-FX7D-CxsP-EETe', 'f63c664a-52ee-11dd-a89a-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бесцветный', ''),
('f63c664a-52ee-11dd-a89a-000e0c431b58-BXAR-FffO-Az2e-FceM-CCU4-Eyea', 'f63c664a-52ee-11dd-a89a-000e0c431b58', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'акриловая', ''),
('fa74499c-7f46-11e3-af7c-005056be1f7b-B6xG-Fz0h-AGt5-Fuzv-CQak-EbBZ', 'fa74499c-7f46-11e3-af7c-005056be1f7b', 'e765ba72-107d-11e3-8a5d-0050569a1080', 'база А', ''),
('fa74499c-7f46-11e3-af7c-005056be1f7b-Bbfm-F7ww-Az2l-FKhf-CVry-EcLr', 'fa74499c-7f46-11e3-af7c-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '2.5', 'л'),
('fa74499c-7f46-11e3-af7c-005056be1f7b-BHgJ-FCHE-AExX-FX4W-CHyJ-EOnI', 'fa74499c-7f46-11e3-af7c-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'шелковый матовый', ''),
('fa74499c-7f46-11e3-af7c-005056be1f7b-BKTH-Fd3S-AalP-FGL3-CSe8-EQ6E', 'fa74499c-7f46-11e3-af7c-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fa74499c-7f46-11e3-af7c-005056be1f7b-BkyK-Flzp-Aet6-Fl6B-CqTS-EF9u', 'fa74499c-7f46-11e3-af7c-005056be1f7b', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 'латексная', ''),
('fa74499c-7f46-11e3-af7c-005056be1f7b-Bpcl-FDze-AZ7T-FjL7-Cs8q-EkmL', 'fa74499c-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fa74499c-7f46-11e3-af7c-005056be1f7b-BSE8-FaGK-Akif-FQJ4-CEzV-Ep4K', 'fa74499c-7f46-11e3-af7c-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'PARADE', ''),
('fa74499c-7f46-11e3-af7c-005056be1f7b-BulS-FAsd-A4A9-F1R5-C5sa-EhoM', 'fa74499c-7f46-11e3-af7c-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'краска', ''),
('fa74499c-7f46-11e3-af7c-005056be1f7b-Bvu3-Fper-AbvH-FCNJ-CbUq-ElXx', 'fa74499c-7f46-11e3-af7c-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fbb89466-93af-11e3-82a4-005056be1f7b-B1Jm-F6jw-AWVc-FJTL-CwXG-EO5g', 'fbb89466-93af-11e3-82a4-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'DALI', ''),
('fbb89466-93af-11e3-82a4-005056be1f7b-B6D9-FZ3e-AbuE-FaKb-Cvqw-E9sn', 'fbb89466-93af-11e3-82a4-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fbb89466-93af-11e3-82a4-005056be1f7b-BD5o-FgE8-Ar1V-FyEP-CUJG-Eh0K', 'fbb89466-93af-11e3-82a4-005056be1f7b', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.75', 'л'),
('fbb89466-93af-11e3-82a4-005056be1f7b-BE1M-F1Ej-Awb2-Fwwk-Comt-EQhT', 'fbb89466-93af-11e3-82a4-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fbb89466-93af-11e3-82a4-005056be1f7b-BE6b-Fga1-A6qv-FOW7-CXS0-EVs3', 'fbb89466-93af-11e3-82a4-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fbb89466-93af-11e3-82a4-005056be1f7b-Bg4Z-FP1P-A3ze-FygB-C2j9-EaWV', 'fbb89466-93af-11e3-82a4-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красный', ''),
('fbb89466-93af-11e3-82a4-005056be1f7b-BHvl-F0hY-AjMB-FTdi-Cmgd-EQDh', 'fbb89466-93af-11e3-82a4-005056be1f7b', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'по ржавчине', ''),
('fbb89466-93af-11e3-82a4-005056be1f7b-BOvY-Fjjd-Az4m-F6bm-CFiY-Eri6', 'fbb89466-93af-11e3-82a4-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'грунт-эмаль', ''),
('fc75df8c-f786-11e3-8c8a-005056be1f7b-BfaZ-FBiW-ATzB-FFTE-CSp4-EwEs', 'fc75df8c-f786-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fc75df8c-f786-11e3-8c8a-005056be1f7b-BGPR-FHVk-AMnQ-FFZU-CyPC-Ewrz', 'fc75df8c-f786-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '800', 'г'),
('fc75df8c-f786-11e3-8c8a-005056be1f7b-BseN-FXa2-AvRD-FBiN-CZjb-EuyZ', 'fc75df8c-f786-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fc75df8c-f786-11e3-8c8a-005056be1f7b-BVye-FZzD-AnPm-FE0b-CdxZ-EJrA', 'fc75df8c-f786-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('fc75df8c-f786-11e3-8c8a-005056be1f7b-Bx9p-F5kW-AtZf-FH7R-CQpw-EeCM', 'fc75df8c-f786-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fc75df8c-f786-11e3-8c8a-005056be1f7b-Bzr9-Fcw8-A4Qv-FTZc-CT54-Et7c', 'fc75df8c-f786-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fd393098-f78f-11e3-8c8a-005056be1f7b-B6XY-FmKu-Afni-FZMK-CZPC-EN1x', 'fd393098-f78f-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fd393098-f78f-11e3-8c8a-005056be1f7b-BbAF-FyGe-AQyh-F3uV-CDQG-EZNH', 'fd393098-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fd393098-f78f-11e3-8c8a-005056be1f7b-BD3y-Fkuj-A7yz-FDND-CLim-E1Gt', 'fd393098-f78f-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('fd393098-f78f-11e3-8c8a-005056be1f7b-BfuV-F8B6-AVhN-Fias-Chlf-ErMq', 'fd393098-f78f-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'розово-бежевый', ''),
('fd393098-f78f-11e3-8c8a-005056be1f7b-BK7r-FtW4-A4vI-F700-Cuww-EWYm', 'fd393098-f78f-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '20000', 'г'),
('fd393098-f78f-11e3-8c8a-005056be1f7b-BUjp-FiHF-AQoq-FwW4-Cdx4-Eim0', 'fd393098-f78f-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fd393098-f78f-11e3-8c8a-005056be1f7b-Bwxm-Fm11-ApBY-FS3f-CBy3-EaaD', 'fd393098-f78f-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fded4984-d1c2-11e3-8b7a-005056be1f7b-B3AO-F93G-ANN7-FErM-CBGw-EZ73', 'fded4984-d1c2-11e3-8b7a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '15000', 'г'),
('fded4984-d1c2-11e3-8b7a-005056be1f7b-B8mI-FaE5-AScc-FgYx-CZcg-Efzk', 'fded4984-d1c2-11e3-8b7a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ЛАКРА', ''),
('fded4984-d1c2-11e3-8b7a-005056be1f7b-BEsG-FWE0-AIrC-FDhZ-CHQ5-EsJe', 'fded4984-d1c2-11e3-8b7a-005056be1f7b', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'декоративная с эффектом "зернистости"', ''),
('fded4984-d1c2-11e3-8b7a-005056be1f7b-Bf9R-FhBz-A8JG-F23P-CVz2-EdQ7', 'fded4984-d1c2-11e3-8b7a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fded4984-d1c2-11e3-8b7a-005056be1f7b-BMlX-FbvY-Agh5-Fjj9-Coc0-E3a2', 'fded4984-d1c2-11e3-8b7a-005056be1f7b', '1ea6fcc4-d206-11e4-9be0-005056be1f7c', '0,003', 'мм'),
('fded4984-d1c2-11e3-8b7a-005056be1f7b-Btek-F3kO-Adnd-Fbw3-CXiN-E7V3', 'fded4984-d1c2-11e3-8b7a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fded4984-d1c2-11e3-8b7a-005056be1f7b-BvVi-FxoH-AWOS-FW3w-CmD5-E1WE', 'fded4984-d1c2-11e3-8b7a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый', ''),
('fded4984-d1c2-11e3-8b7a-005056be1f7b-BYjY-F1Gw-AofP-FKAE-CvgD-ECDE', 'fded4984-d1c2-11e3-8b7a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'штукатурка структурная', ''),
('fdf8cbf6-f78e-11e3-8c8a-005056be1f7b-B2Bp-FajV-Au9V-FKUU-C2Lo-EDIc', 'fdf8cbf6-f78e-11e3-8c8a-005056be1f7b', '1d08380b-ce34-11e4-a80e-005056be1f7a', '6000', 'г'),
('fdf8cbf6-f78e-11e3-8c8a-005056be1f7b-B2UL-F8xu-AhbL-Fujy-CP4i-EUx4', 'fdf8cbf6-f78e-11e3-8c8a-005056be1f7b', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fdf8cbf6-f78e-11e3-8c8a-005056be1f7b-B4nd-FLSM-AGji-FlbV-CZBT-E5v1', 'fdf8cbf6-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fdf8cbf6-f78e-11e3-8c8a-005056be1f7b-BDr1-F3Fz-AJRR-Fpt6-CQVf-E3wx', 'fdf8cbf6-f78e-11e3-8c8a-005056be1f7b', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'голубой', ''),
('fdf8cbf6-f78e-11e3-8c8a-005056be1f7b-Bj9f-FthZ-ATGn-FMhY-CMlG-EDdL', 'fdf8cbf6-f78e-11e3-8c8a-005056be1f7b', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fdf8cbf6-f78e-11e3-8c8a-005056be1f7b-BUF8-F8Re-AWeF-Fcij-CobN-EHmf', 'fdf8cbf6-f78e-11e3-8c8a-005056be1f7b', 'e8287600-ad96-11e3-b114-005056be1f7c', 'ИМПУЛЬС', ''),
('fdf8cbf6-f78e-11e3-8c8a-005056be1f7b-BUtE-F4Vg-AOvi-FiqU-CZAZ-EW9r', 'fdf8cbf6-f78e-11e3-8c8a-005056be1f7b', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fe1a18f9-c501-11e1-abc0-005056be3bd8-B4iM-FlDN-ASEZ-FGbJ-Cbx6-EgHP', 'fe1a18f9-c501-11e1-abc0-005056be3bd8', 'e8287600-ad96-11e3-b114-005056be1f7c', 'РОГНЕДА', ''),
('fe1a18f9-c501-11e1-abc0-005056be3bd8-B4uZ-FS12-AcSo-FXyw-CnCk-ERup', 'fe1a18f9-c501-11e1-abc0-005056be3bd8', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'огнебиозащитный состав', ''),
('fe1a18f9-c501-11e1-abc0-005056be3bd8-BNxo-FsEZ-Ayb2-FR8s-Cd1R-EpcU', 'fe1a18f9-c501-11e1-abc0-005056be3bd8', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fe1a18f9-c501-11e1-abc0-005056be3bd8-BpWI-FZsY-ArAs-FfBq-CAMx-EWuV', 'fe1a18f9-c501-11e1-abc0-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fe1a18f9-c501-11e1-abc0-005056be3bd8-BrjG-Fj2E-ARU5-Fj0X-C43I-ETL0', 'fe1a18f9-c501-11e1-abc0-005056be3bd8', '1d08380b-ce34-11e4-a80e-005056be1f7a', '12000', 'г'),
('fe1a18f9-c501-11e1-abc0-005056be3bd8-BWvF-FUUr-ApYe-FRvG-CWbc-Ef2L', 'fe1a18f9-c501-11e1-abc0-005056be3bd8', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c165-5ab6-11dc-be42-000e0c431b58-B6If-FPIS-AYvx-FSHc-CVkE-EHMa', 'fea6c165-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c165-5ab6-11dc-be42-000e0c431b58-B8CQ-FZnC-AneT-FAxJ-Cme4-EWoC', 'fea6c165-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c165-5ab6-11dc-be42-000e0c431b58-Bcmv-FmVp-Avq4-FQHV-CnFX-E4fB', 'fea6c165-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c165-5ab6-11dc-be42-000e0c431b58-BfKc-FhNX-A5Jc-FYVx-CkDv-EK0m', 'fea6c165-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'хаки', ''),
('fea6c165-5ab6-11dc-be42-000e0c431b58-BOU1-FBn9-Ae9j-FiFw-C92u-EFh9', 'fea6c165-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c165-5ab6-11dc-be42-000e0c431b58-Bruu-FJIF-A8tJ-Fs4J-CVOe-EbbX', 'fea6c165-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c165-5ab6-11dc-be42-000e0c431b58-BUVG-FN3g-Al4c-FkvN-C1RX-ETzl', 'fea6c165-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c165-5ab6-11dc-be42-000e0c431b58-Bw9G-FpOO-AA2T-FYuy-Caq7-E66F', 'fea6c165-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c167-5ab6-11dc-be42-000e0c431b58-Baec-F01Y-AYdH-F2cV-CFJ3-EAi0', 'fea6c167-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c167-5ab6-11dc-be42-000e0c431b58-BgXk-FAXJ-A1ai-FV6Z-Cntc-E9NN', 'fea6c167-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c167-5ab6-11dc-be42-000e0c431b58-Bkaj-Fs5z-A7Wm-FKt1-C6OL-EzUC', 'fea6c167-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-зеленый', ''),
('fea6c167-5ab6-11dc-be42-000e0c431b58-BKW1-F3N8-AJ4k-FxKN-Cyls-ERki', 'fea6c167-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c167-5ab6-11dc-be42-000e0c431b58-Brh6-FZHJ-Ay1s-F1GQ-Cqmn-EQnB', 'fea6c167-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c167-5ab6-11dc-be42-000e0c431b58-BVng-F9yP-Azue-FAjz-CDZe-Ee1R', 'fea6c167-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c167-5ab6-11dc-be42-000e0c431b58-BxDV-Fevs-ATrr-FjNY-CtjC-EQi1', 'fea6c167-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c167-5ab6-11dc-be42-000e0c431b58-Bzpb-FawS-ANDr-FrXz-C79P-EgrJ', 'fea6c167-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c169-5ab6-11dc-be42-000e0c431b58-B42q-FQqW-A0Fk-Fw8v-C9nn-EW4p', 'fea6c169-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c169-5ab6-11dc-be42-000e0c431b58-BASD-Ffg9-Adxm-FLuB-CQn3-E75j', 'fea6c169-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c169-5ab6-11dc-be42-000e0c431b58-BgEd-F9Zx-AqKk-FJRH-CX11-EgdB', 'fea6c169-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c169-5ab6-11dc-be42-000e0c431b58-BisJ-FnLM-AQpD-FnPp-COaY-EFVi', 'fea6c169-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c169-5ab6-11dc-be42-000e0c431b58-BLs1-F5Kb-At5b-FVUr-Cvxd-EGgN', 'fea6c169-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'темно-зеленый', ''),
('fea6c169-5ab6-11dc-be42-000e0c431b58-Bp2X-FQBo-AYYe-FO58-CQnr-E7ZE', 'fea6c169-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c169-5ab6-11dc-be42-000e0c431b58-Bstq-FvW7-AblX-Fzqs-CYNw-E2LM', 'fea6c169-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c169-5ab6-11dc-be42-000e0c431b58-BT4o-F4pl-ApoO-FTAI-C9Ba-ECh8', 'fea6c169-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c16b-5ab6-11dc-be42-000e0c431b58-BABu-FmMe-AocI-FgZC-CGt6-Evnl', 'fea6c16b-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'фисташковый', ''),
('fea6c16b-5ab6-11dc-be42-000e0c431b58-Bgk2-FyRn-AZMC-FD5X-C6Fd-ELVL', 'fea6c16b-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c16b-5ab6-11dc-be42-000e0c431b58-BHwR-FxRl-AFYS-Fqvk-C5Yn-EsU3', 'fea6c16b-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c16b-5ab6-11dc-be42-000e0c431b58-BKGP-FPsh-AmYM-F4kZ-CnsL-E6fd', 'fea6c16b-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c16b-5ab6-11dc-be42-000e0c431b58-BnDy-F6Ob-AvXF-FmRW-CppR-ELMt', 'fea6c16b-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c16b-5ab6-11dc-be42-000e0c431b58-Bs8k-F62K-AVe3-FhZX-CA79-E3vQ', 'fea6c16b-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c16b-5ab6-11dc-be42-000e0c431b58-BXSQ-FlmQ-AukS-FLnz-CIn1-E4QD', 'fea6c16b-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c16b-5ab6-11dc-be42-000e0c431b58-BY6g-Fgc6-Ajip-FfTS-CGql-EWSN', 'fea6c16b-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c16d-5ab6-11dc-be42-000e0c431b58-B5ZL-FMWY-A3sh-FM3O-CjPC-Eg6l', 'fea6c16d-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бежевый', ''),
('fea6c16d-5ab6-11dc-be42-000e0c431b58-Ba4V-FqDz-A2yr-FD8D-CilV-ExzR', 'fea6c16d-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c16d-5ab6-11dc-be42-000e0c431b58-BBOm-Ffx6-Awuq-F7BG-CKIX-EM8t', 'fea6c16d-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c16d-5ab6-11dc-be42-000e0c431b58-BHRB-FyV0-A25k-FNra-Cf6H-Ecps', 'fea6c16d-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c16d-5ab6-11dc-be42-000e0c431b58-BNr8-Fuki-Ai4d-FiTQ-C7uK-ERaN', 'fea6c16d-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c16d-5ab6-11dc-be42-000e0c431b58-BoSO-FO6a-A2pg-F4ly-CS60-EaxX', 'fea6c16d-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c16d-5ab6-11dc-be42-000e0c431b58-BULH-F2YA-AG8P-FJeL-Cu3M-EJVf', 'fea6c16d-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c16d-5ab6-11dc-be42-000e0c431b58-BXBY-FdSe-A7tk-FnLm-CtGC-E6SY', 'fea6c16d-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c16f-5ab6-11dc-be42-000e0c431b58-B7zd-FKgT-A3Au-FurQ-CP4S-Ehd1', 'fea6c16f-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c16f-5ab6-11dc-be42-000e0c431b58-BCro-FRRb-Aqcc-FeQa-CI4B-EotW', 'fea6c16f-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c16f-5ab6-11dc-be42-000e0c431b58-Bh75-FZID-AMoO-Frzr-Cdb2-Ergf', 'fea6c16f-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c16f-5ab6-11dc-be42-000e0c431b58-BMBS-Fjht-Aqbi-FTpu-C8Nq-E3mz', 'fea6c16f-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c16f-5ab6-11dc-be42-000e0c431b58-BmDm-FU5K-AxTP-FjxY-CKBx-Ey8o', 'fea6c16f-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'голубой', ''),
('fea6c16f-5ab6-11dc-be42-000e0c431b58-BmJO-FEne-AewX-FgbG-C4ym-EOMo', 'fea6c16f-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c16f-5ab6-11dc-be42-000e0c431b58-Bmlf-FzUr-Ax9B-Fe8W-CPja-E25U', 'fea6c16f-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c16f-5ab6-11dc-be42-000e0c431b58-BWgV-FXBS-AuQ3-FLIw-CgLe-EKdw', 'fea6c16f-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c171-5ab6-11dc-be42-000e0c431b58-B32S-FnRL-Aoc7-F6w0-CDrw-EQTJ', 'fea6c171-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c171-5ab6-11dc-be42-000e0c431b58-B40w-F4JY-AJiM-Flcu-CtUm-EC84', 'fea6c171-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c171-5ab6-11dc-be42-000e0c431b58-B5xM-FlWm-AqmA-FKlQ-CZxb-E4iH', 'fea6c171-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'синий', ''),
('fea6c171-5ab6-11dc-be42-000e0c431b58-BNmW-FJhI-AIlz-F63J-CFvI-E3oS', 'fea6c171-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c171-5ab6-11dc-be42-000e0c431b58-BOpX-FEkQ-ANpB-FWhq-Coye-EfR4', 'fea6c171-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c171-5ab6-11dc-be42-000e0c431b58-BQy2-FcZT-ANIn-FzKl-CtXO-EFgv', 'fea6c171-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c171-5ab6-11dc-be42-000e0c431b58-BrqD-FtCl-AZrZ-F4Mq-CxAL-E1dh', 'fea6c171-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c171-5ab6-11dc-be42-000e0c431b58-ByfC-FcVN-AEEk-FSKH-CDYx-EbdX', 'fea6c171-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c173-5ab6-11dc-be42-000e0c431b58-B8NA-Fg9G-AhBV-Fw70-CG57-EwJF', 'fea6c173-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c173-5ab6-11dc-be42-000e0c431b58-B98p-FOJj-APRf-FELU-C7Qf-E9AZ', 'fea6c173-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c173-5ab6-11dc-be42-000e0c431b58-BELB-Fu40-AMli-FvFB-CDPP-E5nT', 'fea6c173-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'коричневый', ''),
('fea6c173-5ab6-11dc-be42-000e0c431b58-BgcW-FVJu-ALQG-FOW9-CPiY-ERHl', 'fea6c173-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c173-5ab6-11dc-be42-000e0c431b58-BMZC-FiM9-AhT4-FeFD-Ckac-E8R7', 'fea6c173-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c173-5ab6-11dc-be42-000e0c431b58-BQo5-FKJ0-ANuZ-Fqrr-CmOK-E0kU', 'fea6c173-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c173-5ab6-11dc-be42-000e0c431b58-Btwk-F1A7-AzPf-FNgm-CyxR-Es9b', 'fea6c173-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c173-5ab6-11dc-be42-000e0c431b58-BVZX-F2dj-ALaz-FrYz-CGWC-EG3A', 'fea6c173-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c175-5ab6-11dc-be42-000e0c431b58-B4TI-FnE1-A5Tu-FM2O-CDJY-EU93', 'fea6c175-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c175-5ab6-11dc-be42-000e0c431b58-B5Iq-F9eO-ABuE-FnTV-CEi1-EbrL', 'fea6c175-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c175-5ab6-11dc-be42-000e0c431b58-B98D-FtK6-A8NE-FWiC-CPzl-EjQb', 'fea6c175-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c175-5ab6-11dc-be42-000e0c431b58-BnP9-Fr3S-AC81-F3Zi-CEuv-ElWK', 'fea6c175-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c175-5ab6-11dc-be42-000e0c431b58-BOfX-FJV3-AfUR-FLcU-C6bS-E0Kc', 'fea6c175-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c175-5ab6-11dc-be42-000e0c431b58-BRiU-Fbzo-AO66-F1fW-C0Yq-EHCu', 'fea6c175-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c175-5ab6-11dc-be42-000e0c431b58-BRKR-Fzd8-AjbK-FQUw-CGQm-EjbI', 'fea6c175-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'желтый', ''),
('fea6c175-5ab6-11dc-be42-000e0c431b58-BUNg-FmY0-A7Ua-FOUl-CrOt-EYNO', 'fea6c175-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c177-5ab6-11dc-be42-000e0c431b58-B8XN-FBSS-A4pr-FyHX-ClKS-E2Fk', 'fea6c177-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c177-5ab6-11dc-be42-000e0c431b58-BC5P-F5RB-Acu7-FSEe-CuVr-EpRn', 'fea6c177-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c177-5ab6-11dc-be42-000e0c431b58-BJR3-Fml6-Apdp-FtXK-Cnvy-Eexb', 'fea6c177-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c177-5ab6-11dc-be42-000e0c431b58-Bp0C-Fw2e-AH7n-FA8M-CAHj-E1Aw', 'fea6c177-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'светло-серый', ''),
('fea6c177-5ab6-11dc-be42-000e0c431b58-BQN5-F67S-AGjE-F5E3-CWY6-Ecqw', 'fea6c177-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c177-5ab6-11dc-be42-000e0c431b58-BUCF-FR2j-AOd3-FWvi-Cc6z-EUhb', 'fea6c177-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c177-5ab6-11dc-be42-000e0c431b58-BxKq-FX82-Alwc-FTDD-C3tD-E5f5', 'fea6c177-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c177-5ab6-11dc-be42-000e0c431b58-BYn2-FCnz-AOn8-Fye8-ClSH-ESqF', 'fea6c177-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c179-5ab6-11dc-be42-000e0c431b58-B2du-FleA-AnJO-FCBd-CtMm-EGEk', 'fea6c179-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c179-5ab6-11dc-be42-000e0c431b58-B4iU-Fz1Y-ATlu-FBQB-CoNY-E3Pr', 'fea6c179-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'серый', ''),
('fea6c179-5ab6-11dc-be42-000e0c431b58-B4PH-FR2l-AvDr-FjaE-CQXe-E9PO', 'fea6c179-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c179-5ab6-11dc-be42-000e0c431b58-B8Zs-F2uN-A7Pj-Fdeh-CfvI-EqQv', 'fea6c179-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c179-5ab6-11dc-be42-000e0c431b58-BKIX-F38f-APjp-Fiau-CITS-EcJJ', 'fea6c179-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c179-5ab6-11dc-be42-000e0c431b58-BLLe-Fvp0-ASLu-Fa3B-CLvQ-ETCI', 'fea6c179-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c179-5ab6-11dc-be42-000e0c431b58-BmUJ-FR4k-ACB5-FVeE-CeWh-EP8B', 'fea6c179-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c179-5ab6-11dc-be42-000e0c431b58-BQkK-FfnM-A9WY-Fldd-CMFx-EWXr', 'fea6c179-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c17b-5ab6-11dc-be42-000e0c431b58-BbD7-FNCl-A3xf-FMvv-C0LG-EWC2', 'fea6c17b-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c17b-5ab6-11dc-be42-000e0c431b58-Bhvk-Fdqc-AJJH-F16H-CZB8-EulV', 'fea6c17b-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'оранжевый', ''),
('fea6c17b-5ab6-11dc-be42-000e0c431b58-BiMK-FqDF-AycG-FwMs-CHAW-ErpH', 'fea6c17b-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c17b-5ab6-11dc-be42-000e0c431b58-BiU2-FDA4-Angc-F9mf-C0Ls-EJ2v', 'fea6c17b-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c17b-5ab6-11dc-be42-000e0c431b58-BPqO-FWca-AEjb-FaRH-Ci1b-EZ5b', 'fea6c17b-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c17b-5ab6-11dc-be42-000e0c431b58-BSh9-Fufl-AQew-F9oo-Cu4U-E9Qw', 'fea6c17b-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c17b-5ab6-11dc-be42-000e0c431b58-Bxnk-Fpv1-Aouf-FpBj-CgjU-EGDB', 'fea6c17b-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c17b-5ab6-11dc-be42-000e0c431b58-BZUW-F2vo-A9Te-FatZ-C2C7-E1xb', 'fea6c17b-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c17d-5ab6-11dc-be42-000e0c431b58-B1bx-Fae8-ANQ7-FjJG-CRqi-EjG0', 'fea6c17d-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c17d-5ab6-11dc-be42-000e0c431b58-B6Td-F15b-AWVX-FviF-CQPs-EpCc', 'fea6c17d-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'бирюзовый', ''),
('fea6c17d-5ab6-11dc-be42-000e0c431b58-BfD0-FQbx-ArWY-FLbh-C3W1-EWMu', 'fea6c17d-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c17d-5ab6-11dc-be42-000e0c431b58-BgbS-Fabi-AX5U-FXWV-CymF-ElQA', 'fea6c17d-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c17d-5ab6-11dc-be42-000e0c431b58-BHe5-Fb2Q-Axp3-F3RJ-C3Hl-EqiF', 'fea6c17d-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c17d-5ab6-11dc-be42-000e0c431b58-BovW-FkVf-ArmL-FPMS-CPTw-EJuo', 'fea6c17d-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c17d-5ab6-11dc-be42-000e0c431b58-BPtx-Fo5O-ALxk-FCKx-Cw9W-E3Kr', 'fea6c17d-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c17d-5ab6-11dc-be42-000e0c431b58-ByjG-FMUo-ARl4-FAQ7-Ccv0-EbBb', 'fea6c17d-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c17f-5ab6-11dc-be42-000e0c431b58-BcvV-Fttb-AL6E-FcDn-Cd1W-Ekml', 'fea6c17f-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c17f-5ab6-11dc-be42-000e0c431b58-BDhl-Fozv-Aw4K-FjVn-C7DU-EAwX', 'fea6c17f-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'сиреневый', ''),
('fea6c17f-5ab6-11dc-be42-000e0c431b58-Bgy7-F7vo-AJF0-FgdT-C0IW-EVFS', 'fea6c17f-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c17f-5ab6-11dc-be42-000e0c431b58-BlLE-FAFQ-Ar3R-F4sv-CavS-ECaI', 'fea6c17f-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c17f-5ab6-11dc-be42-000e0c431b58-BpCV-F76E-ArW1-FAYQ-CIMc-EJLN', 'fea6c17f-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c17f-5ab6-11dc-be42-000e0c431b58-BwsG-FvPk-AFPt-Fcky-CuAm-EZQZ', 'fea6c17f-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c17f-5ab6-11dc-be42-000e0c431b58-ByMB-F9vW-AmsZ-F7sM-CUUX-EYUd', 'fea6c17f-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c17f-5ab6-11dc-be42-000e0c431b58-BZxo-FPxD-Af7Q-F9Fc-CLmQ-EHjB', 'fea6c17f-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c181-5ab6-11dc-be42-000e0c431b58-B3qn-FX4Z-AI3k-FOPn-CGRn-ESxE', 'fea6c181-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c181-5ab6-11dc-be42-000e0c431b58-BBAL-Fga6-A6S8-F2Iu-CTky-EQx1', 'fea6c181-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'охра', ''),
('fea6c181-5ab6-11dc-be42-000e0c431b58-Bej6-FkUG-Ae7J-FFLk-Ci1K-E6G9', 'fea6c181-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c181-5ab6-11dc-be42-000e0c431b58-BfU4-FG2A-AUYl-FH1w-CQZd-EUHP', 'fea6c181-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c181-5ab6-11dc-be42-000e0c431b58-BhA5-FagI-AHIk-FgGO-Chlx-EcLI', 'fea6c181-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c181-5ab6-11dc-be42-000e0c431b58-BiqE-FsvQ-ATUH-FdPO-CcxO-EWNv', 'fea6c181-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c181-5ab6-11dc-be42-000e0c431b58-BNsX-FLkg-A75G-FuL5-ClDk-EPad', 'fea6c181-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c181-5ab6-11dc-be42-000e0c431b58-BpjW-FQym-A464-FgOq-ClcZ-E9nA', 'fea6c181-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c183-5ab6-11dc-be42-000e0c431b58-B96Q-FiEf-AD1y-FNWf-CIgU-ExwA', 'fea6c183-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c183-5ab6-11dc-be42-000e0c431b58-BCyw-F2CJ-AXKp-Fr8c-Crii-EedS', 'fea6c183-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c183-5ab6-11dc-be42-000e0c431b58-BEpt-FXuo-AGuG-F2IC-CHgV-EEfJ', 'fea6c183-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c183-5ab6-11dc-be42-000e0c431b58-BJN1-FXEE-ATWQ-FL4A-CH7z-E5y2', 'fea6c183-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c183-5ab6-11dc-be42-000e0c431b58-BkFx-F5up-AuiN-F1N7-CRL2-Ehu7', 'fea6c183-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c183-5ab6-11dc-be42-000e0c431b58-BKyp-FQpx-ASxT-Fo3z-CyiG-Epsa', 'fea6c183-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c183-5ab6-11dc-be42-000e0c431b58-BqQ1-FKUS-AMzk-FJOf-CwTK-Efr5', 'fea6c183-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c183-5ab6-11dc-be42-000e0c431b58-BXT8-F0yl-Aurd-FDcC-CfR7-EZ5n', 'fea6c183-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'какао', ''),
('fea6c185-5ab6-11dc-be42-000e0c431b58-B7sH-FN9F-ABWL-F4VA-C2Gv-EW5C', 'fea6c185-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c185-5ab6-11dc-be42-000e0c431b58-BHDm-FsGv-A7hC-Fggm-Cdot-ETZR', 'fea6c185-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c185-5ab6-11dc-be42-000e0c431b58-BHHz-Fuhc-Asec-Fc8Y-Cuim-EngH', 'fea6c185-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c185-5ab6-11dc-be42-000e0c431b58-BHWi-FTXI-Ag2m-Fan8-C8Au-Ec6S', 'fea6c185-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c185-5ab6-11dc-be42-000e0c431b58-BkN4-F9ed-Ahel-FDJN-CaQj-E0k8', 'fea6c185-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c185-5ab6-11dc-be42-000e0c431b58-BvHv-FOjt-AnUR-FQ9x-CXF2-E0y9', 'fea6c185-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c185-5ab6-11dc-be42-000e0c431b58-Bvvf-FxRC-Aavr-FKEG-Cb1N-ENFx', 'fea6c185-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c185-5ab6-11dc-be42-000e0c431b58-BWwf-F6iI-ARkX-FRki-C0Ig-EolX', 'fea6c185-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'красно-коричневый', ''),
('fea6c187-5ab6-11dc-be42-000e0c431b58-B7ny-FiCL-AGlU-Fu4Z-COOL-ETXK', 'fea6c187-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c187-5ab6-11dc-be42-000e0c431b58-B9NA-F8Zc-AWFR-F7Mq-CWJT-EKrW', 'fea6c187-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c187-5ab6-11dc-be42-000e0c431b58-Btou-FGIt-Av7O-FnZm-CkvL-E97J', 'fea6c187-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c187-5ab6-11dc-be42-000e0c431b58-BuGt-F8yC-Aqlx-FNkr-C2TV-EmZe', 'fea6c187-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c187-5ab6-11dc-be42-000e0c431b58-BVvE-FI0p-A110-FLcY-Cqyk-EGZZ', 'fea6c187-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c187-5ab6-11dc-be42-000e0c431b58-BWiY-FL8w-AJkM-FsSs-Cwvh-E04n', 'fea6c187-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'алюминий', ''),
('fea6c187-5ab6-11dc-be42-000e0c431b58-BWLa-Flzz-ANZl-FZXi-CiIo-ESFd', 'fea6c187-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c187-5ab6-11dc-be42-000e0c431b58-BWx8-Fqi2-AFxF-FRGd-CbFq-EbCG', 'fea6c187-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c189-5ab6-11dc-be42-000e0c431b58-BBex-FnBR-AnLO-Fqix-CJzm-Eb87', 'fea6c189-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c189-5ab6-11dc-be42-000e0c431b58-BdCN-Fla3-AQx3-FeBd-Cq1g-EQ88', 'fea6c189-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c189-5ab6-11dc-be42-000e0c431b58-BIR2-FiKF-AgPl-FhdA-CK8C-EXid', 'fea6c189-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c189-5ab6-11dc-be42-000e0c431b58-BQzR-FIUS-AlAI-FIQG-CFZY-E78i', 'fea6c189-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c189-5ab6-11dc-be42-000e0c431b58-BSCJ-F2lP-AnkH-FYpp-CX0O-ENlL', 'fea6c189-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c189-5ab6-11dc-be42-000e0c431b58-BTi1-Fm8l-AbXR-FXSN-Cdgi-EUiL', 'fea6c189-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'хром', ''),
('fea6c189-5ab6-11dc-be42-000e0c431b58-Btj8-F3rN-A9xn-FWtl-C6vF-EtZH', 'fea6c189-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c189-5ab6-11dc-be42-000e0c431b58-ByCj-FGa3-AU4Z-F3O9-CEgA-EOYm', 'fea6c189-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c18b-5ab6-11dc-be42-000e0c431b58-B0Ns-FgQS-AZec-FkMo-CTtc-ERUm', 'fea6c18b-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c18b-5ab6-11dc-be42-000e0c431b58-B3AX-Ft4w-AR9g-FCj4-CNKL-EsLs', 'fea6c18b-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c18b-5ab6-11dc-be42-000e0c431b58-B4MY-Fvlt-Ala7-Fcn4-CNmH-E6IY', 'fea6c18b-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c18b-5ab6-11dc-be42-000e0c431b58-BhBW-Fee0-AXsm-Fenu-C33S-Evib', 'fea6c18b-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c18b-5ab6-11dc-be42-000e0c431b58-Bhy9-FkKl-A3v3-FZV1-CyN1-EM7u', 'fea6c18b-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c18b-5ab6-11dc-be42-000e0c431b58-BkSe-FBhz-AmPD-FWnR-CkQg-Ej9Z', 'fea6c18b-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'золото', ''),
('fea6c18b-5ab6-11dc-be42-000e0c431b58-BOh3-FqIE-AUcx-FxuH-CZoU-EyZ7', 'fea6c18b-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c18b-5ab6-11dc-be42-000e0c431b58-Bz45-Fmqp-AuGT-FE5t-CAbu-EX7P', 'fea6c18b-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c18d-5ab6-11dc-be42-000e0c431b58-BbU2-FnON-AnFT-FYcO-Cb2j-EP9E', 'fea6c18d-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c18d-5ab6-11dc-be42-000e0c431b58-BFmK-FUwW-A4bA-Fx8S-C5qN-EIth', 'fea6c18d-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c18d-5ab6-11dc-be42-000e0c431b58-BG1V-FjXD-ACO2-FHQ0-C9oB-ERD1', 'fea6c18d-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c18d-5ab6-11dc-be42-000e0c431b58-BHLA-F1mJ-An1P-FJMi-Coo4-EgRH', 'fea6c18d-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c18d-5ab6-11dc-be42-000e0c431b58-Bt6N-FDUp-ARvh-F1Bf-C6Ir-E69T', 'fea6c18d-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c18d-5ab6-11dc-be42-000e0c431b58-BxAT-FU2U-A1wd-Fhsc-C2xF-EBI2', 'fea6c18d-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c18d-5ab6-11dc-be42-000e0c431b58-BYBS-FZzP-Art7-F63p-Ccpq-Ev0i', 'fea6c18d-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c18d-5ab6-11dc-be42-000e0c431b58-BZUx-FGe3-AN7s-FaJx-COFg-EVTe', 'fea6c18d-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'медь', ''),
('fea6c18f-5ab6-11dc-be42-000e0c431b58-B28t-Ffh4-AEyV-F8Ah-CeP1-ED3W', 'fea6c18f-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', ''),
('fea6c18f-5ab6-11dc-be42-000e0c431b58-B4KU-FXoC-AiIn-FjKi-CQb4-EMLg', 'fea6c18f-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'белый матовый', ''),
('fea6c18f-5ab6-11dc-be42-000e0c431b58-B93v-FuFe-A75G-FFbM-Cw4X-ERrg', 'fea6c18f-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c18f-5ab6-11dc-be42-000e0c431b58-BbLe-FxIf-AUnu-FLqn-ChEa-EMl1', 'fea6c18f-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c18f-5ab6-11dc-be42-000e0c431b58-BPTj-FnfU-A5SH-FmHv-CeA6-EyYk', 'fea6c18f-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c18f-5ab6-11dc-be42-000e0c431b58-BrnY-Fxt1-AAgu-FYyb-C5ld-EEIr', 'fea6c18f-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c18f-5ab6-11dc-be42-000e0c431b58-BwCJ-FhN1-AKv6-Fk9g-Cb7Y-EMre', 'fea6c18f-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c18f-5ab6-11dc-be42-000e0c431b58-BYxo-FgZv-AR5w-FNtL-CylJ-EhGq', 'fea6c18f-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c191-5ab6-11dc-be42-000e0c431b58-Bbo8-F3Ll-A4bc-FzWi-CoBj-EOKo', 'fea6c191-5ab6-11dc-be42-000e0c431b58', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', '0.52', 'л'),
('fea6c191-5ab6-11dc-be42-000e0c431b58-BcHg-FnTt-AT5C-F0Ho-C1sK-EAde', 'fea6c191-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'внутренние работы', ''),
('fea6c191-5ab6-11dc-be42-000e0c431b58-BdRA-FyMe-AGJa-FhnB-CQ16-E5Gz', 'fea6c191-5ab6-11dc-be42-000e0c431b58', 'e8287600-ad96-11e3-b114-005056be1f7c', 'KUDO', ''),
('fea6c191-5ab6-11dc-be42-000e0c431b58-BhRT-Fbqj-AvnS-FXkz-CLBe-EJ4p', 'fea6c191-5ab6-11dc-be42-000e0c431b58', '42d0b52f-970f-11e4-9be0-005056be1f7c', 'эмаль', ''),
('fea6c191-5ab6-11dc-be42-000e0c431b58-BlfJ-FuUz-A3hC-F319-CPbE-EA9C', 'fea6c191-5ab6-11dc-be42-000e0c431b58', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'черный матовый', ''),
('fea6c191-5ab6-11dc-be42-000e0c431b58-BN5n-FP4v-A5ud-FEu7-CijS-Elbh', 'fea6c191-5ab6-11dc-be42-000e0c431b58', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 'универсал.', ''),
('fea6c191-5ab6-11dc-be42-000e0c431b58-BpAj-FJFT-AGo4-FZPU-C7tl-E7hy', 'fea6c191-5ab6-11dc-be42-000e0c431b58', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 'Россия', ''),
('fea6c191-5ab6-11dc-be42-000e0c431b58-BzWC-F2O3-A1dU-F6dS-C87a-Edkt', 'fea6c191-5ab6-11dc-be42-000e0c431b58', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'наружные работы', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ShopLogs`
--

CREATE TABLE IF NOT EXISTS `ShopLogs` (
  `id` varchar(200) NOT NULL,
  `user` varchar(25) NOT NULL,
  `actionType` varchar(100) NOT NULL,
  `time` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `logtext` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ShopLogsActionType`
--

CREATE TABLE IF NOT EXISTS `ShopLogsActionType` (
  `type` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopLogsActionType`
--

INSERT INTO `ShopLogsActionType` (`type`, `name`, `description`) VALUES
('add_prefix', 'Добавление префикса', 'Добавление префикса через панель администрирования'),
('add_scalar', 'Добавление скаляра', 'Добавление скаляра через панель администрирования'),
('change_group', 'Изменение группы', 'Изменение группы через панель администрирования'),
('change_product', 'Изменение товара', 'Изменение товара через панель администрирования'),
('delete_prefix', 'Удаление префикса', 'Удаление префикса через панель администрирования'),
('delete_scalar', 'Удаление скаляра', 'Удаление скаляра через панель администрирования'),
('edit_prefix', 'Редактирование префикса', 'Редактирование префикса через панель администрирования'),
('edit_scalar', 'Редактирование скаляра', 'Редактирование скаляра через панель администрирования'),
('fill_unload_file', 'Заливка файла выгрузки', 'Заливка файла выгрузки через панель администрирования'),
('full_icons_groups', 'Заливка иконок групп', 'Заливка иконок групп через панель администрирования'),
('full_images_items', 'Заливка изображений товаров', 'Заливка изображений товаров через панель администрирования'),
('removal_unloading', 'Удаление выгрузки', 'Удаление выгрузки через панель администрирования'),
('start_by_hand_importing', 'Запуск ручного импорта', 'Запуск повторного импорта выгрузки через панель администрирования');

-- --------------------------------------------------------

--
-- Структура таблицы `ShopPricesTypes`
--

CREATE TABLE IF NOT EXISTS `ShopPricesTypes` (
  `id` varchar(200) NOT NULL,
  `typeName` varchar(100) NOT NULL,
  `default` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopPricesTypes`
--

INSERT INTO `ShopPricesTypes` (`id`, `typeName`, `default`) VALUES
('288427e0-9732-11db-bbb4-0017315894a1', 'Розничная', 1),
('86157e22-e56b-11dc-8b6b-000e0c431b58', 'М. оптовая', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ShopProperties`
--

CREATE TABLE IF NOT EXISTS `ShopProperties` (
  `id` varchar(200) NOT NULL,
  `propertyName` varchar(100) NOT NULL,
  `filterType` varchar(100) NOT NULL,
  `valueType` varchar(100) NOT NULL,
  `oneOfAllValues` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopProperties`
--

INSERT INTO `ShopProperties` (`id`, `propertyName`, `filterType`, `valueType`, `oneOfAllValues`) VALUES
('0569475c-1474-11e3-82b9-0050569a1080', 'Тип', 'groupSelect', 'varchar', 0),
('0a552a3f-3bb7-11e3-80e1-005056be1f7a', 'Цвет', 'groupSelect', 'varchar', 0),
('0beb7c10-76ad-11e3-8868-005056be1f7a', 'Износоустойчивость', 'groupSelect', 'varchar', 0),
('0e31c585-9718-11e4-9be0-005056be1f7c', 'Ширина (м)', 'intRange', 'float', 0),
('1452d640-9718-11e4-9be0-005056be1f7c', 'Толщина (м)', 'intRange', 'float', 0),
('1d08380b-ce34-11e4-a80e-005056be1f7a', 'Вес (гр)', 'intRange', 'int', 0),
('1ea6fcc4-d206-11e4-9be0-005056be1f7c', 'Размер зерна (м)', 'intRange', 'int', 0),
('24cace4a-9718-11e4-9be0-005056be1f7c', 'Высота (м)', 'intRange', 'float', 0),
('27c97b3a-3bc1-11e3-80e1-005056be1f7a', 'Область применения', 'groupSelect', 'varchar', 0),
('42d0b52f-970f-11e4-9be0-005056be1f7c', 'Вид', 'groupSelect', 'varchar', 0),
('5ca72995-ad9a-11e3-b114-005056be1f7c', 'Диаметр (м)', 'intRange', 'float', 0),
('618eeb90-3bc1-11e3-80e1-005056be1f7a', 'Особенности', 'groupSelect', 'varchar', 0),
('6cd386f1-3a4b-11e3-88c8-005056be1f7a', 'Объем (л)', 'intRange', 'float', 0),
('6e62ed56-970e-11e4-9be0-005056be1f7c', 'Упаковка', 'groupSelect', 'varchar', 0),
('a34e94dc-9f77-11e3-9686-005056be1f7c', 'Морозостойкость', 'groupSelect', 'varchar', 0),
('bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 'Назначение', 'groupSelect', 'varchar', 0),
('c17ab514-3bbc-11e3-80e1-005056be1f7a', 'Блеск', 'groupSelect', 'varchar', 0),
('c2267174-970e-11e4-9be0-005056be1f7c', 'Длина (м)', 'intRange', 'float', 0),
('cce0ab91-6a67-11e4-8945-005056be1f7a', 'Страна-производитель', 'groupSelect', 'varchar', 0),
('d17cb785-d20b-11e4-9be0-005056be1f7c', '-', 'intRange', 'int', 0),
('d624040a-3bb6-11e3-80e1-005056be1f7a', 'Основа', 'groupSelect', 'varchar', 0),
('e2e87ce8-ad99-11e3-b114-005056be1f7c', 'Расход', 'intRange', 'float', 0),
('e765ba72-107d-11e3-8a5d-0050569a1080', 'База', 'groupSelect', 'varchar', 0),
('e765ba75-107d-11e3-8a5d-0050569a1080', '-', 'intRange', 'float', 0),
('e8287600-ad96-11e3-b114-005056be1f7c', 'Брэнд', 'groupSelect', 'varchar', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ShopPropertiesFilterType`
--

CREATE TABLE IF NOT EXISTS `ShopPropertiesFilterType` (
  `type` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopPropertiesFilterType`
--

INSERT INTO `ShopPropertiesFilterType` (`type`, `name`, `description`) VALUES
('bool', 'да/нет', 'Представляет из себя переключатель с двумя позициями: Да или Нет'),
('groupSelect', 'Множественный выбор', 'Позволяет выбрать несколько значений из всех известных'),
('intRange', 'Целочисленный диапазон', 'Представляет из себя ползунок которым можно задать диапазон целых чисел'),
('none', 'Нет фильтра', 'По данному полю поиск производиться не будет.'),
('select', 'Выпадающий список', 'Позволяет выбрать одно значение из всех доступных'),
('text', 'Текстовое поле', 'Текстовое поля для ввода текста для поиска');

-- --------------------------------------------------------

--
-- Структура таблицы `ShopPropertiesInGroups`
--

CREATE TABLE IF NOT EXISTS `ShopPropertiesInGroups` (
  `group` varchar(200) NOT NULL,
  `property` varchar(200) NOT NULL,
  `sequence` int(3) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopPropertiesInGroups`
--

INSERT INTO `ShopPropertiesInGroups` (`group`, `property`, `sequence`) VALUES
('569e2343-ff83-11e4-9228-005056be1f7a', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 2),
('569e2343-ff83-11e4-9228-005056be1f7a', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 1),
('569e2345-ff83-11e4-9228-005056be1f7a', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 2),
('569e2345-ff83-11e4-9228-005056be1f7a', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 1),
('6aa6af7c-ff83-11e4-9228-005056be1f7a', '1ea6fcc4-d206-11e4-9be0-005056be1f7c', 2),
('6aa6af7c-ff83-11e4-9228-005056be1f7a', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 1),
('6ecba52d-fe13-11e4-9228-005056be1f7a', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 2),
('6ecba52d-fe13-11e4-9228-005056be1f7a', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 1),
('72429777-ff83-11e4-9228-005056be1f7a', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 1),
('7ab9d88b-fe13-11e4-9228-005056be1f7a', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 3),
('7ab9d88b-fe13-11e4-9228-005056be1f7a', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 1),
('7ab9d88b-fe13-11e4-9228-005056be1f7a', 'e765ba72-107d-11e3-8a5d-0050569a1080', 2),
('7eed2035-ff83-11e4-9228-005056be1f7a', '618eeb90-3bc1-11e3-80e1-005056be1f7a', 2),
('7eed2035-ff83-11e4-9228-005056be1f7a', 'd624040a-3bb6-11e3-80e1-005056be1f7a', 1),
('9f0afb1c-fe0f-11e4-9228-005056be1f7a', '0a552a3f-3bb7-11e3-80e1-005056be1f7a', 1),
('9f0afb1c-fe0f-11e4-9228-005056be1f7a', '1d08380b-ce34-11e4-a80e-005056be1f7a', 8),
('9f0afb1c-fe0f-11e4-9228-005056be1f7a', '27c97b3a-3bc1-11e3-80e1-005056be1f7a', 2),
('9f0afb1c-fe0f-11e4-9228-005056be1f7a', '42d0b52f-970f-11e4-9be0-005056be1f7c', 7),
('9f0afb1c-fe0f-11e4-9228-005056be1f7a', '6cd386f1-3a4b-11e3-88c8-005056be1f7a', 5),
('9f0afb1c-fe0f-11e4-9228-005056be1f7a', 'bbea9c1a-3a4b-11e3-88c8-005056be1f7a', 6),
('9f0afb1c-fe0f-11e4-9228-005056be1f7a', 'cce0ab91-6a67-11e4-8945-005056be1f7a', 4),
('9f0afb1c-fe0f-11e4-9228-005056be1f7a', 'e8287600-ad96-11e3-b114-005056be1f7c', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `ShopPropertiesValueType`
--

CREATE TABLE IF NOT EXISTS `ShopPropertiesValueType` (
  `type` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ShopPropertiesValueType`
--

INSERT INTO `ShopPropertiesValueType` (`type`, `name`, `description`) VALUES
('bool', 'Белевое значение', 'Белевое значение'),
('float', 'Десятичное число', 'Десятичное число'),
('int', 'Целое число', 'Целое число'),
('text', 'Текст', 'Большой объем текста с поддержкой HTML тегов'),
('varchar', 'Строка', 'Строка длинной до 200 символов');

-- --------------------------------------------------------

--
-- Структура таблицы `Sliders`
--

CREATE TABLE IF NOT EXISTS `Sliders` (
  `alias` varchar(100) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `hideTools` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `show_randomly` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `controls` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `controls_position` varchar(50) NOT NULL,
  `focus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `focus_position` varchar(50) NOT NULL,
  `numbers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `numbers_align` varchar(50) NOT NULL,
  `progressbar` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enable_navigation_keys` tinyint(4) NOT NULL DEFAULT '1',
  `label` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `labelAnimation` varchar(50) NOT NULL,
  `dots` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `thumbs` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `preview` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `animations` varchar(50) NOT NULL,
  `interval` int(10) unsigned NOT NULL DEFAULT '4000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `SlidersControlsPosition`
--

CREATE TABLE IF NOT EXISTS `SlidersControlsPosition` (
  `alias` varchar(50) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `SlidersControlsPosition`
--

INSERT INTO `SlidersControlsPosition` (`alias`, `description`) VALUES
('center', 'Поцентру'),
('leftBottom', 'Левый нижний угол'),
('leftTop', 'Левый верхний угол'),
('rightBottom', 'Правый нижний угол'),
('rightTop', 'Правый верхний угол');

-- --------------------------------------------------------

--
-- Структура таблицы `SlidersFocusPosition`
--

CREATE TABLE IF NOT EXISTS `SlidersFocusPosition` (
  `alias` varchar(50) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `SlidersFocusPosition`
--

INSERT INTO `SlidersFocusPosition` (`alias`, `description`) VALUES
('center', 'Поцентру'),
('leftBottom', 'Левый нижний угол'),
('leftTop', 'Левый верхний угол'),
('rightBottom', 'Правый нижний угол'),
('rightTop', 'Правый верхний угол');

-- --------------------------------------------------------

--
-- Структура таблицы `SlidersLabelAnimation`
--

CREATE TABLE IF NOT EXISTS `SlidersLabelAnimation` (
  `alias` varchar(50) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `SlidersLabelAnimation`
--

INSERT INTO `SlidersLabelAnimation` (`alias`, `description`) VALUES
('fixed', 'фиксированно'),
('left', 'с левой стороны'),
('right', 'с правой стороны'),
('slideUp', 'снизу вверх');

-- --------------------------------------------------------

--
-- Структура таблицы `SlidersNumbersAlign`
--

CREATE TABLE IF NOT EXISTS `SlidersNumbersAlign` (
  `alias` varchar(50) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `SlidersNumbersAlign`
--

INSERT INTO `SlidersNumbersAlign` (`alias`, `description`) VALUES
('center', 'по центру'),
('left', 'по левой стороне'),
('right', 'по правой стороне');

-- --------------------------------------------------------

--
-- Структура таблицы `SlidersThemes`
--

CREATE TABLE IF NOT EXISTS `SlidersThemes` (
  `alias` varchar(50) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `SlidersThemes`
--

INSERT INTO `SlidersThemes` (`alias`, `description`) VALUES
('clean', 'Круглые кнопки переключения на слайдере'),
('default', 'Тема по умолчанию'),
('minimalist', 'Тема минимализма'),
('round', 'Полукруглые стрелки по бокам слайдера, словно окружают его'),
('square', 'Квадратные кнопки переключения на слайдере');

-- --------------------------------------------------------

--
-- Структура таблицы `Slides`
--

CREATE TABLE IF NOT EXISTS `Slides` (
  `fileName` varchar(50) NOT NULL,
  `slider` varchar(100) NOT NULL,
  `sequence` int(11) NOT NULL,
  `animation` varchar(50) NOT NULL,
  `url` text,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `SlidesAnimations`
--

CREATE TABLE IF NOT EXISTS `SlidesAnimations` (
  `alias` varchar(50) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `SlidesAnimations`
--

INSERT INTO `SlidesAnimations` (`alias`, `description`) VALUES
('blind', ''),
('blindHeight', ''),
('blindWidth', ''),
('block', ''),
('circles', ''),
('circlesInside', ''),
('circlesRotate', ''),
('cube', ''),
('cubeHide', ''),
('cubeJelly', ''),
('cubeRandom', ''),
('cubeShow', ''),
('cubeSize', ''),
('cubeSpread', ''),
('cubeStop', ''),
('cubeStopRandom', ''),
('cut', ''),
('directionBottom', ''),
('directionLeft', ''),
('directionRight', ''),
('directionTop', ''),
('downBars', ''),
('fade', ''),
('fadeFour', ''),
('glassBlock', ''),
('glassCube', ''),
('hideBars', ''),
('horizontal', ''),
('paralell', ''),
('random', ''),
('randomSmart', ''),
('showBars', ''),
('showBarsRandom', ''),
('swapBars', ''),
('swapBarsBack', ''),
('swapBlocks', ''),
('tube', ''),
('upBars', '');

-- --------------------------------------------------------

--
-- Структура таблицы `TemplateBlocks`
--

CREATE TABLE IF NOT EXISTS `TemplateBlocks` (
`id` bigint(20) unsigned NOT NULL,
  `block` varchar(50) NOT NULL,
  `template` varchar(50) NOT NULL,
  `description` text
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `TemplateBlocks`
--

INSERT INTO `TemplateBlocks` (`id`, `block`, `template`, `description`) VALUES
(101, 'LeftTopHeadBlock', 'apelsinShop', NULL),
(102, 'LeftBottomHeadBlock', 'apelsinShop', NULL),
(103, 'MenuBlock', 'apelsinShop', NULL),
(104, 'BeforeContentBlock', 'apelsinShop', NULL),
(105, 'ContentTopBlock', 'apelsinShop', NULL),
(106, 'ContentBottomBlock', 'apelsinShop', NULL),
(107, 'AfterContentBlock', 'apelsinShop', NULL),
(108, 'FutterLeftBlock', 'apelsinShop', NULL),
(109, 'FutterRightBlock', 'apelsinShop', NULL),
(1000, 'test', 'apelsinShopTest', NULL),
(2000, 'ShopNavigationPanel', 'apelsinShopTest', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `TemplateDependence`
--

CREATE TABLE IF NOT EXISTS `TemplateDependence` (
`id` bigint(20) unsigned NOT NULL,
  `template` varchar(50) NOT NULL,
  `depends` varchar(50) NOT NULL,
  `versionStart` varchar(100) DEFAULT NULL,
  `versionEnd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Templates`
--

CREATE TABLE IF NOT EXISTS `Templates` (
  `alias` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `description` text,
  `default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `main` varchar(100) NOT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `print` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Templates`
--

INSERT INTO `Templates` (`alias`, `name`, `author`, `version`, `description`, `default`, `main`, `mobile`, `print`) VALUES
('apelsinShop', 'Магазин Апельсин', 'Compu Project', '1.0', 'Шаблон для магазина', 0, 'index.php', 'mobile.php', 'print.php'),
('apelsinShopTest', 'Апельсин', 'Compu Project', '1.0', 'Основной шаблон сайта', 1, 'index.php', 'mobile.php', 'print.php');

-- --------------------------------------------------------

--
-- Структура таблицы `UrlTarget`
--

CREATE TABLE IF NOT EXISTS `UrlTarget` (
`id` int(10) unsigned NOT NULL,
  `target` varchar(30) NOT NULL COMMENT 'инструкция об отскрытии ссылки',
  `description` varchar(45) DEFAULT NULL COMMENT 'Описание'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='тип ссылки. как ее открывать';

--
-- Дамп данных таблицы `UrlTarget`
--

INSERT INTO `UrlTarget` (`id`, `target`, `description`) VALUES
(1, '_blank', 'Opens the linked document in a new window or '),
(2, '_self', 'Opens the linked document in the same frame a'),
(3, '_parent', 'Opens the linked document in the parent frame'),
(4, '_top', 'Opens the linked document in the full body of');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `login` varchar(25) NOT NULL,
  `nickname` varchar(25) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `ferstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `birthday` datetime NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1 - мужской\n0 - женский',
  `city` varchar(200) NOT NULL,
  `group` varchar(50) NOT NULL,
  `registered` datetime NOT NULL,
  `lastVisit` datetime NOT NULL,
  `activated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activatedHash` varchar(200) NOT NULL,
  `disable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delete` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` varchar(150) DEFAULT NULL,
  `aboutYourself` text,
  `icq` varchar(9) DEFAULT NULL,
  `skype` varchar(25) DEFAULT NULL,
  `vk` varchar(25) DEFAULT NULL,
  `odnoklasniki` varchar(25) DEFAULT NULL,
  `google` varchar(25) DEFAULT NULL,
  `facebook` varchar(25) DEFAULT NULL,
  `twitter` varchar(25) DEFAULT NULL,
  `instagram` varchar(25) DEFAULT NULL,
  `youtube` varchar(25) DEFAULT NULL,
  `livejournal` varchar(25) DEFAULT NULL,
  `blogger` varchar(25) DEFAULT NULL,
  `siteName` varchar(25) DEFAULT NULL,
  `siteUrl` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`login`, `nickname`, `password`, `email`, `phone`, `ferstName`, `lastName`, `birthday`, `sex`, `city`, `group`, `registered`, `lastVisit`, `activated`, `activatedHash`, `disable`, `delete`, `status`, `aboutYourself`, `icq`, `skype`, `vk`, `odnoklasniki`, `google`, `facebook`, `twitter`, `instagram`, `youtube`, `livejournal`, `blogger`, `siteName`, `siteUrl`) VALUES
('grimih', 'Grimih', 'bbfd0bf8425e1c91e8807cbe99393407', 'grinenko@apelsin.ru', '+79308701701', 'Михаил', 'Гриненко', '1982-08-12 00:00:00', 1, 'Рязань', 'Administrator', '2014-09-19 04:39:51', '2014-09-19 04:39:51', 1, 'd2ccebe4505dddd2f4c33c36370f1c5e', 0, 0, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('m27', 'm27', 'd57e26d0e2f4d7356686cbb5979a4f82', 'pplheiter@gmail.com', '8-920-986-54-98', 'Данила', 'Андронов', '2014-01-17 00:00:00', 1, 'Рязань', 'Administrator', '2014-09-19 04:36:23', '2014-09-19 04:36:23', 1, 'c03f02a9510235b55d5e0ce8f1bc48af', 0, 0, NULL, 'Бла-бла-бла', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('olga', 'Olga', '12836c0b33a98b189d3e7aa4e191a0a9', 'olga.rjabchicova@gmail.com', '89105675898', 'Ольга', 'Рябчикова', '1974-09-27 00:00:00', 0, 'Рязань', 'Administrator', '2014-09-19 00:00:00', '2014-09-19 00:00:00', 1, '12836c0b33a98b189d3e7aa4e191a0a9', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('raymefise', 'RayMefise', 'a48f3792917ce52e0b6e8d412f061bf4', 'zaytsev.max90@gmail.com', '89105665485', 'Максим', 'Зайцев', '1990-03-01 00:00:00', 1, 'Рязань', 'Administrator', '2013-11-06 12:08:42', '2013-11-06 12:08:42', 1, 'd4af759b9c284a163c6d3d6fe7575eb4', 0, 0, 'Уровень сарказма в моем ответе зависит от уровня тупости вашего вопроса.', 'Психология - это искусство иметь людей раньше чем они поимеют вас!\r\n\r\nЛучший изгиб на теле женщины - это ее улыбка. \r\n\r\nПеред сексом вы помогаете друг другу раздеться, после секса вы одеваете только себя.\r\nМораль: в жизни никто не поможет вам, когда вас поимеют.\r\n\r\nУстой традиций надо соблюдать,\r\nПускай не раз ответят вам отказом,\r\nКонечно дама может и не дать,\r\nНо предложить, ты ей, всегда обязан.', '430776', 'mefise_ray', 'raymefise', '', '113232610557507330855', 'ray.mefise', 'RayMefise', 'ray_mefise', 'RayMefise', '', '', 'Compu Project', 'compuproject.com');

-- --------------------------------------------------------

--
-- Структура таблицы `UsersAgreements`
--

CREATE TABLE IF NOT EXISTS `UsersAgreements` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `text` longtext NOT NULL,
  `dateOfChange` datetime NOT NULL,
`sequence` int(10) unsigned NOT NULL,
  `site` tinyint(4) NOT NULL DEFAULT '1',
  `admin` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `UsersAgreements`
--

INSERT INTO `UsersAgreements` (`id`, `name`, `text`, `dateOfChange`, `sequence`, `site`, `admin`) VALUES
(1, 'Пользовательское соглашение', '<b><u>Пользовательское соглашение</u></b>\r\n<ol>\r\n<li><b><u>Общее положения</u></b>\r\n<ol>\r\n<li>Администрация предлагает Пользователю использовать сервисы Интернет-сайта на условиях, изложенных в настоящем Пользовательском соглашении. Соглашение вступает в силу с момента выражения Пользователем согласия с его условиями в порядке, предусмотренном п. 1.3 Соглашения.</li>\r\n<li>Использование сервисов Интернет-сайта регулируется настоящим Соглашением. Соглашение может быть изменено Администрацией без какого-либо специального уведомления, новая редакция Соглашения вступает в силу с момента ее размещения в сети Интернет по указанному адресу в п. 1.5 Соглашения.</li>\r\n<li>Начиная использовать сервис Интернет-сайта, пройдя процедуру регистрации, Пользователь считается принявшим условия Соглашения в полном объеме, без всяких оговорок и исключений. </li>\r\n<li>В случае несогласия Пользователя с какими-либо из положений Соглашения, Пользователь не в праве использовать сервисы Интернет-сайта. В случае если Администрацией были внесены какие-либо изменения в Соглашение в порядке, предусмотренном пунктом 1.2 Соглашения, с которыми Пользователь не согласен, он обязан прекратить использование сервисов Интернет-сайта.</li>\r\n</ol>\r\n</li>\r\n<li><b><u>Правила пользования Сайтом</u></b>\r\n<ol>\r\n<li>Пользование Сайтом возможно только при условии согласия Пользователя с условиями Соглашения и присоединения к нему в порядке, предусмотренном Соглашением. Для возможности использования основного функционала Сайта Пользователь создает Аккаунт.</li>\r\n<li>При регистрации Аккаунта Пользователем указывается актуальная и соответствующая действительности информация, в том числе Ф.И.О., пол, дата рождения и прочая информация. В случае указания неверных данных Пользователю будет отказано в использовании сервисов Интернет-сайта, а так же в участие на фестивале. </li>\r\n<li>Для входа на Сайт Пользователем формируются уникальные учетные данные - логин и пароль, которые являются конфиденциальной информацией и не подлежат разглашению, за исключением случаев, предусмотренных действующим законодательством и/или Соглашением. Риск осуществления мошеннических и иных неправомерных действий с Аккаунтом Пользователя в связи с утратой пароля несет Пользователь.</li>\r\n<li>Персональные данные Пользователя, указанные им при регистрации, а именно фамилия, имя, дата рождения, город проживания и прочая информация, отражаемая в Аккаунте и Профиле Пользователя (далее по тексту - персональные данные), обрабатываются Администрацией для исполнения Соглашения, предоставления Сервисов, оказания услуг Пользователю посредством Сайта.</li>\r\n<li>Присоединяясь к Соглашению и размещая данные в Аккаунте, Пользователь выражает свое согласие на обработку персональных данных Администрацией и на отражение персональных данных в Профиле Пользователя.</li>\r\n<li>Пользователь соглашается с тем, что Администрация в процессе обработки персональных данных имеет право осуществлять с персональными данными следующие действия: сбор, систематизацию, накопление, хранение, использование, уничтожение и иные необходимые в целях исполнения Соглашения и реализации Сервисов действия.</li>\r\n<li>После регистрации Аккаунта Пользователь вправе осуществлять наполнение Аккаунта  Контентом, добавлять фотографии и иные материалы в соответствии с предоставленным функционалом, предоставленными Администрацией при условии соблюдения Соглашения.</li>\r\n<li>Пользователь осознает и соглашается, что размещаемая в Аккаунте Пользователя Информация доступна для ознакомления иным Пользователям через Персональную страницу (Профиль) Пользователя.</li>\r\n<li>Вход на Сайт Пользователем, ранее зарегистрировавшим Аккаунт, осуществляется каждый раз путем прохождения процедуры авторизации - введения логина и пароля Пользователя, перехода по гиперссылке, полученной по электронной почте.</li>\r\n<li>Лицо, авторизовавшееся на Сайте, считается надлежащим владельцем Аккаунта Пользователя, доступ к использованию и управлению которого были получены в результате такой авторизации.</li>\r\n<li>Способы восстановления доступа к Аккаунту, авторизации Пользователя могут быть изменены, отменены или дополнены Администрацией в одностороннем порядке.</li>\r\n<li>Администрация обеспечивает функционирование Сайта в круглосуточном режиме, однако не гарантирует отсутствие перерывов, связанных с техническими неисправностями или проведением профилактических работ. Администрация не гарантирует, что Сайт или любые Сервисы будут функционировать в любое конкретное время в будущем или что они не прекратят работу.</li>\r\n</ol>\r\n</li>\r\n<li><b><u>Права и обязанности Пользователя</u></b>\r\n<ol>\r\n<li>Пользователь вправе:\r\n<ol>\r\n<li>производить настройки Аккаунта и Профиля, менять пароль для доступа к Аккаунту;</li>\r\n<li>размещать в Аккаунте Пользователя информацию о себе, добавлять фотографии, статусы;</li>\r\n<li>осуществлять поиск иных Пользователей в сообществах Пользователей, а также по информации, известной Пользователю и соответствующей информации, размещаемой отыскиваемым Пользователем на Персональной странице;</li>\r\n<li>отправлять и получать Личные сообщения, добавлять сообщения в чат;</li>\r\n<li>осуществлять иные, не запрещенные законодательством Российской Федерации или Соглашением действия, связанные с использованием Сайта.</li>\r\n</ol>\r\n<li> Пользователь гарантирует, что обладает всеми необходимыми полномочиями, для заключения настоящего Соглашения.</li>\r\n<li>Пользователь обязуется:\r\n<ol>\r\n<li>в момент регистрации Аккаунта указывать соответствующие действительности сведения в том числе Ф.И.О., пол, дата рождения и прочая информация. В случае указания неверных данных Пользователю будет отказано в использовании сервисов Интернет-сайта, а так же в участие на фестивале;</li>\r\n<li>принимать необходимые меры для обеспечения конфиденциальности учетных данных (логин и пароль), используемых для доступа к Аккаунту, следить за тем, чтобы пароль не сохранялся в браузере при возможном использовании компьютера другими лицами;</li>\r\n<li>уведомлять Администрацию Сайта обо всех случаях совершения в отношении Пользователя действий, которые могут быть расценены как оскорбительные, унижающие, дискредитирующие и т.п.;</li>\r\n<li>не совершать указанные в разделе 4 Соглашения запрещенные действия.</li>\r\n</ol></li>\r\n</ol></li>\r\n<li><b><u>Пользователю запрещается</u></b>\r\n<ol>\r\n<li>Осуществлять сбор персональных данных других Пользователей;</li>\r\n<li>Использовать любые автоматические или автоматизированные средства для сбора информации, размещенной на Сайте;</li>\r\n<li>Осуществлять пропаганду или агитацию, возбуждающую социальную, расовую, национальную или религиозную ненависть и вражду, пропаганду войны, социального, расового, национального, религиозного или языкового превосходства;</li>\r\n<li>Размещать на Сайте или передавать посредством Личных сообщений информацию ограниченного доступа (конфиденциальную информацию) третьих лиц, если Пользователь не обладает достаточными правами в силу закона или договора на раскрытие данной информации;</li>\r\n<li>Размещать на Сайте в открытом доступе (в чате, в комментариях и/или статусах) или передавать посредством Личных сообщений текстовые сообщения, графические изображения или иные материалы, содержание которых является оскорбительным для других Пользователей или иных лиц или может быть расценено в качестве такового, а также сообщения, изображения и иные материалы, которые дискредитируют Пользователей или иных лиц, содержат угрозы, призывы к насилию, совершению противоправных деяний, антиобщественных, аморальных поступков, а также совершению любых иных действий, противоречащих основам правопорядка и нравственности;</li>\r\n<li>Размещать на Сайте сообщения, графические изображения или другие материалы (в том числе не соответствующие действительности), размещение которых наносит или может нанести ущерб чести, достоинству и деловой репутации гражданина или деловой репутации организации;</li>\r\n<li>Размещать на Сайте сообщения, содержащие нецензурные слова и выражения;</li>\r\n<li>Размещать на Сайте материалы порнографического или эротического характера, фотографии людей в нижнем белье, за исключением купальных костюмов, или гипертекстовые ссылки на Интернет-сайты, содержащие такие материалы;</li>\r\n<li>Размещать на Сайте материалы с изображением алкогольной или табачной продукции, а так же с имитацией процесса курения и употребления алкогольных напитков;</li>\r\n<li>Размещать на Сайте персональные данные, в том числе контактные данные, других Пользователей или иных лиц без их предварительного согласия;</li>\r\n<li>Указывать при регистрации Аккаунта или вводить впоследствии заведомо ложную или вымышленную информацию о себе, в частности чужие или вымышленные имя и фамилию;</li>\r\n<li>Размещать на Сайте в качестве собственной фотографии изображения других лиц или вымышленных персонажей, изображения животных, предметов, абстрактные изображения, а также любые иные графические изображения, не являющиеся изображениями Пользователя, размещающего данные изображения;</li>\r\n<li>Регистрировать Аккаунт Пользователя в целях использования группой лиц или организацией без предварительного явного согласия Администрации;</li>\r\n<li>Регистрировать более одного Аккаунта Пользователя одним и тем же лицом;</li>\r\n<li>Размещать на Сайте в открытом доступе без предварительного согласия Администрации Сайта, передавать посредством Личных сообщений без предварительного согласия Пользователя текстовые сообщения, графические изображения и иные материалы, которые содержат рекламу;</li>\r\n<li>Осуществлять действия, направленные на дестабилизацию функционирования Сайта, осуществлять попытки несанкционированного доступа к управлению Сайтом или его закрытым разделам (разделам, доступ к которым разрешен только Администрации), а также осуществлять любые иные аналогичные действия;</li>\r\n<li>Осуществлять несанкционированный доступ к Аккаунтам иных Пользователей путем подборки или введения пароля, а также предпринимать попытки такого доступа;</li>\r\n<li>Использовать Сайт в каких-либо коммерческих целях без предварительного разрешения Администрации Сайта, за исключением случаев, предусмотренных настоящим Соглашением;</li>\r\n<li>Осуществлять рассылку спама - массовую рассылку коммерческой, политической, рекламной и иной информации (в том числе гиперссылок, ведущих на интернет-сайты с такой информацией и/или на интернет-сайты, содержащие вредоносное программное обеспечение) в Личных сообщениях, комментариях, сообщениях в чате и т.п., если Пользователи-получатели не выражали своего согласия на получение такого рода информации;</li>\r\n<li>Использовать Сайт для целей поиска и подбора персонала, размещения резюме, поиска должников или иных подобных целей.</li>\r\n</ol></li>\r\n<li><b><u>Права и обязанности Администрации Сайта</u></b>\r\n<ol>\r\n<li>Администрация осуществляет текущее управление Сайтом, определяет его структуру, внешний вид, разрешает или ограничивает доступ Пользователей к Сайту, осуществляет иные принадлежащие ей права.</li>\r\n<li>В части предоставления возможности взаимодействия между Пользователями, в том числе предоставления Пользователям возможности самостоятельно совершать те или иные действия в рамках Сайта, Администрация является лицом, только организовавшим техническую возможность такого взаимодействия, и связанные с таким взаимодействием передача, хранение и обеспечение доступа посредством сети Интернет к предоставляемой Пользователями информации, графическим изображениям и иным материалам, осуществляются без изменения таких материалов или влияния на них со стороны Администрации.</li>\r\n<li>Администрация решает вопросы о порядке размещения на Сайте рекламы, участия в партнерских программах и т.д.</li>\r\n<li>Администрация не несет ответственности за размещенные Пользователями Материалы, и предупреждает об уголовной ответственности за нарушение законодательства Российской Федерации.</li>\r\n<li>Администрация имеет право:\r\n<ol>\r\n<li>в любое время изменять оформление Сайта, его содержание, список Сервисов, изменять или дополнять используемые скрипты, программное обеспечение, Контент Администрации и другие объекты, используемые или хранящиеся на Сайте, любые серверные приложения, с уведомлением Пользователя или без такового;</li>\r\n<li>по своему усмотрению удалять любую информацию, в том числе размещаемую Пользователем на Сайте в нарушение законодательства Российской Федерации или положений Соглашения;</li>\r\n<li>использовать Материалы Пользователя в целях рекламы Сайта на свое усмотрение без какой-либо компенсации;</li>\r\n<li>использовать Материалы Пользователя  и/или их отдельные части (фрагменты) любыми способами (в т.ч. без указаний имени автора, модели и т.п.), в любой форме в любых целях, в том числе, в рекламных, макетах, рекламных модулях и т.д., без какой-либо компенсации;</li>\r\n<li>приостанавливать, ограничивать или прекращать доступ Пользователя ко всем или к любому из разделов Сайта, сообществам, группам на Сайте, Сервисам Администрации и/или Сервисам Партнеров Администрации, удалять создаваемые Пользователями сообщества и группы, в любое время без объяснения причин, с предварительным уведомлением или без такового;</li>\r\n<li>удалить Аккаунт Пользователя по своему усмотрению, в том числе в случае совершения Пользователем действий, нарушающих законодательство Российской Федерации или положения Соглашения;</li>\r\n<li>осуществлять рассылку Пользователям сообщений (в том числе сообщений по электронной почте, sms-сообщений и т.п.), являющихся уведомлениями о введении в действие новых, либо отмене старых услуг, утверждении и опубликовании новой редакции Соглашения, о новых Личных сообщениях, комментариях к фотографиям и статусам в Профиле Пользователя и т.п., содержащих рекламную информацию о Сервисах Администрации.</li>\r\n</ol></li>\r\n<li> Администрация не занимается рассмотрением и разрешением споров и конфликтных ситуаций, возникающих между Пользователями, а также между Пользователем и Партнером Администрации при использовании Пользователем Сервиса Партнера Администрации, однако по своему усмотрению может содействовать в разрешении возникших конфликтов. Администрация вправе приостановить, ограничить или прекратить доступ Пользователя к Сайту, в случае получения от других Пользователей мотивированных жалоб на некорректное поведение данного Пользователя на Сайте.</li>\r\n</ol></li>\r\n<li><b><u>Использование пользовательских материалов</u></b>\r\n<ol>\r\n<li>Принимая условия настоящего Соглашения, Пользователь безвозмездно предоставляет Администрации право использования материалов, который Пользователь добавляет, размещает или транслирует на Сайт. </li>\r\n<li>Размещаемые на Сайте Материалы не должны содержать:\r\n<ol>\r\n<li>материалы, которые нарушают действующие нормативно-правовые акта Российской Федерации, являются вредоносными, угрожающими, оскорбляющими нравственность, честь и достоинство, права и охраняемые законом интересы третьих лиц, клеветническими, нарушающими авторские права, пропагандирующими ненависть и/или дискриминацию людей по расовому, этническому, половому, социальному признакам, способствующие разжиганию религиозной, расовой или межнациональной розни, содержащие сцены насилия, либо жестокого обращения с животными, и т.д.;</li>\r\n<li>ущемления прав меньшинств;</li>\r\n<li>выдачи себя за другого человека или представителя организации и/или сообщества без достаточных на то прав, а также введения в заблуждение относительно свойств и характеристик каких-либо субъектов или объектов;</li>\r\n<li>неразрешенной специальным образом рекламной информации, спама, схем «пирамид», «писем счастья»;</li>\r\n<li>материалы, содержащие компьютерные коды, предназначенные для нарушения, уничтожения либо ограничения функциональности любого компьютерного или телекоммуникационного оборудования или программ, для осуществления несанкционированного доступа, а также серийные номера к коммерческим программным продуктам, логины, пароли и прочие средства для получения несанкционированного доступа к платным ресурсам в Интернет;</li>\r\n<li>умышленного или случайного нарушения каких-либо применимых нормативно-правовых актов;</li>\r\n<li>сбора и хранения персональных данных других пользователей;</li>\r\n<li>несогласованной передачи записей рекламного, коммерческого или агитационного характера;</li>\r\n<li>рекламы наркотических средств, алкогольной или табачной продукции, а так же с имитацией процесса курения и употребления алкогольных напитков и наркотиков;</li>\r\n<li>записи в чей-либо адрес, содержащие грубые и оскорбительные выражения.</li>\r\n</ol></li>\r\n</ol></li>\r\n<li><b><u>Прочие условия</u></b>\r\n<ol>\r\n<li>Соглашение вступает в силу с момента принятия его условий Пользователем. Соглашение выражается путем проставления отметки в соответствующем поле во время регистрации Аккаунта Пользователя, а также совершения Пользователем любого из действий по пользованию Сайтом (например, авторизация, фактическое потребление оказываемых услуг, загрузка Контента, использование Сервиса и т.п.). В случае несогласия с условиями Соглашения, Пользователь обязан прекратить пользование Сайтом и удалить Аккаунт Пользователя.</li>\r\n<li>Удаление Аккаунта означает автоматическое удаление персональных данных, Контента, настроек Аккаунта и Профиля, имеющихся у Пользователя ОКов, а также иной имеющейся в Аккаунте Пользователя информации.</li>\r\n<li>Положения Соглашения могут быть дополнены, изменены или отменены Администрацией Сайта в одностороннем порядке без предварительного уведомления Пользователей. Администрация Сайта вправе известить Пользователя о внесенных в Соглашение изменениях или о вступлении в силу новой редакции Соглашения путем опубликования уведомления на Сайте, отправки Личных сообщений Пользователю или иным способом по выбору Администрации Сайта.</li>\r\n<li>К правам и обязанностям Сторон, возникшим на основании редакции Соглашения, утратившей свою силу, применяются положения действующей (актуальной) редакции Соглашения, если иное не вытекает из характера возникших между Сторонами отношений.</li>\r\n<li>Претензии Пользователя, направляемые Администрации, принимаются и рассматриваются при условии указания актуальных и достоверных данных Пользователя, указанных в Аккаунте. Принимая во внимание возможное наличие Аккаунтов со схожими учетными данными, Администрация вправе требовать предоставления дополнительных сведений и информации, в том числе в отношении Аккаунта Пользователя, позволяющих определить, в связи с каким Аккаунтом поступила претензия, или установить принадлежность Аккаунта лицу, обратившемуся с претензией.</li>\r\n</ol></li>\r\n</ol>', '2013-11-05 06:13:33', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `UsersGroups`
--

CREATE TABLE IF NOT EXISTS `UsersGroups` (
  `group` varchar(50) NOT NULL,
  `adminDefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `siteDefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `loginInAdminPanel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `changeSettings` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionUsersShow` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionUsersCreate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionUsersEdit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionUsersDelete` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionUsersGroupCreate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionUsersGroupEdit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionUsersGroupDelete` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionPagesCreate` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `permissionPagesEdit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionPagesDelete` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionModulesCreate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionModulesEdit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionModulesDelete` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `permissionPluginsEdit` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `UsersGroups`
--

INSERT INTO `UsersGroups` (`group`, `adminDefault`, `siteDefault`, `loginInAdminPanel`, `changeSettings`, `permissionUsersShow`, `permissionUsersCreate`, `permissionUsersEdit`, `permissionUsersDelete`, `permissionUsersGroupCreate`, `permissionUsersGroupEdit`, `permissionUsersGroupDelete`, `permissionPagesCreate`, `permissionPagesEdit`, `permissionPagesDelete`, `permissionModulesCreate`, `permissionModulesEdit`, `permissionModulesDelete`, `permissionPluginsEdit`) VALUES
('Administrator', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Moderator', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
('SuperModerator', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0),
('User', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `UsersGroups_Lang`
--

CREATE TABLE IF NOT EXISTS `UsersGroups_Lang` (
  `group` varchar(50) NOT NULL,
  `lang` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `UsersGroups_Lang`
--

INSERT INTO `UsersGroups_Lang` (`group`, `lang`, `name`, `description`) VALUES
('Administrator', 'rus', 'Администратор', 'Администратор системы'),
('Moderator', 'rus', 'Модератор', 'Модератор сайта'),
('SuperModerator', 'rus', 'Главный модератор', 'Главный модератор сайта'),
('User', 'rus', 'Пользователь', 'Пользователь сайта');

-- --------------------------------------------------------

--
-- Структура таблицы `UsersMassage`
--

CREATE TABLE IF NOT EXISTS `UsersMassage` (
`id` bigint(20) unsigned NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `sender` varchar(25) NOT NULL,
  `addressee` varchar(25) NOT NULL,
  `sender_read` tinyint(4) NOT NULL DEFAULT '0',
  `addressee_read` tinyint(4) NOT NULL DEFAULT '0',
  `sender_delete` tinyint(4) NOT NULL DEFAULT '0',
  `addressee_delete` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `UsersNotifications`
--

CREATE TABLE IF NOT EXISTS `UsersNotifications` (
`id` bigint(20) unsigned NOT NULL,
  `user` varchar(25) NOT NULL,
  `date` datetime NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `UsersNotifications`
--

INSERT INTO `UsersNotifications` (`id`, `user`, `date`, `type`) VALUES
(1, 'raymefise', '2013-11-16 00:00:00', 'notification'),
(2, 'raymefise', '2013-11-16 00:00:00', 'alert'),
(3, 'raymefise', '2013-11-16 00:00:00', 'alarm');

-- --------------------------------------------------------

--
-- Структура таблицы `UsersNotificationsType`
--

CREATE TABLE IF NOT EXISTS `UsersNotificationsType` (
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `UsersNotificationsType`
--

INSERT INTO `UsersNotificationsType` (`type`) VALUES
('alarm'),
('alert'),
('notification');

-- --------------------------------------------------------

--
-- Структура таблицы `UsersNotifications_Lang`
--

CREATE TABLE IF NOT EXISTS `UsersNotifications_Lang` (
  `usersNotifications` bigint(20) unsigned NOT NULL,
  `lang` varchar(3) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `UsersNotifications_Lang`
--

INSERT INTO `UsersNotifications_Lang` (`usersNotifications`, `lang`, `title`, `text`) VALUES
(1, 'eng', 'Заполните информацию о себе', 'Уважаемый пользователь, вы не заполнили информацию о себе до конца.'),
(1, 'rus', 'Заполните информацию о себе', 'Уважаемый пользователь, вы не заполнили информацию о себе до конца.'),
(2, 'eng', 'Распространение ложной информации.', 'Есть подозрения о том что вы указали некорректрые данные. Пройтите првоерку или мы вас заблокируем.'),
(2, 'rus', 'Распространение ложной информации.', 'Есть подозрения о том что вы указали некорректрые данные. Пройтите првоерку или мы вас заблокируем.'),
(3, 'eng', 'Предупреждение от Администрации', 'Вас скоро забанят'),
(3, 'rus', 'Предупреждение от Администрации', 'Вас скоро забанят');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Components`
--
ALTER TABLE `Components`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Индексы таблицы `ComponentsDepends`
--
ALTER TABLE `ComponentsDepends`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD UNIQUE KEY `depends_UNIQUE` (`depends`,`component`,`elementType`), ADD KEY `fk_ComponentsDepends_1_idx` (`elementType`), ADD KEY `fk_ComponentsDepends_2_idx` (`component`);

--
-- Индексы таблицы `ComponentsDependsElementsType`
--
ALTER TABLE `ComponentsDependsElementsType`
 ADD PRIMARY KEY (`elementType`), ADD UNIQUE KEY `elementType_UNIQUE` (`elementType`);

--
-- Индексы таблицы `ComponentsElements`
--
ALTER TABLE `ComponentsElements`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `component_UNIQUE` (`component`,`alias`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD UNIQUE KEY `alias_UNIQUE` (`alias`,`component`);

--
-- Индексы таблицы `CreatedModules`
--
ALTER TABLE `CreatedModules`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD KEY `fk_CreatedModules_1_idx` (`module`);

--
-- Индексы таблицы `DBerrors`
--
ALTER TABLE `DBerrors`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `HtmlModul`
--
ALTER TABLE `HtmlModul`
 ADD PRIMARY KEY (`name`), ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Индексы таблицы `HtmlModul_Lang`
--
ALTER TABLE `HtmlModul_Lang`
 ADD PRIMARY KEY (`htmlModul`,`lang`), ADD KEY `fk_HtmlModul_Lang_HtmlModul_idx` (`htmlModul`), ADD KEY `fk_HtmlModul_Lang_Lang_idx` (`lang`);

--
-- Индексы таблицы `JCropTypes`
--
ALTER TABLE `JCropTypes`
 ADD PRIMARY KEY (`type`), ADD UNIQUE KEY `boxId_UNIQUE` (`type`);

--
-- Индексы таблицы `Jquery`
--
ALTER TABLE `Jquery`
 ADD PRIMARY KEY (`fileName`), ADD UNIQUE KEY `version_UNIQUE` (`version`,`min`), ADD UNIQUE KEY `fileName_UNIQUE` (`fileName`);

--
-- Индексы таблицы `Lang`
--
ALTER TABLE `Lang`
 ADD PRIMARY KEY (`lang`), ADD UNIQUE KEY `lang_UNIQUE` (`lang`), ADD UNIQUE KEY `langName_UNIQUE` (`langName`);

--
-- Индексы таблицы `Materials`
--
ALTER TABLE `Materials`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `alias_UNIQUE` (`alias`);

--
-- Индексы таблицы `MaterialsCategories`
--
ALTER TABLE `MaterialsCategories`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `alias_UNIQUE` (`alias`);

--
-- Индексы таблицы `MaterialsCategoriesInList`
--
ALTER TABLE `MaterialsCategoriesInList`
 ADD PRIMARY KEY (`category`,`list`), ADD UNIQUE KEY `key_UNIQUE` (`sequence`,`list`), ADD KEY `fk_MaterialsCategories_has_CategoriesList_CategoriesList1_idx` (`list`), ADD KEY `fk_MaterialsCategories_has_CategoriesList_MaterialsCategori_idx` (`category`);

--
-- Индексы таблицы `MaterialsCategoriesList`
--
ALTER TABLE `MaterialsCategoriesList`
 ADD PRIMARY KEY (`name`), ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Индексы таблицы `MaterialsCategoriesList_Lang`
--
ALTER TABLE `MaterialsCategoriesList_Lang`
 ADD PRIMARY KEY (`list`,`lang`), ADD KEY `fk_MaterialsCategoriesList_Lang_MaterialsCategories_idx` (`list`), ADD KEY `fk_MaterialsCategoriesList_Lang_Lang_idx` (`lang`);

--
-- Индексы таблицы `MaterialsCategories_Lang`
--
ALTER TABLE `MaterialsCategories_Lang`
 ADD PRIMARY KEY (`category`,`lang`), ADD KEY `fk_MaterialsCategories_Lang_MaterialsCategories_idx` (`category`), ADD KEY `fk_MaterialsCategories_Lang_Lang_idx` (`lang`);

--
-- Индексы таблицы `MaterialsInCategories`
--
ALTER TABLE `MaterialsInCategories`
 ADD PRIMARY KEY (`material`,`category`), ADD KEY `fk_MaterialsInCategories_Materials_idx` (`material`), ADD KEY `fk_MaterialsInCategories_MaterialsCategories_idx` (`category`);

--
-- Индексы таблицы `Materials_Lang`
--
ALTER TABLE `Materials_Lang`
 ADD PRIMARY KEY (`material`,`lang`), ADD KEY `fk_Materials_Lang_Materials_idx` (`material`), ADD KEY `fk_Materials_Lang_Lang_idx` (`lang`);

--
-- Индексы таблицы `Menu`
--
ALTER TABLE `Menu`
 ADD PRIMARY KEY (`name`), ADD UNIQUE KEY `name_UNIQUE` (`name`), ADD KEY `fk_Menu_MenuTypes` (`type`);

--
-- Индексы таблицы `MenuItemParent`
--
ALTER TABLE `MenuItemParent`
 ADD PRIMARY KEY (`menuItem`,`parent`), ADD UNIQUE KEY `menuItem_UNIQUE` (`menuItem`), ADD KEY `fk_MenuItemParent_MenuItems1` (`menuItem`), ADD KEY `fk_MenuItemParent_MenuItems2` (`parent`);

--
-- Индексы таблицы `MenuItems`
--
ALTER TABLE `MenuItems`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD UNIQUE KEY `key_UNIQUE` (`sequence`,`menu`), ADD KEY `fk_MenuItems_UrlTarget` (`target`), ADD KEY `fk_MenuElements_Menu` (`menu`);

--
-- Индексы таблицы `MenuItemsPage`
--
ALTER TABLE `MenuItemsPage`
 ADD PRIMARY KEY (`menuItem`,`page`), ADD UNIQUE KEY `menuItem_UNIQUE` (`menuItem`), ADD KEY `fk_MenuItemsPage_MenuItems` (`menuItem`), ADD KEY `fk_MenuItemsPage_Pages` (`page`);

--
-- Индексы таблицы `MenuItems_Lang`
--
ALTER TABLE `MenuItems_Lang`
 ADD PRIMARY KEY (`menuItem`,`lang`), ADD KEY `fk_MenuItems_Lang_MenuItems` (`menuItem`), ADD KEY `fk_MenuItems_Lang_Lang` (`lang`);

--
-- Индексы таблицы `MenuTypes`
--
ALTER TABLE `MenuTypes`
 ADD PRIMARY KEY (`type`), ADD UNIQUE KEY `type_UNIQUE` (`type`);

--
-- Индексы таблицы `Modules`
--
ALTER TABLE `Modules`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Индексы таблицы `ModulesDepends`
--
ALTER TABLE `ModulesDepends`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD UNIQUE KEY `depends_UNIQUE` (`depends`,`module`,`elementType`), ADD KEY `fk_ModulesDepends_1_idx` (`elementType`), ADD KEY `fk_ModulesDepends_2` (`module`);

--
-- Индексы таблицы `ModulesDependsElementsType`
--
ALTER TABLE `ModulesDependsElementsType`
 ADD PRIMARY KEY (`elementType`), ADD UNIQUE KEY `tableName_UNIQUE` (`tableName`), ADD UNIQUE KEY `elementType_UNIQUE` (`elementType`);

--
-- Индексы таблицы `ModulesInBlocks`
--
ALTER TABLE `ModulesInBlocks`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `module_UNIQUE` (`module`,`block`), ADD UNIQUE KEY `sequence_UNIQUE` (`sequence`,`block`), ADD KEY `fk_ModulesInBlocks_2_idx` (`block`);

--
-- Индексы таблицы `ModulesInBlocks_Lang`
--
ALTER TABLE `ModulesInBlocks_Lang`
 ADD PRIMARY KEY (`module`,`lang`), ADD KEY `fk_ModulesInBlocks_Lang_2_idx` (`lang`);

--
-- Индексы таблицы `ModulesOnPages`
--
ALTER TABLE `ModulesOnPages`
 ADD PRIMARY KEY (`module`,`page`), ADD KEY `fk_ModulesOnPages_2_idx` (`page`), ADD KEY `fk_ModulesOnPages_1_idx` (`module`);

--
-- Индексы таблицы `ModulesParam`
--
ALTER TABLE `ModulesParam`
 ADD PRIMARY KEY (`module`,`param`);

--
-- Индексы таблицы `ModulesTitleIcon`
--
ALTER TABLE `ModulesTitleIcon`
 ADD PRIMARY KEY (`module`), ADD UNIQUE KEY `module_UNIQUE` (`module`), ADD KEY `fk_ModulesTitleIcon_1_idx` (`module`), ADD KEY `fk_ModulesTitleIcon_2_idx` (`style`);

--
-- Индексы таблицы `ModulesTitleIconStile`
--
ALTER TABLE `ModulesTitleIconStile`
 ADD PRIMARY KEY (`style`), ADD UNIQUE KEY `style_UNIQUE` (`style`);

--
-- Индексы таблицы `PageParam`
--
ALTER TABLE `PageParam`
 ADD PRIMARY KEY (`page`,`param`);

--
-- Индексы таблицы `Pages`
--
ALTER TABLE `Pages`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `alias_UNIQUE` (`alias`), ADD KEY `fk_Pages_1_idx` (`componentElement`), ADD KEY `fk_Pages_2_idx` (`template`);

--
-- Индексы таблицы `Pages_Lang`
--
ALTER TABLE `Pages_Lang`
 ADD PRIMARY KEY (`page`,`lang`), ADD KEY `fk_Pages_Lang_2_idx` (`lang`);

--
-- Индексы таблицы `ParamInfo_ComponentsElements`
--
ALTER TABLE `ParamInfo_ComponentsElements`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `param_UNIQUE` (`param`,`componentElement`), ADD KEY `fk_ParamInfo_ComponentsElements_1_idx` (`componentElement`);

--
-- Индексы таблицы `PluginDefaultParam`
--
ALTER TABLE `PluginDefaultParam`
 ADD PRIMARY KEY (`plugin`,`param`);

--
-- Индексы таблицы `PluginDepends`
--
ALTER TABLE `PluginDepends`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD UNIQUE KEY `depends_UNIQUE` (`depends`,`plugin`,`elementType`), ADD KEY `fk_PluginDepends_1_idx` (`elementType`), ADD KEY `fk_PluginDepends_2_idx` (`plugin`);

--
-- Индексы таблицы `PluginOnPage`
--
ALTER TABLE `PluginOnPage`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `plugin_UNIQUE` (`plugin`,`page`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD KEY `fk_PluginOnPage_2_idx` (`page`), ADD KEY `fk_PluginOnPage_1_idx` (`plugin`);

--
-- Индексы таблицы `PluginParam`
--
ALTER TABLE `PluginParam`
 ADD PRIMARY KEY (`plugin`,`param`);

--
-- Индексы таблицы `Plugins`
--
ALTER TABLE `Plugins`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `sequence_UNIQUE` (`sequence`);

--
-- Индексы таблицы `PluginsDependsElementsType`
--
ALTER TABLE `PluginsDependsElementsType`
 ADD PRIMARY KEY (`elementType`), ADD UNIQUE KEY `elementType_UNIQUE` (`elementType`), ADD UNIQUE KEY `tableName_UNIQUE` (`tableName`);

--
-- Индексы таблицы `ROOT_SETTINGS`
--
ALTER TABLE `ROOT_SETTINGS`
 ADD PRIMARY KEY (`settingsName`), ADD UNIQUE KEY `settingsName_UNIQUE` (`settingsName`);

--
-- Индексы таблицы `ShopGroups`
--
ALTER TABLE `ShopGroups`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ShopGroupsHierarchy`
--
ALTER TABLE `ShopGroupsHierarchy`
 ADD PRIMARY KEY (`group`,`parentGroup`), ADD UNIQUE KEY `UNIQUE_group` (`group`), ADD KEY `fk_ShopGroupsHierarchy_2_idx` (`parentGroup`);

--
-- Индексы таблицы `ShopImportLogs`
--
ALTER TABLE `ShopImportLogs`
 ADD PRIMARY KEY (`importDate`), ADD KEY `fk_ShopImportLogs_1_idx` (`user`);

--
-- Индексы таблицы `ShopItems`
--
ALTER TABLE `ShopItems`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ShopItems_1_idx` (`group`);

--
-- Индексы таблицы `ShopItemsPrices`
--
ALTER TABLE `ShopItemsPrices`
 ADD PRIMARY KEY (`item`,`price`), ADD KEY `fk_ShopItemsPrices_2_idx` (`price`);

--
-- Индексы таблицы `ShopItemsPropertiesMeasure`
--
ALTER TABLE `ShopItemsPropertiesMeasure`
 ADD PRIMARY KEY (`measureF`);

--
-- Индексы таблицы `ShopItemsPropertiesMeasurePrefix`
--
ALTER TABLE `ShopItemsPropertiesMeasurePrefix`
 ADD PRIMARY KEY (`prefixF`), ADD UNIQUE KEY `factor_UNIQUE` (`factor`);

--
-- Индексы таблицы `ShopItemsPropertiesMeasureScaling`
--
ALTER TABLE `ShopItemsPropertiesMeasureScaling`
 ADD PRIMARY KEY (`measure`,`prefix`), ADD KEY `fk2_ShopItemsPropertiesMeasureScaling_idx` (`prefix`);

--
-- Индексы таблицы `ShopItemsPropertiesValues`
--
ALTER TABLE `ShopItemsPropertiesValues`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ShopItemsPropertiesValues_1_idx` (`property`), ADD KEY `fk_ShopItemsPropertiesValues_2_idx` (`item`);

--
-- Индексы таблицы `ShopLogs`
--
ALTER TABLE `ShopLogs`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ShopLogs_1_idx` (`user`), ADD KEY `fk_ShopLogs_2_idx` (`actionType`);

--
-- Индексы таблицы `ShopLogsActionType`
--
ALTER TABLE `ShopLogsActionType`
 ADD PRIMARY KEY (`type`);

--
-- Индексы таблицы `ShopPricesTypes`
--
ALTER TABLE `ShopPricesTypes`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ShopProperties`
--
ALTER TABLE `ShopProperties`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_ShopProperties_1_idx` (`filterType`), ADD KEY `fk_ShopProperties_2_idx` (`valueType`);

--
-- Индексы таблицы `ShopPropertiesFilterType`
--
ALTER TABLE `ShopPropertiesFilterType`
 ADD PRIMARY KEY (`type`);

--
-- Индексы таблицы `ShopPropertiesInGroups`
--
ALTER TABLE `ShopPropertiesInGroups`
 ADD PRIMARY KEY (`group`,`property`), ADD KEY `fk_ShopPropertiesInGroups_2_idx` (`property`);

--
-- Индексы таблицы `ShopPropertiesValueType`
--
ALTER TABLE `ShopPropertiesValueType`
 ADD PRIMARY KEY (`type`);

--
-- Индексы таблицы `Sliders`
--
ALTER TABLE `Sliders`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `alias_UNIQUE` (`alias`), ADD KEY `fk_Sliders_SlidersThemes_idx` (`theme`), ADD KEY `fk_Sliders_1_idx` (`controls_position`), ADD KEY `fk_Sliders_2_idx` (`focus_position`), ADD KEY `fk_Sliders_3_idx` (`numbers_align`), ADD KEY `fk_Sliders_4_idx` (`labelAnimation`), ADD KEY `fk_Sliders_5_idx` (`animations`);

--
-- Индексы таблицы `SlidersControlsPosition`
--
ALTER TABLE `SlidersControlsPosition`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `alias_UNIQUE` (`alias`);

--
-- Индексы таблицы `SlidersFocusPosition`
--
ALTER TABLE `SlidersFocusPosition`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `alias_UNIQUE` (`alias`);

--
-- Индексы таблицы `SlidersLabelAnimation`
--
ALTER TABLE `SlidersLabelAnimation`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `alias_UNIQUE` (`alias`);

--
-- Индексы таблицы `SlidersNumbersAlign`
--
ALTER TABLE `SlidersNumbersAlign`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `alias_UNIQUE` (`alias`);

--
-- Индексы таблицы `SlidersThemes`
--
ALTER TABLE `SlidersThemes`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `alias_UNIQUE` (`alias`);

--
-- Индексы таблицы `Slides`
--
ALTER TABLE `Slides`
 ADD PRIMARY KEY (`fileName`,`slider`), ADD UNIQUE KEY `sequence_UNIQUE` (`sequence`,`slider`), ADD KEY `fk_Slides_Sliders_idx` (`slider`), ADD KEY `fk_Slides_SlidesAnimations_idx` (`animation`);

--
-- Индексы таблицы `SlidesAnimations`
--
ALTER TABLE `SlidesAnimations`
 ADD PRIMARY KEY (`alias`), ADD UNIQUE KEY `alias_UNIQUE` (`alias`);

--
-- Индексы таблицы `TemplateBlocks`
--
ALTER TABLE `TemplateBlocks`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD UNIQUE KEY `block_UNIQUE` (`block`,`template`), ADD KEY `fk_TemplateBlocks_1_idx` (`template`);

--
-- Индексы таблицы `TemplateDependence`
--
ALTER TABLE `TemplateDependence`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD UNIQUE KEY `template_UNIQUE` (`template`,`depends`);

--
-- Индексы таблицы `Templates`
--
ALTER TABLE `Templates`
 ADD PRIMARY KEY (`alias`);

--
-- Индексы таблицы `UrlTarget`
--
ALTER TABLE `UrlTarget`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD UNIQUE KEY `target_UNIQUE` (`target`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
 ADD PRIMARY KEY (`login`), ADD UNIQUE KEY `login_UNIQUE` (`login`), ADD UNIQUE KEY `email_UNIQUE` (`email`), ADD UNIQUE KEY `phone_UNIQUE` (`phone`), ADD KEY `fk_Users_1_idx` (`group`);

--
-- Индексы таблицы `UsersAgreements`
--
ALTER TABLE `UsersAgreements`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD UNIQUE KEY `sequence_UNIQUE` (`sequence`);

--
-- Индексы таблицы `UsersGroups`
--
ALTER TABLE `UsersGroups`
 ADD PRIMARY KEY (`group`), ADD UNIQUE KEY `group_UNIQUE` (`group`);

--
-- Индексы таблицы `UsersGroups_Lang`
--
ALTER TABLE `UsersGroups_Lang`
 ADD PRIMARY KEY (`group`,`lang`), ADD KEY `fk_UsersGroups_Lang_2_idx` (`lang`);

--
-- Индексы таблицы `UsersMassage`
--
ALTER TABLE `UsersMassage`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD KEY `fk_UsersMassage_1_idx` (`sender`), ADD KEY `fk_UsersMassage_2_idx` (`addressee`);

--
-- Индексы таблицы `UsersNotifications`
--
ALTER TABLE `UsersNotifications`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_UNIQUE` (`id`), ADD KEY `fk_UsersNotifications_1_idx` (`type`), ADD KEY `fk_UsersNotifications_2_idx` (`user`);

--
-- Индексы таблицы `UsersNotificationsType`
--
ALTER TABLE `UsersNotificationsType`
 ADD PRIMARY KEY (`type`), ADD UNIQUE KEY `type_UNIQUE` (`type`);

--
-- Индексы таблицы `UsersNotifications_Lang`
--
ALTER TABLE `UsersNotifications_Lang`
 ADD PRIMARY KEY (`usersNotifications`,`lang`), ADD UNIQUE KEY `lang_UNIQUE` (`lang`,`usersNotifications`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ComponentsDepends`
--
ALTER TABLE `ComponentsDepends`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `ComponentsElements`
--
ALTER TABLE `ComponentsElements`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=999902;
--
-- AUTO_INCREMENT для таблицы `DBerrors`
--
ALTER TABLE `DBerrors`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `MenuItems`
--
ALTER TABLE `MenuItems`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор элемента меню',AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT для таблицы `ModulesDepends`
--
ALTER TABLE `ModulesDepends`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `ModulesInBlocks`
--
ALTER TABLE `ModulesInBlocks`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=903109;
--
-- AUTO_INCREMENT для таблицы `ParamInfo_ComponentsElements`
--
ALTER TABLE `ParamInfo_ComponentsElements`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `PluginDepends`
--
ALTER TABLE `PluginDepends`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `PluginOnPage`
--
ALTER TABLE `PluginOnPage`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `Plugins`
--
ALTER TABLE `Plugins`
MODIFY `sequence` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `TemplateBlocks`
--
ALTER TABLE `TemplateBlocks`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT для таблицы `TemplateDependence`
--
ALTER TABLE `TemplateDependence`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `UrlTarget`
--
ALTER TABLE `UrlTarget`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `UsersAgreements`
--
ALTER TABLE `UsersAgreements`
MODIFY `sequence` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `UsersMassage`
--
ALTER TABLE `UsersMassage`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `UsersNotifications`
--
ALTER TABLE `UsersNotifications`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `ComponentsDepends`
--
ALTER TABLE `ComponentsDepends`
ADD CONSTRAINT `fk_ComponentsDepends_1` FOREIGN KEY (`elementType`) REFERENCES `ComponentsDependsElementsType` (`elementType`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ComponentsDepends_2` FOREIGN KEY (`component`) REFERENCES `Components` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ComponentsElements`
--
ALTER TABLE `ComponentsElements`
ADD CONSTRAINT `fk_ComponentsElements_1` FOREIGN KEY (`component`) REFERENCES `Components` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `CreatedModules`
--
ALTER TABLE `CreatedModules`
ADD CONSTRAINT `fk_CreatedModules_1` FOREIGN KEY (`module`) REFERENCES `Modules` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `HtmlModul_Lang`
--
ALTER TABLE `HtmlModul_Lang`
ADD CONSTRAINT `fk_HtmlModul_Lang_HtmlModul` FOREIGN KEY (`htmlModul`) REFERENCES `HtmlModul` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_HtmlModul_Lang_Lang` FOREIGN KEY (`lang`) REFERENCES `Lang` (`lang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `MaterialsCategoriesInList`
--
ALTER TABLE `MaterialsCategoriesInList`
ADD CONSTRAINT `fk_MaterialsCategoriesInList_CategoriesList_CategoriesList` FOREIGN KEY (`list`) REFERENCES `MaterialsCategoriesList` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_MaterialsCategoriesInList_MaterialsCategories` FOREIGN KEY (`category`) REFERENCES `MaterialsCategories` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `MaterialsCategoriesList_Lang`
--
ALTER TABLE `MaterialsCategoriesList_Lang`
ADD CONSTRAINT `fk_MaterialsCategoriesList_Lang_Lang_Lang` FOREIGN KEY (`lang`) REFERENCES `Lang` (`lang`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_MaterialsCategoriesList_Lang_MaterialsCategories` FOREIGN KEY (`list`) REFERENCES `MaterialsCategoriesList` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `MaterialsCategories_Lang`
--
ALTER TABLE `MaterialsCategories_Lang`
ADD CONSTRAINT `fk_MaterialsCategories_Lang_Lang` FOREIGN KEY (`lang`) REFERENCES `Lang` (`lang`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_MaterialsCategories_Lang_MaterialsCategories` FOREIGN KEY (`category`) REFERENCES `MaterialsCategories` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `MaterialsInCategories`
--
ALTER TABLE `MaterialsInCategories`
ADD CONSTRAINT `fk_MaterialsInCategories_Materials` FOREIGN KEY (`material`) REFERENCES `Materials` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_MaterialsInCategories_MaterialsCategories` FOREIGN KEY (`category`) REFERENCES `MaterialsCategories` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Materials_Lang`
--
ALTER TABLE `Materials_Lang`
ADD CONSTRAINT `fk_Materials_Lang_Lang` FOREIGN KEY (`lang`) REFERENCES `Lang` (`lang`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Materials_Lang_Materials` FOREIGN KEY (`material`) REFERENCES `Materials` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Menu`
--
ALTER TABLE `Menu`
ADD CONSTRAINT `fk_Menu_MenuTypes` FOREIGN KEY (`type`) REFERENCES `MenuTypes` (`type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `MenuItemParent`
--
ALTER TABLE `MenuItemParent`
ADD CONSTRAINT `fk_MenuItemParent_MenuItems1` FOREIGN KEY (`menuItem`) REFERENCES `MenuItems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_MenuItemParent_MenuItems2` FOREIGN KEY (`parent`) REFERENCES `MenuItems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `MenuItems`
--
ALTER TABLE `MenuItems`
ADD CONSTRAINT `fk_MenuElements_Menu` FOREIGN KEY (`menu`) REFERENCES `Menu` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_MenuItems_UrlTarget` FOREIGN KEY (`target`) REFERENCES `UrlTarget` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `MenuItemsPage`
--
ALTER TABLE `MenuItemsPage`
ADD CONSTRAINT `fk_MenuItemsPage_MenuItems` FOREIGN KEY (`menuItem`) REFERENCES `MenuItems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_MenuItemsPage_Pages` FOREIGN KEY (`page`) REFERENCES `Pages` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `MenuItems_Lang`
--
ALTER TABLE `MenuItems_Lang`
ADD CONSTRAINT `fk_MenuItems_Lang_Lang` FOREIGN KEY (`lang`) REFERENCES `Lang` (`lang`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_MenuItems_Lang_MenuItems` FOREIGN KEY (`menuItem`) REFERENCES `MenuItems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ModulesDepends`
--
ALTER TABLE `ModulesDepends`
ADD CONSTRAINT `fk_ModulesDepends_1` FOREIGN KEY (`elementType`) REFERENCES `ModulesDependsElementsType` (`elementType`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ModulesDepends_2` FOREIGN KEY (`module`) REFERENCES `Modules` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ModulesInBlocks`
--
ALTER TABLE `ModulesInBlocks`
ADD CONSTRAINT `fk_ModulesInBlocks_1` FOREIGN KEY (`module`) REFERENCES `CreatedModules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ModulesInBlocks_2` FOREIGN KEY (`block`) REFERENCES `TemplateBlocks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ModulesInBlocks_Lang`
--
ALTER TABLE `ModulesInBlocks_Lang`
ADD CONSTRAINT `fk_ModulesInBlocks_Lang_1` FOREIGN KEY (`module`) REFERENCES `ModulesInBlocks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ModulesInBlocks_Lang_2` FOREIGN KEY (`lang`) REFERENCES `Lang` (`lang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ModulesOnPages`
--
ALTER TABLE `ModulesOnPages`
ADD CONSTRAINT `fk_ModulesOnPages_1` FOREIGN KEY (`module`) REFERENCES `ModulesInBlocks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ModulesOnPages_2` FOREIGN KEY (`page`) REFERENCES `Pages` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ModulesParam`
--
ALTER TABLE `ModulesParam`
ADD CONSTRAINT `fk_ModulesParam_1` FOREIGN KEY (`module`) REFERENCES `CreatedModules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ModulesTitleIcon`
--
ALTER TABLE `ModulesTitleIcon`
ADD CONSTRAINT `fk_ModulesTitleIcon_1` FOREIGN KEY (`module`) REFERENCES `ModulesInBlocks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ModulesTitleIcon_2` FOREIGN KEY (`style`) REFERENCES `ModulesTitleIconStile` (`style`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `PageParam`
--
ALTER TABLE `PageParam`
ADD CONSTRAINT `fk_PageParam_1` FOREIGN KEY (`page`) REFERENCES `Pages` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Pages`
--
ALTER TABLE `Pages`
ADD CONSTRAINT `fk_Pages_1` FOREIGN KEY (`componentElement`) REFERENCES `ComponentsElements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Pages_2` FOREIGN KEY (`template`) REFERENCES `Templates` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Pages_Lang`
--
ALTER TABLE `Pages_Lang`
ADD CONSTRAINT `fk_Pages_Lang_1` FOREIGN KEY (`page`) REFERENCES `Pages` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Pages_Lang_2` FOREIGN KEY (`lang`) REFERENCES `Lang` (`lang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ParamInfo_ComponentsElements`
--
ALTER TABLE `ParamInfo_ComponentsElements`
ADD CONSTRAINT `fk_ParamInfo_ComponentsElements_1` FOREIGN KEY (`componentElement`) REFERENCES `ComponentsElements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `PluginDefaultParam`
--
ALTER TABLE `PluginDefaultParam`
ADD CONSTRAINT `fk_PluginDefaultParam_1` FOREIGN KEY (`plugin`) REFERENCES `Plugins` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `PluginDepends`
--
ALTER TABLE `PluginDepends`
ADD CONSTRAINT `fk_PluginDepends_1` FOREIGN KEY (`elementType`) REFERENCES `PluginsDependsElementsType` (`elementType`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_PluginDepends_2` FOREIGN KEY (`plugin`) REFERENCES `Plugins` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `PluginOnPage`
--
ALTER TABLE `PluginOnPage`
ADD CONSTRAINT `fk_PluginOnPage_1` FOREIGN KEY (`plugin`) REFERENCES `Plugins` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_PluginOnPage_2` FOREIGN KEY (`page`) REFERENCES `Pages` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `PluginParam`
--
ALTER TABLE `PluginParam`
ADD CONSTRAINT `fk_PluginParam_1` FOREIGN KEY (`plugin`) REFERENCES `PluginOnPage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ShopGroupsHierarchy`
--
ALTER TABLE `ShopGroupsHierarchy`
ADD CONSTRAINT `fk_ShopGroupsHierarchy_1` FOREIGN KEY (`group`) REFERENCES `ShopGroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ShopGroupsHierarchy_2` FOREIGN KEY (`parentGroup`) REFERENCES `ShopGroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ShopImportLogs`
--
ALTER TABLE `ShopImportLogs`
ADD CONSTRAINT `fk_ShopImportLogs_1` FOREIGN KEY (`user`) REFERENCES `Users` (`login`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ShopItems`
--
ALTER TABLE `ShopItems`
ADD CONSTRAINT `fk_ShopItems_1` FOREIGN KEY (`group`) REFERENCES `ShopGroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ShopItemsPrices`
--
ALTER TABLE `ShopItemsPrices`
ADD CONSTRAINT `fk_ShopItemsPrices_1` FOREIGN KEY (`item`) REFERENCES `ShopItems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ShopItemsPrices_2` FOREIGN KEY (`price`) REFERENCES `ShopPricesTypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ShopItemsPropertiesMeasureScaling`
--
ALTER TABLE `ShopItemsPropertiesMeasureScaling`
ADD CONSTRAINT `fk1_ShopItemsPropertiesMeasureScaling` FOREIGN KEY (`measure`) REFERENCES `ShopItemsPropertiesMeasure` (`measureF`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk2_ShopItemsPropertiesMeasureScaling` FOREIGN KEY (`prefix`) REFERENCES `ShopItemsPropertiesMeasurePrefix` (`prefixF`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ShopItemsPropertiesValues`
--
ALTER TABLE `ShopItemsPropertiesValues`
ADD CONSTRAINT `fk_ShopItemsPropertiesValues_1` FOREIGN KEY (`item`) REFERENCES `ShopItems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ShopItemsPropertiesValues_2` FOREIGN KEY (`property`) REFERENCES `ShopProperties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ShopLogs`
--
ALTER TABLE `ShopLogs`
ADD CONSTRAINT `fk_ShopLogs_1` FOREIGN KEY (`user`) REFERENCES `Users` (`login`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ShopLogs_2` FOREIGN KEY (`actionType`) REFERENCES `ShopLogsActionType` (`type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ShopProperties`
--
ALTER TABLE `ShopProperties`
ADD CONSTRAINT `fk_ShopProperties_1` FOREIGN KEY (`filterType`) REFERENCES `ShopPropertiesFilterType` (`type`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ShopProperties_2` FOREIGN KEY (`valueType`) REFERENCES `ShopPropertiesValueType` (`type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `ShopPropertiesInGroups`
--
ALTER TABLE `ShopPropertiesInGroups`
ADD CONSTRAINT `fk_ShopPropertiesInGroups_1` FOREIGN KEY (`group`) REFERENCES `ShopGroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_ShopPropertiesInGroups_2` FOREIGN KEY (`property`) REFERENCES `ShopProperties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Sliders`
--
ALTER TABLE `Sliders`
ADD CONSTRAINT `fk_Sliders_1` FOREIGN KEY (`controls_position`) REFERENCES `SlidersControlsPosition` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Sliders_2` FOREIGN KEY (`focus_position`) REFERENCES `SlidersFocusPosition` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Sliders_3` FOREIGN KEY (`numbers_align`) REFERENCES `SlidersNumbersAlign` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Sliders_4` FOREIGN KEY (`labelAnimation`) REFERENCES `SlidersLabelAnimation` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Sliders_5` FOREIGN KEY (`animations`) REFERENCES `SlidesAnimations` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Sliders_SlidersThemes` FOREIGN KEY (`theme`) REFERENCES `SlidersThemes` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Slides`
--
ALTER TABLE `Slides`
ADD CONSTRAINT `fk_Slides_Sliders` FOREIGN KEY (`slider`) REFERENCES `Sliders` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Slides_SlidesAnimations` FOREIGN KEY (`animation`) REFERENCES `SlidesAnimations` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `TemplateBlocks`
--
ALTER TABLE `TemplateBlocks`
ADD CONSTRAINT `fk_TemplateBlocks_1` FOREIGN KEY (`template`) REFERENCES `Templates` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `TemplateDependence`
--
ALTER TABLE `TemplateDependence`
ADD CONSTRAINT `fk_TemplateDependence_1` FOREIGN KEY (`template`) REFERENCES `Templates` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Users`
--
ALTER TABLE `Users`
ADD CONSTRAINT `fk_Users_1` FOREIGN KEY (`group`) REFERENCES `UsersGroups` (`group`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `UsersGroups_Lang`
--
ALTER TABLE `UsersGroups_Lang`
ADD CONSTRAINT `fk_UsersGroups_Lang_1` FOREIGN KEY (`group`) REFERENCES `UsersGroups` (`group`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_UsersGroups_Lang_2` FOREIGN KEY (`lang`) REFERENCES `Lang` (`lang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `UsersMassage`
--
ALTER TABLE `UsersMassage`
ADD CONSTRAINT `fk_UsersMassage_1` FOREIGN KEY (`sender`) REFERENCES `Users` (`login`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_UsersMassage_2` FOREIGN KEY (`addressee`) REFERENCES `Users` (`login`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `UsersNotifications`
--
ALTER TABLE `UsersNotifications`
ADD CONSTRAINT `fk_UsersNotifications_1` FOREIGN KEY (`type`) REFERENCES `UsersNotificationsType` (`type`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_UsersNotifications_2` FOREIGN KEY (`user`) REFERENCES `Users` (`login`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `UsersNotifications_Lang`
--
ALTER TABLE `UsersNotifications_Lang`
ADD CONSTRAINT `fk_UsersNotifications_Lang_1` FOREIGN KEY (`usersNotifications`) REFERENCES `UsersNotifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_UsersNotifications_Lang_2` FOREIGN KEY (`lang`) REFERENCES `Lang` (`lang`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
