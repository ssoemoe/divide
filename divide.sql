-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: divide
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(200) NOT NULL,
  `status` enum('Complete','Incomplete') NOT NULL,
  `developerRequesting` varchar(50) NOT NULL,
  `developerRequested` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,'cannot update the dependency','Complete','jmiller','adavis');
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` blob NOT NULL,
  `password` varchar(30) NOT NULL,
  `officePhoneNumber` varchar(15) NOT NULL,
  `position` varchar(30) NOT NULL,
  `team` varchar(30) NOT NULL,
  `joinedDate` date NOT NULL,
  `currentTasks` varchar(30) NOT NULL,
  `currentProjects` varchar(30) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `firstName` (`firstName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES ('Ava','Davis','adavis','avadavis@divide.com','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0[\0\0\0S\0\0\0ðe{ô\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0œIDATx^íœ‰SUUÇû#²EÚHÔrœJGsPŒ45Ë&Ôœ4­h1pGlšÁ]ˆI+LÃ\0GQ2•¶±¬‹s	\"GÓ«)ýu¾W^ž¿÷Þ]Ï½6÷;ó™aÞr~ßóûÎ=÷Üs¹‰<I“¶DyaK”¶DyaK”¶DyaK”¶D¹.ìË­¨µþ0]8XLgwæQca\ZÉŸA§ò§“ËSð7^Ã{ø>‹ïà»n–+Âþû×:·g5nšK\'—Ž£_–Œ5¾‹6ÐÚt›ûò_—èâÇåôëÆÙlpV€¶QµÜ éa_þ³…þ8ðZ=…\rˆãû¬$Úõb>3Š\n¥óèx–ö_\0j¡&j;)ya_¹B-GkèÔš©l j~áNFããúPT¯Hº=¬Ý|ë=Àk1QÑ”< š6§£†¬D¶-5¨\rðâ„¤„ýÏùFj*z•\r@Í‘×FÓ³ÃûR×.Ý¯7÷w½ŸæîGŸÎÅ¶­^àI¶l»µþÌÄvÚÇÏ9I´ú±xŠïÊ©‡ð»#hõÄx:!Úäjù€\'x“)ûÂ?Õó5…¢cÁÇÖÏç¦ÁQ=ØàÌ0´OOúL´ÍÕ¼Æ8Å£¬aÅ–°¯üûý^žÇt®#_\ZI‘]»±aYAdD7¥W[\r¼Â³Ý²<l˜n.Îf;¥fÏóÃ©{x’•Ü\'jÔˆZœ5ðlwàÖ†-~ŽZŽè£éc¨Góã³Vî»7‚¾59/jàÝÎ!ÅÒ°¯ŽÑ|G|œÈKãúE²¡ØÉØØÞJmÎ“\Ze·I–…3{¨“!X’2€\rC9Ä±ž:2Î¶YŠ%acÎ\Zjz0|ÜuÇ½l2¸#,œ¾Xz8A_ì˜‡›[ŒqZ.XÀË	±l2IËzó}²zü66.9³þ|½0î¾Ó¹£Ú<ÀçÑåÒÞB™\n;ZÖ:À²”8¶óN°Tœ78þ oV.^™\n+iœIŽ11½ØŽ;¼p9ÐG«d8l¬k]&=¾(‘:wg;îðòÝâÐ«„\0}´j=ÜpØX”çÌqlMÌvÚIÞž>˜õÊ¾Z!Ãaë¹Ã’5Þ¹¹u à‰óÊ¾Z!Caãþg*sGÆ°v’yÂç5VÜÓ46n¨r†1u`¶ÃNOœ×@ Ïfe(lÜÁæbtßŽ3‘ø˜XÚ½!S*¨©ö\0Oœ×@ Ïf¥;lìÍÐ»Ý ÁoÚ7bÐCtöÃÍRAMµxâ¼}6»/EwØØÃ™	Æä£;tÔ\raÃç5è»é»8#Á˜5ìuCØðÄy\rúnFºÃÆv/ÎH0VMŒïÐQ7„+<q^ƒ¾›‘î°±¿Ž3ŒŠÙC;tÔ\raïš3”õ\ZôÝŒt‡\rœ‘`àÒ8,ìÚåúø86;AM_}¬k¯ñr]\rúnFºÃÆRÎH(&ÆGµw6ªWˆ ¦¯>¼pC¾›‘î°±e—3ŠÍÓµwö–ÛÂéÌžõl(v€Z·Þ~m-^8¡@ßÍHZØ?d%ROÕõ½›±ÁØAÍæÅíuqW_Ë¾@éaFÀÊ	×f%ÙÏ=Éc9s§µ×]þ¨–›¾<Ò‡#\'H8)Ew»ºj`ÿþl0v0hÀÕUGì¾ÒºŽÍ!ýidê§¦dÖÃÔ©í(«-ÈfÃ±’Šr”Z¨¹ã™!¬\'­HŸú¹¨ñgÎˆ¾J\0S’F²YÉS)	J­ÙÃû²^ô ý¢ÆÈåº??e\'QRloê$f%u[—²!YÁá·–*3ŸÄ˜Þô£¨ÉyÑƒôËu#Qßf&Ð¨4R\\Ù5ïßÄ†e†¦}•™A‘=è˜¨ÅyÐ‹ô…(#K¬ønQ\"%÷¤Ü—RÙÀÌ%f;Éýz+7›¹Úzqd‰Ò{ó R£\ZçÝû·,¦Ìä8¥m®¦¹y\0é½-¦…ºtqôTä±áéá—Š5J[\\\r38v[Lï\r_­œ\\5‘š«^gCÔBsõ\Z¥\r®m³8vÃ²íaÑ)ÔT®†òÛÎeÊwÙ6MâèVHÏ&#œxëj¬\r=Ki3™ÓE¸Ð²æ¤Íáø&=ÛÏŒY¼–fV—ÓŽ½ÛèDmÁu!Ÿ®ÝB¥â½YÕe´¡0ô3<FqÅö3HÏÆJ½¤Vl§ÉUï+<^µ“2vï µ{Š)_)þ~B¼æ{?£xÛ†¸bc%¤gË°^Ôa‡bañz¶\r³¸jË0¤u3¼^^(y“\r–cå6óë5®Ú¯HÇcZùqy\n½VZÈË±@|¶aÅ¶-£¸ò1HëLZ¨_5‰–°¡cAY!Õ¯´Æƒ{`j“ÖGó‚QµîyJý „\rS³wÓGùfçÿ.4Ï\'-rÔçN¡¬Ù\0»=Ÿ¾mrµBqC<tªHŒqZ§VS+ŽÄ™&Žæ@Ìmî[û[37ÔãÔÖ\0Ê·¤ÓTÕ|Ùj0?/)Ì`kûsãý£€6Át¨#üÝ¢,6 ;(+Hg=ø€W»ƒ†l	[‘ø9^Ã¯?iVoH£)6Ñþà×s ÿÙë|À›2FÛ8t¨e_ØmÂ™]=-ü*ïIzº²Œ\rÅNfT–ÐÑ¼ií>àÉ®YG Ù6„9«ïÂ\'£LÿÚ*²K6)àÅŽyt(I	[‘ø©ž9vˆ¦W–²AÈ\0µûæ€´aÃ_òÂnÓÅ–´ýËO(Ubè¨…š¨í¤¤‡íSë¥ª8v„^¬¶/t´\Z¨å9¶Z\r§¢¢#u”&Nb“+MÌRÄwÓªJ•¶Ð¦ÛäŠ°Õ:ñÕ5|M¥Ç¿¡7í¥ùÕ%4çƒ÷hº¸\"|¢²\\ã5¼‡Ïà³ø¾ëf¹.ìÿ³¼°%Ê[¢¼°%Ê[¢¼°%Ê[¢¼°%Ê[¢¼°%Ê[šˆþQ\nQ‡”Ý#\0\0\0\0IEND®B`‚','applepie','123-456-0987','Technical Consultant','Software Development','2018-04-23','',''),('Benjamin','Taylor','btaylor','benjamintaylor@divide.com','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0d\0\0\0\\\0\0\0˜Ë”\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0\r\rIDATx^íùSTW\Z†ç_˜81“ùaR•ÔDMi¢Ñ$RÉŒ—h2‰\ZctbÜb+nŒ\"Q‰»`ÊHÜEãŠ‚hD\"hTDq‘]YhÈòÎ9îNK4}ï=·»­é·ê©Ê\"ryŸ¾÷œs7þWœ*.!N—\'‹Kˆ“Å%ÄÉââdq	q²¸„8Yž!@C{*ž¶£¨¥\ryÍmÈn~Š»Ož\"‹‘Ãþ¹€ý÷âÖ6Ô´u …Ás\Z§ÒÎ:ÍlzŠˆªü·ä7,,–Æê²zœüí	tLÐó§RÈ>å»ª\ZZ^º#¨´›*ã\\]3\Z|ïq¸Zv(ŠcE­c…QeŠ†ïm»™ô[lïkët>9RÅÆƒÓìB•f/Ö²=‘CÍN´×Ø]HûTòcû¢ G°ˆñmYÓŒ5vr‡}\Z×°O%UŒ£YÌ8 kD;„:2vÂ§¡GkšÈ\"œ6à‡±N/ªáë‚6¥~xg…ÆR·8dÐWU_´-8}µ7;Ø\ZÈÞ0Õ„¤6´bÙs,ÃÈíc»®ü…á³(>Çw–Y”øB•Ÿº±G„\náŸ#>“¢~(,xT¿¼\nÌˆ¿€/wîÇÄ-˜´ÿ4Y0/§Lÿÿ©¯ÁÚrûì)B…Üc2äœw²¿‚J|¶<¾ãÇaäÈõøøxÃÍíu¸¹÷A¿0dÔhL;•H~½¶U6~Rõ\"LH­~6UGþ \"˜ºÎ$ÂBHÞ7“\"bA‘Žü»”À§ïjFˆv6nl|.Š~æ³ÃÐÜÙ˜u6ÙB†5!F{{cJôYvH{H~9ðäƒæ6ýáY+øœ”&#ã5~¤szb¤¯‡;>ÔÌ‡_~%ùýäÀ¯Í¨ÅBrÙ§…Ú`¹LeƒµïØ±¤€®Ø*ÄHß~}ñöH_Œ\nX¿Â*òûÛ\nŸ«±—(ò”ªÂØ†Q,‡YçSÉâ»CªsÞ]€¹\nÇ˜Ô†Câ¢HHb}3¹¡rXð°ã¾žIßJ„>Þ×ó¡)ª!·ÇV–Õ£UðTX‘~\"ŽÚP9ÌJJ#K·†!œ!W²õRü¬_¢Ïºd9_ßBn \\¦F!K·†R!CS2145>é˜ÏöPj»zbûPòC·¨ÈÒØÑ@{gÒú0²tk(ÞCnè…pøž\"wL¹$p,‘%$S…Ó#Ÿ,ò\'K·†b!É&!F)rÇ”\'‚ÆYBÖ«pCÂØ)_’¥[C‰þlyðŒ?|ÉSø¥‘,¤´µÜ ¥ŒùüsSÑþ¿BÆ¥(Í:„èŸB1~ÜègDQ\"dàÿ²aÄ\'=ó$Ž)ubwÉBÎœêš3fòd}É3§OBcIPg\"ÿf$‚fcÌh_aBÏ]HÊ0â#qLñgˆ8lIòce¹AJûÅ|<~:uˆèJMAf|5Iˆ!)ÏŽ|O‘røâwZ*$!mì ÖéõO.Æî–“\"Ìé¨>íƒ#¸š°!Ë¾Æ ·Þ€»{²t#ý<ÜáÑ×Íôïžž¤\0Š÷%Œ)QµOMÉ$!ügjC„¹­ÚÓ¤„îh-?ííõ(H\rÅÅ˜¥ˆÝ7‡¶ÍÆAÆñs‘µ9¿®Òÿ™ò›ëùý{g ÞÔ,&Ëï~ø²eöÅÏo)$!jÝiT\\…ŒŠËdéÖ0\n‘Âý+±ñÆ/dñÖ°eLá÷+$!üFhjC”Q‹ìÊ+è$\nï	9B8·7`DjY¼5¸”ž.·*×%		xf×È’â\ZüVHÞr…pbïž$Kï	>¦X“Â/^)‰$!üîj#”àÏ„ÔW\'…÷„!—î&·ýi–Búðõ[(‰$!üD\ZµJXÌ„èªÏ“…÷„![3È²mÅçz¹x<¤ðì¯$!ªLyk‘ªM\'ï	¹BÊ26aXj6Y´øi–®‡¯UÊîL‘$DäSMæ¬`³¬\Z{‰\\!	É‚åÀÇóS÷aZ;\n1/Q4?–¡¼:ul€ï°²Z7GŠ>³*ÎGrÆ~x¥Þ\'Ë•ßSŒSâïØ8«$’„ØëöÐÒªR@WlRÁ¿H–)\no6¦ð=e“ÂÅ¡$!öºyzCi)Ú	]±UHÊ­½d‰¢á‡¯…w7JÂW¢Tj¬½MJ0Ç!1ãú5²@5ø&»ÌÐ–¼H²ÊŽÞ²^[•luo‹ˆ›?“Å©Åò<­¡-y‘$d³]6²œIiÑÅ“28=	‰Í<A–¦&?U(;Ÿ%I¢ˆ*NMBJ´¨îfJlMÈÙÌ£xOÀZC*yM­†¶äE’èZÇ<¸yº0¥‡mRÉ¦·.¯$ËRÏ´\\CSò#IÈí&¯‡X!*÷\nÚ3Ö¡#\'•\'ÝZHú\ZšƒìX\rY˜Ú||«ÈÐ”üHÒÚÙ©B•*MMŒB~g=Úï†¡£`7Zó÷ úÖ”_BAô×(8þ•G		ÈQ6Ãâ‘$„‡_£JS“g…üASÚ·&	æ8JÈ®’\ZCKò#YH\\ýßOò<y‡ñ¨ÙÎ79ðð…Q¥©ÅÒâZüZš‡Æ¬]xÊy=	É‰Ñ -i7Ö\\Ï`%YÞ§“ï<24¤,’…ðÇ×‚U|–ÐœÅLFZ•95]%\nµù¨ÉEGºÉ>åÄ1ˆNIÄ±”deÌ¾v,O\r¢µÊ¯§óHÂs¹¡•,P~9ZhÎßAXV1ÎTÖàÎ ÄŒ‚Ê\"h‹’Qw#éçÂŸƒ(&€‹0\'êâ^¾ŸÇàµã†þ*ö,¯9\"W<²„ð7æ”(ßKê0ëb6>Û›‚q‡áùéFôyo¹žY,D˜sWËÄ…EaÕÎ(æ¬Ù~/¼à‹þ<½zÂ«îS0à“`xlˆÂã—Ér¥âŸ[ahFyd	á9¤S¶Hœu.CÇ®5	 8Ÿ‘KÊà„8‡A_†ëÿÜš}Ñ¤ÎÛÃféet‡›§²	À{WsÐÐ&îPÙBø[Ø–ËØKø%ÏO·üï`]19÷+«,dí‹ÇÐÙÛLBÞø ¡{NXÈðÞfÚ;¬ñ·×&bÐ)yg„gf•è_\'\"*²…ðÄÔJŸO;™Î>•åS¸\rÄžSWL\"èªq%/!ûÙx`&dàˆ¬Þ‰C‰çL2vŸŠÃß_ù7)€¢÷Kc1äL:Yzwx¥å¡¸EÌØaŒ\"!|/á¯Ç£Š§ÐÜ/Gÿ÷C,Š·†»g®ä!»ºŠÉÈEü­z¦o8b274a‡è9˜ð»”	ÓW“Å[ÃM³•,¾;6U\ZšEBxn5Ù>ãú<êªEá¶°tc4RÍdp6ûÅ$dmd¤IgÍŽƒìPE—n¿ôCOá}-O•—g*Âßº¶§Ú¶[LÇ„ýlQ¶-xxa{LÂ³B¢þ²®‹Áž3ÉÂmaPd) +j\r\rˆb!<ü)T[®&ŽX°Ï¢l[5­7l2}ÉZ²h[y+`)Àœï\n+!p&B„ð<jmïñ®”ÎÙaQ´ÂÆáìÍôn…l>¸ÿpŸDm+FŒ|‘ùÐð«aBx.=¶þìºR!ƒG®Ä‰K©Ý\n=)€,Y\nÖ„ŒHÏÇck*B…ð½ØÚë6”\náhVí\'…m‰@ïÞ£É’¥Ð/6ˆßkPv#µ-*„‡Ÿ|<\\ÓD^È!¤Ï°åØ—ôŒ>Ëò¡!–\n%Ä+-Yâ_4CE¸cN°EcW)B„0&h¶±io¼IÈtÿõd¹rè*d8[ü•^üY‹jBø,äb—1E”7¶—L]±×$äõ~_åÊÁ\\È¨›…(t×Ö¨&Ä˜Ûlá`¸ãQ”N_¶âçB^é?‡,V.F!3î£ÌŽ{†1ªáilïÔ?÷@!œ~£WãÅÞ‘ÅÊåíÅÛZPé°ß-b!ÆíM\"‹•Ë«oú‘¥Êå¯/GôÅ;†­uLì*„ÿÆ¬’jL>¢¨’¥ JÈK/„­‡“P[¯î+`m‰]…˜\'ær6FÍÞNm+J…¼øâL³éEÊn‡	1æTæCLðÛƒ®&K·†!½zùâ5·ÉølÚ:”ë”=í¤F.„‡_qklnÅ	xË×v1R…ôç\\ºSˆ&ö½œ5N!Ä<m¸–[†¸÷0ïû8øüçx_!YÈK/Ã\0¯yX~±g®âÆƒb‡ýÖ)q:!Tj›ZpúVö%ÝÁ¶Ø4lþ)ßm‹Ç²UG ™·‹–D`Yð^¬Ütáûâ‘˜vßð•Ï_ž!ÿOq	q²¸„8Y\\Bœ,.!N—\'‹Kˆ“Å%ÄÉââTþ!ñIg0wTÝ\0\0\0\0IEND®B`‚','applepie','123-456-0192','Systems Analyst','Systems Management','2017-04-24','',''),('Emma','Johnson','ejohnson','emmajohnson@divide.com','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0_\0\0\0S\0\0\0ùŽÛŽ\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0\nÄIDATx^íœ	PT÷ÇµI\'1“Øfšéuê‘xLMMMèÔNbŒñÖ( k´j*¢IÔz_£õä\Z£\"\Z•:j\n,(ˆxq-‚ºr£‚aQ8^ÝßÖÅ=¾o÷½åí{Kºß™ÏÃîûÿ~¿ï.ÿ÷¿MÈ#Õä1_EyÌWQóU”Ç|å1_EyÌWQóU”Ç|å¶æ?~\\G·ºO×j¢Ê«7©¬ò:_¾JåÕ¤+ÓáŸùwü\Z¿‡ßË×ðµAneþ½Hý6•\ZÌÔ•UÑùRçàkK+®Ûâ6ÝUª›ÿ¸®ŽjnÝ¥ƒYÈH9à¶9Çr\'©f~]Ýc7Á]2Ìp,ŽÉ±ÝAŠ›ÿÄP÷Í;÷¨à¢4ÓOëÊiÏqôíò¯iÕ¼é´zþZ¿z9íØCéY§à5BplÎsQSŠšÿðÑc*¿\"­{9Sp‰VÌšBÚ½L½ÞDÀ?·§ð…³(7¿¶ƒà\\8\'µ¤˜ù·ïÞ§åzh‚9ÇÓs(2t-Eßì#‡@³…ÜñUãõyçJaûÖpNœ›\ZRÄüêš;°psø;wÜêÝâ9hªT†½Ý’&¥ÀXÎQi¹Ôü\'†Nµ²ú&,ÖœÔÔ£àÝšØú·iF±ÑaLçÊ9+%—™ÏE\\Ö×Â\"ÍI;’N¾Í“¯¦	c#8g¥>\0—™/æŸwž†viM“‘¾¿{$&Ãœ»r‰ùbúxfÊðþÐ,WàÿÇVtòlÌ¡Ä=@vóyä€Š±fËÚ(hãÛ¡9-ÛŸv,¦-sÇPDˆ/éÖ\Z¾W\n«æþæ\"„«GA²šÏcf1ÃÉü¢\n\Zþ6ó‹~]èÒ‘ítëŒÆ†c›—P`××áubh˜+h\r]Ê	Áµ¸r ›ù|;Ú¼öhÎ_½[RUÆ.h¼‰ªŒÝ4Û¯¼^_Í9	Á5¹êþ+›ù<]GÉ#Æõö†ÆdÆ®€†[sótm?–ú¶z¶cO»¿s²×æ\nÉb>/T‰]«ÉÊÉ§^^¿°1eÆoh´=rwGPPW/›¶qôXÌM®Í‹q²˜Ï+…(iDtd4äÀÚ9Ð`GTeî¦EAÂ6…ˆ‰Š€¹Ùƒk”[\r6Ÿ×È¥,Ï`cÆ ¶Íèš6š+–£1‹i”w+›¶¼n„r³×(÷~@ƒÍçM\n”¬£{t±1#4¨\'4T*5¹{i×’‡#¢q}¼anŽàZåTƒÍ—²•_\\IýZ¿hcFbÔ,h¦³ÜÈÛGšÈ™4î½v6±^Î@ù9‚k•S\r2Ÿ÷GQ’B¤¥¥C3Šn‚&6ÙJÃÿðšUÌ¦ÆÍ”£#îË¸\'Ü óyƒ\Z%(Dì¦h+šOûWŒ&!óä¢$e3\rhó‚EÜÃ‡ÁÁ5Ë¥™Ï§P‚BðôÞÜ\0æó>oAÃä&<ØÇ\"îö`ŽŽàšå’ÓæóÙ©Ç;¦²0€Yð4Kn’×Í³ˆûõ—`ŽŽàšå:ä´ù|8	%g€?ÙÞ\0Ã\'ú@³äæBâF‹¸ëÙæ(®]9m¾”‰sJWF½ZØÎl7L‚fÉÍÅ#Û-c{5¥íi˜«#äšp9m>ÏC‰	‘¤9`YüS¾›6š%7zÃLØ:ö†°0WGpírÈióù|$JLžÒ[Ï¬ùÂš%7å‡·ÙÄÒæê®]9m>PE‰	±øË¿ÛÏD†øB³ä&sûr›Ø½[>OÚS:˜¯=¸v9ä´ùRùzÏ¦xfáeF;±‹ð‡¿eÝZ˜¯=¸v9ä´ù|D%&Äà¯ÂâÇ¿ÿ4Kn‚{v‚ñç6æk®])b~zV,œØöE—Ïp’,‡™æuks¶‡êæKévvm·\ZæYQ–ºš&ßL\nã2}ZýælÕ»)7Ü°ù3aá&öGL‡¦ÉÁUm\riÿ\nŒk\"÷¬øÃµŒê7\\)CÍ‰ƒ?€E›XðIwhœì›cš£Í“6âQ}¨)v’u¶ð2õoó,Ú÷û5\'÷Bó\ZÊW=`LsrN_€¹¡ú$KìòBÂÞX°5IkfCó\ZßÈý:ý\ZÆ3\';WüYFõå±k‹æÂ‚­	þ°#ÕžÚMtëÅ4!ÒÒNÀÜ…P}aMì’ò$Ÿž°`Ä¶…ã¡‰Î’½cŒcÍÞ¸x˜;Â-–”YŽ6Sx«®_ëf°`‚Êþ×Jh¤3Ä¯œãXÃÏx¡ün±™Âr´èh|ðëô+º Ù\0Í”B¡ËÓß3£ÞïóG¸Í6¢£\rô…GÃbáßù7¤Ó¬‡¦Šá|Âzc¨m!Ä>Áâ6è,¡£#çJ~4>…\nÃ7_¦#1‹¡¹ö8¾e‰ÃI‚×ž2²ío®¸ÕÑ–Ð¡©”äÃ°H)ôòjJQ“‡QuÖ¿¡Ñæ\\ÍŽ3.#ô»eb™\Z0ÖbÂíM	äÇ1QÎÀ}wÚ¦Ph:sâû¥’»!RRÒlja¸F·;.ÈB®É¾Áâœ¿Í:;7áâä§Ž‹#6†¯²©…‘kbe.YÌ·>\"ÎÇ¾!½ßbéè¾ÐtsV~f{,Å–ÍøÜÂtÆ­ˆ³ÌŽH>˜\nsŸÍ©ôÐh¸9Ó¶‰ZÚãŸÓ\'[Ï¸õÃ,óÇ‚¶~÷-,L*·{‰ò~ˆ„f#ÎÄ¯¡Á†QjK,+çL³0¾Q<Ä2=·rÎTX˜ü:¾FYNÌvsv†®uþæ±ºÞøFó@œIüøäÌÑÂ;Gb˜=Ü‡Ê\n+©ò\\)Õæ%A“µ§éJ~1•TÐliÿ0ÃDü®Ýõæ7ªGAMú>|),Ìþ¼(i]<U¦ðúš;F*KõT}2šm¿‡ßkºŽÛ8OÃ;ŠÂ½wËç(/¿Äh|£|šUg‡N„\nònwÚï˜~ª¥KjêM4QQTMzÝyªÒfSUæ1Òg3þ¬×£ŠÂg¦›¸\\zƒRÆŸ4¶9ù]qÏlíõŽÑøFýø?ëÑÃ‡43p\0,Òš=F’Æ/|2Œ$Ë¡‹ºë6†šÈ)!mT!é¯ã×/ß ÔÜúö|Ó)´çÛœµËÿ<þñ‹?\0GËú„<3ÉŒÄO²(?î]¹r³ÞÔ‹†¿ˆÌåºú÷œX”Oåù×ê_ÿ±ê×TPRP¶E[&øCF90¼ô]XT¦˜ñ,—šÏâ.(j>^WŸþ—ÁSž}ã!¾thB.%ÍÁ¯88&‡¾é~øuš¡\'hüÛøì=[7>ÍX9¹Ü|“R÷ì¤Ao6¯/6è÷íHãšäJöù\'nÂÏV[9§ãI{Ÿf©¬3ŸUQVB“>þß™ÍXß­Ð%àØœçRY^ú4;å¥¨ù,îSµšC”4÷ËJÀ±µ‰©ŠöïHŠ›oÒƒÛH{‰’³ A®€cqLŽíRÍ|“ÞýÅURêD³¡¡ÌpÛƒc¹“T7ß\\5…·élt™åÝIR\'åÛâ6ÝUne¾¹îÕ> Š×¨hgå¬* ´)§“¯†þZ3,ÓÿÌ¿ã×ø=ü^¾†¯mr[óÿä1_EyÌWQóU”Ç|å1_EyÌWQóU”Ç|å1_5ý2^CËl8:\0\0\0\0IEND®B`‚','applepie','123-456-8765','Junior Developer','Software Development','2017-10-23','',''),('Isabella','Wilson','iwilson','isabellawilson@divide.com','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0^\0\0\0W\0\0\0Ýò¦\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0\nìIDATx^íœ‰SWÇ÷XÝ¸‰Æ+Ù¨*(9ÜÕàAbyÄ£a½ðV¢¢$¢&$f+*+\"ºF9DPQ*Ñ DåœeY5®YÝMä·ýë©º‡ßÌôL_Cª¿Uß*Š~ý~¿÷axýÞë÷æw Kéà5’^#éà5’^#éà5’^#éà5’^#éà5’^#¹,øÿþú:þ]ÍJ¡úA|s÷s(kK‚ãÇPdØÌ\ZÆßá5,ƒeñ¼×ÕåRàŸ¼h‡º‡ùP~w?\Zbá\\óF§Œ÷–ßÙÏÖ…uº¢4ÿËËÐòä\n\\¹³„øuõ\ZXŸ<&Î7owè7ø\rèÝ§?ôz¥?ôé;ÞtáóÇBÌŽ÷ ë»•dX7ÆÀX®\"ÍÀÿòò94=*aº‹xÖg§AÐDèÕg\0üþýÅ™ùc†ùÀž¬dcbl­¥:øÎÎNhzJ[H8¿¸ÆÏð§Á:àÐp?H+[FÆÀØ˜æ¢•Tÿóÿþß¶IÂ@ï>6þøú ¤3îÓo l90‹Œ…Æ\\0\'-¤\ZøŽg7¡Ø¸€^NÂ“ÃÑ›\'“1Ñ˜æ¦¶T\0ß	õ?že\Zi}”²:q*èõnÀäô_ã¦±MŽesÄ\\Õ’¢à_vþ\n7þ™E4´ËŸd~ÀŽP(Xr{{ê\\2Î˜+æ¬†\r¨ì8B63ÿ^ë?˜„¤„ûluÈÉsV¾Bà;í~ÒÑÓ…€”ôÄYd.|cîJw;Š€7õét£8.]¢ZcéC%KÈœø6õùÊIvð8B°õ å¬Å§ó´È2\'¡cíÈ\nÇÄ¶†Œ|÷ø	E\r¿ÊÌÎ6n óâÛ¢Ô8_6ð8´59â{ïÉ…$5px™›¥±MJÌpeSp*qÊQÌ„†‚¡¦£·XŸTY\ZÛ&·d‹NÖÖ^(ÏŒ\ZGÂPÓfø“¹QÆ¶É½°&x\\ñ£¶fÿ	£HjÚ+`8™›5cå”dð¸Æmmi×š‡FÂÓSBƒÈßsþ“ÇP27kÆ6Ê¹ž/<¾` µå¡#ÝHryØ[nPjŒó÷#¯£=|<ÈÜlÛ*—$ƒ·öæÈ–G$aÈåÏ6,„–ÜOàÌÞÕäutH¸™›-c[å’$ðø>“JÐž§G†’0äðä@0œIbÁ£Ï˜H–‹X5žÌÍž’é®$ðø2™JÎžW$¼KÂjO7¨ÎL0CG7~¡cºw9+¶¿GæfÏØf9$	<î ’³çø¯fw!Õƒ½Å˜~˜óõôxpê.(Ÿ*neil³r\Z<î]qvÆ®£R=ÜÍÊn\"¡s¾–¶|Gz™ï±·6oÍØf9öí8\r7Q‰‰ññ«1pRüN?Te|LÂ¶tMöpb\ZQ<Mæ&ÆØv©r\Z<îÚ¢’ãÜ[ëØ­–ñ0àÁ¸(0æt=HÅxÓßãrôÉªÕdnbŒm—*§Áã–9*)1NÉ‰dáys‡	Ac ÷+âöÎ`9,¿oÝ¸}r\'	Öž<Ö…¯©ÜÄÛ.UNƒÇýŠTRbŒŽ°ñaT¤oƒ/7EÂÒYSà±þ0f”7Œp÷„`?_˜\nËç„CÒªøîè¶n 5Ÿ3TnbŒm—*§ÁãfQ*)1>uÃ4±	òMÂQÒc§—/\'scl»T9\rwêRI‰1Þmˆ;	GIc÷†±I\0m—*§Áã6i*)1æºšÞ}°k* %Œ±0&Æ–ÒÕ`Û¥JðÜÃ³o\r	I	çí_kŽ+åáª)x)]\r8¹%j&	I	ÇE¿ÏÆ”:œÔ´«‘òpåO ü™I	Œîz#e¥éÃUÊp21]¸dP²Ž%§‹¾Ø ˆéì’ZÓá¤”	ÔWÌ§!zÞ$–œ^!|Á¾ïÉÜÄXÓ	””%ƒü†õ‚]d+\'@}Q\"	LcÝ1Ìñ0ö™Úµdnb¬é’”E2<õÁA@‡½\0eÕ›Á˜ëØº‹ck6³Gtø1SÎ,\"scMÉä\\ñ¶\'ûûÊrq«ŒŽ¸âÓ‹x÷Ñ‚˜=vYåì‹£——	 LžcÚÁ[Ø´n;·øEë:ÇÔ‰uOñÄ<¿X“Xkþ\"åì«¿¼za¿`m˜ùÚùúXh(”Þß7œKdëâê»b¼9ÆÆcœÜ5Gì¯þœ}Ùý·‚(3tóiä_/®ûê%À¯/ÜÅÖÁ¯Ó7´ëí:ù}$Óž]âe7Ê™í»3æ P»ºŠ\Zb¡ö‚ãÝNméN8ÏÜkYŸ§¯§ æŽ#óº•±g—ÙÞrfCSvÅJ«ûÕ™þùÚÕx0äÛíò’Ø²\\Ÿné°Y‚˜©–’ålÙ¥649³…ïLÍZèÅƒ07Æö—â:æÓ_ºƒŽ®-ÙÙ­k±ôôÅ¼½<Loï,”¥]nÊÑM«ûO}ØñÛö&Ë™Í|ŠëŠ¬/ãóÀÚ\'³wÀAL<ÌL•³f—Û´Šrt›6N×ùüÆÙùû88ßåUqä½œ½ü…à‰_wÙmÚ(G&œ¾¹F\0aÎò¿åÐø l,°?Âi*Ø->ZzÚ¢®®‡“™WcÈr”]ö`Ê‘£8\'*W	ÀÏˆ\ZG–+lÜh³o·ô-¦¯Ç{¨º&ÍÄ<rIÜÃÕåâ Ä>K:þ\0‚wàˆneŠêãØ‡&Ø–>ÞkYŸ3ÃÉqøŒ“˜ã–_äu½úCä#¸^vë´´Ý‡æŠ*0æ&“€)cYCÕ÷Ì½lü:}C,&PÙö&P=è¸%\'{Œso¯ƒ~ƒºŽ[š¿]ãf<TTTÀý‡?AÇOY·6ÝÆ¢l4ßÍÅ\' µùŽù>¬ãz%óÜ©6\ru®3Ç{mÀ`»K=î€±IöÔ\'¤Îe!à0/·nä]úÒ¶Ö@Æv#\rÍ\0Y?|\nÆ†v0^»\rçOCÃÙcÐP%9ÐRq	Zšî	Ë3nm{™‰-WyRØ-%\\wóQÊL2\'Î=öH=ÊÞ—Hà¿:Bðaº€œ¼THm€Ã›Ygînƒ%|žËr: ôDwØœ[ZÃ‰äVs}©±s:\r|‚MÝÍ^ë4=üK$LÂXûäs«…‘S73pšÌ8§ÅàÚ…p÷~W·ch~…éíæ2ù‡ïBSÃ#óõö¦{¹üÝfÔerÌ›dÚHem¦Œ¹ª¥(x“è/\n\Zæåï†|Èé‰çØfÈJjã»ŒôuÆ;ŒÍ”IeÊR×9ãU°ïT66?ÌÍÔ§ÿF¾(ˆ/!pCM|õçãÂ€¸ERÒ‡6VÃ¨Al˜æ¤äèÅšTÂ117ÉÊÚ_F‚QÃsÀ\\”\Z§Û“ªàQ8l»W\riñu$5Œ±1%f¤b¥:xN??û|[ØG¶ª÷ÀXck-ÍÀszþüT^l‡Ì=Êõ÷X7ÆÀX®\"ÍÁóÕÞú\\É½Ç÷Ô0ÀìŒvlº	2“kÙº°NW”KçëéÓgPãT–<€¢Œ&Èþ´ÒwÖÂ‘øÛº©‘5þŒ¿ÃkXËâ=x¯«ËeÁÿÖ¥ƒ×H:x¤ƒ×H:x¤ƒ×H:x¤ƒ×H:x¤ƒ×H:x¤ƒ×D\0ÿ’Ð©æÃäô\0\0\0\0IEND®B`‚','applepie','123-456-7654','Network Engineer','Network Management','2018-01-29','',''),('James','Miller','jmiller','jamesmiller@divide.com','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0e\0\0\0U\0\0\0P*b\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0IDATx^íœ‰WWÆçHÜfEÁ5bpÃ(È*n(\ZW6ÃzPÐ‘EÖqITTÜuTPŒ\"n£QœL¢q&âŽ{\\¢9Éà‚Æåd2‰:£Þ©¯’êÝ·7»ºûµÓß9¿cÙýê½ûîGU½zõªGn	\'·)ÊmŠ€r›\" Ü¦(·)ÊmŠ€r›\" Ü¦(·)ÊeLùéÅºòãôÅã´³±Ö4Ü¢²ooÐüo®RÑÍ+2ØÆgøePû`_W’Ð¦Üyö3Õ~Vþó&HIŸóõe™™gêh@|u\r¤QÒŒº£”|pŸü]Î¥³ò÷JY€}WHu .Ô)º„3åÙËtìÉCZþÝ×M›°kuN>ƒ©CïôVó¶:Þné)ÿÛch5ÿCy; .‘²O£Ø\rë)ùÀ_šÔ…ºÑÚQÂ˜òôåK:üèÍ»uµIÁôc_Pï&FX‚zŸàÌõ¢-´‰¶E’ÓMyõêÕÿë‰|=ÐOZÖ‰Wßº#ÁVbÖ­¡¼kÚAÛˆ±ˆ §šòè?Ïi}Ã7IŠß¹ü¢ÆPÛ®½ØäÚ‚ÿ¸XÊ>]G³Î0h± &gËi¦\\–FEºõ•AbÒ??DÍ[wdª%8ú\"\nÚGLˆÍ™r¸)8AzØHzÉ\0ñ;¶QŸ˜IlíB‹¶”ö·Zƒ8btÖÉÌ¡¦¼ÎÙ5÷\Z’\0p!fggš·ö¢ñ«W±1!VÄìh9Ìt®êîwlçs¯œ£f¿eAËv>”ûÕy66Äìhcb\nºdìÉ8ò)ù†±Ér$ƒRÒ(zIåß¸d#bw¤-1çgýŽ*`4Ä%ÉYŒ-_ÆÆ‰>8Jv7#î¢Þ_±œšý¾=›gYPÈÆŠ>8jTfWS0æç†½\07†oµhÇ&ÆiH£±¨hs\nè‹#îcìf\nîŽ¹C…‰›þÌ\'F\0†•”°1ôÉÞwþv3Ó\\§w×°	þlÌ\nè›=eS0ÁÇÍe)Ì:wR†r	Ÿ!lÜ\nè›=\'1íb\nf^¹Î(LÛ·›M†(´÷ëGC‹ŠØØÐG{IsSðŒ‚›~W“ý¢|Šà\"	5ÛÙøúh¯ç1š›‚‡G\\\'Ô¤}zM‚Ö4·qÊ?iïN6~ôÕÒÜý\'†ñ5ÕlôéîÛM·Ý£swjÉÜÓtõéªÛöððÒm{¶ónòõ¶%øacWƒ¾ÚCšš‚çß\\ðúÌ¾pÚäƒ«ÉÃ\"¨|Fí™ŸEës’©,3ŽvÍ›A•sRi©´=!2Œúû½Kq#‡ÐÎ¹3¨(1FfGi&eŒ‹¢Ä¨HÚ˜—Js?˜H½Þ¥ñ!TU˜A)c†ÓÑÃh\\xyuðeÛVhÑÆ‹r®Ô³ñ«¹óìé¯½×Nšš‚…	\\àú„ÏÎe¡PœK{dÛ•ì	£Ù¶ÕÌ<sœ_\rú¬µ45«N¸Àõ	9‹M‚LØ—ù¿CþÝ|©‹wGòôhCíÛz_\ZÜ§\' Ä‘a”75Z:ªâdr¥íø‘¡ÔŸ{¿C=;w\"OiŸ¶mZ“wOêîãEý{v“êî\'·Áµ­€ç:\\ìú ÏZK3S°¶J½È©f.ôEI1ÔªU+»‚6¸¶gd²±ëƒ>k½®L3S°èš#${&›üõîÉ&“£ï;])À¯ûGp_?³GJßžlìè»–ÒÌ¬FäæµÀ”Øˆ@6¡úx´nM›Ri[q†¼Í•ÑgÂ@³¦¥g°±s ïZJ3S°L”˜#õ¯¨•§ñÑ–;‚M¨>áþº‹w„´Í•Ñu›2%xz·1Ðw-¥™)X¿ËlŒá¥¥lB@yV­ÈŠgªÏ‡iu¦`›+£êF\\Û`à´6fc ïZJ3S°°šØý§Ä$£Y‹v7bˆœàÝó²¨‡¯7›T…½ºëQÀg\\YÔ‰ºQ÷9hS?ŽÉU•lÌÆ@ßµ”f¦˜šæ1wžA2Þ–ØQ:]—à¤¿üNÒP–K.†Æù)º²\nøßqû .Ô©”ÝZ”a˜°a=³1Ðw-¥™)xØX>\Zž“k0…??eR“$WKwé%IãhæÄ(JŽŽ ÌñÃhaú$éNþ7óôÁw(ƒ²Øû¢Ô¥.W:¿®¦¦³1}×RN3`¶Xÿ‚)uâìÉ¤¡áMÚVµh!¯1„5ÅÚÓ€)úGJ—N]Øj\ræÕ:u4ö‰™HyW\r›BØÓ—µz…ÈÂBƒÄ,Î˜Ê&RKpšT·Ù9(Ìàe#KöBoíXM\\õVù…%AaýÙDjIH¿~ML	²pZ…CØ!±57£-Ò%£°Ò&$R+–dÆýÖVKO£ï­XŠ°7ÖL³pä]=O¡Ù³ÈoÔX9Y>Þ\rFKZP#ÌðÀL1¥sP85;ÍbÍ„¤9zK[$l\\x0›X[ˆ•ëî6”F—-–WÖp1Xƒ°’ÖLÝ›#ïÚE\Z¿f5…ÿq6-ÍÏ`“û: .\\Ðqt¤vˆmÛZ„žº‡,}ÈeNÑæu²I¶ÔºØ6l@è‡\\¥ƒ­¥@ºÞTV,a“m	•›Ê¨Pªƒ«ÛV„léÂ‰×¡@ºÑÜ°u›tSl¬Z)íûú#+s¿p²d‰‘-,ú{-U//b\rPS]^D‹ŽdëÐ\n—XbY²ÏV\n®§ŠÍå¬ ¢b)Je¸}µÄeãY²lÕVp:Â‘Àv,#Çí«.µl2·ÀÛVÊkkX3Ô¬8PÍî«.µÀ2÷*„-”\\<E5KòY#Ôì,Ë£’¶ßr o.÷*dî¥¡×¡øòÚ¶²”5cûŠ*¾tš­Ë\\ò¥!ÈÜëuÖRRŒ>^=M¾)°OñÙ/Ù:_—~½2õ\"ªUlß@S‡QÞä(y¡7—|<ÈÊ4RÞ· z#_·¸ü‹¨ŠL½²mŽÅ—ŽÓ‘OÖÒäðýž¿LÜA´vVíYðËŠŽ=ó³iTfÚðÁºý¦„¿GG®—ê4üõ\"Kxc^ÙVdêÇ\rŒ±¥þ3zðå&zr¼’®ï_Fi£Cu	VÌ)Ž¦åÓ§PE~2UÌI¡UÙñÒgc(qXP“²éÑatã“r¹.ÔY%ÕÍµiŠ7êÇ\r S?ÂqðÄ>z\\W!\'QáÎáu´:\'ÞìÓ$á¦@ÙÕ9‰t÷Èº&u¡îý\'÷³ms¼‘?™úÁ5H–:úà/~m^%G…°F\0|·67Q*»œ­CÁcÞØÌQ„Î™:b*ë!¦€Au[æRíÊ\\ª]•KÇ«æêNS–€¶*ÎfcˆÕÑ†@5Bq~Ö¿ø—_¬Ó]C	Ú\\&µ­Ž±!FÇÛñ‹nŠ\"ŒdÔÃå+Ç>f“æÐ¶brÔ(Ë˜œf\n„1?nÆ*ê?g“åH*¥‹#îCÌÉ©¦@¸;¾ïÝ?é¼#m7Þ½n÷;uKåtS=}þ3}ÿí)A[ÙÄÙ´…6Ñ¶HÆEÏÿûŒ5\\ »gw±‰ÔÔ6Ð–ˆÎµžüÐHn ÛR3Éµì{»^2BªuŠ.¡MQë§gÿ¦‡÷oÒ\rç©ñÚaj8·—nŸ®¦Fézððølã3|‡2(‹}°¯+ÉeLù’Ûå6E@¹MPnS”Ûå6E@¹MPnS”Ûå6E8ýy$*l“½\0\0\0\0IEND®B`‚','applepie','123-456-9876','Technical Consultant','Software Development','2017-09-25','',''),('John','Wick','jwick','jwick@divide.com','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0_\0\0\0T\0\0\0ä‹ë6\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0”IDATx^íœùSG\ZÇ÷ØÚÃ­Ý$ÆuSµ?lbbâ ¨ €¢‚Šx‚r)^–ŠÑx%€GcL%Í®o<b<ñ@äZZÊ#®)³>Ûß~y_ç`æyßy©}ŸªOÙÌt÷óôwæíéžîñWä3ËÌ\'¾…æßBó‰o¡ùÄ·Ð|â[h>ñ-4Ÿøš×Šÿß‡÷éÉåRz|p7=ød\rµ¤Ó¿s§Së¢jnC¤qçyQe{‚y•øOëoÒ£=ÅÔ¶r.µ¤Ž¡–”×eQêBÞj–‹ÿì??Ñãã{¨-?‘ÒP7|À—7™eâ?{ü~*ÙE­ÙQ¬`)cèzZ8M¶q#5œšÄ1./|Á\'|{ƒy^ügÏèÉÙ#Ôºx+šò”0ú4.ˆ2Æ ‰ÃÞì@¤ß›”îOŸÄ”y¹:ÔÀ7b@,VšGÅÿ¥¥‘ÚÖ-dQs=%”VGQ$#xWdFggfëTƒX“Uæ1ñŸ\\úžZ3\'²\"¨ùzÆŠñÀŠ«•Â˜@jfêVƒ˜›æ~ñÅOûÑÞ­šF/M‚\r±£X1]á½q~š.\0bCŒžî†Ü*þ³_žŠñ÷j¾ÁãF³\"\Z!?ÂŸõÅX³§Ìmâ£÷sÙFrì]\r\'žìŽ×ö\0ˆÙSÀ=â‹Ÿ¯ž;þ†x¸Æd…3ƒØ©29”õÍØ=Ñ¹E|ÙÇ3êŒ‚è V43Éd}w†|¸ÙL#=¯*ÅØ<Òï-V03‰>0|åb`mp÷(ÈTñ1fÖ:œ´³kÊHV,£ÄîplGlCg -îœ˜\'¾è#µN ”dEð3W#¬š7‰ÎïÊ§èáÎs…ì}]@›ÜÕÿ›&>¦ë\\ð]qO5ÜÜ.\'/1šî/¢Ö“[éã·“œÎáb4êèíÈWn0SÄÇ‹*­ïj”T§†9‰c”m9s¨å»b)<ÀEXâ”çfš¶÷?JÐ6w¼Œ3E|¼)ä‚îŽ‹)áNÂ¸ÊìÐ\0:^”ã]IÙWkhJÐGÞÂ\'Kw f›aññŽ\\Ïka%\'“Æ:‰¨—ÉAƒië²9tçÈ‡¬ðv.ì^Iñ£†Ê2ðÉÅÒh£Ùë†ÅÇ\"¬NÌ±‰ÏM°\"†ö§	ªcvÒ£‚é‹•iÔpxK¡ÑíÜ=úQ‡ã¥Ûß‘e÷%ŒbcÑÚj¦ßÈ\nÔ™äpZ\Z?ŽŠs“hÀ«¥¾½_¤€¯Ñè!ý)hÐë4R2ä\r\Z=øuzí•?Ó(ñïûY	tb[.lw-E³£ƒiÉìHZ–E™Ó#(iÒš>aE…øQQoˆxÐn_‘LKâÃéðL>- ­fš!ñ±>Ê©ˆÿÍÚZ(ëÕ«}º2µÃkçvÉF*~g.½üÒ2/xáO¤\"qá¸;ÝêD^øØ[A§æéà*yZ_ÕÞzãfH|,Psjâ×ØH{×gQß—_¢æ¶!bWŒý¼ÿÀ~ ÄæQ‚:ÿÒ§·ôQ#. QñÑf³Ìør— V*2&JÊ¿. á¢»QÇÑkJ6QÍM¢L?6š¢û‚¤ËL`cÑ\nÚl–¹,>öÆèy‡Ãq\'\'V\nÒ,’Á~o9	ÆQùÍ:š:.ÐñwBÄHººg­SŽ±þ¥¤ë—éŸ8!ÚlÖ¾ —ÅÇæ$68T.ŒtìGMí3ÓÎ(3Ö}9þÞ¿e	ŠcÊ<j0ÑŠæø»\\üÚ¸Xô€¶›a.‹Ýa\\`z@Ÿßph³eåü©tè£e‘ÔTíû€bÅdJ9ƒqaòœò˜Ô™—6Y¦ën‘>¹Xô€¶›a.‹íy\\`z€?îÊ·	sh9„Ž-ï ðÕ=ïK‘ÏìÌs:Î|–G“ÃFP…ªûA¨èºƒ¶_fˆ¶›a.‹ý‘\\`z(F;–\':ƒHùéS(cÚxJcòYQ£)1&„²fDtW	ÎeŠ<È‹2éSÃe¨Ë.<€/££€¶›a.‹\rª\\`z88#˜æˆ»V}§»ø€¯c³\r\0Ún†¹,>vséá\\¢mÑüÐæ%¬`·ßüÇz‰–yø€¯+:Ör;m7Ã\\¾ñ¾³)Ùöº7AŒtjÅØÍÎ±ÂÊ³T,¢@:\'!‚Žuñ ubN0=ÄO–Á\Z‹Ðv3ÌRñAÒ˜aR”÷æD9A”Ü#™âœ]ðÎ@äU—¿\'~ùIÑ2ÏÌQCÙôb½ø&t;`[l CÀ¬É¡´C¶|ydËRÚœ•@±#9ÎwònÊL Ãbü:J6,¢ì)ÏlŠbô/#rXÞí˜ñÀç“µ­fEû ÕÉ±ôÙŠd:°i±iÃ9®Œ\ZøâbÐ‹å\\3†švæ‡°b)É9Qv!\\·‚s\\%éaÚ·\rv‡åCM3&YvÎÒ¶UæÅb¿VÌXÒ8ÆåUóíÞ·+X>É2ãõ‚ì$N\rÎŠf©c‡›2Ê±cùë3^¬)9-Æüz?„Ð¶¦üèâºmgXþbÍŒWÊj>Œ3oo¾ñÁ¬/—ñ†WÊ0£‹)jî¦Œ¡Ì0óºŸ,Q—žæ´à‹)0£ËˆÕ)¡47Ä6ñ2B’¨uq>Œà5ËˆFÐ;ãfÊXšgà l•„^³€s×ÇËµ©ciùøîÇÿj–Ž÷§Z7	ïU[G`F6Mu†‡ŸO–_–pB+‰\r(óš9¤Tãu›¦ŒlÔJµè†¶Ì£iÁ»\"lÜ8=LtUî¹ÛíxåvA˜«e5ƒ!í·ëä«„Ó¯ =kHNíx—\ZRkÉÔ’fîX^Wn”…¹ºE\\3k»Þ¡\0ZÖ\'óeMÀ«·ˆÃ\\ù8BÍKb©ùû/YÁ•4Ÿú;5/ŸÊÖa¯þ8Bš‹ŸuEsf$5UVPcëjºUN-¥;;ˆŽcMÕå2OcÕ\ry±¸º\\¥G|såƒ¸Îh^4‰šÊ.ÙDµÓÔBÍWŽ:„Gºñ^‹sžk¦]€žóA\\»éý”£~MU”]sUÁíÊËTsí\n{T\\©uüŠ6ô¨OAí¦÷#h;õÙ“¨¢äŸt¦¢NPO7êUwu;ÙoK¸s(ƒ²¨£¼d5d»ö+è‘AK}¤žÏÿÁ±ô©””¹¢]8gumNâ–þp‰~÷‡>¤•çe”uÌÍZAÇçÇ³>;£GþÓó_T¯¦Ôœ57o‰“pàüõÑÝ–û3—æÑ¯û¢iûqäA^uyÔ‰ºo¯b}«éùÿñE»¡Ýýªvn\"Õ	\nXñAEu“øVC+¼PE}^é\'A\ZÇpy¸²6ñDºŽª·°1ØA¬žæVñ¥‰Ÿ¯|0ášM¹t¦ÜÖ¿w%>¨\"Ÿ«léWß&A\ZÇpN™WÉsñE7V^+æê8›ìã=ÐÕ(Íýâ·FÊaèÝå	ôÃ•[‘º_Iï¾“pçÔ(Åç.ß¾íq &wj:3‰Ã˜Ù>»üÝI\'‘´Šª¬–~óûÞ¤¹<JÔâƒ+GÊ‹;ÇñÝ™GÅ—&~ÚËÎÒ¹²çw=Ð*þ¡ÓåŽ.Ò\\%œøðýè¢¸Û=ÜÍ¨Íóâ·ÛÏPmu¢Z\n¢Uü¯”:ÄGšË£D)>|Á\'|{ƒY&¾Ýž>~D\rµõ”“·N“øÛ¾Øïi.Ô‰ºá¾¼É,_i7¯^¥šê:ºx©Rg©Y_ø¹C|¤¹<({ñ’­.Ôé­æUâ+íçûmÔ|§\Zî¶ÐõŠktùb9¿|V­ûÈ1ÃE\ZÇpyeP¶\'˜×Šÿÿ`>ñ-4ŸøšO|Í\'¾…æßBó‰o¡ùÄ·Ð|â[h>ñ-4ŸøšO|ËŒèÀÅ<:oM5\0\0\0\0IEND®B`‚','applepie','345-345-4567','Project Manager','Testing','2018-07-04','',''),('Logan','Moore','lmoore','loganmoore@divide.com','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0`\0\0\0\\\0\0\0‘ °î\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0¥IDATx^íœ‰OTWÆûGX·Xã’´¦¡m¬\Z­!Z­uCÜ—‚Z­µî(.hâB¨,‚\"±Z« Ðº‡R­Æ*n`£­mj”qCº¢(hƒzú¾ÁÑçxÞrßÜ7íû’_2™¹Ë¹ç›¹o¹÷ÍäHª$Ë1@²$Ë1@²$Ë1@²$Ë1@²$Ë1@²$Ë1@²lkÀýš§tôÎcÚRZMË\\•ùG;s—>ûõ6\r(¬¯ñ>C”EÔ\rÙÊ€khÝ•‡4ål…Þ¢¾\'ºhm¡M;KºUOžÑ®ëÕ4é÷\n6™\"@Ûè}ÙMÒx $#»´Š†+Ó—4+@_è}ÛE~7à™2ö7S˜ÆÄ÷<à¢ŽI™ôÞ¤EÔ&l*µîFÍ;÷vÓºO¸òÞ4\nR>ë˜”¥”½È¶á\rúFˆE¶üj@ù£\'4çÏú§š>ÇoP‡ÅéÔâãÔ I+jÐ¨…6”²¨ÓaI†»\r®m5ˆ1É”ß(PÎN†žªÿ[üÝ^jÞ±Ÿ`4ïÔ“‚×ícûPƒ˜›,Yn\0~åë¯>¤fðÞ´[§ï_J[ø5p}©AlˆQÆŒd©5Ê$›T\\ÉÚ›ö1ßòI@ÅX®Oo+bö§,3\0‰9Ÿ¨7Ý¶Ò›ÍÞf“\'‚†o½CÝvœbûö1ûÓK@øZ¿ù E×þlâDÒ²û`¶oÄî/,1\0ó)70Ž.±	³‚®YGØ80H¸8£ÐrÀõÐ&<‚M–¼;f6Æà³#¡àœZË©¦š¦AØdYA³¶]Øêc±ú:A˜8ni¹ÈRóéþl¢¬¤×¡Ël,u1YyLf\0.í¹ø¢[v›$+é¾õ‹/06«$Ä\0ÜÜÒzoGM¯ÔÍl’|Ñ°qKjÒ´•›†ù2¾èýÍv6_`lVÝÀb\0î0r×G·Ä\rî¤4jÒ’:}@ýƒ;Ó„~=(jx?Š=’Ç£5ÓÂ)=r4mœ5†2çŒ¥ì¨/^ïá3”Y=5œ–)uP7jx}ÒƒBƒ?¢öAï»C_Ÿ¤d±±ÔÆh…L€{ìFo){~«¦„½–XÑ¬˜0ÂÝW¯Uú\0c´b=Á´XèàÖB¯•µdÎ~ý›-šŒÈÏk\r00yÀXEË´fV²Í\0ŒU´L€õV.P­š Xð\Z³)°èÍ©•@4\0c)S`ç¤VÑ\0ŒY¤€½7f¶Ž\0¿\Z0SŒ³È}G†\rÀ(.@=À€®íÚ±	³‚à¶š6\0`ì¢dØ\0ìBã‚ÓÃ˜œãl¢¬\"KaTn‹0vQ2l\0¶rÁéaÌOEl¢¬dÔÞÓl,zÀØEÉ°ØÉ§‡Ï±I²’¡‡‹ÙXô€±‹’a°)–N¡ÇÊÜÓ—(+@_!ÇÿfcÑÆ.J†\rÀÎd.8½d,˜Ê&Ë\nÒF°1èc%Ã`{8œ^R’–°É²‚ääx6½`ì¢$Ý€™Y»ÙdYÁŒÍ?²1èÅˆš‚pPä’%\ZÌÿCò/±1èÅSˆƒ°‡Ô„6i\"IIZÌöm[„Eœ†z—sŒMšHpÍÁõm[œ†Š¸Sƒo(—8,KN`û4Š-.ÄDÜŠP3úçÓ”9÷K6fØ4o<…ï?Ëöi[ÜŠq3Î›Ù›¶³I4Ã¬Ì]l_f°ÅÍ8·£_ãÄMJ\\žÄ&Ò	+RÜm²}Ä6·£!³2Ž”ÐÊøh6¡zXC\n®±}˜Á62Ù%Éº@âV$Ä²‰ÕÂòÄ8ê´”mÛ,¶Z’4»(ï$pIZ*›`_,NK£Ð£el›\"°Õ¢<dåÖ`òö”1\n›l5é¦ÑÄ‡Ù6Da»m)™YZÁq!>5…M<ˆW¶VÌ÷ÞØrc–™­‰Zéw¼œÖ~=‹M>XI¡Ç®³uEaÛ­‰ÑÍ¹Z‰ÌÊa¯fVæN¶®(l»92º=]Cò\\´~a›t5Ê1@Är#‡í·§CFÐ¨Aù—iuÜ<6ákb£h° [Îjlÿ€dä%_ŒÌ+¦5	ú/ÈV+qaùÚþ´Cóˆdä!=Ž¸ì]teæ ºU”O¹‰Ú¹	óèfQ]œ=”¢·˜_ý\n¨‡ô<Òû˜ªšqûÎPALÝŠèëæÁ¶ÕôôI\r¹NæÑž”ElÒÁžå‹ÜePu<õóã\"Ýmr}ÕG@>¦ê‘žµ=,ÉÚAeÓC_$ÜŽ\ZJO¾¼÷^uï•þõ¹\nqƒ×Õ÷^®N¡,ê¨Û(›JÑ?ä²}ú\"`Ô†0eêù«‚ïÓ–ÓMUÒÔ<Øºª¶Q\rBY®\nñ›¶²}sü_@Zÿ¬#cU*›´LïG5×\\Ï[­[(ƒ²l\n085}ƒšÿÄŸux„øú%Äfï®ó›¯ænÂ4zöOÝó1>C®®\Zô…©Ž‹ V&²Ô\0ÃÁ|ê}`ž’{‚®ûøÆzS¹)¹¶AFøŒ«ÃQ9F<÷J,ˆ\r1ú7õµ²Ü\0pF¡>E-Z8M/ªóv?oí¥ðWÖ¿üÓÄä³ºä7 œSãÂ&v³þ¤y¨ÎÏyÞš’|å5WFK3·»c±ú<¿>ùÕ\0SlÉÉ|*™;‚MŒªlsÃ}¦ô]r\"ÏÒ+\\­ò»UUVRYN&]›3ŒM’ /ô‰¾í\"ixô¨ªŠÊ÷ï K1Ù¤‰\0m£ôe7I7@­®óT¾m-ÇNÒtzZ¨ëŠ›ìnmÚY¶2@­ÊŠ\n*+* Š½›éÊúDº°t:¹æ¥«Q#¨<²¿¼Æ{øePuP7Pd[þ/r,Ç\0Ér,Ç\0Ér,Ç\0Ér,Ç\0Ér,Ç\0Ér,Ç\0Ér,Ç\0©\"úó¹-·°Ï(J\0\0\0\0IEND®B`‚','applepie','123-456-6543','Technical Support','Systems Management','2017-11-27','',''),('Liam','Smith','lsmith','liamsmith@divide.com','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0_\0\0\0T\0\0\0ä‹ë6\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0”IDATx^íœùSG\ZÇ÷ØÚÃ­Ý$ÆuSµ?lbbâ ¨ €¢‚Šx‚r)^–ŠÑx%€GcL%Í®o<b<ñ@äZZÊ#®)³>Ûß~y_ç`æyßy©}ŸªOÙÌt÷óôwæíéžîñWä3ËÌ\'¾…æßBó‰o¡ùÄ·Ð|â[h>ñ-4Ÿøš×Šÿß‡÷éÉåRz|p7=ød\rµ¤Ó¿s§Së¢jnC¤qçyQe{‚y•øOëoÒ£=ÅÔ¶r.µ¤Ž¡–”×eQêBÞj–‹ÿì??Ñãã{¨-?‘ÒP7|À—7™eâ?{ü~*ÙE­ÙQ¬`)cèzZ8M¶q#5œšÄ1./|Á\'|{ƒy^ügÏèÉÙ#Ôºx+šò”0ú4.ˆ2Æ ‰ÃÞì@¤ß›”îOŸÄ”y¹:ÔÀ7b@,VšGÅÿ¥¥‘ÚÖ-dQs=%”VGQ$#xWdFggfëTƒX“Uæ1ñŸ\\úžZ3\'²\"¨ùzÆŠñÀŠ«•Â˜@jfêVƒ˜›æ~ñÅOûÑÞ­šF/M‚\r±£X1]á½q~š.\0bCŒžî†Ü*þ³_žŠñ÷j¾ÁãF³\"\Z!?ÂŸõÅX³§Ìmâ£÷sÙFrì]\r\'žìŽ×ö\0ˆÙSÀ=â‹Ÿ¯ž;þ†x¸Æd…3ƒØ©29”õÍØ=Ñ¹E|ÙÇ3êŒ‚è V43Éd}w†|¸ÙL#=¯*ÅØ<Òï-V03‰>0|åb`mp÷(ÈTñ1fÖ:œ´³kÊHV,£ÄîplGlCg -îœ˜\'¾è#µN ”dEð3W#¬š7‰ÎïÊ§èáÎs…ì}]@›ÜÕÿ›&>¦ë\\ð]qO5ÜÜ.\'/1šî/¢Ö“[éã·“œÎáb4êèíÈWn0SÄÇ‹*­ïj”T§†9‰c”m9s¨å»b)<ÀEXâ”çfš¶÷?JÐ6w¼Œ3E|¼)ä‚îŽ‹)áNÂ¸ÊìÐ\0:^”ã]IÙWkhJÐGÞÂ\'Kw f›aññŽ\\Ïka%\'“Æ:‰¨—ÉAƒië²9tçÈ‡¬ðv.ì^Iñ£†Ê2ðÉÅÒh£Ùë†ÅÇ\"¬NÌ±‰ÏM°\"†ö§	ªcvÒ£‚é‹•iÔpxK¡ÑíÜ=úQ‡ã¥Ûß‘e÷%ŒbcÑÚj¦ßÈ\nÔ™äpZ\Z?ŽŠs“hÀ«¥¾½_¤€¯Ñè!ý)hÐë4R2ä\r\Z=øuzí•?Ó(ñïûY	tb[.lw-E³£ƒiÉìHZ–E™Ó#(iÒš>aE…øQQoˆxÐn_‘LKâÃéðL>- ­fš!ñ±>Ê©ˆÿÍÚZ(ëÕ«}º2µÃkçvÉF*~g.½üÒ2/xáO¤\"qá¸;ÝêD^øØ[A§æéà*yZ_ÕÞzãfH|,Psjâ×ØH{×gQß—_¢æ¶!bWŒý¼ÿÀ~ ÄæQ‚:ÿÒ§·ôQ#. QñÑf³Ìør— V*2&JÊ¿. á¢»QÇÑkJ6QÍM¢L?6š¢û‚¤ËL`cÑ\nÚl–¹,>öÆèy‡Ãq\'\'V\nÒ,’Á~o9	ÆQùÍ:š:.ÐñwBÄHººg­SŽ±þ¥¤ë—éŸ8!ÚlÖ¾ —ÅÇæ$68T.ŒtìGMí3ÓÎ(3Ö}9þÞ¿e	ŠcÊ<j0ÑŠæø»\\üÚ¸Xô€¶›a.‹Ýa\\`z@Ÿßph³eåü©tè£e‘ÔTíû€bÅdJ9ƒqaòœò˜Ô™—6Y¦ën‘>¹Xô€¶›a.‹íy\\`z€?îÊ·	sh9„Ž-ï ðÕ=ïK‘ÏìÌs:Î|–G“ÃFP…ªûA¨èºƒ¶_fˆ¶›a.‹ý‘\\`z(F;–\':ƒHùéS(cÚxJcòYQ£)1&„²fDtW	ÎeŠ<È‹2éSÃe¨Ë.<€/££€¶›a.‹\rª\\`z88#˜æˆ»V}§»ø€¯c³\r\0Ún†¹,>vséá\\¢mÑüÐæ%¬`·ßüÇz‰–yø€¯+:Ör;m7Ã\\¾ñ¾³)Ùöº7AŒtjÅØÍÎ±ÂÊ³T,¢@:\'!‚Žuñ ubN0=ÄO–Á\Z‹Ðv3ÌRñAÒ˜aR”÷æD9A”Ü#™âœ]ðÎ@äU—¿\'~ùIÑ2ÏÌQCÙôb½ø&t;`[l CÀ¬É¡´C¶|ydËRÚœ•@±#9ÎwònÊL Ãbü:J6,¢ì)ÏlŠbô/#rXÞí˜ñÀç“µ­fEû ÕÉ±ôÙŠd:°i±iÃ9®Œ\ZøâbÐ‹å\\3†švæ‡°b)É9Qv!\\·‚s\\%éaÚ·\rv‡åCM3&YvÎÒ¶UæÅb¿VÌXÒ8ÆåUóíÞ·+X>É2ãõ‚ì$N\rÎŠf©c‡›2Ê±cùë3^¬)9-Æüz?„Ð¶¦üèâºmgXþbÍŒWÊj>Œ3oo¾ñÁ¬/—ñ†WÊ0£‹)jî¦Œ¡Ì0óºŸ,Q—žæ´à‹)0£ËˆÕ)¡47Ä6ñ2B’¨uq>Œà5ËˆFÐ;ãfÊXšgà l•„^³€s×ÇËµ©ciùøîÇÿj–Ž÷§Z7	ïU[G`F6Mu†‡ŸO–_–pB+‰\r(óš9¤Tãu›¦ŒlÔJµè†¶Ì£iÁ»\"lÜ8=LtUî¹ÛíxåvA˜«e5ƒ!í·ëä«„Ó¯ =kHNíx—\ZRkÉÔ’fîX^Wn”…¹ºE\\3k»Þ¡\0ZÖ\'óeMÀ«·ˆÃ\\ù8BÍKb©ùû/YÁ•4Ÿú;5/ŸÊÖa¯þ8Bš‹ŸuEsf$5UVPcëjºUN-¥;;ˆŽcMÕå2OcÕ\ry±¸º\\¥G|såƒ¸Îh^4‰šÊ.ÙDµÓÔBÍWŽ:„Gºñ^‹sžk¦]€žóA\\»éý”£~MU”]sUÁíÊËTsí\n{T\\©uüŠ6ô¨OAí¦÷#h;õÙ“¨¢äŸt¦¢NPO7êUwu;ÙoK¸s(ƒ²¨£¼d5d»ö+è‘AK}¤žÏÿÁ±ô©””¹¢]8gumNâ–þp‰~÷‡>¤•çe”uÌÍZAÇçÇ³>;£GþÓó_T¯¦Ôœ57o‰“pàüõÑÝ–û3—æÑ¯û¢iûqäA^uyÔ‰ºo¯b}«éùÿñE»¡Ýýªvn\"Õ	\nXñAEu“øVC+¼PE}^é\'A\ZÇpy¸²6ñDºŽª·°1ØA¬žæVñ¥‰Ÿ¯|0ášM¹t¦ÜÖ¿w%>¨\"Ÿ«léWß&A\ZÇpN™WÉsñE7V^+æê8›ìã=ÐÕ(Íýâ·FÊaèÝå	ôÃ•[‘º_Iï¾“pçÔ(Åç.ß¾íq &wj:3‰Ã˜Ù>»üÝI\'‘´Šª¬–~óûÞ¤¹<JÔâƒ+GÊ‹;ÇñÝ™GÅ—&~ÚËÎÒ¹²çw=Ð*þ¡ÓåŽ.Ò\\%œøðýè¢¸Û=ÜÍ¨Íóâ·ÛÏPmu¢Z\n¢Uü¯”:ÄGšË£D)>|Á\'|{ƒY&¾Ýž>~D\rµõ”“·N“øÛ¾Øïi.Ô‰ºá¾¼É,_i7¯^¥šê:ºx©Rg©Y_ø¹C|¤¹<({ñ’­.Ôé­æUâ+íçûmÔ|§\Zî¶ÐõŠktùb9¿|V­ûÈ1ÃE\ZÇpyeP¶\'˜×Šÿÿ`>ñ-4ŸøšO|Í\'¾…æßBó‰o¡ùÄ·Ð|â[h>ñ-4ŸøšO|ËŒèÀÅ<:oM5\0\0\0\0IEND®B`‚','applepie','123-456-4321','Senior Developer','Software Development','2016-08-29','',''),('Noah','Williams','nwilliams','noahwilliams@divide.com','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0i\0\0\0[\0\0\0p0«œ\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0	ÿIDATx^íœùWWÇçÏÉLæ·‰ÆŒž\"nÑ ‹Ñ*r2AÄÄ‰‚l\"Š52\Z\rˆB\"‰¨DqaŒˆA1Y´ÙT¸óîƒêÓ]Ü¦«ºªºûi}ÏùœS‡®·Ý/Uo©Wõ\'0åõ2M@¦IÈ4I\0™&	 Ó$dš$€L“i’\02M@¦IÈ4I\0™&	 ¡L\Z†ÏÁð@üÞý?zr†:«àé£J|XÎÁcüþ†çà¹˜ÓŠ*¯7éåp/üÑ×\0ÏW3NÁ`{™k°´C,ÌóI^iÒèÈx>øê9:à:€ycX–·Ë»L\Z}ÎnOwÙ-«‚,EOó	¸ý\0Ô}·›‘Å{îŸ Ï¥À²°L,Û[å%&Â‹¡Ö±¾…¤œ¦Ú}p$+–/„ ™S!ðÝ‰Ä‡~\0G2ã¡ér!™‡,ë€uñ6yÜ¤‘C¬“¯!\'§¹î |™ÎŒy›4†\"ˆ±#!Œ_aTžr°.X\'o’GMÂQ×àÃ3d°äœÚŸ\nKÿñi„–Îš¥…)0ØVJæo«ÖÍ[ä1“†ûoÓ’Ñßò-ämˆ$ï\n9©k åI•%ëè\rr¿I£#lþRG…\"cl-ä2Ó©²(°®XgOÊ½&¡A]WÈ`P”H#ƒ¬eûÖ“eR`=i”[MRsµü\\!>\'¬!¬ÃU6¿¢<$·™¤´’ÈL^MWOv²‘\"U¶#<ÕG¹Å$>Š#\Zí.«f»\nå½ZDÖÁžõnÎ9”³%Žç\'MèòÙ3 ‰M^SW.†¸ 9ŠLDþèÇÓ$­X+üfL8§$g-Y‡°¶¸{e°I£Š\'ª¶¬[µØ.ùI«¡£*ºÎZiý..ìÛ\0G¶ÄBaÊ\ZÈfÖÝñaüÿv¾0\rZ+sìÒtü°\n’#ìò^ö!Y‡ÉÀ6aÛÜ%CMÂeª‘“1À&›8ñ”‚¸ž]–ê½vÁÖJÚê\0kþÁï½ÍçbT]&cl	É=2Î¤ÑçŠ×âlytûkk\0‘+Å[È@káúá­ve´Ý<DÖe2°mîZ”5Ì$\\Y¦\ZçŒ_.î±osd0d=Ø\ZµÔZNCuYgðÕs7È“ðšÇ\r¶Ü8›Í·Ìw:Ü+ÛEX~=•	¡ïOçeÕUf’uq¶ÑÏ£1	¦QR‚dRÉ¶82¸zr,ãM&!ØV£eˆIZž¨¢I‘‹|àÉ¹2°z‚eDûûj2	Ûj´t7	÷PQ\nšt -Šª§Gk2	yÞ7Þzc¤»I¸ÑƒjˆRÐ¤ŸK2È€\ZÁ­c_h6	Ûl¤t7‰ïê!\Z¢”;5{ÙmHßyÑdà¬ñbY¥`›”®&áÞ6MÛ®=w‘Á4’î;ÿ%ë¢Öf#÷õéj’Ú…TŠ{—÷‘4’¦KÊ6«L†‘¯ºš„»E©¨û¤Ùd0 ýû<¸zfY5`Û’®&á¶^ªj@“j‹7“5‚º¯·éb¶Ý(éjî¿¦\Z †k™|%›\n¨Üµå_’uQ¶Ý(ékRgÙ\05œ;žfé¾òMeD}èÕßduQ¶Ý(éj’+«Þr\Z.äó¥šŠÝ‰d`)på ©lÜ-Ý	U¬TTå%ó²\ZÎç“uQ_7HºšÄ_?!\Z †¾–“8s*„Ï}šÏì&ƒ+ñcÁzþÔŸ	a°<N	÷g¤i$Z*³aå¼™<Mo³ò½ãam7J^gäÇƒ·éŸÁðøÇ‰WÆoåY°%2ØjŒ#6FÁ½²Ì	éñÊÛ\Zµ„Ÿ³rÁ{dT#ŠIzÜîâŸZýYèp:k-ÔìO‡³¹ÉóY8|äh«±y·…ácõïs×ñ<0¯Äå­¿n%ë anwzÛãý’3–Ìš1!P¼écÞ‡Uf\'Á¡M1ðyìGü7*œ›?äuP‹0=†àñ6ÿíŽH[@Þñv–H¦±%né<²lWf®ÇdVâÜ±íd`å„±n×Ú·þ\nëØ±4 pFEñF²lWf2«Ç²î\Zú$d>\\=ˆ\ržãÒ.!G³,¤Ç«-øz¥£7ù´€+oTéÓI³ÀªÇ£\n9…[bÈ@k¡èó8²,—éQJëC?98ÑL\\éOÛV,dyž$Ër¡ú¡´>>§xØpbXB]\rÑ³¡­þ0Y†„{|®u#Š#Zoâ=|%DúAËb2o­·eÔG2:~9\niQÎ—ƒä$GðíËTžZrKJËæHgô·–BIöZXæëü-ÀŸwàhV‚®Cm9ÂnŽÔ²ÍX)í·ÃžôH¾Z.7·g§DÀƒnoBo3F¹ºa_1l²Û}©ˆ/]>¸	N|ñ)|Ã¨)Jçï!uÿ´ŸOˆÉ´:!ô†}._}QJ_cÉ„5;9½\rGÉ´zÀW½EõåÊKdJ`}L»R(cì¨aWÓcú£Wã%2.×^ÇœŒ6pè®=@›B€·D4•ÊËU^©×1Q®¼Øìˆþ¦è¾r4c2ÐÔþ&»T%^½›Ç¤ÇÂkGùv¸ð7¨ÿxXÎæ‘fPXØ âVÜBžöQÙ62o5¹êHn1	¥öcwŽBçŽøiÎŸáâì78Wƒ¦BK~iŠ-­{áÚ’iÖt˜GgÆ*htmbûJlC’šÏÖ }sÁ’°,±ó }/ÔÎÿ«5àÜ¬€· q}(4gÅA[Q\n´3ð¸1u9\\œbw.¦m_ãÃó²$øC_u6Y¦#^‹ÏÖp©ø\0Tïé°Ä-ê8Q~Pø–]ð•P4:¢ýìò²ÄÎ‡ž›É²å¼V€âB£œ\\Q=Ç7Êj^UøKsÿBš‚\\šû&3t\n?—ÊC¢·t+Y	~yÐ ”ûM\Z—£>ªïìN2˜ObæB[„Ü›	M¡Ó3ø1þ\r£ÒL€]­ý5¹d]<ÕÉå1“P|Ôg3<ïo8–/¢ƒi$ñþÐ_o³ÎÇêä‰Qœ#yÔ$Î9¤	oy‘At]l‰uÀº¸{äL7iL£ðG{=tä<–=Ü‰·7ó“Ó“êe¿NæóÛHC`ea™X¶·Ê«L’4ò´žV|]©¡t`u\0óÆ2°,o—Wšd«á¦ë0X’	]iÚ\rÃ<0/ÌS$y½I¶zÙÛÏj+àéé¯ ¯ º7‡C×º%c·Gœø\"ìÿ†¿á9x.¦Á´¢J(“^W™&	 Ó$dš$€L“i’\02M@¦IÈ4I\0™&	 Ó$dš$€L“i’×àÿûVÍž*<\0\0\0\0IEND®B`‚','applepie','123-456-3210','Systems Engineer','Systems Management','2016-10-10','',''),('Olivia','Brown','obrown','oliviabrown@divide.com','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0j\0\0\0X\0\0\0“b1\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0	IDATx^íœýSTUÇû+ª™~­©~k¦fšiú±©@ñuµ(­p¨5íÅÆ1uL&B2”ßòäEDÄ y‘]e—P¡Lyºß;-í^žÝ½{÷ž»{è~g>3(÷žç9Ï—½÷œsÏÞÇÈ–²’D¶Q’È6JÙFI\"Û(Id%‰l£$‘m”$²’D¶Q’H*£=zDcc÷éî½aºsg€¼nê÷Ü&·»‡úÜ.üŒÿÃïpŽÅ98WfÅ½QüEÃÃƒjáo÷¹œq‘×Û§¶…6eS\\\Z…¿þ{÷GÔÂòE´²|ÒâÊ¨ññGt÷î0¹û{Øâ££ó9]ìïÂXˆ‰Øñ¬¸1jtôž.ƒ®67QAA>­\\ù	-^”B3“Þ¢„7_§Ä„7Èá˜Gii©´nÝZ:TVJ·ºÛÙ689Ä«bnÔÃ‡ÿ{ÿáèãØñÃ”šú¾jŠ^f%\'Ñ¦M_SÃ…:¶Mä‚œâM15jllT©qóQ__CË—Ì\Z¡—éÓ(;{u;;ØZr‹\'ÅÌ¨‘‘!¶Hþ””«EæŠo„EÊ¥²¶î,‹9Æ‹,7j||\\ßp…ñÑ{»›²²2ØbGKròª®©dãr WäkYj:<xÇËÄŸÌL1&ùÀ½«¶¶ŠÍœcm–¥F…û$C‡JÙâš\rÌÊËË¥¶›¿³yhAî±”eFé¹\'5^¬§¤ÓÙÂŠÂ1.UTžfóÑË{–%FaÅu\\ËgkV±Å\rþ8jjõÝ·b5\Znæ$á†à ºº‚-¢YÌ˜ž@VŸ‡½½ÐA]mlnþ /±˜g	7JÏd¬X±œ-`´$*|ññ\"j9˜AU;içÆOØã@FÆ667-è“Õj–d¸ŽjÁ\r}Zâ›lñŒòîüdÚ±ö#jþ× ÞÊhëšTö,Gµw\\gsÔbõr“0£°È©wqµ´ôg¶pÓÞ Ú¢Ít8g-­_±”>|o.%½8ž®¼`N¥-v¨üœ±†.ø&À-ýy´äí9íøØ»·ÍQúfåB®0£°\"Íuã«¯¾`‹öíÚ´IEÆ\'Âý[¹Nå’ódŽúoí1z(Ïÿš¹úÓlŽè£Ubžñèý4%KM*Ø¬¤DržÊa‹l«RS&ÅÅ°§÷›§ôÑªçYBŒÂ9®cÁ˜3;yRÁ¾ù|[\\3©S.«Ú¸àÒåF6OôÕ\n	1*’\'³XÑæŠÕ´[\\3ñ(—MÇì“bŸ8q”Í•}µB¦…ý\\‡‚q£­uR¡ÞsÌb+‚-«\'\0ù¥„Í5VìÁ0Ý(lá:Ü´CóM«>`‹*‚ÓùëbƒââÙ\\ƒ>‹–éFéàúƒUÿBíßñ9[TÜ<–”••²yÃŠ	°©FaddKö9øêlá&¶¨\"ðTü Î×üãW=Ãæ—ðÑŸ©Fa£#ß‘ÐlÝšP¨K$üY0oV@ü«W›Ø<C¾‹”©FaW*×‰p”Ÿ9P(\\Ž¸‚ŠbÙÒw\'b\'&¼®ŒD#ßz†¾‹”©Féy0Èáêé¢¹sþ›KµÉd*ŠT?£>J[ÆæÑM5ÊÈ@ÂÇæÍ\'ŠÕ°o+[PQ8ü.}Ø3ÈåÑ\nSÂæ|®zhýýÊÄÓÝÓ;×³h±yqqÙki½Ìæô]¤L5\nß¤à:¡—ÜÜlµ`%ÏÛŽçN|š°û–ËKè»H™j”ž\'¹¡èºu“RÞYH­œðlQMÂ³¨+W.²yé}©¸2\n46ÖÓâ‡áÇ‘’þYšjTQÑ6½HeT´—>gÊµdQ¶_™ìÎ=“ÒÓ7¨›>¹\\ô\"Õ¥/šÁ„–¾ú¶¸fréÈ÷ê¶éhMR\r&¢žkéë¸Ì×Lƒ‹m©†çF\'¼Áð\\8ÈØÐ6Ó(RMx.!£¯«…¼Uùl¡£m¢m.¦Q¤ZB2º(\nwëY¶ØÑ€6¹XÑ Õ¢¬ÑÇ!QnôžÆ2¶àF@[h“eÉs@f(&èé ïùýlá#m -6FˆH@¦é£xÝôv’§¡”5@8m°mG‰”â#ÝÜ½]ÔßtŒ5\"8ç²mš€”›[ ‘/ò\0}mÈ[SÀšâŽÁ±\\f!ív1(Ò\r˜†èQ.…!ê<I9†=×D¤Þ€‰P$[š\r¡ŒÜ¼µE¬IÀ[S¨£ok²Q¤ßÒEò%#¸o4°ùã¾®ÿE FþKP$_»‰çuòVë¸GUï¡¾îk|Q‚¾M‰¯Ý@z¿ÈÊèÍ{nk‡÷ÜOB†åSæ‹l>™9nël§þóXCBáQ&ºmú_`+&¸Z	7Jï—­ÃQ|®›žÏ\Z¢”]×ÉU±›5„£·b-Þ}žSÎÝ«´Áµ	èË”ü²5¤÷õÍí]ôÎ¾~z|ûØ/}ç¡âC§È[É›¼\n%e\'èåwÀ¹h«¹ÝøhpÊ¾¾À\'=/ÑRzÁIÏdÚŸ²½´ª¨‰ö,§cGÐqü¼zïEz1ÛÃžžÎ¡\r|ÌPLù‚øÉƒÅëœôTÆ}¶Ðf€¶”\\lÑÃÉR£ô¾´*·ÒIOng’\'·RNUøûçÿî¥U:ê“U¨ü•?¡+¬1¹\\\0rµIåFùÄÝ³Z:nÑ³YÁïI¢@ÌÖŽÉ«ë±¼\'i3£ Œ ü‡î\nÝY	Fƒ¾<S¬FwÁS£ ÌI0Äå‡+ •žs©¹ÄbžN17Ê§²–z.{„-  6rˆWÅQÐà½¿(½bH™;Ygb!&bÇ³âÊ(ŸFFPVÝ½’7È×Ð6b –ŠK£üu±{˜¾,¿K¯æýÕ°ç¾š7 ¶…6eSÜå/Ïð•5Ñ¶Ú?éÃƒwèµüz1wžÍRW\Z\0~Æÿáw8Çâœ+³¤2êÿ,Û(Id%‰l£$‘m”$²’D¶Q’È6JÙFI\"Û(Id%‰l£$‘m”\"ú$A´HCBEØ\0\0\0\0IEND®B`‚','applepie','123-456-1098','Software Tester','Testing','2017-08-14','',''),('William','Jones','wjones','williamjones@divide.com','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0^\0\0\0Y\0\0\0·×“Ö\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0QIDATx^íœ‹ST×Çûw˜˜´3é85Img\ZÓiÆ˜¤±QkÔ6Q|Vmâƒ²¢ÆÄ(Ñå)OQ–7, %\n*/A\nXž¢‚/šL:m“t&õÛû;æ.»ËÁÝ½½kg¿3Ÿ™Ý½çñ;ß½{î¹çœ»?WšÈk¼Fò\Z¯‘¼Æk$¯ñ\ZÉk¼Fò\Z¯‘¼Æk$¯ñ\ZÉk¼Fò\Z¯‘¼Æk$¯ñ\ZÉcÿ÷?¿E_×0®T´Á”UCäÄg!âÓÝÄ ×ô£4”–òP^O—G?yû!*M\rHËCÈßpØ7^”—Ê ²¨LO”æÆÿÝÐ\\Û‰“z#×D% ²©ªËS¤™ñß}û=ê/´\"|\n×,5ˆ	È@CÕuV·Ör»ñ?FWK\">3pÍQ‹¸l´v¡ºº‘RY‹Vr«ñ_M}ƒô˜b®1j¶ïŠójÑ=x_ŽÜcd$eÇ(ŠI¹Íø¾Î!L°7F-b‚2a*¸Œý·-†‹4·XÒQL›»¥ºñôs®.mF\Z3Í±\'Ä/†%8[Ò€†Æ^´¶¢³çÚ:‡ÑÔÜ‡ÚÚ¨®çJ\ZQ”[ƒüÔrd%™p:ª©q&S/¢R8ÞÑ=6Ãl{\"¦M×+ÄF1º³ëQÕø~ø/L™•6æÎÆÉãh¹næš¤é	_Ìˆb¥˜Ý!ÕŒ§ä%—ÍhÄP#z\'¸©EpÃÅ‹…bv‡ùªO?YgÏôÐ=Éhw¢kPš\"ã%n<Å®v·£ŠñÔ_ò\ZÄ#K8ÃxÆ¨MA&ÿŒ¡6¨)Å§‚3R‘ºú›\\cÔ†.â¼xD¨\rjŽv5žÆÄ®»ÍÓãkwÑ;<‰ãŸ:¾c¦¶¨5ÎWÌxê]½9\nÝ›Ì5Fmª*Û¸ñð 6©Ñß+f<Ý‚ó\ZÑ\\cÔ¤ýæ¨ÍÞ¨mJKãiÒIÊÜK‚>½cèžîn†úz0`²1K\nTÆHoçôgÃèê½…ÔØ§÷í<¨mJO¬)b<Í2òvDbXžY}C·ñ¨1oHÇÃ&#î]ûwÚ«0ÞÕ€±›-ínÅHO;†{»ôš>£c”†ÒRÊKeL	˜Glê ;\\^,Ž 6*)ÙÆÓ·Ô©]{ãÉ<2LIît\\²©CªñÔF%çóeO¼@!éØ´ñæaálÏâš\'‡©†ö÷[êI“h<AmUJ²—³r”ñ£ñBÿ{¿¥„kœ<¸Z tcwX]Y‰¥ÜXœÚª”dOë™¼\0%óD>3£¬(¾ëÿˆ\rï¿ƒÍ«Þ…ß†Øé³>ú@¸‘YÏöõArÐTž„¹,ƒåñ¨J	bŸî\\‹\0Ã¾ëXžk—aûš¥ðYþV/y;|–¡$ÛÀê2&K7žPj\rW–ñ´˜ÌÎY²ãòÙÅ/öàvÌ™3Ÿü!Ö¥rÏÚÎÂ„ïÝŒ_˜ËÒÏ=7G(gºK¢¹yÕ§!Ô#K«ß½æ3Œ§äOmVB²Œ§•|^pÎBÆßm¯Ä•Ì£Ì:‹yZ³fÙb,xy~³`>–¿õ:75w«OaîÜçq>é &[ËdOmVB’§½+r¶`Y±ùxÔ”ƒ{µ)˜?ï%®qö,}s!ÚÏ„cäB\"ÿö×Ü4ö¼ö«—1r1‘]hs“Š¸±8µY‰};’§C¼À\\!=<ÃbÎ’E¯Ù˜Åc¼*.}Óò~Óªßcà\\œM\Zôe‰¯3ÂÓ¹±¸µ]®$O»¶xA¹‚AÚbÈ¶?ÿA8‹,ïyÇì‡1|å}iÜgÈÐûÙ¤±gRø5­_ñ¶å}Z˜üí$Ôv¹’l<m™ãå\nÑ9CNÞ…3Qû,ïí¹[sšh}ñº’†+ßÁ­Ê“6i­¹˜€¨ý[,ï³br¸±¸µ]®$OûyA¹]\\6å1Cî_6°n¤1Ko1Id\\0öã5ï±¡¤ý1º0oýÓÖçÛ»–w¼·w„,½Ô”‹œxùqSÛåJ²ñ´Y””+ñ4Ò\"ƒõº\rØ³y%>Ùº\Z»Ö-‡nã\nø	´Ã,éìé†šþ›ßgãÊ³oËjìÝ²\nA»|0*\\TÅt4£„ñÔv¹’l<íÔåå\n9‰Eí¾nc¢šŒu_F5ò7TQÛåJ²ñ´Mš”+d\'³[ù)æhì¡¡dßÐ8«“‹+PÛåJSãã‚ÓÙm¼³³’S\r™¬»¸Û^Án¼èµ³_Úxg=«+éH7WÐÔx%º\Z‚&ÈžL’q\r#ÈÜ±WÙ|=™g\rýbÆn6[æñy<h.ü±žIn®¢iW£ÄÅ•hmíaš-ÖL´•ÏXÌàÑ?8*¤=Ï?¬óS™4GCi:ºÌÜ\\EÓ‹«ÃI¢8û¢Å<:£G»Ûp««‘­*‰†ñ™ä|öä¤¼·„î‹V§¨_™Œòï=M‡“JÜ@±ÖX›Ç£pw:ª…~ÝÄÎâ‡Â˜ü^‹‰-÷ÑÙÎËcƒPGB°k‹Ü³¡é\r”S\"uí|³¬ìÀýæ\"6:»zMý·õ\nÓl´4uqë–‚¦SJL’‰¤„ç8uÖ3„tæQô8G ãD·n)h:I¦Ä´°5Mõ\\Ã”àj£ôua{4Ÿ&É]±&.(\r½ƒ3‡‹ré5#6 •[§4_!É]ú³§0í×<9ž<ï¤±ô\'w±›GmE×@)ÔU5sëƒG,v“”~0øˆ_‚S£G4]éÄQr× Âc¶wälhš\r½.\rµm\\C¡±¾úÝ‰Ü²åàQšälásÄ…â\Z—†Œ”¶¢´VyðË“ƒÇmá#IÝ´ê)Ftt:¾A¢4†HåFYöxÜ¦U’ÔmÚÎ’v’M€ôv	gµÕ$Ãú²×/àLT27¯xì6m’”œá˜<Æ+­¸2ñ ùƒ^‹ŸOÔ¤!|¯²S}0$åQGÕÅ£³0Åb®#ºKÝÍ/K*ÿ(‰ÔRêÿ\nBv\' «ÈyÓEzLñWæÌ&>åêã–<¥àPÖyÄç—`â2ß`êÓ‘˜_Ìò\n7Òz¦·åÊÆÖéâ°Ê?\Zr*TPÃÉ-Ç¥sÓŸf£®,zc™%ßç¹•X¹\'š•É«ËÏÜÆ$ê}¤^Ä_ƒ—·†àù\rÁxeG8ö¤—[L$³ËP`*B™)—Ïf¢N ¼4…¥…ì˜uÚ½BÞWwF°²æeêtÑÜ:gã™}¤žäÊŸHl×Eág›3£D^Úª‡OD.ó«mL}\Z”v]”‘åµ.ë…Áø«.’[·=ÏôŸHˆ¢8:ó·	†X›dÏ+;Ã±Vøög]àšMÐ1ú’Ä³|6>¾`^\"«;L\'©j<‰~²Ô_ò.¸¾~Ñ˜Ë1h6øFâwŸÄãÝ€SŒ7„×¿>ã¥åñÓMÁð÷‹™ÅF1ªÝ½XKuãEÑÁz¨yH‹y[žôéîäB…ºÅ8(&5G/³ÉmÆ“hL,Þd-ÞÊ5Æ¼½#”Å@±¨5Nw$·\ZO¢ŸsKóMál?Ê5ÅPÝ­-ÝníZìåvãE=úêÐÅŸÿå×5 º¨Nª[kif¼¨¯¿ùâŠj±p×ÓG$r ²©ªËS¤¹ñÖºzc\rg±ÐÁ°Ð^ßÉÊ¢2=Qe¼µ&|ÂšëˆÎÔmÇs°H¾º-”u/n<Ì ×ô£4”–òP^O—Ç\Zÿÿ.¯ñ\ZÉk¼Fò\Z¯‘¼Æk$¯ñ\ZÉk¼Fò\Z¯‘¼Æk$¯ñ\ZÉk¼Fò\Z¯‰€ÿiA›µ\"µ‚\0\0\0\0IEND®B`‚','applepie','123-456-2109','Project Manager','Software Development','2015-11-16','','');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(256) NOT NULL,
  `manager` varchar(256) NOT NULL,
  `members` varchar(256) NOT NULL,
  `status` enum('Complete','Incomplete') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Blackbox Web Scraper','wjones','adavis, jmiller','Incomplete');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprint`
