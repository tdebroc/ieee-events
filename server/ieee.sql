-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Dim 14 Février 2016 à 19:13
-- Version du serveur: 5.5.9
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `ieee`
--

-- --------------------------------------------------------

--
-- Structure de la table `meetings`
--

CREATE TABLE `meetings` (
  `id` varchar(10) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `revision_number` int(11) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `keywords` varchar(100) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `meetings`
--

INSERT INTO `meetings` VALUES('37680', '4. Meeting of the IEEE Young Professionals Network in Berlin', '2015-06-23 19:00:00', '2015-06-23 21:00:00', 1, 'C23766E9-B254-11E5-A050-0050568D2FB3', '<p>The IEEE Young Professionals Network in Berlin meets to discuss on interesting topics and network.</p>', 'Networking', 'Professional', 'Berlin', 'BE', 'DE', 'GERMANY', '13.404954', '52.5200066');
INSERT INTO `meetings` VALUES('37676', 'Visit to Ecofys GmbH', '2015-09-24 18:00:00', '2015-09-24 20:00:00', 1, 'D285F8ED-B250-11E5-A050-0050568D2FB3', '<p>The IEEE Young Professionals Network of Berlin visits the consulting company Ecofys for helding an interesting discussion about the energy turn-over in Germany and future scenarios within the energy field.</p>', 'ecofys', 'Professional', 'Berlin', 'BE', 'DE', 'GERMANY', '13.404954', '52.5200066');
INSERT INTO `meetings` VALUES('37678', 'IEEE @ TU Berlin', '2015-11-26 05:00:00', '2015-11-26 19:00:00', 1, '87360FAB-B253-11E5-A050-0050568D2FB3', '<ul><li>Overview about the activities of the IEEE Young Professionals team in Berlin;</li><li>Outlook for IEEE Student Branches in Germany and for TU-Berlin</li><li>&ldquo;How to write a technical article for the IEEE?&rdquo;, presentation by&nbsp;IEEE client services manager Europe.</li></ul>', 'Technical articles by IEEE; YOung Professionals, Students.', 'Professional', 'Berlin', 'BE', 'DE', 'GERMANY', '13.404954', '52.5200066');
INSERT INTO `meetings` VALUES('37677', 'Visit to Schneider Electric & Euref Campus', '2015-10-28 17:00:00', '2015-10-28 19:00:00', 0, '91342398-B252-11E5-A050-0050568D2FB3', '<p>IEEE Young Professionals Network in Berlin visits the company Schneider Electric and the Euref Campus.</p>', 'Schneider Electric; Euref CAmpus', 'Professional', 'Berlin', 'BE', 'DE', 'GERMANY', '13.404954', '52.5200066');
INSERT INTO `meetings` VALUES('37674', 'Young Professionals Meeting in Munich (regular)', '2016-11-07 19:00:00', '2016-11-07 21:00:00', 1, 'ABD01405-B233-11E5-A050-0050568D2FB3', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p><p>Please contact in advance the organisator.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('37673', 'Young Professionals Meeting in Munich (regular)', '2016-10-10 19:00:00', '2016-10-10 21:00:00', 1, '93FEA04B-B233-11E5-A050-0050568D2FB3', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p><p>Please contact in advance the organisator.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('37672', 'Young Professionals Meeting in Munich (regular)', '2016-09-05 19:00:00', '2016-09-05 21:00:00', 1, '80309322-B233-11E5-A050-0050568D2FB3', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p><p>Please contact in advance the organisator.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('37671', 'Young Professionals Meeting in Munich (regular)', '2016-08-01 19:00:00', '2016-08-01 21:00:00', 1, '6E255A19-B233-11E5-A050-0050568D2FB3', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p><p>Please contact in advance the organisator.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('37670', 'Young Professionals Meeting in Munich (regular)', '2016-07-04 19:00:00', '2016-07-04 21:00:00', 1, '59DE9EDF-B233-11E5-A050-0050568D2FB3', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p><p>Please contact in advance the organisator.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('37669', 'Young Professionals Meeting in Munich (regular)', '2016-06-06 19:00:00', '2016-06-06 21:00:00', 1, '4925B888-B233-11E5-A050-0050568D2FB3', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p><p>Please contact in advance the organisator.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('37668', 'Young Professionals Meeting in Munich (regular)', '2016-05-02 19:00:00', '2016-05-02 21:00:00', 1, '374BFF74-B233-11E5-A050-0050568D2FB3', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p><p>Please contact in advance the organisator.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('37667', 'Young Professionals Meeting in Munich (regular)', '2016-04-04 19:00:00', '2016-04-04 21:00:00', 1, '268D57CD-B233-11E5-A050-0050568D2FB3', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p><p>Please contact in advance the organisator.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('37666', 'Young Professionals Meeting in Munich (regular)', '2016-03-07 19:00:00', '2016-03-07 21:00:00', 1, 'F44DAE68-B232-11E5-A050-0050568D2FB3', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p><p>Please contact in advance the organisator.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('37665', 'Young Professionals Meeting in Munich (regular)', '2016-02-01 19:00:00', '2016-02-01 21:00:00', 1, 'DCA13318-B232-11E5-A050-0050568D2FB3', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('37664', 'Young Professionals Meeting in Munich (regular)', '2016-01-11 19:00:00', '2016-01-11 21:00:00', 1, 'C83500DF-B232-11E5-A050-0050568D2FB3', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('37663', 'Young Professionals Meeting in Munich (regular)', '2015-10-05 19:00:00', '2015-10-05 21:00:00', 0, '2D414FFC-B232-11E5-A050-0050568D2FB3', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('37560', 'Young Professional AFG', '2015-07-20 15:00:00', '2015-07-20 17:00:00', 0, '1190766D-A8FA-11E5-A050-0050568D2FB3', '<p>the executive committee: <br />Ibrahim Al-oqily Chair (present) <br />Mohammad Salah Vice Chair (absent) <br />Hatem Hamatta Secretary (present) <br /><br />During the meeting the executive committee discussed the following items: <br />- The YP chair gave a short review of the experience gained and the suggestions from his meeting with students chapters. <br />- reviewed the progress for the proposed activities in this year 2015. <br />1. organizing an event for young programmers to connect them with industry. the location was decided to be at the Hashemite University, Zarqa, Jordan.<br />2. due to the success of the organizing&nbsp;event about body language. it was suggested to reorqanize the same event at Amman city where many of our members could be found. <br />3. reviewd the experinace of&nbsp;Social networking should&nbsp;through our&nbsp;facebook page.&nbsp;<a href="https://www.facebook.com/IEEEJordanYP" target="_blank">https://www.facebook.com/<wbr />IEEEJordanYP</a></p>', 'executive, social, networking', 'Administrative', 'Amman', 'JOR', 'JO', 'JORDAN', '35.9456951', '31.9565783');
INSERT INTO `meetings` VALUES('37509', 'AUK Student Branch Capstone Event  ', '2015-12-15 10:00:00', '2015-12-15 20:00:00', 0, 'DE90F58F-A58E-11E5-A050-0050568D2FB3', '<p>Technical speeches and Capstone Student Graduation Project</p>', 'Technical Event ', 'Technical', 'Kuwait ', 'HAW', 'KW', 'KUWAIT', '48.0728325', '29.3411913');
INSERT INTO `meetings` VALUES('37321', 'YP Workshop: Development of Leadership skills', '2015-12-10 10:00:00', '2015-12-10 17:00:00', 0, '087A057D-99A7-11E5-A050-0050568D2FB3', '<p><span lang="EN-US">IEEE Czechoslovakia Section, IEEE Young Professionals presents the Young Professionals Workshop being held in Brno, Technical University (VUT). The main speaker, Prof. Kurt Richter, IEEE Life Fellow, will give a lecture on Development of Leadership Skills.</span></p>', 'Young professionals, leadership, soft skills', 'Professional', 'Brno', 'CZE', 'EZ', 'CZECHOSLOVAKIA', '', '');
INSERT INTO `meetings` VALUES('37178', 'Data mining and Predictive modeling', '2015-11-23 19:00:00', '2015-11-23 20:30:00', 1, '12FB7310-8F64-11E5-A050-0050568D2FB3', '<div id="event_wall" data-referrer="event_wall"><div><span class="fsl" style="font-size: 14pt;">A meetup for experts and non-experts in the fields of Self-Organizing Data Mining, Model Based Business Games, Predictive Analytics and Business Analytics. It is a chance for everyone to get to know Multi-stage selection procedures and see how are they superior to both evolutionary algorithms, genetic algorithms and neural networks. The lecture will finish with a special demonstration of modelling software Insights (previously known as KnowledgeMiner).</span></div></div>', 'data mining, predictive modeling, ', 'Technical', 'Sofia', 'SFG', 'BG', 'BULGARIA', '23.3161947', '42.7005612');
INSERT INTO `meetings` VALUES('36673', 'Administrative meeting of YP ExCOM members', '2015-11-21 16:00:00', '2015-11-21 17:00:00', 4, '74AC2A25-763C-11E5-BFEA-0050568D7F66', '<p><span style="font-size: 14pt;">During our YP event @ TU-Gabrovo, we meet our current members for a joint ExCom meeting in order to discuss the past activities during 2015 and to draw a roadmap for novel achievements in 2016.</span></p>', 'administrative meetings, disscussion', 'Administrative', 'Gabrovo', 'GAB', 'BG', 'BULGARIA', '25.3186837', '42.8742212');
INSERT INTO `meetings` VALUES('36674', 'Young Professionals Talks @ UNITEX', '2015-11-20 10:00:00', '2015-11-21 17:00:00', 7, '3BF1ABB6-763E-11E5-BFEA-0050568D7F66', '<p><span class="fsl" style="font-size: 14pt;">This time YP Bulgaria join our present and future members @ TU-Gabrovo during the International Conference "UNITECH". You can meet us @ YP DESK near by the confrence registration site,in order to get to know how to become an IEEE and YP member!<br /></span></p><p><span class="fsl" style="font-size: 14pt;">You can also participate @ our seminar "YP Talks", where the chair of YP Bulgaria will present the founders of the group and their vision for future achievements, as well as to discuss several exiting talks of YP Members, concerning the field of thier interests (artificial intelligence and communication systems).</span></p><p><span class="fsl" style="font-size: 14pt;"> For more information: <a href="http://l.facebook.com/l.php?u=http%3A%2F%2Fyp.ieee.bg%2F&amp;h=lAQFN60Yf&amp;enc=AZMOD8SUyXWwQQskLwubbIGtfzl44kd478Yd98_ffRV0zGmKjezM_1DtPWK-IlQ3Pxw&amp;s=1" target="_blank" rel="nofollow nofollow">http://yp.ieee.bg/</a></span></p>', 'artificial intelligence, economic, automation, communications, internet', 'Technical', 'Gabrovo', 'GAB', 'BG', 'BULGARIA', '25.3186837', '42.8742212');
INSERT INTO `meetings` VALUES('35103', 'VIII International & Interdisciplinary Scientific Conference vanguard scientific instruments in mana', '2015-09-09 07:00:00', '2015-09-13 07:00:00', 5, 'EFCD4D54-1A66-11E5-A923-0050568D2FB3', '<p><span style="font-size: 14pt;">The eighth edition of the conference "Vanguard scientific instruments in management" will be held from 09. to 13 Septembet 2015 in UNWE Study and recreational center in Ravda, Black Sea Coast, BULGARIA. </span></p><p>&nbsp;</p><p><span style="font-size: 14pt;">The scientific sessions:</span></p><h4 class="panel-title"><span style="font-size: 14pt;"><a href="http://vsim-conf.info/en/#collapseFour" data-toggle="collapse" data-parent="#faq"> Data science and algorithms </a></span></h4><div id="collapseFour" class="panel-collapse collapse in" style="height: auto;"><div class="panel-body"><p class="small"><span style="font-size: 14pt;">&bull; Fuzzy approaches</span><br /><span style="font-size: 14pt;">&bull; Chaos theory and fractals</span><br /><span style="font-size: 14pt;">&bull; Multi-stage selection</span><br /><span style="font-size: 14pt;">&bull; Evolutional algorithms</span><br /><span style="font-size: 14pt;">&bull; Neural Networks</span></p><h4 cl', 'Data Science, Cybernetics, Self-organization ', 'Technical', 'Ravda', 'BUR', 'BG', 'BULGARIA', '27.678963', '42.6422221');
INSERT INTO `meetings` VALUES('34899', 'Advanced Programming Techniques using MATLAB', '2015-06-08 18:30:00', '2015-06-08 20:00:00', 4, '9BE6D15E-09ED-11E5-A923-0050568D2FB3', '<p><span style="font-size: 14pt;">The Young Professionals Affinity group of Bulgaria and the Bulgarian Data Sicence Society in cooperation with Gamax Solutions, the official reseller of MATLAB and COMSOL products, organize this specialized seminar entitled: </span><span style="font-size: 14pt;">Advanced Programming Techniques using MATLAB</span></p><p><span style="font-size: 14pt;">The aim of the seminar is to provide specialized training to the local academia and indstry representatives according to the proposed agenda.</span></p><p>&nbsp;</p><h2><span style="font-size: 14pt;"><strong>Seminar Overview</strong></span></h2><p>&nbsp;</p><p><span style="font-size: 14pt;">In this session you will gain an understanding of how different MATLAB data types are stored in memory and how you can program in MATLAB to use memory efficiently. In recent versions, MATLAB introduced several new programming concepts, including new function types. We will illustrate and explore the usage and benefits of ', 'Matlab, Programming', 'Technical', 'Sofia', 'SFG', 'BG', 'BULGARIA', '23.3555049', '42.6572145');
INSERT INTO `meetings` VALUES('34659', 'Webinar:IEEE Tools & Resources for Volunteers: Promoting the IEEE in West Africa (Do''s & Donâ€™ts)', '2015-05-27 17:00:00', '2015-05-27 19:00:00', 3, '1D07169E-F954-11E4-A923-0050568D2FB3', '<p>This is part of the quartely webinar organize by YP Nigeria Section.</p><p>Webinar:IEEE Tools &amp; Resources for Volunteers: Promoting the IEEE in West Africa (Do''s &amp; Don&rsquo;ts)<br />This is organize for volunteers to benefit from the leadership traning material within IEEE. This will enable volunteers to accomplish their jobs efficiently and effectively.</p><p>You are invited to join Engr. Funso John Adebayo SMIEEE, MNSE Section Secretary, IEEE Nigeria&nbsp;Section to discuss IEEE Tools &amp; Resources for Volunteers: Promoting the IEEE in West Africa (Do''s &amp; Don&rsquo;ts)</p>', 'IEEE tool, Resource, SB, YP', 'Professional', 'Abuja', 'FC', 'NI', 'NIGERIA', '7.483333', '9.066667');
INSERT INTO `meetings` VALUES('34526', 'Launch Celebration of IEEE Young Professionals Affinity Group of Bulgaria', '2015-05-28 13:00:00', '2015-05-30 16:30:00', 5, 'A798241C-EE4E-11E4-BE10-0050568D2FB3', '<p><span style="font-size: 12pt;">The Bulgarian <span style="color: #3366ff;"><strong>IEEE Young Professionals Affinity Group</strong></span> has been just registered and we would like to invite our current and future members to celebrate with us the launch of the group during the International Conference &ldquo;TechSys&rdquo; at Technical University-Sofia, branch Plovdiv. <span style="color: #3366ff;"><strong>http://techsys.tu-plovdiv.bg&nbsp;</strong></span></span></p><p>&nbsp;</p>', 'Launch Celebration, Conference, Social Event', 'Technical', 'Plovdiv', 'PLO', 'BG', 'BULGARIA', '24.749236', '42.138204');
INSERT INTO `meetings` VALUES('34528', 'Administrative meeting of Young Professionals Affinity Group', '2015-05-29 12:00:00', '2015-05-29 13:00:00', 0, '2E5A733E-EE78-11E4-BE10-0050568D2FB3', '<p><span style="font-size: 12pt;">Discussing the results after the conducted Elections for YP AG governing body</span> <span style="font-size: 12pt;">and the impressions of a colleague who took part in the Central European Young Professionals Gongress in Zagreb.</span></p><p><span style="font-size: 12pt;">Organization and planing of the activities till the end of the year 2015.</span></p>', 'ExCom, meeting', 'Administrative', 'Plovdiv', 'PLO', 'BG', 'BULGARIA', '24.7452904', '42.1354079');
INSERT INTO `meetings` VALUES('33461', 'Visit to the Transmission Control Centre of 50Hertz', '2015-04-01 17:00:00', '2015-04-01 19:00:00', 0, '8274593E-19D9-1033-BA8D-0050568D3657', '<p>The IEEE Young Professionals Network of Berlin has organised a visit to the Transmission Control Centre of 50Hertz, one of the four German TSOs.</p>', 'Visit Transmission Control Centre of 50Hertz;IEEE Young Professionals Network in Berlin', 'Professional', 'Neuenhagen bei Berli', 'BB', 'DE', 'GERMANY', '13.7064413', '52.5369681');
INSERT INTO `meetings` VALUES('31285', 'Young Professionals Meeting in Munich (regular)', '2015-07-06 19:00:00', '2015-07-06 21:00:00', 2, '89200146-E335-1032-825E-0050568D3657', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('31283', 'Young Professionals Meeting in Munich (regular)', '2015-06-01 19:00:00', '2015-06-01 21:00:00', 2, '78349522-E335-1032-825E-0050568D3657', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('31281', 'Young Professionals Meeting in Munich (regular)', '2015-05-04 19:00:00', '2015-05-04 21:00:00', 2, '6A46A950-E335-1032-825E-0050568D3657', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('31279', 'Young Professionals Meeting in Munich (regular)', '2015-04-06 19:00:00', '2015-04-06 21:00:00', 2, '5CB1C248-E335-1032-825E-0050568D3657', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('31295', 'Young Professionals Meeting in Munich (regular)', '2015-12-07 19:00:00', '2015-12-07 21:00:00', 1, '1A3299AE-E337-1032-825E-0050568D3657', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('31293', 'Young Professionals Meeting in Munich (regular)', '2015-11-02 19:00:00', '2015-11-02 21:00:00', 1, '0966A7D2-E337-1032-825E-0050568D3657', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('31291', 'Young Professionals Meeting in Munich (regular)', '2015-10-05 19:00:00', '2015-10-05 21:00:00', 1, 'F9E33168-E336-1032-825E-0050568D3657', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
INSERT INTO `meetings` VALUES('31287', 'Young Professionals Meeting in Munich (regular)', '2015-08-03 19:00:00', '2015-08-03 21:00:00', 1, '6E18609A-E336-1032-825E-0050568D3657', '<p>Regular recurring meeting of Student Branch, Women in Engineering and Young Professionals in Munich.</p>', 'Meeting, social, Munich, Young Professionals, YP', 'Nontechnical', 'Munich', 'BY', 'DE', 'GERMANY', '11.56653', '48.13248');
