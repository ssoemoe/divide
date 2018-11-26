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
INSERT INTO `person` VALUES ('Ava','Davis','adavis','avadavis@divide.com','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0[\0\0\0S\0\0\0�e{�\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0�IDATx^휉SUU��#�E�H�r�JGsP�45�&Ԝ4�h1pGl��]�I+L�\0GQ2�����s	\"G��)�u�W^����]Ͻ6�;�a�r~����=��s��<I��DyaK��DyaK��DyaK��D�.�˭���0]8XLgw�Qca\Z�ɟA�����S�7^�{�>���n�+����:�g5n�K\'���_��5��6��t���_���������lpV��Q�� �a_����8��Z=�\r����$��b>3�\n���x��_\0j�&j;)ya_�B-Gk�Ԛ�l j~�NF���PT�H�=��|�=�k1Qє< �6����D�-5�\r�ℤ����Fj*z�\r@͑�Fӳ��R�.ݯ7�w����G��Ŷ�^�I�l����̝�v���9I���x������#h��x:!��j��\'x�)��?��5��c����珦�Q=���0�OO�L��ռ�8ţ�aŖ�����^��t�#_\ZI�]��aYAdD7�W[\r�³ݲ<l�n.�f;�f��é{x���\'jԈZ�5�lw�ֆ-~�Z���c�G��V�7��59/j���!�Ұ���|G|��K��E�������JmΓ\Ze�I���3{��!X�2�\rC9�ı�:2ζY�%ac�\Zjz0|�uǽl2�#,��Xz8A_옇�[�qZ.X��	�l2I�z�}�z�66.9��|�0��ӹ��<������B�\n;Z�:���8��N�T�78���oV.^�\n+i�I�11�؎;�p9�G�d8l�k]&=�(�:wg;�����Ы�\0}�j=�p�X���qlM�v�Iޞ>��ʁ�Z!�a�Ò5޹�u ���ʁ�Z!Ca��g*sGưv�y��5V��46n�r�1u`��NO��@��fe(l���btߎ3���Xڽ!S*���\0O��@��f�;l��л� �o�7b�Ct���RAM�x�}6�/Ew��Ù	���;t�\ra��5����8#��5�uC���y\r�nF���v/�H0VM���Q7��+<q^�������3���C;t�\ra�3��\Z�݌t��\r���`��8,������86;AM_}�k��r]\r�nF���R�H(&�G�w6�W�����>�pC����e�3����w�����̞�l(v�Z��~m-^8��@��HZ�?d%RO�������A����uqW_˾@�aF��	�f%��=�c9s���]�����<҇#\'H8)Ew��j`��l0v0h��UG�Һ��!�idꧦd��ԩ�(�-�fñ���r�Z���!�\'�H�����gΈ�J\0S�F�Y�S)	J�����^� �����??e\'QRlo�$f%u[��!Y�ᷖ*3�Ę�����yу��u#Q�f&А�4R\\�5��Će��}��A�=蘨�yЋ�(#K���nQ\"%���ܗR��̐%f;��z+7���zqd��{� R���\Z����,���8�m���y\0�-���tq�T���ᗊ5J[\\\r38v[L�\r_��\\5���^gC�Bs�\Z�\r�m�8v���a�)�T�����e�w�6M��VH�&#�x�j�\r=Ki3��E�в����&=�ό�Y��fV�ӎ���Dm�u!���B��Y�e��0�3<Fq��3H��J��Vl��U�+<^��2v{�)_�)�~B��{?�xۆ�bc%�g˰^�a�ba�z�\r��j�0�u3�^^(y�\r�c�6��5���H�cZ�qy\n�VZ�˱@|�a��-���1H�LZ�_5����cAY!կ�ƃ{`j��G�Q��yJ���\rS�w�G�f��.4�\'-�r��N���\0���=��mr�BqC<t�H�qZ�VS+�ę&��@�m�[�[37��Ԑ�\0ʷ��T�|�j0?/)�`k�s����6�t�#�ݢ,6 ;(+Hg=��W���l	[��9^ï?iVoH�)6����s ���|��2F�8t�e_�m]=-�*�Iz���\r�NfT��Ѽi�>�ɮYG �6�9���\'�L��*�K6)�Ŏyt(I	[����9v��W��A�\0��怴a�_��n�Ŗ���O(Ub訅�����S��8v�^��/t��\Z��9�Z\r���#u�&Nb�+M�R�wӪJ��Ц�䊰�:��5|M�ǿ�7���%4��h��\"|��\\�5�������f�.�����%�[���%�[���%�[���%�[���%�[���Q\nQ���#\0\0\0\0IEND�B`�','applepie','123-456-0987','Technical Consultant','Software Development','2018-04-23','',''),('Benjamin','Taylor','btaylor','benjamintaylor@divide.com','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0d\0\0\0\\\0\0\0���\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0\r\rIDATx^��STW\Z��_�81��aR��DMi��$RɌ�h2�\Zctb�b+n�\"Q��`�H�E㊂hD\"hTDq�]Yh���9��NK4}�=������\"ry����s7�W�*.!N�\'�K���%����dq	q���8Y�!�@C{*�����\ry�m�n~��O�\"����������6Դu���s\Z���:�lz������7,,���z���	tL���R�>廪\ZZ^�#���*�\\]3\Z�|�q��Zv(�cE�c�Qe���m���[l�k�t>9R�ƃ��B�f/ֲ=��C�N���]H�T�c�� G���mY�ӌ5vr�}\ZװO%U��Y�8�kD;�:2v§�Gk��\"��6���N�/���6�~xg��R�8d�WU_�-8}�7;�\Z��0Մ�6�b�s,���c�����(>�w�Y��B����G�\n�#>��~(,xT��\n̈��/w���-���4Y�0/�L������r��)B��c2�w���J|�<���a�����x���u���A��0d�hL;�H~��U6~R�\"LH�~6UG� \"���$�BH�7�\"�bA��������jF��v6nl|.�~����٘u6�B�5!F{{cJ�YvH{H~9���6��Y�+���&#�5~�szb���;>�̇_~%�����ͨ�Br٧��`�Le���ر����*�H�~}��H_�\nX��*���\n����(���؆Q,�Y�S��C�s�]��\nǘԆC�HHb}3��rX�㾞I�J�>���)�!��V�գU�TX�~\"��P9�JJ#K��!�!W��R��_�Ϻd9_�Bn�\\�F!K��R!CS2145>����Pj�zb�P�C�����с@�{g��0�tk(�Cn�p��\"wL�$p,�%$S��#�,�\'K��b!�&!F)rǔ\'��YB֫pC��)_��[C���ly��?|�S���,����� ����sS���Bƥ(�:��B1~��gDQ\"d����a�\'=�$�)ubw�B���3f�d}�3�OBcIPg\"�f$�fc�h_aB�]H�0�#qL�g�8lI�ce�AJ��|<~:u��JMAf|5I��!)ώ|O�r��wZ*�$!m�����O.����\"��>�#���!˾Ơ�ހ�{�t#�<����������\0��%�)Q�OMɏ$!�gjC����Ӥ��h-?���(H\r�Ř���7����A��s��9���������{g ��,&��~��e���o)�$!j�iT\\����d��0\n���+���/d�ְeL��+�$!�FhjC�Q���+�$\n�	9B8�7`DjY�5���.�*�%		xf�Ȓ�\Z�V�H�r�pb�$K�	>�X��/^)�$!��j#��τ�W\'����!��&��i�B���[(�$!�D\Z�JX̄�ϓ���![3Ȳm��z�x<���$!�Lyk��M\'�	�B�26aXj6Y��i�����U��L�$D�SM�`��\Z{�\\!	ɂ����S�aZ;\n1/Q4?���:ul�ﰲZ7G�>�*�Gr�~x��\'˕�S�S���8�$������ҪR@WlR���H�)\no6��=e��š$!��yzCi)�	]�UHʭ�d��ᇯ�w7J�W�T�j���MJ0�!1��5�@5�&��Ж�H�ʎ���^[�luo����?�ũ��<��-y�$d��]6��Ii�œ28=	��<A��&?U(;�%I��*NMBJ���fJlM��̣xO�ZC*yM����E���Z�<�y�0���mRɦ��.�$�Rϴ\\CS�#I��&��X!*�\n�3֡#\'��\'�ZH�\Z����X\rY��||��Д�H��٩B�*MM�B~g=��`7Z������_BA��(8��G		�Q6��$��_�JS�g��ASڷ&	�8JȮ�\ZCK�#YH\\���O�<y����79���Q�����Z�Z��Ƭ]x�y=	ɉ� -i7�\\�`%Y����<24�,����ׂU|�М�LFZ�95]%\n���ɏEG��>��1�NIı�de̾v�,O\r��ʯ��H�s���,P~9Zh��AXV1�T���� Č��\"h��Qw#�����(&��0\'��^��������*�,�9\"W<���7��(�K�0�b6>ۛ�q�����F�yo��Y�,D�sW�ąEa��(��~/����<�z�«�S0��`xl���r��[ahFyd	�9�S�H�u.CǮ5	�8��K���8�A_���ܚ}Ѥ���f�et����	�{Ws��&�P�B�[ؖ��K�%�O���`]19�+�,d�����LB�� �{NX���f�;���&b�)yg�gf��_\'\"*�����J�O;��>���S�\rĞSWL\"�q%/!��x`&d�����C��L2v����_�7)���Kc1�L:Yzwx�塸E��a�\"!|/�ǣ����/G��C,����g��!�����E��z�o8b274a��9��	�W��[�M��,�;6U\Z�EBxn5�>��<�Eᶰtc4R�dp6��$dmd�Ig͎��PE�n���CO�}-O��g*�ߺ��ڶ[LǄ�lQ�-xxa{L³B��������3��maPd)�+j\r\r��b!<�)T[�&�X�Ϣl[5��7l2}�Z�h[y+`)���\n+!p&B��<jm����aQ�������n�l>��p�Dm+F��|�����aBx.=���R!�G�ĉK��\n=)�,Y\nք�H��c�k*B�����6�\n�hV�\'�m�@�ޣɒ�Н/6��kPv#�-*���|<\\�D^�!�ϰ����>���!�\n%�+-Y��_4CE�cN�EcW)B�0&h��io�I�t��d�r�*d8[��^�Y�jB�,�b�1E�7��L]��$��~_����\\Ȩ��(t�֨&Ę�l�`��Q�N_���B^�?�,V.F!3��̎{�1��il��?��@!�~�W����������ZP��-b!��M\"��˫o�����/�G��;��uL�*��Ɓ��jL>���� J�K/����P[��+`m�]��\'�r6F��Nm+J����L���E�n��	1�T�CL�ۃ�&K��!�z��5���l�:��=�F.��_qkln�	x��v1R���\\�S�&���5N!�<m��[���0��8���x_!Y�K/��\0�yX~�g��ƃb���)q:!Tj�Zp�V�%����4l�)�m�ǲUG�����D`Y�^��t��⑘v���_�!�Oq	q���8Y\\B�,.!N�\'�K���%����T�!�Ig0wT�\0\0\0\0IEND�B`�','applepie','123-456-0192','Systems Analyst','Systems Management','2017-04-24','',''),('Emma','Johnson','ejohnson','emmajohnson@divide.com','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0_\0\0\0S\0\0\0��ێ\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0\n�IDATx^�	PT�ǵI\'1��f��u�xLMMM��Nb���(�k�j*�I�z_���\Z�\"\Z�:j\n,(�xq-��r��aQ�8^����=�o����{K�ߙ�����~��.���M�#��1_Ey�WQ�U��|�1_Ey�WQ�U��|��?~\\G��O�j�ʫ7���:_�J�դ+���w�\Z������Ane���H�6�\Z�ԕU��R��kK+���6�U������jnݥ�Y�H9�9�r\'�f~]�c7�]2�p,�ɱ�A����P��;���4�O��i�q���iռ�z�Z�z9��C�Y��5Bpl΁sQS�����c*�\"�{9Sp�V̚BڽL��D��?�����(7����\\8\'������ާ�zh�9��s(2t-E��#�@����U��y�Ja��pN��\ZR���;�ps�;w����9h�T��ݒ&��X�Qi���\'�N���&,֜�ԣ������iF��aL��9+%���E\\���\"�I;�N��͓��	c#8g�>\0��/���w��vi�M����{�$&���r��b�xf����,W���Vt�l���=@v�y䀊�f��(h�ۡ9-۟v,�-s�PD�/���\Z�W\n����\"��GA���cf1����\n\Z�6�~]�ґ�t�Ɔc��P`���ubh�+h\r]�	���r ��|�;�ڼ�h�_�[RU�.h�����4ۯ�^_́9	�5���+��<]G�#�����dƮ��[s�tm�?���z�c�O��s���\n�b>/T�]���ɧ^^��1e�oh�=rwGPPW/��q�X�M���q���+�(iDtd4���9�`GTe�EA�6������كk�[\r6��ȥ,�`cƠ���6�+��1�i�w+���n�r��(�~@���M\n���{t�1#4�\'4T*5�{iג�#�q}�an��Z�T�͗��_\\I�Z�hcFb�,h�����G�ș4�v6�^�@�9�k�S\r2��GQ�B���C3�n�&6�J���U̦����#�˸\'� �y�\Z%(D�h+��O�W�&!��$e3\rh�E�Ç���5˥�ϧP�B����\0��>oA��&<��\"���`�����������;��0�Y�4Kn��ͳ����`�����:��|8	%g��?��\0�\'�@���B�F�����(�]9m���sJWF�Z��l7L�f���#�-c{5��i��#�p9m>�C�	��9`Y�S��6�%7z�L�:���0WGp�r�i��|$JL��[Ϭ���%7凷������]9m>PE�	��˿��D��B��&s�r�ؽ[>O�S:��=�v9��R��zϦxf�eF;�����e�Z��=�v9��|D%&�����ǿ�4Kn�{v���6�k�])b~zV,���E��p�,���uks����K�vvm�\Z�YQ���&�L\n�2}Z��lջ)7ܰ�3a�&�GL����Um\ri�\n�k\"���õ��7\\)C͉�?�E�X�Iwh���c��͓6�Q}�)v�u��2�o�,���5\'�B�\Z�W�=`LsrN_����$K��B��X�5IkfC�\Z���:�\Z�3\';W�YF���k���	��#՞�Mt��4!��N�܅P}aM��$���`Ķ�㡉Β�c�c�޸x�;�-��Y�6Sx��_�f�`����Jh�3į��X��x��n���r���h|����+���\0͔B�����3����G��6��\r�G�b���7�Ӭ����|�zc�m!�>��6�,��#�J~4>�\nÐ7_�#1����8�e��I�מ2��o�����С���ðH)��jJQ��Quֿ���\\͎3.#��eb�\Z0�b��M	��1Q���}wڦPh:s�����!RR�lja�F�;.�B�ɾ�✁��:;7������#6������kbe.Y̷>\"���!��b���tsV~f{,������tƭ�����H>�\ns�ͩ��h�9Ӷ�Z���\'[ϸ��,�ǂ�~�-,L*�{��~��f#�į���QjK,+�L�0�Q<�2=�r�TX��:�FYN�vsv��u������F�@�I������;Gb�=܇�\n+��\\)��%A����J~1�T�li�0�D�����7�GAM�>|),���(i]<U����;F*K�T}2�m���k���8O�;�½w��(/��h|�|�Ug�N�\n�nw���~��Kj�M4QQTMz�y��fSU�1�g3��ם���g���\\z�RƟ4�9�]q�l������F��?��Ç43p\0,Қ=F��/�|2�$�ˡ���6��ȍ)!mT!���/ߠԐ���|�)��ۜ���<���?\0G���<3Ɍ�O�(?�]�r��ԋ��������X�O����_�����TPRP�E[&�CF90��]XT���,����.(j>^W����S�}�!�thB.%����88&���~�u��\'h����=[7>�X9��|�R��Ao6�/6���H���J��\'n��V[9��I{�f��3�UQVB�>�ߙ�X߭�%�؜�RY^�4;奨�,�S��C�4��J��������H��o҃ۏH{����A��cqL��R�|����UR�D����p��c��T7�\\5���lt���IR\'���6�Une����>��רhg�*��)������Z3,��̿���=�^���mr[���1_Ey�WQ�U��|�1_Ey�WQ�U��|�1_5�2^Cˁl8:\0\0\0\0IEND�B`�','applepie','123-456-8765','Junior Developer','Software Development','2017-10-23','',''),('Isabella','Wilson','iwilson','isabellawilson@divide.com','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0^\0\0\0W\0\0\0���\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0\n�IDATx^휉SW���Xݸ��+٨*(9���Aby��a��V��$�&$f+*+\"�F9DPQ*� D�e�Y5�Y�M��������L_C��U�*�~�~��ax�����w�K��5�^#��5�^#��5�^#��5�^#��5�^#�,����:�]͏J��A|s�s(kK���Pd��\Z���5,�e�����R���h����P~w?\Zb�\\�F�������օu��4������\n\\�����u�\ZX�<&�7ow�7�\r�ݧ?�z�?��;�t���B̎� 뻕dX7��X�\"�����94=*a��x�g�A�D��g\0���ř�c�����d�cbl��:���NhzJ[H8������:��p?H+[F��ؘ梕T����߶I�@�>6��� �3��o l90����\\0\'-�\Z��g7�ظ��^N�ћ\'�1ј榶T\0�	�?�e\Zi}��:q*��n���_㦐�M�es�\\Ւ��_v�\n7��E4�˟d~��P(Xr{{�\\2Θ+欆�\r��8B6�3�^�?�����lu��sV�B�;�~���������Y�d.|c�Jw;��7��t�8.]�Zc�C%KȜ�6���Iv�8B�� �ŧ���2\'�c��\n�Ķ��|��	E\r����6n ��ۢ�8_6�8�59�{�Ʌ$5�px����MJ�pe�Sp*q�Q̄������X�TY\Z�&�d��N��^(ό\ZG�P�f���Qƶɽ�&x\\��f�	�Hj�+`8��5c�d��mmiך�F�SB���s���P27k�6ʹ�/<�`���#�Hry�[nPj���#��=|<��l�*�$����ȖG�$a���6,���O�����utH���-c[�$��>�JО�G��0���@0�Ib��ϘH��X5��͞���$��2�JΞW$�KjO7��L0CG7~��c�w9+��G�f��f9$	<�������fw!Ճ���~�����xp�.(��*neil�r\Z<�]qvƮ�R=���n\"�s���|Gz�ﱷ6o��f9��8\r7Q����1pR�N�?Te|L¶tM�pb\ZQ<M�&��v�r\Z<�ڢ���[�ح��0���(0�t=H�x���r�ɪ�dnb�m�*���9*)1Nɉd�ys�	Ac��+���`9,�o��}r\'	֞<օ�����.UN����TRb����aT�o�/7E��YS����0f�7�p��`?_�\n��CҪ���n 5�3Tnb�m�*���fQ*)1>u�4�	�M�Q�c��/\'scl�T9\rw�RI�1�m�;	GIc����I\0�m�*���6i*)1溚�}�k* %��0&Ɩ��`ۥJ�����o\r	I	��_k�+��)x)]\r8�%j&	I	�E��Ɣ:�Դ���p�O���I	��z#e���U�p21]�dP���%���� ���Z�ᤔ	�W̧�!z�$��^!|������X�	��%�����]d+\'@}Q\"	Lc�1��0��ڵdnb�钁�E2<��A@��\0e՛���غ�c�k6�Gt�1S�,\"scM��\\�\'���rq�����Ӌx����=vY�싐���	 L�c��[شn;��E�:�ԉuO��<��X��Xk�\"�쫿�za�`m�����Xh(���7�Kd��Ꝼb�9��c��5G����}����(3t�i�_/���%��/������7���:�}$Ӟ]�e7ʙ��3� P���\Zb�����Nm�N8��kY���� �#󺕱g��ށrfCSv�J��ՙ����x0����ز\\�n�Y������l٥649���L�Z�Ń07����:��_����-�٭k���ż�<Lo�,��]n��M��O}�����&˙�|�늬/����\'��w�AL<�L��f�۴�rt�6N�������88��Uq作������_�w�m�(G&���F\0a������l,�?�i*�->Zzڢ�����Wc�r�]�`ʑ�8\'*W	�ψ\ZG�+l�h�o��-���{��&��<rI������>K:��\0�w��ne���؇&ؖ>�kY�3��q�����_�u��C���#�^v���݇�*0�&��)cYC��̽l�:}C,&P��&P=�%\'{�so��~���[��]�f<TTT���?AǏOY�6݁Ƣl4���\'�����>��z%�ܩ6\ru�3�{m�`�K=I���\'��e!�0/�n�]�Ҷ�@�v#\r��\0Y?|\nƆv0^�\r�OC��c�P��%9�Rq	Z��	�3nm{��-�WyR�-%\\w�Q�L2\'�=�H=�ޗH�:B�a����TH�m���Yg�n�%|��r:��Dw؜[ZÉ�Vs}����s:\r|�M��^�4=�K$L�X��s���S73p�̐8���څp�~W�ch~����2���BS�#����{���f�er̛d�Hem�����(x��/\n\Z���|�����f�Jj�㻌�u�;��͔Ie�R�9�U��T66?��ԧ�F�(�/!pCM|����ER҇6VèAl����ŚT��117���_F�Q�s�\\�\Z�ۓ��Q8l�W\ri�u$5��1%f�b�:xN??�|[�G����Xck-��sz��T^l��=���X7��X�\"������\\ɽ���0��vl�	2�kٺ�NW�K�����gP�T�<���&����w��ې���5����kX��=x���e��֥��H:x����H:x����H:x����H:x����H:x����D\0��Щ����\0\0\0\0IEND�B`�','applepie','123-456-7654','Network Engineer','Network Management','2018-01-29','',''),('James','Miller','jmiller','jamesmiller@divide.com','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0e\0\0\0U\0\0\0P*b\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0IDATx^휉WW��H�fE�5bp�(�*n(\ZW6�zPБE�qITT�uTP�\"n�Q�L�q&�{\\�9�����d2�:�ީ���ݷ7������9�c�����GU�z��Gn	\'�)�m��r�\"�ܦ(�)�m��r�\"�ܦ(�)�eL��������������4ܢ�oo��o�R��+2��g�eP�`_W�Ц�y�3�~�V��&HI���e��g�h@|u\r��QҌ���|p��]Υ���JY�}WHu�.�)��3���t��CZ���M��ku�N>��C��V�:�n�)��ch5�Cy; .��O��\r�)��_�ԅ���Q���K:��ͻu�I��c_P�&FX�z�����-���E��My�����|=�OZ։�W߁�#�Vb֭��k�Aۈ�� ����?�i}�7I�߹����Pۮ���ڂ��X�>]G�Ν0h� &g�i�\\�FE���Ab�??D�[wd�%8�\"\n�GL�͙r�)8Az�Hz�\0�;�Q��Il�B�����Z�8bt��̡�����5�\Z�\0p!fgg�����W�1!V��h9�t���wl�s���f�e�A�v>���y66��hcb\n�d��8�)����r$�R�(zI�߸d#bw�-1�g��*`4�%�Y�-_�Ɖ>8Jv7#��_�����=�gYP�Ɗ>8jTfWS0�熽\07�o�h�&�iH���hs\n�#�c�f\nC�����\'F\0����1���w�v3�\\�wװ	��l�\n�=eS0���e)�:wR�r	��!l�\n�=\'1�b\nf^��(L۷�M�(���GC�����G{IsS����~W���|��\"	5����h��1����G\\\'Ԥ}z�M��4�q�?i�N6~�����\'��5�l����M�ݣswj���t�������m{��n���%���acW���C�����\\��̾p�䃫��\"�|F홟E�s��,3�v͛A�sRi��=!2����Kq#��ι3�(1FfGi&e���ĨHژ�Js?�H�ޥ�!TU�A)c����h\\xyu�e�Vh�Ƌr�Գ���鯽�N����	\\�����e�P�K{dە�	�ٶ��<s��_\r���45�N���	�9�M�Lؗ��C��|��wG��hC��z�_\Zܧ\'��đa�75Z:��dr�����ԟ{�C=;w\"Oi��mZ�wO���E�{v���\'������:\\����ZK3S��J���f.�EI1ԪU+��6��gd���>k��L3S���#${&�����&���;])���Gp_?�GJߞl�軖���F�����؈@6��x�nM�Ri[q��͕�g@���g��s��ZJ3S�L��#��������;�M�>����w��͕�u�2%xz�1�w-��)X��l�ᥥlB@yV�Ȋg�χiu�`�+��F\\�`�6fc��ZJ3S�������$�Y�v7b����󲨇�7�T����Q�g\\Yԉ�Q�9hS?��U�l��@ߵ�f����1w�A2ޖ�Q:]������N�P�K.���)��\n��q��.ԩ��Z�a��a=�1�w-��)x��X>\Z��k0�??eR�$WKw�%I�h��(J������ha�$�N�7���w(�����ԥ.W:������1}�RN3`�X���)u��ɤ��M�V�h!�1�5����)�GJ�N]�j\r��:u4���HyW\r��B�ӗ�z���B��,Θ�&RKp�T��9(��e#K�Bo�XM\\�V��%Aa��DjIH�~ML	�pZ�C�!�57��-�%����&$R+�d���VKO��X��7��L�p�]=O�ٳ�o�X9Y>ޝ\rFKZP#����L1�sP8�5;�b̈́�9zK[$l\\x0�X[�����6�F�-�W�p1X����Lݛ#��E\Z�f5��q6-��`��:�.\\�qt�v�m�Z����,}�eN��u�I�ԁ��6l@�\\������@��TV,a�m	��ʨP����V�l�ס@��ܰu�tSl�Z)���#+s�p�d��-,�{-U//b\rPS]^D��d��\n�XbY��V\n��������b)Je�}��e�Y�l�Vp:�v,�#��.�l2���V�kkX3Ԭ8P��.��2�*�-�\\<E5K�Y#��,ˣ���r�o.�*dס��ڶ��5�c��*�t���\\�!���u�RR�>^=�M�)�O��/�:_�~�2�\"�Ul�@S�Q��(y�7�|<�ʝ4R޷�z#_������L��m�ŗ�ӑO�������LܐA�vV�Y�ˊ�=�i�Tf��������GG���4��\"Kxc^�Vd��\r����3z��&zr����_Fi�Cu	V�)����ӧPE~2U�I�U���gc(qXP����at�r�.�Y%�͵i�7��\r S?�q��>z\\W!\'Q���u�:\'����$�@��9�t�Ⱥ&u���\'��ms��?���5H�:���/~m^%G��F\0|�67Q*���C�c���Q�Ι:b*�!��Au[�R��\\�]�Kǫ��NS���*�fc��ц@5Bq~ֿ��_��]C	�\\&����!F���n�\"�d���+�>f��жbr�(˘�f\n�1?n�*�?g��H*��#�C�ɩ�@�;���?�#m7޽n�;uK�tS=}�3}��)A[�����6ѶH�E����5\\��gw���ԍ6Ж������H�n���R3ɵ�{�^2B�u�.�MQ�g����oҏ\r���aj8��n���F�z���l�3|�2(�}��+�eL����6E@�MPnS���6E@�MPnS���6E8�y$*l��\0\0\0\0IEND�B`�','applepie','123-456-9876','Technical Consultant','Software Development','2017-09-25','',''),('John','Wick','jwick','jwick@divide.com','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0_\0\0\0T\0\0\0��6\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0�IDATx^��SG\Z�����í�$�uS�?lbb� ������x�r)^���x%�GcL%ͮo�<b<�@�Z�Z�#�)�>��~y_�`�y�y�}��O��t���w�����W�3��\'����B�o��ķ�|�[h>�-4���׊�߇����Rz|p7=�d\r��ӿs�S�j�nC�q�yQe{�y��O�oң=�Զr.�������eQ�B��j����??���{�-?��P7|��7�e�?{��~*�E��Q�`�)c�zZ8�M�q#5���1./|�\'|{�y^�g����#Ժx+���0�4.�2Ə�����@�ߛ��O�č�y�:��7b@,V�G�������-dQs=%�VGQ$#xWd�Fgg�f�T�X�U�1�\\��Z3\'�\"��z�������@jf�V����~��O��ޭ�F/M�\r��X1]�q~�.\0bC����*��_����j���F�\"\Z!?�ŁX���m��s�Fr�]\r\'����\0��S�=⋟��;��x��d�3���29��́�=��E|��3�ꌂ� V43ɏd}w�|��L#=�*��<��-V03�>0|�b`mp�(�T�1f�:���k�HV,���plGlCg�-��\'��#�N��dE�3W#��7���ʧ���s��}]@�����&>��\\�]qO5��.\'/1��/�֓[�㷓���b4����Wn0S�ǋ*��j�T��9�c�m9s��b)<�EX��f���?J�6w��3E|�)�)�N¸���\0:^��]I�WkhJ�G��\'Kw��f�a��\\�ka%\'��:����A�i�9t�ȇ��v.�^I��2����h������\"�Ṉ��M�\"���	�cvң�鋕i�pxK����=�Q���ߑe�%�bc��j���\nԙ�pZ\Z?��s�h�����_�����!�)h��4R2�\r\Z=�uz�?�(���Y	tb[.lw-�E���i��HZ�E��#(i��>aE��QQo�x�n_�LK����L>-��f�!�>������Z(�ի}�2��k�v�F*~g.���2/x�O�\"q�;��D^��[�A����*yZ_��z�fH|,Psj���H{�gQߗ_���!bW�����~ ��Q�:�ҧ��Q#.�Q��f�̐�r��V*2&J�ʿ.�ᢻQ��kJ6Q́M�L?6�������L`c�\n�l��,>���y��q\'\'V\n�,��~o9	�Q��:�:.��wB�H��g�S������韏8!�l־ ����$68T.�t�GM�3��(3�}9�޿e	�c�<j0ъ���\\�ڸX􀶛a.���a\\`z@��ph�e���t�e��T���b�dJ9�qa��ԙ�6Y��n�>�X􀶛a.���y\\`z�?�ʷ	sh�9��-� ��=�K����s:�|�G��FP���A�躃�_f����a.����\\`z(�F;�\':�H��S(c�xJc�YQ�)1&��fDtW	�e�<ȋ2�S�e��.<�/�����a.��\r�\\`z88#�戻V}�����c��\r\0�n��,>vs���\\�m����%�`����z��y����+:�r;m7�\\��)���7A�tj�؝�α���T,�@:\'!��u�ubN0=�O��\Z��v3�R�AҘaR���D9A��#��]��@�U��\'~�I�2��QC��b��&t;`[l�C��ɡ�C�|yd�Rڜ�@�#9�w�n�L��b��:J6,��)�l�b�/#rX����瓵�fE���ɱ�يd:�i�i�9��\Z��bЋ�\\3��v��b)ɝ9Qv!\\��s\\%�aڷ\rv��CM3&Yv�ҶU��b�V�X�8��U��޷+X>�2����$N\rΊf�c��2ʱc��3^�)9-��z?�������mgX�b͌W�j>�3oo�����/��W�0��)j��0�,Q�����)0�ˈ�)�47�6�2B��uq>��5ˈF�;�f�X�g��l��^��s��˵�ci�����j����Z7	�U[G`F6Mu���O�_�pB+�\r(�9�T�u���l�J�膶��i��\"l�8=LtU���x�vA��e5�!��䫄���=kHN�x�\Z�Rk�Ԓf�X^�Wn����E\\3k�ޡ\0Z�\'�eM�����\\�8B�Kb���/Y��4��;5/���a��8B���uEsf$5UVPc�j�UN-�;;��cM��2Oc�\ry���\\�G|s僸�h^4���.�D���B�W�:�G��^�s�k�]���A\\�����~MU�]sU����Ts�\n{T\\�u��6��OA��#h;�ٓ���t��NPO7�Uwu;�oK�s(�����d5d��+�AK}������������]8gu�mN��p�~��>���e�u��ZA��ǳ>;�G���_T��Ԝ57o��p����ݖ��3��ѯ��i�q�A^uyԉ�o�b}�����E�����vn\"�	�\nX�AEu��VC+��PE}^�\'A\Z�py��6�D�����1�A���V񥉟�|0�M�t��ֿw%>�\"��l��W�&A\Z�pN�W�s�E7V^+��8���=��(���F�a���	�Õ[��_I��p��(��.ߐ��q &w�j:3��Ø�>���I\'������~�����<J��+G���;��ݙGŗ&~���ҹ��w=�*����.�\\%����袸�=�ͨ����ϏPmu��Z\n�U���:�G�ˣD)>|�\'|{�Y&�ݞ>~D\r�����N��۾��i.�ԉ�����,_i7�^���:�x�Rg�Y_��C|��<({�.���U�+���m�|��\Z����kt�b9��|�V���1�E\Z�py�eP�\'�׊��`>�-4���O|�\'����B�o��ķ�|�[h>�-4���O|ˌ��ŝ<:oM5\0\0\0\0IEND�B`�','applepie','345-345-4567','Project Manager','Testing','2018-07-04','',''),('Logan','Moore','lmoore','loganmoore@divide.com','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0`\0\0\0\\\0\0\0� ��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0�IDATx^휉OTW��GX�X㒴��m�\Z�!Z�uCܗ�Z���(.h�B��,�\"�Z��к�R��*n`��mj�qC���(h�z�����x�r��7���_2��˹盹o����H�$�1@�$�1@�$�1@�$�1@�$�1@�$�1@�lk����t��c�RZM�\\��G�;s�>��6\r(���>C�E�\r�ʀkhݕ�4�l�ޢ�\'���hm�M;K�UO�Ѯ��4��\n6�\"@��}�M�x�$#����+��4+@_�}�E~7��2�7S����<ࢎI��ޤE�&l*��F�;�vӺO���4\nR>똔���ȶ�\r�F�E��j@��\'4�����>�oP������ԠI+jШ�6����aI��\r�m5�1ɔ�(P�N����[��^jޱ�`4�ԓ���c�P���,Yn\0~��>�f�޴�[��_J[�5p}�Al�Qƌd�5�$�T\\�ڛ�1��I@�X�Oo+b��,3\0�9��7ݶқ��f�\'��o�C�v�b��1��K@�Z���E��l�DҲ�`�o��/,1\0�)70�.�	���YG�80H�8��r���&<�M��;f6����#���Z˩���A��dYA��]��c��:A�8ni��R���l���ס�l,u�1YyLf\0.���[v�$+���/06�$�\0���zoGM���l�|ѰqKjҴ�����2����v6_`lV��b\0�0r��G��\r�4jҒ:}@��;ӄ~=(jx?�=����5��)=r4m�5�2猥�/^��3�Y=5��)uP7jx}҃B�?��AﻍC_��d����h�L�{�Fo){~�����XѬ�0��W�U�\0c�b=��X���B���d�~��-����k\r00y�XE˴fV��\0�U�L��V.P���X�\Z�)�����@4\0c)S`��V�\0�Y���7f��\0�\Z0S���}G�\r�(.@=����ڱ	����6\0`�d�\0�B��Ø��l��\"KaTn�0vQ2l\0�r��a�OEl��d���l,z��Eɰ؏���ϱI������X􀱋�a�)�N������(+@_!��fc��.J�\r��d.8�d,��&�\n�F�1�c%�`{8�^R���ɲ���x6�`�$݀�Y��dY���?�1�����pP�%\Z��C�/�1��S�����Ԅ6i\"IIZ��m[�E��z�s�M�Hp���m[����S�o(�8,KN`�4�-.�D܊P3��Ӕ9�K6�f�4o<��?��i[܊q3Λٛ��I4ì�]l_f���8��_��MJ\\��&�	+R�m�}�6��!�2�����h6�zXC\n��}��62��%ɺ@�V$Ĳ�����8���m�,�Z�4�(�$pIZ*�`_,NK�Уel�\"�բ<d��`���1\n�l5���ĝ��6Da�m)���YZ�q!>5�M<�W�V����rc����Z�w���~=�M>XI�Ǯ�uEaۭ���͹Z���a�fV�N��(l�92�=]C�\\�~a�t5�1@�r#��CFШ�A��iu�<6�kb�h��[�jl��d�%_��+�5	�/�V+qa����C�d�!=���]te� �U�O����	��fQ]�=����_�\n���<�����q��PAL݊��������I\r�N�ў�El�����ePu<���\"�mr}�G@>�ꑞ�=,��Ae�C_$܎\ZJO���^u�����\nq����^�N�,��(�J�?�}�\"`Ԇ0e�����Ӗ�MU��<غ��Q\rBY��\n񛶲}s�_@Z��#cU*��L�G5�\\�[�[(��l\n085}���ğux����%�f���n�4z�O��1>C��\Z􅩎� V&��\0��|�}`��{�����zS�)��AF����Q9�F<�J,�\r1�7����\0�pF�>E-Z8�M�/��v?o��W�����䏳���7 �S��&v���y���yޚ�|�5WFK3��c��<�>��\0Sl��|*�;�M��ls�}��]r\"��+\\��UUVRYN&]�3�M��/��\"ix�������K1٤�\0m��e7I7@���T�m-�N�tzZ�늛�nm�Y�2@�ʊ\n*+*�������D��t:�揥�Q#�<����{�ePuP7Pd[�/r�,�\0�r�,�\0�r�,�\0�r�,�\0�r�,�\0�r�,�\0�r�,�\0�\"��-���(J\0\0\0\0IEND�B`�','applepie','123-456-6543','Technical Support','Systems Management','2017-11-27','',''),('Liam','Smith','lsmith','liamsmith@divide.com','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0_\0\0\0T\0\0\0��6\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0�IDATx^��SG\Z�����í�$�uS�?lbb� ������x�r)^���x%�GcL%ͮo�<b<�@�Z�Z�#�)�>��~y_�`�y�y�}��O��t���w�����W�3��\'����B�o��ķ�|�[h>�-4���׊�߇����Rz|p7=�d\r��ӿs�S�j�nC�q�yQe{�y��O�oң=�Զr.�������eQ�B��j����??���{�-?��P7|��7�e�?{��~*�E��Q�`�)c�zZ8�M�q#5���1./|�\'|{�y^�g����#Ժx+���0�4.�2Ə�����@�ߛ��O�č�y�:��7b@,V�G�������-dQs=%�VGQ$#xWd�Fgg�f�T�X�U�1�\\��Z3\'�\"��z�������@jf�V����~��O��ޭ�F/M�\r��X1]�q~�.\0bC����*��_����j���F�\"\Z!?�ŁX���m��s�Fr�]\r\'����\0��S�=⋟��;��x��d�3���29��́�=��E|��3�ꌂ� V43ɏd}w�|��L#=�*��<��-V03�>0|�b`mp�(�T�1f�:���k�HV,���plGlCg�-��\'��#�N��dE�3W#��7���ʧ���s��}]@�����&>��\\�]qO5��.\'/1��/�֓[�㷓���b4����Wn0S�ǋ*��j�T��9�c�m9s��b)<�EX��f���?J�6w��3E|�)�)�N¸���\0:^��]I�WkhJ�G��\'Kw��f�a��\\�ka%\'��:����A�i�9t�ȇ��v.�^I��2����h������\"�Ṉ��M�\"���	�cvң�鋕i�pxK����=�Q���ߑe�%�bc��j���\nԙ�pZ\Z?��s�h�����_�����!�)h��4R2�\r\Z=�uz�?�(���Y	tb[.lw-�E���i��HZ�E��#(i��>aE��QQo�x�n_�LK����L>-��f�!�>������Z(�ի}�2��k�v�F*~g.���2/x�O�\"q�;��D^��[�A����*yZ_��z�fH|,Psj���H{�gQߗ_���!bW�����~ ��Q�:�ҧ��Q#.�Q��f�̐�r��V*2&J�ʿ.�ᢻQ��kJ6Q́M�L?6�������L`c�\n�l��,>���y��q\'\'V\n�,��~o9	�Q��:�:.��wB�H��g�S������韏8!�l־ ����$68T.�t�GM�3��(3�}9�޿e	�c�<j0ъ���\\�ڸX􀶛a.���a\\`z@��ph�e���t�e��T���b�dJ9�qa��ԙ�6Y��n�>�X􀶛a.���y\\`z�?�ʷ	sh�9��-� ��=�K����s:�|�G��FP���A�躃�_f����a.����\\`z(�F;�\':�H��S(c�xJc�YQ�)1&��fDtW	�e�<ȋ2�S�e��.<�/�����a.��\r�\\`z88#�戻V}�����c��\r\0�n��,>vs���\\�m����%�`����z��y����+:�r;m7�\\��)���7A�tj�؝�α���T,�@:\'!��u�ubN0=�O��\Z��v3�R�AҘaR���D9A��#��]��@�U��\'~�I�2��QC��b��&t;`[l�C��ɡ�C�|yd�Rڜ�@�#9�w�n�L��b��:J6,��)�l�b�/#rX����瓵�fE���ɱ�يd:�i�i�9��\Z��bЋ�\\3��v��b)ɝ9Qv!\\��s\\%�aڷ\rv��CM3&Yv�ҶU��b�V�X�8��U��޷+X>�2����$N\rΊf�c��2ʱc��3^�)9-��z?�������mgX�b͌W�j>�3oo�����/��W�0��)j��0�,Q�����)0�ˈ�)�47�6�2B��uq>��5ˈF�;�f�X�g��l��^��s��˵�ci�����j����Z7	�U[G`F6Mu���O�_�pB+�\r(�9�T�u���l�J�膶��i��\"l�8=LtU���x�vA��e5�!��䫄���=kHN�x�\Z�Rk�Ԓf�X^�Wn����E\\3k�ޡ\0Z�\'�eM�����\\�8B�Kb���/Y��4��;5/���a��8B���uEsf$5UVPc�j�UN-�;;��cM��2Oc�\ry���\\�G|s僸�h^4���.�D���B�W�:�G��^�s�k�]���A\\�����~MU�]sU����Ts�\n{T\\�u��6��OA��#h;�ٓ���t��NPO7�Uwu;�oK�s(�����d5d��+�AK}������������]8gu�mN��p�~��>���e�u��ZA��ǳ>;�G���_T��Ԝ57o��p����ݖ��3��ѯ��i�q�A^uyԉ�o�b}�����E�����vn\"�	�\nX�AEu��VC+��PE}^�\'A\Z�py��6�D�����1�A���V񥉟�|0�M�t��ֿw%>�\"��l��W�&A\Z�pN�W�s�E7V^+��8���=��(���F�a���	�Õ[��_I��p��(��.ߐ��q &w�j:3��Ø�>���I\'������~�����<J��+G���;��ݙGŗ&~���ҹ��w=�*����.�\\%����袸�=�ͨ����ϏPmu��Z\n�U���:�G�ˣD)>|�\'|{�Y&�ݞ>~D\r�����N��۾��i.�ԉ�����,_i7�^���:�x�Rg�Y_��C|��<({�.���U�+���m�|��\Z����kt�b9��|�V���1�E\Z�py�eP�\'�׊��`>�-4���O|�\'����B�o��ķ�|�[h>�-4���O|ˌ��ŝ<:oM5\0\0\0\0IEND�B`�','applepie','123-456-4321','Senior Developer','Software Development','2016-08-29','',''),('Noah','Williams','nwilliams','noahwilliams@divide.com','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0i\0\0\0[\0\0\0p0��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0	�IDATx^��WW����L淉ƌ�\"n� ��*r2Aĝĉ�l\"�52\Z\r�B\"��Dqa��A1Y��T�����]ܦ�����i}���S����/Uo�W�\'0��2M@�I�4I\0�&	 �$d�$�L��i�\02M@�I�4I\0�&	 �L\Z����@���?zr�:���J|X��c����๘ӊ*�7��p/���\0�W3N�`{�k��C,��I^i���x>��9:�:�ycX��˻L\Z}�nOw�-��,EO�	��\0�}���ŏ{� ϥ���L,�[�%&��ֱ������}p$+�/���S!�݉ć~\0G2��r!��,�u�6yܤ�C���!\'��� |�Όy�4�\"��#!�_aT�r�.X\'o�GM�Q���3d��ڟ\nK��i��Κ��)0�VJ�o���[�1���o�����-�m�$�\n9�k���I�%��\rr�I�#l�RG�\"cl-�2ө�(��XgOʽ&�A]W�`P�H#��e�֓eR`�=i�[MRs��\\!>\'�!�ÁU6��<$������L^MWOv��\"U�#<�G��$>�#\Z�.�f�\n��ZD����n�9��%��\'M���3 �M^SW.���9�LD����$�X+�fL8�$g-Y����{e�I��\'���[��.��I���*��Zi�..��\0G��Ba�\Z�f���a��v�0\rZ+s��t��\n�#��^�!Y���6a��%CM�e���1�&�8񔂸�]��v��J��\0k�����bT]&cl	�=2Τ����lyt�kk\0�+�[�@k���ve��<D�e2�m�Z�5�$\\Y�\Z�_.�osd0d=�\Z��ZNCuYg��s7������\r��8����w:�+�EX~=�	��O�e�Uf�uq��ϣ1	�Q�R�dRɶ82�zr,�M&!�V�e�IZ���I��|�ɹ2�z�eD��j2	�j�t7	�P�Q\n�t -���Gk2	y�7�zc��I�уj�RФ�K2Ȁ\Z��c_h6	�l�t7���!\Z��;5{�mH�y�d���bY�`����&��6Mۮ=w���4��;�%��f#���j�څT�{����4��K�6�L�������E�����d0����<�zfY5`ۍ��&�^�j@�j�7�5�����b��(�j\Z��k�|%�\n����_�uQ��(�kRg�\05�;�f��M�eD}���d�uQ��(�j�+��r\Z.�󥚊݉d`)p堩l�-�	�U�TT�%�\Z��uQ_7H���_?!\Z�����8s*��}���&�+�c�z���	a�<N	�g��i$Z*�a弙<Mo���am7J^g�ǃ�����ǉW�o�Y�%2�j�#6F����	����\Z����r�{dT#�Iz��❟Z�Y�p:k-��O���ɐ�Y8|�h��y���c��s��<0�����n�%�anwz�����3�̚1!P��cއUf\'��M1�y�G�7*���?�uP�0=���6��H[@��v�H��%n�<�lWf��dV�ܱ�d`儱n����\n�ر4 pFE�F�lWf2�ǲ��\Z�$d>\\=�\r���.!G�,���-�z��7���+oT��I���ǣ\n9�[b�@k���8�,��QJ�C?98�L\\�O�V,dy�$�r����>>�x�pbXB]\r�����0Y��{|�u#�#Zo�=|%D�Aˍb2o��e�G2:~9\niQΗ��$G���T�ZrKJ��Hg���BI�ZX���-��w�hV��Cm9�n�Բ�X)�Þ�H�Z.7�g�D��noBo3F��a_1l��}��/]>�	N|�)|è)J��!u���O�ɴ:!�}._}QJ_cɄ5;9�\rGɴz�W�E���KdJ`}L�R(c�aW�c��W�%2.�^ǜ�6p�=@�B��D4���U^��1Q�������r�4c2���&��T%^��Ǥ��kG�v��7��xX��fPX� �V�B��Q�62o5���Hn1	��cw�B��iΟ���78W��BK~i�-�{�ڒi�t�Gg�*htmb�JlC���� }s���,��}�/����5�ܬ���q}(4g�A[Q\n�3�1u9\\�bw.�m_���$�C_u6Y�#^���p��\0T����-�8Q~P��]�P4:�����·��ɲ�V��B��\\Q=�7�j^U�Ks�B��\\��&3t\n?��C��t+Y	~y� ��M\Z��>���N2�Ob�B[���	M��3�1�\r��L�]��5�d]<���1�P|�g3<�o8�/��i$���_o�����Q�#y�$�9�	oy�At]l�u���{�L7iL��G{=t���<�=܉�7�ӓ�e�N���HC`ea�X��ʫL�4��V|]��t`u\0��2�,o�W�d���0X�	]i�\r�<0/�S$y�I�z���j+��鯠� �7�C׺%c�G��\"�����9x.����J(�^W�&	 �$d�$�L��i�\02M@�I�4I\0�&	 �$d�$�L��i�����V͞*<\0\0\0\0IEND�B`�','applepie','123-456-3210','Systems Engineer','Systems Management','2016-10-10','',''),('Olivia','Brown','obrown','oliviabrown@divide.com','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0j\0\0\0X\0\0\0�b1\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0	IDATx^��STU��+��~��~k�f�i���@�u�(�p�5���1uL&B2����ED� y�]�e�P�Ly��;-�^�ݽ{���{�~g>3(���9ϗ���s���Ȗ���D�Q��6J�FI\"�(Id%�l�$�m�$���D�Q�H*�=zDcc���a�sg��n���&�����.�����p��98WfŽQ�E�Ãj�o���q��ۧ��6eS\\\Z���{�G���E����|��ʨ��Gt��0��{�����9]���X����1jt��.��67QAA>�\\�	-^�B3�ޢ�7_�Ą7��Gii��n�Z:TVJ����689ībn�Ç�{������Ô���j�^f%\'ѦM_SÅ:�M䂜�M15jllT�q�Q__C˗�\Z����(;{u;;�Z�r�\'�̨��!�H����E�o�Eʥ���,�9Ƌ,7j||\\��p���{����2�bGKr����d�r W�kYj:<x��ğ�L1&��������́�cm��F��$�C�J��\r���˥����yhAeF�\'5^������1.UT�f���{�%Fa�u\\�gkV��\r�8jj�ݷb5\Zn�$�࠺��-�Y̘�@V�����A�]mln��/��g	7J�d�X��-`�$*|��\"j9�AU;i��O��@F�667-��j�d��j�\r}Z�l����dڱ�#j�� ��h�T�,G�w\\gs�b�r�0��ȩwq���g�p�ޠڢ�t8g-�_��>|o.%�8���`N�-v�����.�&�-�y���9��ػ���Q�f�B�0��\"�u�㫯�`���ڴIE�\'��[�N��d��o�1z(�������l��Ub����4�%KM*ج�Dr��a�l�RS&��������Ѫ�YB��9�c��3;yR���|[\\3�S.�ڸ���F6O��\n	1*�\'�X��մ[\\3�(�M���b�8q�͕}�B���\\��q��uR��s�b+�-�\'�\0����5V��0�(l�:��C�M�>`�*����b����\\��>���F����U�B���9[T�<�����yÊ	��FaddK�9��l�&��\"�T������W�=����џ�Fa�#ߑ�lݚP�K$�Y0oV@��W��<C�����FaW*׉p��9P(\\����b��w\'b\'&���D#�z�����F�y0���颹s��K��d*�T?�>J[���M5��@����\'�հo+[PQ8�.}�3���\nS���|�zh�������;׳h�yqq�ki����]�L5\nߤ�:����l�`%�ێ�N|�����K�H�j��\'���u�R�YH���lQM³�+W.�y�}��2\n46���������Y�jTQ�6�HeT��>g��dQ�_��Ν=���7��>�\\�\"ե/��������fr�����hMR\r&��k����L��m���F\'���\\8���6�(RMx�.!�����U�l��m�m.�Q�ZB2�(\nw�Y��р6�X� բ���!Qn���2��F@[h��e�s@f(&�� ���l�#m�-6F�H@��x��v����5@8m�mG����#���]��t�5\"8�m����[ �/�\0}m�[S������\\f!�v1(�\r���Q.�!�<I9�=�D�ހ�P$[�\r��ܼ�E�I�[S��ok�Q���E�%#�o4��㾮�E F��KP$_���u�V�GU�k|Q��M���@z�����{nk���OB��S�l>�9n�l���XCB�Q&�m�_`+&�Z	7J�Q|����\Z��]��U��5���b-�}��S�ݫ���	�˔��5�����]�ξ~z|��/}��C��[ɛ�\n%e\'��w��h����hpʾ��\'=/�Rz�I�dڟ�������,�cG��q��z�Ez1�Þ���\r|�PL���Ƀ���T�}��f���\\l���R����*��IOng��\'��RNU�����U:�U���?��+�1�\\\0r��I��F��ݳZ:nѳY��I�@�֎ɫ뱼\'i3� �����\n�Y	F��<�S�Fw�S� �I0���+���s���b�N17ʧ��z.{�-� 6r�WōQ�ཿ(�bH�;Ygb!&bǳ��(�FFPV���7���6b ��K��u�{��,�K���հ羚7���6eS��/���5Ѷ�?�Ãw��z1w���RW\Z\0~���w8���+��2��,�(Id%�l�$�m�$���D�Q��6J�FI\"�(Id%�l�$�m�\"�$A�HCBE�\0\0\0\0IEND�B`�','applepie','123-456-1098','Software Tester','Testing','2017-08-14','',''),('William','Jones','wjones','williamjones@divide.com','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0^\0\0\0Y\0\0\0�ד�\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0QIDATx^휋ST���w���3�85Img\Z�iƘ��Qk�6Q|Vm⃲���(��)OQ�7, �%\n*/A\nX���/�L:m�t&���;�.���ݽ��kg�3��ݽ��;߽{�眻?�W��k�F�\Z����k$��\Z�k�F�\Z����k$��\Z�k�F�\Z����k$��\Z�c���?�E_�0�T���UC��g!��ݝĠ���4���P^O�G?y�!*M\rH�C��p�7^��ʠ��LO������\\ۉ�z#�D%�����S����}�=�/�\"|\n�,5�	�@C�uV��r��?FWK\">3p�Q���l�v����RY�Vr��_M}���b�1j����j�=x_��cd$�e�(�I�����!L�7F-b�2a*����-��4�X�QL������s�.mF\Z3ͱ\'�/�%8[Ҁ��^������:���܇�����J\ZQ�[���rd%�p:��q&S/�R8��=6�l{\"�M�+�F1���Q��~�/L��6�����h�n暤�	_̈�b���!Ռ��%��h��P#z\'��E�p�ŋ�bv���O?Yg���=�hw�kP�\"�%n<Ův�����_�\Z�#K8�xƨMA&���6�)ō��3R����\\cԆ.�xD�\rj�v5��Į����kw�;<��:�c���5�W�x�]�9\nݛ�5Fm�*۸��6���+f<݂�\Zс\\cԤ�����mJK�i�I��K�>��c���n��z0`�1K\nT�Ho��g��꽅�ا��<�mJO�)b<�2�vDbX��Y}C��1oH��&#�]�wګ0�Հ��-�n�HO;�{���>�c���R�KeL	�Gl�;\\^,��6*)����ԩ]{��<2LI�t\\��C���F%��eO�@�!�ش��a�l��\'�����[�I�h<AmUJ����r���B�{���k�<�Z tcwX]Y���X��ڪ�dO뙼\0�%�D>3��(����\rￃͫޅ߆��>�@��Y���Ar�T���,���J	b��\\�\0�þ�X�k�a����Y�V/y;|��$���2&K7�Pj\rW����Y�����/��v̙3��!֥r������݌_����=7G(g�K��yէ!�#K�߽�3���OmVB����|^p�B��m�ẹ̆�:�yZ�f�b,xy~�`>���:7�5w�Oa���q>� &[�dOmVB����+r�`Y��xԔ�{�)�?�%�q�,}s!�τc�B\"����4�����1r1�]hs����8�Y�};����C��\\!=<�bΒE�٘�c�*.}��~Ӫ�c�\\�M\Z�e��3�ӹ���]�$O��xA��A�bȶ?�A8�,�y��1|��}i�g���٤�gR�5�_��}Z���$�v��l<m���\n�9CNޅ3Q�,��[s�h}񝺒��+���ʓ6i������[,�br����]�$O�yA�]\\6�1C�_6�n�1Ko1Id\\0��5ﱡ��1�0o�������w��w�,�Ԕ��x�qS��J��Y��+��4��\"���\rسy%>ٺ\Z��-�n�\n�	��,��������g�ʳo�j�ݲ\nA�|0*\\T�t4�����v��l<����\n9�E�nc���u_F5�7TQ��J��M��+d\'�[�)�h졡d��8���+P��JS����m����S\r�����^�n�赳_�xg=�+�H7W��x%�\Z�&ȞL�q\r#�ܱW�|=�g\r�b�n6[��y<h.���In��iW��ŕhm�a�-�L���X���?8*�=�?��S�4GCi:���\\EӋ��I�8���<:�G��p����*����|�������V��_�����=M��J�@���X�ǣpw:��~�����^��-�����c�PGB�k�ܳ��\r�S\"�u�|������\"6:�zM���\n�l�4uq떂�SJL�����8u�3�t�Q�8�G �D�n)h:I�Ĵ�5M�\\Ô�j��ua{4�&�]�&.(\r��3��r�5�#6 �[�4_!�]���0��<9�<���\'w��GmE�@)�U5s됃G,v��~0��_�S�G4]��Q�r� �c�w��lh�\r�.\r�m\\C�����݉ܲ��Q��l�są�\Z�������Vy�˓��m�#Iݴ�)Ftt:�A�4�H�FY�xܦU��m�Βv�M���v	g��$����/�LT27�x�6m����<�+��2���^��OԤ!|��S�}0�$�QG�ţ�0�b�#�K��/K*�(��R��\nBv\'���y�EzL�W��&>���<��P�y��`�2�`�ӑ�_��\n�7�z���������?\Zr*TP��-ǥs��f��,zc�%�繕X�\'��ɫ����$��}�^�_������\r�xeG8���[L$��P`*B�)��f�N��4����uڽB�WwF���e�t��:g�}���ʟHl�E�g�3�D^ڪ�OD.�mL}\Z�v]���.녍���.�[�=���H��8:�	�X�d�+;ñV��g]��M�1��ĳ|6>�`^\"�;L\'�j<�~��_�.��~ј�1h6�F�w���݀S�7�׿>����M������F1�ݽXKu�E��z�yH�y[�����B����8(&5G/��mƓhL,�d-��5���#��@��5Nw$�\ZO��sK�M�l?�5�Pݭ-�n�Z��v�E=���ş���5���N�[kif������j�p��G$r�����S���ֺzc\rg�����^��ʢ2=Qe��&|����m�s�H��-�u/n<̠���4���P^O��\Z��.��\Z�k�F�\Z����k$��\Z�k�F�\Z����k$��\Z�k�F�\Z����iA��\"��\0\0\0\0IEND�B`�','applepie','123-456-2109','Project Manager','Software Development','2015-11-16','','');
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