--

DROP TABLE IF EXISTS `sprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `tasks` varchar(200) NOT NULL,
  `notes` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprint`
--

LOCK TABLES `sprint` WRITE;
/*!40000 ALTER TABLE `sprint` DISABLE KEYS */;
/*!40000 ALTER TABLE `sprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(200) NOT NULL,
  `status` enum('Complete','Incomplete') NOT NULL,
  `createdDate` date NOT NULL,
  `dueDate` date NOT NULL,
  `assignedMembers` varchar(300) NOT NULL,
  `assigner` varchar(256) NOT NULL,
  `relatedProject` varchar(200) NOT NULL,
  `issues` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'Update SHA-256 to SHA-512','Incomplete','2018-11-01','2018-12-08','jmiller','wjones','',''),(2,'Integrated testing for the web scraper','Incomplete','2018-11-25','2018-12-04','obrown','jwick','1',''),(3,'update dependencies on Gradle','Complete','2018-09-01','2018-09-07','jmiller','wjones','1','1');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `teamName` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `manager` varchar(256) NOT NULL,
  `members` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Network Management','This team will be responsible for installing and maintaining the computer networks and train staff to give technical support','',''),(3,'Software Development','This team is responsible for researching, designing, implementing and managing software ','wjones','adavis,jmiller,ejohnson'),(4,'Systems Management','This team is responsible for managing a team of programmers, analysts and support specialists.','0',''),(5,'Testing','This team is responsible for the quality of software development and deployment as well as automated and manual tests.','jwick','obrown');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-25 20:06:13
