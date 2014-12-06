-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mar 02 Décembre 2014 à 15:59
-- Version du serveur: 5.1.44
-- Version de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `flux_livrenum`
--

-- --------------------------------------------------------

--
-- Structure de la table `flux_acti`
--

DROP TABLE IF EXISTS `flux_acti`;
CREATE TABLE IF NOT EXISTS `flux_acti` (
  `acti_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`acti_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Contenu de la table `flux_acti`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_actiuti`
--

DROP TABLE IF EXISTS `flux_actiuti`;
CREATE TABLE IF NOT EXISTS `flux_actiuti` (
  `acti_id` int(10) NOT NULL,
  `uti_id` int(10) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`acti_id`,`uti_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_actiuti`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_doc`
--

DROP TABLE IF EXISTS `flux_doc`;
CREATE TABLE IF NOT EXISTS `flux_doc` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `tronc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `poids` int(11) NOT NULL DEFAULT '1',
  `maj` datetime NOT NULL,
  `pubDate` datetime NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `total_posts` int(11) NOT NULL,
  `top_tags` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `data` blob NOT NULL,
  `score` decimal(28,14) NOT NULL,
  `parent` int(11) NOT NULL,
  `niveau` int(11) NOT NULL,
  PRIMARY KEY (`doc_id`),
  KEY `type` (`type`),
  KEY `score` (`score`),
  FULLTEXT KEY `titre_note` (`titre`,`note`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=8771 ;

--
-- Contenu de la table `flux_doc`
--

INSERT INTO `flux_doc` (`doc_id`, `url`, `titre`, `lft`, `rgt`, `tronc`, `poids`, `maj`, `pubDate`, `note`, `total_posts`, `top_tags`, `type`, `data`, `score`, `parent`, `niveau`) VALUES
(8764, '', 'Cide17', 1, 2, 'inclination', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{"recto":{"url":"http://localhost/livre-postnum/public/svg/livre-post-num-fes-recto.svg","nbInc":9,"inclinaisons":[]},"verso":{"url":"http://localhost/livre-postnum/public/svg/livre-post-num-fes-verso.svg","nbInc":5,"inclinaisons":[{"plan":"0","url":"http://localhost/livre-postnum/public/svg/QuentinBrunet_TweetPalette.svg"}]}}', 0, '', 0, '', 0.00000000000000, 0, 0),
(8767, 'http://localhost/livre-postnum/public/svg/tagcloudAccueil.svg', 'Tag cloud 100 notions', 1, 2, 'inclinaison', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{"script":"tagcloud.js"}', 0, '', 0, '', 0.00000000000000, 0, 0),
(8768, 'http://localhost/livre-postnum/public/svg/QuentinBrunet_TweetPalette.svg', 'Taxonomie d''idées', 1, 2, 'inclinaison', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{"script":"tagcloud.js"}', 0, '', 0, '', 0.00000000000000, 0, 1),
(8769, '', 'Cide17 - 1', 1, 2, 'inclination', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{"recto":{"url":"http://localhost/livre-postnum/public/svg/livre-post-num-fes-recto1.svg","nbInc":6,"inclinaisons":[{"plan":5,"url":"http://localhost/livre-postnum/public/svg/tagcloudAccueil.svg"}]},"verso":{"url":"http://localhost/livre-postnum/public/svg/livre-post-num-fes-verso1.svg","nbInc":5,"inclinaisons":[]}}', 0, '', 0, '', 0.00000000000000, 0, 1),
(8770, '', 'Cide17 - dyna', 1, 2, 'inclination', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{"recto":{"url":"http://localhost/livre-postnum/public/svg/livre-post-num-fes-recto2.svg","nbInc":6,"inclinaisons":[],"binding":[{"fct":"setSrcToDst","idSrc":"tspan6160-2","idDst":"text10174"},{"fct":"eval","eval":"initSTA();"},{"fct":"getDate","idDst":"text15280"}]},"verso":{"url":"http://localhost/livre-postnum/public/svg/livre-post-num-fes-verso2.svg","nbInc":5,"inclinaisons":[]}}', 0, '', 0, '', 0.00000000000000, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `flux_docdoc`
--

DROP TABLE IF EXISTS `flux_docdoc`;
CREATE TABLE IF NOT EXISTS `flux_docdoc` (
  `doc_id_src` int(11) NOT NULL,
  `doc_id_dst` int(11) NOT NULL,
  `poids` int(11) NOT NULL,
  `maj` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_docdoc`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_doctypes`
--

DROP TABLE IF EXISTS `flux_doctypes`;
CREATE TABLE IF NOT EXISTS `flux_doctypes` (
  `id_type` bigint(21) NOT NULL AUTO_INCREMENT,
  `titre` text COLLATE utf8_unicode_ci NOT NULL,
  `descriptif` text COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inclus` enum('non','image','embed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'non',
  `upload` enum('oui','non') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'oui',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_type`),
  UNIQUE KEY `extension` (`extension`),
  KEY `inclus` (`inclus`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Contenu de la table `flux_doctypes`
--

INSERT INTO `flux_doctypes` (`id_type`, `titre`, `descriptif`, `extension`, `mime_type`, `inclus`, `upload`, `maj`) VALUES
(1, 'JPEG', '', 'jpg', 'image/jpeg', 'image', 'oui', '2011-01-27 12:32:31'),
(2, 'PNG', '', 'png', 'image/png', 'image', 'oui', '2011-01-27 12:32:31'),
(3, 'GIF', '', 'gif', 'image/gif', 'image', 'oui', '2011-01-27 12:32:31'),
(4, 'BMP', '', 'bmp', 'image/x-ms-bmp', 'image', 'oui', '2011-01-27 12:32:31'),
(5, 'Photoshop', '', 'psd', 'image/x-photoshop', 'image', 'oui', '2011-01-27 12:32:31'),
(6, 'TIFF', '', 'tif', 'image/tiff', 'image', 'oui', '2011-01-27 12:32:31'),
(7, 'AIFF', '', 'aiff', 'audio/x-aiff', 'embed', 'oui', '2011-01-27 12:32:31'),
(8, 'Windows Media', '', 'asf', 'video/x-ms-asf', 'embed', 'oui', '2011-01-27 12:32:31'),
(9, 'Windows Media', '', 'avi', 'video/x-msvideo', 'embed', 'oui', '2011-01-27 12:32:31'),
(10, 'Midi', '', 'mid', 'audio/midi', 'embed', 'oui', '2011-01-27 12:32:31'),
(11, 'MNG', '', 'mng', 'video/x-mng', 'embed', 'oui', '2011-01-27 12:32:31'),
(12, 'QuickTime', '', 'mov', 'video/quicktime', 'embed', 'oui', '2011-01-27 12:32:31'),
(13, 'MP3', '', 'mp3', 'audio/mpeg', 'embed', 'oui', '2011-01-27 12:32:31'),
(14, 'MPEG', '', 'mpg', 'video/mpeg', 'embed', 'oui', '2011-01-27 12:32:31'),
(15, 'Ogg', '', 'ogg', 'application/ogg', 'embed', 'oui', '2011-01-27 12:32:31'),
(16, 'QuickTime', '', 'qt', 'video/quicktime', 'embed', 'oui', '2011-01-27 12:32:31'),
(17, 'RealAudio', '', 'ra', 'audio/x-pn-realaudio', 'embed', 'oui', '2011-01-27 12:32:31'),
(18, 'RealAudio', '', 'ram', 'audio/x-pn-realaudio', 'embed', 'oui', '2011-01-27 12:32:31'),
(19, 'RealAudio', '', 'rm', 'audio/x-pn-realaudio', 'embed', 'oui', '2011-01-27 12:32:31'),
(20, 'Flash', '', 'swf', 'application/x-shockwave-flash', 'embed', 'oui', '2011-01-27 12:32:31'),
(21, 'WAV', '', 'wav', 'audio/x-wav', 'embed', 'oui', '2011-01-27 12:32:31'),
(22, 'Windows Media', '', 'wmv', 'video/x-ms-wmv', 'embed', 'oui', '2011-01-27 12:32:31'),
(23, 'Adobe Illustrator', '', 'ai', 'application/illustrator', 'non', 'oui', '2011-01-27 12:32:31'),
(24, 'BZip', '', 'bz2', 'application/x-bzip2', 'non', 'oui', '2011-01-27 12:32:31'),
(25, 'C source', '', 'c', 'text/x-csrc', 'non', 'oui', '2011-01-27 12:32:31'),
(26, 'Debian', '', 'deb', 'application/x-debian-package', 'non', 'oui', '2011-01-27 12:32:31'),
(27, 'Word', '', 'doc', 'application/msword', 'non', 'oui', '2011-01-27 12:32:31'),
(28, 'DjVu', '', 'djvu', 'image/vnd.djvu', 'non', 'oui', '2011-01-27 12:32:31'),
(29, 'LaTeX DVI', '', 'dvi', 'application/x-dvi', 'non', 'oui', '2011-01-27 12:32:31'),
(30, 'PostScript', '', 'eps', 'application/postscript', 'non', 'oui', '2011-01-27 12:32:31'),
(31, 'GZ', '', 'gz', 'application/x-gzip', 'non', 'oui', '2011-01-27 12:32:31'),
(32, 'C header', '', 'h', 'text/x-chdr', 'non', 'oui', '2011-01-27 12:32:31'),
(33, 'HTML', '', 'html', 'text/html', 'non', 'oui', '2011-01-27 12:32:31'),
(34, 'Pascal', '', 'pas', 'text/x-pascal', 'non', 'oui', '2011-01-27 12:32:31'),
(35, 'PDF', '', 'pdf', 'application/pdf', 'non', 'oui', '2011-01-27 12:32:31'),
(36, 'PowerPoint', '', 'ppt', 'application/vnd.ms-powerpoint', 'non', 'oui', '2011-01-27 12:32:31'),
(37, 'PostScript', '', 'ps', 'application/postscript', 'non', 'oui', '2011-01-27 12:32:31'),
(38, 'RedHat/Mandrake/SuSE', '', 'rpm', 'application/x-redhat-package-manager', 'non', 'oui', '2011-01-27 12:32:31'),
(39, 'RTF', '', 'rtf', 'application/rtf', 'non', 'oui', '2011-01-27 12:32:31'),
(40, 'StarOffice', '', 'sdd', 'application/vnd.stardivision.impress', 'non', 'oui', '2011-01-27 12:32:31'),
(41, 'StarOffice', '', 'sdw', 'application/vnd.stardivision.writer', 'non', 'oui', '2011-01-27 12:32:31'),
(42, 'Stuffit', '', 'sit', 'application/x-stuffit', 'non', 'oui', '2011-01-27 12:32:31'),
(43, 'OpenOffice Calc', '', 'sxc', 'application/vnd.sun.xml.calc', 'non', 'oui', '2011-01-27 12:32:31'),
(44, 'OpenOffice Impress', '', 'sxi', 'application/vnd.sun.xml.impress', 'non', 'oui', '2011-01-27 12:32:31'),
(45, 'OpenOffice', '', 'sxw', 'application/vnd.sun.xml.writer', 'non', 'oui', '2011-01-27 12:32:31'),
(46, 'LaTeX', '', 'tex', 'text/x-tex', 'non', 'oui', '2011-01-27 12:32:31'),
(47, 'TGZ', '', 'tgz', 'application/x-gtar', 'non', 'oui', '2011-01-27 12:32:31'),
(48, 'texte', '', 'txt', 'text/plain', 'non', 'oui', '2011-01-27 12:32:31'),
(49, 'GIMP multi-layer', '', 'xcf', 'application/x-xcf', 'non', 'oui', '2011-01-27 12:32:31'),
(50, 'Excel', '', 'xls', 'application/vnd.ms-excel', 'non', 'oui', '2011-01-27 12:32:31'),
(51, 'XML', '', 'xml', 'application/xml', 'non', 'oui', '2011-01-27 12:32:31'),
(52, 'Zip', '', 'zip', 'application/zip', 'non', 'oui', '2011-01-27 12:32:31'),
(53, 'Cascading Style Sheet', '', 'css', 'text/css', 'non', 'oui', '2011-01-27 12:32:31'),
(54, 'Portable Game Notation', '', 'pgn', 'application/x-chess-pgn', 'non', 'oui', '2011-01-27 12:32:31'),
(55, 'SVG', 'Scalable Vector Graphic', 'svg', 'image/svg+xml', 'image', 'oui', '2014-11-14 18:17:05');

-- --------------------------------------------------------

--
-- Structure de la table `flux_exi`
--

DROP TABLE IF EXISTS `flux_exi`;
CREATE TABLE IF NOT EXISTS `flux_exi` (
  `exi_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `niveau` int(11) NOT NULL,
  `maj` datetime NOT NULL,
  `poids` int(11) NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`exi_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

--
-- Contenu de la table `flux_exi`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_exidoc`
--

DROP TABLE IF EXISTS `flux_exidoc`;
CREATE TABLE IF NOT EXISTS `flux_exidoc` (
  `exi_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  PRIMARY KEY (`exi_id`,`doc_id`),
  KEY `exi_id` (`exi_id`),
  KEY `doc_id` (`doc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_exidoc`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_exitag`
--

DROP TABLE IF EXISTS `flux_exitag`;
CREATE TABLE IF NOT EXISTS `flux_exitag` (
  `exi_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`exi_id`,`tag_id`),
  KEY `exi_id` (`exi_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_exitag`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_exitagdoc`
--

DROP TABLE IF EXISTS `flux_exitagdoc`;
CREATE TABLE IF NOT EXISTS `flux_exitagdoc` (
  `exitagdoc_id` int(11) NOT NULL AUTO_INCREMENT,
  `exi_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `maj` datetime NOT NULL,
  `poids` int(11) NOT NULL,
  PRIMARY KEY (`exitagdoc_id`),
  KEY `uti_id` (`exi_id`),
  KEY `tag_id` (`tag_id`),
  KEY `doc_id` (`doc_id`),
  KEY `maj` (`maj`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Contenu de la table `flux_exitagdoc`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_geos`
--

DROP TABLE IF EXISTS `flux_geos`;
CREATE TABLE IF NOT EXISTS `flux_geos` (
  `geo_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_instant` int(11) NOT NULL,
  `lat` decimal(12,8) NOT NULL,
  `lng` decimal(12,8) NOT NULL,
  `zoom_min` int(11) NOT NULL,
  `zoom_max` int(11) NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codepostal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pays` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kml` text COLLATE utf8_unicode_ci NOT NULL,
  `type_carte` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maj` datetime NOT NULL,
  PRIMARY KEY (`geo_id`),
  KEY `id_instant` (`id_instant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

--
-- Contenu de la table `flux_geos`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_graine`
--

DROP TABLE IF EXISTS `flux_graine`;
CREATE TABLE IF NOT EXISTS `flux_graine` (
  `graine_id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `maj` datetime NOT NULL,
  PRIMARY KEY (`graine_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Contenu de la table `flux_graine`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_grainedoc`
--

DROP TABLE IF EXISTS `flux_grainedoc`;
CREATE TABLE IF NOT EXISTS `flux_grainedoc` (
  `graine_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  PRIMARY KEY (`graine_id`,`doc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_grainedoc`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_ieml`
--

DROP TABLE IF EXISTS `flux_ieml`;
CREATE TABLE IF NOT EXISTS `flux_ieml` (
  `ieml_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `niveau` int(11) NOT NULL,
  `parent` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `maj` date NOT NULL,
  `parse` longtext COLLATE utf8_unicode_ci NOT NULL,
  `binary` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ordre` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ieml_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cette table est utilisée pour stocker l’ontologie IEML.' AUTO_INCREMENT=1 ;

--
-- Contenu de la table `flux_ieml`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_monade`
--

DROP TABLE IF EXISTS `flux_monade`;
CREATE TABLE IF NOT EXISTS `flux_monade` (
  `monade_id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maj` datetime NOT NULL,
  PRIMARY KEY (`monade_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Contenu de la table `flux_monade`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_rapport`
--

DROP TABLE IF EXISTS `flux_rapport`;
CREATE TABLE IF NOT EXISTS `flux_rapport` (
  `rapport_id` int(11) NOT NULL AUTO_INCREMENT,
  `monade_id` int(11) NOT NULL,
  `exitagdoc_id` int(11) NOT NULL,
  `maj` datetime NOT NULL,
  `niveau` int(11) NOT NULL,
  PRIMARY KEY (`rapport_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Contenu de la table `flux_rapport`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_svg`
--

DROP TABLE IF EXISTS `flux_svg`;
CREATE TABLE IF NOT EXISTS `flux_svg` (
  `svg_id` int(11) NOT NULL AUTO_INCREMENT,
  `monade_id` int(11) NOT NULL,
  `obj_id` int(11) NOT NULL,
  `obj_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `maj` datetime NOT NULL,
  PRIMARY KEY (`svg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Contenu de la table `flux_svg`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_tag`
--

DROP TABLE IF EXISTS `flux_tag`;
CREATE TABLE IF NOT EXISTS `flux_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `niveau` int(11) NOT NULL,
  `parent` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `code` (`code`),
  KEY `lft` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35898 ;

--
-- Contenu de la table `flux_tag`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_tagdoc`
--

DROP TABLE IF EXISTS `flux_tagdoc`;
CREATE TABLE IF NOT EXISTS `flux_tagdoc` (
  `tag_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `poids` int(11) NOT NULL,
  `maj` datetime NOT NULL,
  PRIMARY KEY (`tag_id`,`doc_id`),
  KEY `tag_id` (`tag_id`),
  KEY `doc_id` (`doc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_tagdoc`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_tagtag`
--

DROP TABLE IF EXISTS `flux_tagtag`;
CREATE TABLE IF NOT EXISTS `flux_tagtag` (
  `tag_id_src` int(11) NOT NULL,
  `tag_id_dst` int(11) NOT NULL,
  `poids` int(11) NOT NULL,
  `maj` datetime NOT NULL,
  PRIMARY KEY (`tag_id_src`,`tag_id_dst`),
  KEY `tag_id_src` (`tag_id_src`),
  KEY `tag_id_dst` (`tag_id_dst`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_tagtag`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_trad`
--

DROP TABLE IF EXISTS `flux_trad`;
CREATE TABLE IF NOT EXISTS `flux_trad` (
  `trad_id` int(11) NOT NULL AUTO_INCREMENT,
  `ieml_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `trad_date` date NOT NULL,
  `trad_post` tinyint(1) NOT NULL,
  PRIMARY KEY (`trad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Contenu de la table `flux_trad`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_tradpartage`
--

DROP TABLE IF EXISTS `flux_tradpartage`;
CREATE TABLE IF NOT EXISTS `flux_tradpartage` (
  `trad_id` int(11) NOT NULL,
  `uti_id` int(11) NOT NULL,
  PRIMARY KEY (`trad_id`,`uti_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_tradpartage`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_uti`
--

DROP TABLE IF EXISTS `flux_uti`;
CREATE TABLE IF NOT EXISTS `flux_uti` (
  `uti_id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `maj` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `flux` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mdp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mdp_sel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_inscription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_inscription` datetime NOT NULL,
  PRIMARY KEY (`uti_id`),
  KEY `login` (`login`(333))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Contenu de la table `flux_uti`
--

INSERT INTO `flux_uti` (`uti_id`, `login`, `maj`, `flux`, `mdp`, `role`, `mdp_sel`, `email`, `ip_inscription`, `date_inscription`) VALUES
(9, 'samszo', '', '', 'samszo', '', '', '', '::1', '2014-11-15 14:44:52'),
(10, 'luckysemiosis', '', '', 'samszo', '', '', '', '::1', '2014-11-15 14:55:06'),
(11, 'toto', '', '', 'toto', '', '', '', '::1', '2014-11-18 11:55:04');

-- --------------------------------------------------------

--
-- Structure de la table `flux_utidoc`
--

DROP TABLE IF EXISTS `flux_utidoc`;
CREATE TABLE IF NOT EXISTS `flux_utidoc` (
  `uti_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `maj` datetime NOT NULL,
  `poids` int(11) NOT NULL,
  PRIMARY KEY (`uti_id`,`doc_id`),
  KEY `uti_id` (`uti_id`),
  KEY `doc_id` (`doc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=FIXED;

--
-- Contenu de la table `flux_utidoc`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_utiexi`
--

DROP TABLE IF EXISTS `flux_utiexi`;
CREATE TABLE IF NOT EXISTS `flux_utiexi` (
  `uti_id` int(11) NOT NULL,
  `exi_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `flux_utiexi`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_utigeodoc`
--

DROP TABLE IF EXISTS `flux_utigeodoc`;
CREATE TABLE IF NOT EXISTS `flux_utigeodoc` (
  `geo_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `uti_id` int(11) NOT NULL,
  `maj` datetime NOT NULL,
  `utigeodoc_id` int(11) NOT NULL AUTO_INCREMENT,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`utigeodoc_id`),
  KEY `doc_id` (`doc_id`),
  KEY `uti_id` (`uti_id`),
  KEY `geo_id` (`geo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Contenu de la table `flux_utigeodoc`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_utigraine`
--

DROP TABLE IF EXISTS `flux_utigraine`;
CREATE TABLE IF NOT EXISTS `flux_utigraine` (
  `uti_id` int(11) NOT NULL,
  `graine_id` int(11) NOT NULL,
  PRIMARY KEY (`uti_id`,`graine_id`),
  KEY `graine_id` (`graine_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_utigraine`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_utiieml`
--

DROP TABLE IF EXISTS `flux_utiieml`;
CREATE TABLE IF NOT EXISTS `flux_utiieml` (
  `uti_id` int(11) NOT NULL,
  `ieml_id` int(11) NOT NULL,
  PRIMARY KEY (`uti_id`,`ieml_id`),
  KEY `uti_id` (`uti_id`),
  KEY `ieml_id` (`ieml_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_utiieml`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_utimonade`
--

DROP TABLE IF EXISTS `flux_utimonade`;
CREATE TABLE IF NOT EXISTS `flux_utimonade` (
  `uti_id` int(11) NOT NULL,
  `monade_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `flux_utimonade`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_utitag`
--

DROP TABLE IF EXISTS `flux_utitag`;
CREATE TABLE IF NOT EXISTS `flux_utitag` (
  `uti_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `poids` int(11) NOT NULL,
  `maj` datetime NOT NULL,
  PRIMARY KEY (`uti_id`,`tag_id`),
  KEY `uti_id` (`uti_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_utitag`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_utitagdoc`
--

DROP TABLE IF EXISTS `flux_utitagdoc`;
CREATE TABLE IF NOT EXISTS `flux_utitagdoc` (
  `utitagdoc_id` int(11) NOT NULL AUTO_INCREMENT,
  `uti_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `maj` datetime NOT NULL,
  `poids` int(11) NOT NULL,
  PRIMARY KEY (`utitagdoc_id`),
  KEY `uti_id` (`uti_id`),
  KEY `tag_id` (`tag_id`),
  KEY `doc_id` (`doc_id`),
  KEY `maj` (`maj`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47069 ;

--
-- Contenu de la table `flux_utitagdoc`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_utitagrelated`
--

DROP TABLE IF EXISTS `flux_utitagrelated`;
CREATE TABLE IF NOT EXISTS `flux_utitagrelated` (
  `uti_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `poids` int(11) NOT NULL,
  PRIMARY KEY (`uti_id`,`tag_id`),
  KEY `uti_id` (`uti_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_utitagrelated`
--


-- --------------------------------------------------------

--
-- Structure de la table `flux_utiuti`
--

DROP TABLE IF EXISTS `flux_utiuti`;
CREATE TABLE IF NOT EXISTS `flux_utiuti` (
  `uti_id_src` int(11) NOT NULL,
  `uti_id_dst` int(11) NOT NULL,
  `network` int(11) NOT NULL,
  `fan` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  PRIMARY KEY (`uti_id_src`,`uti_id_dst`),
  KEY `uti_id_src` (`uti_id_src`),
  KEY `uti_id_dst` (`uti_id_dst`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `flux_utiuti`
--


-- --------------------------------------------------------

--
-- Structure de la table `jardin_exis`
--

DROP TABLE IF EXISTS `jardin_exis`;
CREATE TABLE IF NOT EXISTS `jardin_exis` (
  `id_exi` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `mail` varchar(255) COLLATE utf8_bin NOT NULL,
  `mdp` varchar(32) COLLATE utf8_bin NOT NULL,
  `mdp_sel` varchar(32) COLLATE utf8_bin NOT NULL,
  `role` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_exi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

--
-- Contenu de la table `jardin_exis`
--

