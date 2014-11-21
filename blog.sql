/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2014-02-20 11:26:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `haoyabo_blogs`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_blogs`;
CREATE TABLE `haoyabo_blogs` (
  `blogid` int(10) NOT NULL DEFAULT '0',
  `title` text,
  `pubtime` int(11) NOT NULL DEFAULT '0',
  `authorid` int(8) NOT NULL DEFAULT '0',
  `replies` int(8) NOT NULL DEFAULT '0',
  `tbs` int(8) NOT NULL DEFAULT '0',
  `views` int(8) NOT NULL DEFAULT '0',
  `property` int(1) NOT NULL DEFAULT '0',
  `category` int(3) NOT NULL DEFAULT '0',
  `tags` text,
  `sticky` int(1) NOT NULL DEFAULT '0',
  `htmlstat` int(1) NOT NULL DEFAULT '0',
  `ubbstat` int(1) NOT NULL DEFAULT '1',
  `emotstat` int(1) NOT NULL DEFAULT '1',
  `content` mediumtext,
  `editorid` int(8) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `weather` tinytext,
  `mobile` int(1) NOT NULL DEFAULT '0',
  `pinged` text,
  `permitgp` text,
  `starred` int(5) NOT NULL DEFAULT '0',
  `blogpsw` tinytext,
  `frontpage` tinyint(1) NOT NULL DEFAULT '0',
  `entrysummary` text,
  `comefrom` varchar(255) DEFAULT NULL,
  `originsrc` varchar(255) DEFAULT NULL,
  `blogalias` varchar(100) DEFAULT NULL,
  KEY `blogid` (`blogid`),
  KEY `pubtime` (`pubtime`),
  KEY `views` (`views`),
  KEY `sticky` (`sticky`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_blogs
-- ----------------------------
INSERT INTO `haoyabo_blogs` VALUES ('0', 'æµ‹è¯•æ—¥å¿—', '1390531113', '1', '0', '0', '1', '0', '0', '', '0', '0', '1', '1', 'æ‚¨å¥½ï¼Œæ„Ÿè°¢æ‚¨é€‰æ‹©ä½¿ç”¨[acronym=ä¸€æ¬¾åŸºäºŽPHPå’ŒMySQLçš„ä¸ªäººblogç¨‹åº]Bo-Blog[/acronym]ã€‚<br/><br/>åœ¨è¿™é‡Œï¼Œæˆ‘ä»¬å‘æ‚¨æŽ¨è Bluview ç§‘æŠ€çš„å¦ä¸€æ¬¾äº§å“â€”â€”BMForumè®ºå›ç¨‹åºï¼Œå®ƒæ‹¥æœ‰è®ºå›ç¨‹åºä¸­å‰æ‰€æœªæœ‰çš„é¢†å…ˆæŠ€æœ¯å’Œèˆ’é€‚çš„ç”¨æˆ·ä½“éªŒã€‚<br/>&lt;a href=&quot;http://www.bmforum.com&quot;&gt; [b]ç«‹åˆ»ç‚¹å‡»ä¸‹è½½[/b]&lt;/a&gt;&lt;ul&gt;&lt;li&gt; [b]&lt;u&gt;å›½å†…é¦–å®¶&lt;/u&gt; æ‰“ç ´ä¼ ç»Ÿåˆ†ç±»æ–¹å¼ â€”â€” ä¸»é¢˜éšæ„è´´(Tagsã€æ ‡ç­¾) [/b][separator]<br/>åªè¦å‘å¸–æ—¶æŒ‡å®šä¸€ä¸ª Tagï¼Œå°±å¯ä»¥ä»¤å¸–å­è”ç³»æ›´ç´§å¯†ï¼&lt;/li&gt;&lt;li&gt; [b]å…ˆè¿›çš„ AJAX æŠ€æœ¯ æ™®éç”¨äºŽå‘å¸–å’Œæµè§ˆ[/b]<br/>å¿«é€Ÿç¿»é¡µæµè§ˆã€å¿«é€Ÿå›žå¤ï¼Œä¸€åˆ‡å¦‚é£žã€‚&lt;/li&gt;&lt;li&gt; [b]&lt;u&gt;å›½å†…é¦–å®¶&lt;/u&gt; è®ºå›é‚€è¯·æ³¨å†Œæ–¹å¼[/b]<br/>è®ºå›ç”¨æˆ·å¯ä»¥é€šè¿‡è‡ªå·±çš„åŠªåŠ›é‚€è¯·å…¶ä»–äººåŠ å…¥ï¼&lt;/li&gt;&lt;li&gt; [b]æ ¹æ® XHTML1.0 + CSS æ ‡å‡†æž„å»ºç¨‹åº[/b]<br/>è®ºå›ç¨‹åºå®Œå…¨ç¬¦åˆW3Cå›½é™…æ ‡å‡†ï¼Œé£Žæ ¼åˆ¶ä½œæ›´ç®€å•ã€‚&lt;/li&gt;&lt;li&gt; [b]&lt;u&gt;å›½å†…é¦–å®¶&lt;/u&gt; å¯è§†åŒ–å‘å¸–ï¼Œè®©å‘å¸–æ›´è½»æ¾[/b]<br/>é€šè¿‡å¯è§†åŒ–å‘å¸–ï¼Œæ–¹ä¾¿ã€å®‰å…¨åœ°å¼ è´´æƒ³è¦çš„å†…å®¹&lt;/li&gt;&lt;li&gt; [b]å¼ºå¤§çš„åŽå°ç®¡ç†ï¼Œæ–¹ä¾¿çš„å¿«é€Ÿå®šä½[/b]<br/>é€šè¿‡è®ºå›ç¨‹åºå†…ç½®çš„â€œæˆ‘æƒ³â€èœå•æ–¹ä¾¿æ‰¾åˆ°ä½ æ‰€æƒ³çš„&lt;/li&gt;&lt;li&gt;[b]é«˜æ•ˆçš„è®ºå›æ€§èƒ½[/b]<br/>è®ºå›ç¨‹åºè´Ÿè½½æ‰¿å—èƒ½åŠ›ç©ºå‰ç»åŽ&lt;/li&gt;&lt;li&gt; [b]&lt;u&gt;å…¨çƒé¦–å®¶&lt;/u&gt; å¤šé™„ä»¶åŒæ—¶ä¸Šä¼ ã€é™„ä»¶å›¾æ–‡æ··æŽ’[/b]<br/>ä½¿ç”¨ BMForum è®ºå›ç¨‹åº,è®ºå›å‘å¸–æ˜“å¦‚åæŽŒ&lt;/li&gt;&lt;li&gt; [b]&lt;u&gt;å›½å†…é¦–å®¶&lt;/u&gt; é¢†å…ˆçš„å¤šå›½è¯­è¨€ UTF-8 ç¼–ç [/b]<br/>å›½é™…ã€æ¸¯æ¾³å°äº¤æµæ›´ç´§å¯†&lt;/li&gt;&lt;li&gt;[b]å¼ºå¤§çš„ç”¨æˆ·ç»„æƒé™æŽ§åˆ¶ç³»ç»Ÿ[/b]<br/>æ‰€æœ‰ç”¨æˆ·æ ¹æ®è®ºå›ç¨‹åºä¸­çš„ç”¨æˆ·ç»„æƒé™è¯†åˆ«æƒé™&lt;/li&gt;&lt;/ul&gt;<br/>è¿™æ˜¯å®‰è£…ç¨‹åºè‡ªåŠ¨å†™å…¥çš„ä¸€ç¯‡æ—¥å¿—ã€‚æ‚¨å¯ä»¥åˆ é™¤å®ƒã€‚', '1', '1390547331', 'sunny', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('1', 'çƒ­çƒ­ç‰¹ç‘žç‰¹è®©ä»–', '1390546415', '1', '0', '0', '2', '0', '0', '', '0', '1', '1', '1', 'å‰ç«¯éƒ¨ç½²ant+yuicompressoræ–‡ä»¶åŽ‹ç¼©+èŽ·å–ç‰ˆæœ¬å·+SSHå‘å¸ƒï¼ˆéƒ¨åˆ†ä»£ç ï¼‰<br/>æ–‡ä»¶åŽ‹ç¼©ï¼š[separator]<br/>1<br/>2<br/>3<br/>4<br/>5<br/>6<br/>7<br/>8<br/>9<br/>10<br/>11<br/><apply executable=\"java\" parallel=\"false\" failonerror=\"true\" dest=\"../../release/publish/ecshop\" append=\"false\" force=\"true\"><br/>&nbsp;&nbsp;&nbsp;&nbsp;<fileset dir=\"../../release/publish/ecshop\"><br/>&nbsp;&nbsp;&nbsp;&nbsp;</fileset><br/>&nbsp;&nbsp;&nbsp;&nbsp;<arg line=\"-jar\" /><br/>&nbsp;&nbsp;&nbsp;&nbsp;<arg path=\"${compressor}\" /><br/>&nbsp;&nbsp;&nbsp;&nbsp;<arg line=\"--charset utf8\" /><br/>&nbsp;&nbsp;&nbsp;&nbsp;<srcfile /><br/>&nbsp;&nbsp;&nbsp;&nbsp;<arg line=\"-o\" /><br/>&nbsp;&nbsp;&nbsp;&nbsp;<mapper type=\"glob\" from=\"*.js\" to=\"*.js\" /><br/>&nbsp;&nbsp;&nbsp;&nbsp;<targetfile /><br/></apply><br/><br/>SSHå‘<br/>1<br/>2<br/>3<br/>4<br/>5<br/>6<br/>7<br/><scp todir=\"${username_c}:${password_c}@${host_c}://usr/rete\"&nbsp;&nbsp;trust=\"true\"><br/>&nbsp;&nbsp;&nbsp;&nbsp;<fileset dir=\'../../release/${version}/test/2å„¿ç«¥/\'><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<exclude name=\"${conf}\" /><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<exclude name=\"${Runtime}\" /><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<exclude name=\"${nbproject}\" /><br/>&nbsp;&nbsp;&nbsp;&nbsp;</fileset><br/></scp><br/>é€šè¿‡SVN infoèŽ·å–SVNç‰ˆæœ¬å·é€šè¿‡è°ƒç”¨cmdå‘½ä»¤è¡Œï¼ŒèŽ·å–SVNç‰ˆæœ¬ï¼Œå­˜æ”¾åˆ°buildRevisionæ–‡ä»¶ä¸­ï¼Œç„¶åŽå†å¼•è¿›buildRevisionè¿™ä¸ªæ–‡ä»¶ã€‚è¯»å–ç‰ˆæœ¬å·çš„å€¼ã€‚<br/>1<br/>2<br/>3<br/>4<br/>5<br/>6<br/>7<br/>8<br/>9<br/>10<br/>11<br/>12<br/>13<br/>14<br/>15<br/>16<br/>17<br/>18<br/><echo level=\"info\" message=\"æ­£åœ¨èŽ·å–æŒ‡å®šç›®å½•çš„ç‰ˆæœ¬å·...\" /><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <exec dir = \"${svnurl}\" executable = \"svn.exe\" output = \"buildRevision\"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <arg line = \"info\" /><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <redirector><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <outputfilterchain><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <linecontainsregexp><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <regexp pattern=\"^Revision:\"/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </linecontainsregexp><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <tokenfilter><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <replaceregex pattern=\"Revision&#92;:&#92;s*\" flags=\"s\" replace=\"Revision=\"/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </tokenfilter><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </outputfilterchain><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </redirector><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </exec><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <property file=\"buildRevision\" /><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <property file=\"buildRevision_Inherit\" /><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <echo&nbsp;&nbsp;message=\"èŽ·å–æˆåŠŸï¼Œç‰ˆæœ¬å·æ˜¯${Revision}\"/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <echo level=\"info\" message=\"æ­£åœ¨ç”Ÿæˆå‘å¸ƒæŒ‡å®šç›®å½•...\" /><br/><br/>å…¶ä¸­<br/>1<br/>2<br/>3<br/>4<br/>5<br/>6<br/>7<br/>8<br/>9<br/>10<br/><redirector><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<outputfilterchain><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<linecontainsregexp><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<regexp pattern=\"^Revision:\"/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</linecontainsregexp><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tokenfilter><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<replaceregex pattern=\"Revision&#92;:&#92;s*\" flags=\"s\" replace=\"Revision=\"/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</tokenfilter><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</outputfilterchain><br/>&nbsp;&nbsp;</redirector><br/>è¿™ä¸ªçš„æ„æ€æ˜¯è¿‡æ»¤æŽ‰SVNINFOå‘½ä»¤è¡Œä¸­å…¶ä»–ï¼Œåªç•™ä¸‹Revision=ç‰ˆæœ¬å·<br/>ç„¶åŽå†å¼•è¿›å°±å¯ä»¥äº†ã€‚', '1', '1390547317', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('2', ' å¯¼å‡ºEXCELä¸€èˆ¬æ˜¯ç”¨PHPåšï¼Œ', '1390547203', '1', '9', '0', '4', '0', '1', '', '0', '1', '1', '1', ' å¯¼å‡ºEXCELä¸€èˆ¬æ˜¯ç”¨PHPåšï¼Œä½†æ˜¯é¡¹ç›®ä¸­ï¼Œæœ‰æ—¶å€™PHPåŽç«¯å·¥ç¨‹å¸ˆè¿”å›žçš„æ•°æ®ä¸æ˜¯æˆ‘ä»¬æƒ³è¦çš„ï¼Œä½œä¸ºå‰ç«¯å¼€å‘å·¥ç¨‹å¸ˆï¼ŒæŠŠå¯¹åº”çš„æ•°æ®ç¼–å·è½¬æ¢ä¸ºæ–‡å­—åŽï¼Œå±•ç¤ºç»™ç”¨æˆ·ï¼Œä½†æ˜¯ï¼Œéœ€æ±‚è¦æŠŠæ•°æ®åŒæ—¶å¯¼å‡ºä¸€ä»½EXCElã€‚æ— å¥ˆä¹‹ä¸‹ï¼Œæˆ‘åªèƒ½ç”¨jså¯¼å‡ºtableä¸­çš„æ•°æ®äº†ã€‚<br/>&nbsp;&nbsp; å¯¼å‡ºEXCElä¸€èˆ¬æ˜¯è‡ªå·±äººç”¨çš„ï¼Œæ‰€ä»¥ç”¨jså¯¼å‡ºï¼Œå› ä¸ºjså¯¼å‡ºEXCELä¸€èˆ¬æƒ…å†µä¸‹å…¼å®¹æ€§ä¸æ˜¯å¾ˆå¥½ï¼Œå¾ˆå¤šåªæ˜¯å…¼å®¹IEæµè§ˆå™¨ï¼Œè¿˜è¦è®¾ç½®åœ¨å·¥å…·æ ä¸­è¿›è¡Œè®¾ç½®æ‰èƒ½å¯¼å‡ºï¼Œå› ä¸ºä¼šç›¸å¯¹æ¯”è¾ƒçƒ¦ã€‚ç»è¿‡æ€»ç»“ï¼Œæˆ‘æ‰¾äº†å¦‚ä¸‹åŠžæ³•å¯¼å‡ºEXCElï¼Œè¯¥æ–¹æ³•åªèƒ½åœ¨IEå†…æ ¸ä¸‹è¿è¡Œï¼Œç›¸æ¯”å…¶ä»–æ–¹æ³•çš„å¥½å¤„æ˜¯ï¼Œä¸ç”¨å†è®¾ç½®ä»€ä¹ˆå±žæ€§æˆ–è€…å®‰è£…ä»€ä¹ˆæ’ä»¶äº†ï¼Œæ€è·¯å¦‚ä¸‹ï¼š[separator]<br/>&nbsp;&nbsp; å¾ªçŽ¯èŽ·å–tableä¸­çš„æ•°æ®ï¼Œç„¶åŽæŠŠæ•°æ®å­˜æ”¾åˆ°ä¸€ä¸ªè‡ªå®šä¹‰ç½‘é¡µçª—å£ä¸­ï¼Œå†æŠŠè¯¥æ•°æ® xlsWin.document.execCommandä¿å­˜åˆ°excelä¸­ã€‚<br/>ä»£ç å¦‚ä¸‹<br/>1<br/>2<br/>3<br/>4<br/>5<br/>6<br/>7<br/>8<br/>9<br/>10<br/>11<br/>12<br/>13<br/>14<br/>15<br/>16<br/>17<br/>18<br/>19<br/>20<br/>21<br/>22<br/>23<br/>24<br/>25<br/>26<br/>27<br/>28<br/>29<br/>30<br/>31<br/>32<br/>33<br/>34<br/>35<br/>36<br/>37<br/>38<br/>39<br/>40<br/>41<br/>42<br/>43<br/>44<br/>45<br/>46<br/>47<br/>48<br/>49<br/>50<br/>51<br/>52<br/>53<br/>54<br/>55<br/>56<br/>57<br/>58<br/>59<br/>60<br/>61<br/>62<br/>63<br/>64<br/>65<br/>66<br/>67<br/>68<br/>69<br/>70<br/>71<br/>72<br/>73<br/>74<br/>75<br/>76<br/>77<br/>78<br/>79<br/>80<br/>81<br/>82<br/>83<br/>84<br/>85<br/>86<br/>87<br/>88<br/>89<br/>90<br/>91<br/>92<br/>93<br/>94<br/>95<br/>96<br/>97<br/>98<br/>99<br/>100<br/>101<br/>102<br/>103<br/>104<br/>105<br/>106<br/>107<br/>108<br/>109<br/>function getXlsFromTbl(inTblId, inWindow) {<br/>&nbsp;&nbsp;&nbsp;&nbsp; try {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; var allStr = \"\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; var curStr = \"\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //alert(\"getXlsFromTbl\");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (inTblId != null && inTblId != \"\" && inTblId != \"null\") {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; curStr = getTblData(inTblId, inWindow);<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (curStr != null) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; allStr += curStr;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alert(\"ä½ è¦å¯¼å‡ºçš„è¡¨ä¸å­˜åœ¨ï¼\");<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var fileName = getExcelFileName();<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doFileExport(fileName, allStr);<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;catch(e) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alert(\"å¯¼å‡ºå‘ç”Ÿå¼‚å¸¸:\" + e.name + \"->\" + e.description + \"!\");<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>}<br/>function getTblData(inTbl, inWindow) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;var rows = 0;<br/>&nbsp;&nbsp;&nbsp;&nbsp;//alert(\"getTblData is \" + inWindow);<br/>&nbsp;&nbsp;&nbsp;&nbsp;var tblDocument = document;<br/>&nbsp;&nbsp;&nbsp;&nbsp;if (!!inWindow && inWindow != \"\") {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!document.all(inWindow)) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return null;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tblDocument = eval(inWindow).document;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;var curTbl = tblDocument.getElementById(inTbl);<br/>&nbsp;&nbsp;&nbsp;&nbsp;var outStr = \"\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;if (curTbl != null) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (var j = 0; j < curTbl.rows.length; j++) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (var i = 0; i < curTbl.rows[j].cells.length; i++) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (i == 0 && rows > 0) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outStr += \" &#92;t\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rows -= 1;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outStr += curTbl.rows[j].cells[i].innerText + \"&#92;t\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (curTbl.rows[j].cells[i].colSpan > 1) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (var k = 0; k < curTbl.rows[j].cells[i].colSpan - 1; k++) { <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outStr += \" &#92;t\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (i == 0) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (rows == 0 && curTbl.rows[j].cells[i].rowSpan > 1) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rows = curTbl.rows[j].cells[i].rowSpan - 1;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outStr += \"&#92;r&#92;n\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;else {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outStr = null;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alert(inTbl + \"ä¸å­˜åœ¨!\");<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;return outStr;<br/>}<br/>function getExcelFileName() {<br/>&nbsp;&nbsp;&nbsp;&nbsp;var d = new Date();<br/>&nbsp;&nbsp;&nbsp;&nbsp;var curYear = d.getYear();<br/>&nbsp;&nbsp;&nbsp;&nbsp;var curMonth = \"\" + (d.getMonth() + 1);<br/>&nbsp;&nbsp;&nbsp;&nbsp;var curDate = \"\" + d.getDate();<br/>&nbsp;&nbsp;&nbsp;&nbsp;var curHour = \"\" + d.getHours();<br/>&nbsp;&nbsp;&nbsp;&nbsp;var curMinute = \"\" + d.getMinutes();<br/>&nbsp;&nbsp;&nbsp;&nbsp;var curSecond = \"\" + d.getSeconds();<br/>&nbsp;&nbsp;&nbsp;&nbsp;if (curMonth.length == 1) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;curMonth = \"0\" + curMonth;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;if (curDate.length == 1) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;curDate = \"0\" + curDate;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;if (curHour.length == 1) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;curHour = \"0\" + curHour;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;if (curMinute.length == 1) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;curMinute = \"0\" + curMinute;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;if (curSecond.length == 1) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;curSecond = \"0\" + curSecond;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;var fileName = \"91zaojia\" + \"_\" + curYear + curMonth + curDate + \"_\"<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ curHour + curMinute + curSecond + \".xls\";<br/>&nbsp;&nbsp;&nbsp;&nbsp;return fileName;<br/>}<br/>function doFileExport(inName, inStr) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;var xlsWin = null;<br/>&nbsp;&nbsp;&nbsp;&nbsp;if (!!document.all(\"glbHideFrm\")) {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xlsWin = glbHideFrm;<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;else {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var width = 6;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var height = 4;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var openPara = \"left=\" + (window.screen.width / 2 - width / 2)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ \",top=\" + (window.screen.height / 2 - height / 2)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ \",scrollbars=no,width=\" + width + \",height=\" + height;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;xlsWin = window.open(\"\", \"_blank\", openPara);<br/>&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;xlsWin.document.write(inStr);<br/>&nbsp;&nbsp;&nbsp;&nbsp;xlsWin.document.close();<br/>&nbsp;&nbsp;&nbsp;&nbsp;xlsWin.document.execCommand(\'Saveas\', true, inName);<br/>&nbsp;&nbsp;&nbsp;&nbsp;xlsWin.close();<br/>}<br/>è°ƒç”¨å¾ˆç®€å•ï¼Œç›´æŽ¥ç”¨å°±å¯ä»¥onclick=\"getXlsFromTbl(\'functionclickExcel\',null);å°±å¯ä»¥äº†ï¼<br/><br/><br/>ç½‘ä¸ŠæŸ¥äº†ï¼Œè¿˜æœ‰å…¶ä»–åŠžæ³•ï¼Œä½†æ˜¯ç”¨åˆ°ActiveXObject(\"Excel.Application\")ï¼Œè¿™ä¸ªå…¼å®¹æ€§ä¸æ˜¯å¾ˆå¥½ï¼Œæ–¹æ³•å¦‚ä¸‹ï¼š<br/>1<br/>2<br/>3<br/>4<br/>5<br/>6<br/>7<br/>8<br/>9<br/>10<br/>11<br/>12<br/>13<br/>14<br/>15<br/>16<br/>17<br/>18<br/>19<br/>20<br/>21<br/>22<br/>23<br/>24<br/>25<br/>26<br/>27<br/>28<br/>29<br/>30<br/>31<br/>32<br/>33<br/>34<br/>35<br/>36<br/>37<br/>38<br/>39<br/>40<br/>41<br/>42<br/>43<br/>44<br/>45<br/>46<br/>//æ–¹æ³•äºŒ<br/>function method1(tableid) {//æ•´ä¸ªè¡¨æ ¼æ‹·è´åˆ°EXCELä¸­<br/>&nbsp;&nbsp;&nbsp;&nbsp; var curTbl = document.getElementById(tableid);<br/>&nbsp;&nbsp;&nbsp;&nbsp; var oXL = new ActiveXObject(\"Excel.Application\");<br/>&nbsp;&nbsp;&nbsp;&nbsp; //åˆ›å»ºAXå¯¹è±¡excel<br/>&nbsp;&nbsp;&nbsp;&nbsp; var oWB = oXL.Workbooks.Add();<br/>&nbsp;&nbsp;&nbsp;&nbsp; //èŽ·å–workbookå¯¹è±¡<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; var oSheet = oWB.ActiveSheet;<br/>&nbsp;&nbsp;&nbsp;&nbsp; //æ¿€æ´»å½“å‰sheet<br/>&nbsp;&nbsp;&nbsp;&nbsp; var sel = document.body.createTextRange();<br/>&nbsp;&nbsp;&nbsp;&nbsp; sel.moveToElementText(curTbl);<br/>&nbsp;&nbsp;&nbsp;&nbsp; //æŠŠè¡¨æ ¼ä¸­çš„å†…å®¹ç§»åˆ°TextRangeä¸­<br/>&nbsp;&nbsp;&nbsp;&nbsp; sel.select();<br/>&nbsp;&nbsp;&nbsp;&nbsp; //å…¨é€‰TextRangeä¸­å†…å®¹<br/>&nbsp;&nbsp;&nbsp;&nbsp; sel.execCommand(\"Copy\");<br/>&nbsp;&nbsp;&nbsp;&nbsp; //å¤åˆ¶TextRangeä¸­å†…å®¹ <br/>&nbsp;&nbsp;&nbsp;&nbsp; oSheet.Paste();<br/>&nbsp;&nbsp;&nbsp;&nbsp; //ç²˜è´´åˆ°æ´»åŠ¨çš„EXCELä¸­&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp; oXL.Visible = true;<br/>&nbsp;&nbsp;&nbsp;&nbsp; //è®¾ç½®excelå¯è§å±žæ€§<br/> }<br/>//æ–¹æ³•ä¸‰<br/> function method2(tableid) //è¯»å–è¡¨æ ¼ä¸­æ¯ä¸ªå•å…ƒåˆ°EXCELä¸­<br/> {<br/>&nbsp;&nbsp;&nbsp;&nbsp; var curTbl = document.getElementById(tableid);<br/>&nbsp;&nbsp;&nbsp;&nbsp; var oXL = new ActiveXObject(\"Excel.Application\");<br/>&nbsp;&nbsp;&nbsp;&nbsp; //åˆ›å»ºAXå¯¹è±¡excel<br/>&nbsp;&nbsp;&nbsp;&nbsp; var oWB = oXL.Workbooks.Add();<br/>&nbsp;&nbsp;&nbsp;&nbsp; //èŽ·å–workbookå¯¹è±¡<br/>&nbsp;&nbsp;&nbsp;&nbsp; var oSheet = oWB.ActiveSheet;<br/>&nbsp;&nbsp;&nbsp;&nbsp; //æ¿€æ´»å½“å‰sheet<br/>&nbsp;&nbsp;&nbsp;&nbsp; var Lenr = curTbl.rows.length;<br/>&nbsp;&nbsp;&nbsp;&nbsp; //å–å¾—è¡¨æ ¼è¡Œæ•°<br/>&nbsp;&nbsp;&nbsp;&nbsp; for (i = 0; i < Lenr; i++)<br/>&nbsp;&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; var Lenc = curTbl.rows(i).cells.length;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //å–å¾—æ¯è¡Œçš„åˆ—æ•°<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (j = 0; j < Lenc; j++)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oSheet.Cells(i + 1, j + 1).value = curTbl.rows(i).cells(j).innerText; <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //èµ‹å€¼<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp; }<br/>&nbsp;&nbsp;&nbsp;&nbsp; oXL.Visible = true;<br/>&nbsp;&nbsp;&nbsp;&nbsp; //è®¾ç½®excelå¯è§å±žæ€§<br/> }', '1', '1390547270', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('3', 'XAMPPä¸­Apacheçªç„¶æ— æ³•å¯åŠ¨', '1390547654', '1', '2', '0', '3', '0', '1', '', '0', '1', '1', '1', '<br/>XAMPPä¸­Apacheçªç„¶æ— æ³•å¯åŠ¨<br/>ä»Šå¤©å¼€ç”µè„‘ï¼Œæ‰“å¼€XAMPP,çªç„¶appachå¯åŠ¨ä¸äº†äº†ã€‚æ˜¨å¤©è¿˜å¥½å¥½çš„ï¼Œå¾ˆæ˜¯éƒé—·ï¼<br/>æ‰¾äº†ä¸€ä¸‹åŽŸå› å¦‚ä¸‹ï¼š<br/>æ‰“å¼€Aapcheçš„æ—¥å¿—æ–‡ä»¶error.logã€‚å‘çŽ°æœ‰å¦‚ä¸‹çš„é”™è¯¯æ—¥å¿—è®°å½•<br/>[Thu Jan 09 16:30:00 2014] [notice] Digest: generating secret for digest authentication ...<br/>[Thu Jan 09 16:30:00 2014] [notice] Digest: done<br/>[Thu Jan 09 16:30:04 2014] [notice] Child 8228: Child process is running<br/>[Thu Jan 09 16:30:04 2014] [notice] Child 8228: Acquired the start mutex.<br/>[Thu Jan 09 16:30:04 2014] [notice] Child 8228: Starting 150 worker threads.<br/>[Thu Jan 09 16:30:04 2014] [notice] Child 8228: Starting thread to listen on port 443.<br/>[Thu Jan 09 16:30:04 2014] [notice] Child 8228: Starting thread to listen on port 8090.<br/>[Thu Jan 09 16:30:04 2014] [notice] Child 8228: Starting thread to listen on port 8080.<br/>[Thu Jan 09 16:30:04 2014] [notice] Child 8228: Starting thread to listen on port 80.<br/>[Thu Jan 09 17:40:00 2014] [notice] Parent: child process exited with status 1073807364 -- Restarting.[separator]<br/>æ˜¯ä¸æ˜¯æ˜¨å¤©å¼„äº†ä»€ä¹ˆä¸œè¥¿æŠŠ443ç«¯å£ç»™å äº†ã€‚<br/>é€šè¿‡cmdå‘½ä»¤è¡Œç›´æŽ¥æŸ¥çœ‹æœ‰æ— ç¨‹åºå ç”¨0.0.0.0:443ï¼š<br/>1ã€è¿è¡Œcmdï¼Œç„¶åŽè¾“å…¥netstat -anoï¼Œå›žè½¦ï¼›<br/>2ã€æŸ¥çœ‹å¼€å¤´å‡ è¡ŒåŒ…å«0.0.0.0:443çš„é‚£ä¸€è¡Œæœ€åŽçš„pidï¼Œä¸ºå‡ ä¸ªæ•°å­—ï¼ŒæŠŠè¿™å‡ ä¸ªæ•°å­—è®°ä¸‹æ¥ï¼›<br/>3ã€å¯åŠ¨â€œä»»åŠ¡ç®¡ç†å™¨â€â€”â€”â€œè¿›ç¨‹â€ï¼Œåœ¨â€œå·¥å…·æ æŸ¥çœ‹é€‰é¡¹å¡â€â€”â€”â€œé€‰æ‹©åˆ—â€å‰é¢çš„æ¡†é‡Œæ‰“ä¸Šå‹¾ï¼›<br/>4ã€ç„¶åŽæ‰¾åˆ°ä¸Žåˆšæ‰é‚£ä¸ªpidå¯¹åº”çš„æ˜¯å“ªä¸ªç¨‹åºï¼Œå¾ˆå®¹æ˜“å°±ä¼šæ‰¾åˆ°ï¼Œå°±æ˜¯å®ƒä¸Ž0.0.0.0:443è¿›è¡Œäº†ç»‘å®šï¼ˆbindï¼‰ï¼›<br/><br/>åŽŸæ¥æ˜¯æˆ‘æ˜¨å¤©å®‰è£…äº†VMware Workstation æŠŠ443ç«¯å£å äº†ã€‚<br/>æ€æŽ‰è¿›ç¨‹ï¼Œæˆ–è€…æ”¹æŽ‰443ç«¯å£å°±å¯ä»¥äº†', '0', '0', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('4', 'è§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bug', '1390547718', '1', '0', '0', '0', '0', '0', '', '0', '1', '1', '1', 'è§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bug', '0', '0', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('5', 'è§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bug', '1390547726', '1', '0', '0', '1', '0', '0', '', '0', '1', '1', '1', 'è§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bug', '0', '0', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('6', 'è§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bug', '1390547738', '1', '3', '0', '3', '0', '0', '', '0', '1', '1', '1', 'è§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bugè§£å†³jqueryeasyUI dialog å¼¹å‡ºçª—å£è¶…å‡ºæµè§ˆå™¨ï¼Œå¯¼è‡´ä¸èƒ½å…³é—­çš„bug', '0', '0', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('7', 'gfhfghfghgfh', '1390554064', '1', '5', '0', '3', '0', '1', '', '0', '1', '1', '1', '<div>[quote]uyiyuiyu[/quote]</div><div>[acronym=gfhhhhhhhhhhhhhhhhhhhhhhhhhh]hkhjkhjkhjkhjkhjk[/acronym]</div><div>[emot]envy[/emot]</div><div><br /></div><div><br /></div>', '0', '0', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('8', 'å°”ç‰¹ç‘žç‰¹', '1390555537', '1', '0', '0', '1', '0', '0', '>å„¿ç«¥>', '0', '1', '1', '1', '[img][attach]2[/attach][/img][file][attach]3[/attach][/file][img][attach]1[/attach][/img]', '0', '0', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('9', 'dsfsdfsdf', '1390555947', '1', '0', '0', '1', '0', '0', '', '0', '1', '1', '1', '<div class=\"textbox-content\">2013 æ˜¯ä¸ªç²¾å½©çš„ä¸€å¹´ï¼Œæœ¬æ¥æƒ³åšä¸€ä¸ª mini-site çºªå¿µä¸€ä¸‹ï¼Œå°é¢åƒä¸‹é¢è¿™æ ·ï¼š<br><div class=\"drop-shadow\"><p align=\"center\"><img src=\"attachment.php?fid=1357\" class=\"insertimage png-bg\" alt=\"Loading Picture...\" title=\"\" border=\"0\" data-pinit=\"registered\"></p></div><br>ä¸è¿‡æœ€è¿‘å®¶é‡Œäº‹å¤ªå¤šåªå®Œæˆäº†ä¸¤é¡µï¼Œæˆ‘å°±ç›´æŽ¥å‘åšæ–‡ç æ•°å­—å§ï¼Œè¿™ä¸€å¹´é‡Œï¼š<br><br><ul><li>å†™äº† 75 ç¯‡<a href=\"http://iconmoon.com/blog2/archive.php\">åšæ–‡</a></li><li>åˆ›å»ºäº† 1,185 ä¸ª PSD æ–‡æ¡£ã€51 ä¸ª AEP æ–‡æ¡£</li><li>åœ¨ Dribbble ä¸Šå‘äº† <a href=\"http://dribbble.com/JJYing\">12 ä¸ªä½œå“</a>ï¼Œæ”¶åˆ°äº† 86 ä¸ªå·¥ä½œé‚€è¯·</li><li>æ”¶äº† 13 ä»½ç®€åŽ†</li><li>åœ¨ Foursquare ä¸Šæ€»å…±äº† <a href=\"https://foursquare.com/jjying\">Check-in</a> äº† 477 æ¬¡</li><li>æ€»å…±çœ‹äº† 68 éƒ¨<a href=\"http://www.douban.com/people/JJ.Ying/\">ç”µå½±/ç”µè§†å‰§</a></li><li>æ€»å…±æ‹äº† 2,383 å¼ ç…§ç‰‡ï¼Œ53% æ¥è‡ªæ‰‹æœº</li><li>ä¸ªäºº+å…¬å¸æ€»å…±å†™äº† 606 å°é‚®ä»¶</li><li>åœ¨çŸ¥ä¹Žä¸Šå›žç­”äº† <a href=\"http://www.zhihu.com/people/jjying/answers?order_by=created\">107 ä¸ªé—®é¢˜</a></li><li>å‘äº† 491 æ¡å¾®åš</li></ul><br><br>å…¶å®žè¿™ä¸€å¹´è¿‡å¾—å¾ˆä¸°å¯Œï¼Œè¿œæ¯”è¿™ä¸€å †æž¯ç‡¥çš„æ•°å­—æ¥å¾—æœ‰è¶£ï¼Œåœ¨è¿™é‡Œä¹Ÿè¦è°¢è°¢å„ä½çœ‹å®˜ä¸€å¹´æ¥çš„æµè§ˆå’Œæ”¯æŒ~æ¥å¹´å¤§å®¶ä¸€èµ·ç»§ç»­åŠªåŠ›å“ˆ~</div>', '0', '0', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('12', 'ttryrtyrtyæ—¥å¿—', '1392010550', '1', '0', '0', '1', '0', '2', '', '0', '1', '1', '1', 'rttttttttttttttttttttttttttttttttttttttttt', '0', '0', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('13', 'ä½œå“', '1392010942', '1', '0', '0', '1', '0', '3', '', '0', '1', '1', '1', 'ä½œå“ä½œå“ä½œå“', '0', '0', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('14', 'ä¸‹è½½', '1392010995', '1', '0', '0', '2', '0', '4', '', '0', '1', '1', '1', 'ä¸‹è½½ä¸‹è½½ä¸‹è½½ä¸‹è½½ä¸‹è½½', '0', '0', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('15', 'æŠ€æœ¯åˆ†äº«', '1392014028', '1', '0', '0', '1', '0', '1', '', '0', '1', '1', '1', 'æŠ€æœ¯åˆ†äº«æŠ€æœ¯åˆ†äº«æŠ€æœ¯åˆ†äº«æŠ€æœ¯åˆ†äº«æŠ€æœ¯åˆ†äº«[separator]', '0', '0', 'blank', '0', '', '', '0', '', '0', '', '', '', '');
INSERT INTO `haoyabo_blogs` VALUES ('11', 'sdfdsfsdfdsf', '1390556387', '1', '7', '0', '2', '0', '0', '>dsfdsf>', '0', '0', '0', '0', '[newpage][newpage]jQuery(&quot;input[type=&#039;radio&#039;][name=&#039;radio&#039;]:checked&quot;).length == 0 ? &quot;æ²¡æœ‰ä»»ä½•å•é€‰æ¡†è¢«é€‰ä¸­&quot; : &quot;å·²ç»æœ‰é€‰ä¸­&quot;; <br/>jQuery(&#039;input[type=&quot;radio&quot;][name=&quot;radio&quot;]:checked&#039;).val(); // èŽ·å–ä¸€ç»„radioè¢«é€‰ä¸­é¡¹çš„å€¼ <br/>jQuery(&quot;input[type=&#039;radio&#039;][name=&#039;radio&#039;][value=&#039;2&#039;]&quot;).attr(&quot;checked&quot;, &quot;checked&quot;);// è®¾ç½®value = 2çš„ä¸€é¡¹ä¸ºé€‰ä¸­ <br/>jQuery(&quot;#radio2&quot;).attr(&quot;checked&quot;, &quot;checked&quot;); // è®¾ç½®id=radio2çš„ä¸€é¡¹ä¸ºé€‰ä¸­ <br/>jQuery(&quot;input[type=&#039;radio&#039;][name=&#039;radio&#039;]&quot;).get(1).checked = true; // è®¾ç½®index = 1ï¼Œå³ç¬¬äºŒé¡¹ä¸ºå½“å‰é€‰ä¸­ <br/>var isChecked = jQuery(&quot;#radio2&quot;).attr(&quot;checked&quot;);// id=radio2çš„ä¸€é¡¹å¤„äºŽé€‰ä¸­çŠ¶æ€åˆ™isChecked = true, å¦åˆ™isChecked = false; <br/>var isChecked = jQuery(&quot;input[type=&#039;radio&#039;][name=&#039;radio&#039;][value=&#039;2&#039;]&quot;).attr(&quot;checked&quot;);// value=2çš„ä¸€é¡¹å¤„äºŽé€‰ä¸­çŠ¶æ€åˆ™isChecked = true, å¦åˆ™isChecked = false; [quote]æ–‡å­—[/quote][file][attach]4[/attach][/file]<br/>jQuery(&quot;input[type=&#039;radio&#039;][name=&#039;radio&#039;]:checked&quot;).length == 0 ? &quot;æ²¡æœ‰ä»»ä½•å•é€‰æ¡†è¢«é€‰ä¸­&quot; : &quot;å·²ç»æœ‰é€‰ä¸­&quot;; <br/>jQuery(&#039;input[type=&quot;radio&quot;][name=&quot;radio&quot;]:checked&#039;).val(); // èŽ·å–ä¸€ç»„radioè¢«é€‰ä¸­é¡¹çš„å€¼ <br/>jQuery(&quot;input[type=&#039;radio&#039;][name=&#039;radio&#039;][value=&#039;2&#039;]&quot;).attr(&quot;checked&quot;, &quot;checked&quot;);// è®¾ç½®value = 2çš„ä¸€é¡¹ä¸ºé€‰ä¸­ <br/>jQuery(&quot;#radio2&quot;).attr(&quot;checked&quot;, &quot;checked&quot;); // è®¾ç½®id=radio2çš„ä¸€é¡¹ä¸ºé€‰ä¸­ <br/>jQuery(&quot;input[type=&#039;radio&#039;][name=&#039;radio&#039;]&quot;).get(1).checked = true; // è®¾ç½®index = 1ï¼Œå³ç¬¬äºŒé¡¹ä¸ºå½“å‰é€‰ä¸­ <br/>var isChecked = jQuery(&quot;#radio2&quot;).attr(&quot;checked&quot;);// id=radio2çš„ä¸€é¡¹å¤„äºŽé€‰ä¸­çŠ¶æ€åˆ™isChecked = true, å¦åˆ™isChecked = false; <br/>var isChecked = jQuery(&quot;input[type=&#039;radio&#039;][name=&#039;radio&#039;][value=&#039;2&#039;]&quot;).attr(&quot;checked&quot;);// value=2çš„ä¸€é¡¹å¤„äºŽé€‰ä¸­çŠ¶æ€åˆ™isChecked = true, å¦åˆ™isChecked = false;', '1', '1390617470', 'blank', '0', '', '', '0', '', '0', '', '', '', 'sdfsdf');

-- ----------------------------
-- Table structure for `haoyabo_calendar`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_calendar`;
CREATE TABLE `haoyabo_calendar` (
  `cyearmonth` tinytext,
  `cday` int(2) NOT NULL DEFAULT '1',
  `cid` int(8) NOT NULL DEFAULT '0',
  `cevent` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_calendar
-- ----------------------------
INSERT INTO `haoyabo_calendar` VALUES ('201401', '24', '1', '');
INSERT INTO `haoyabo_calendar` VALUES ('201401', '24', '2', '');
INSERT INTO `haoyabo_calendar` VALUES ('201401', '24', '3', '');
INSERT INTO `haoyabo_calendar` VALUES ('201401', '24', '4', '');
INSERT INTO `haoyabo_calendar` VALUES ('201401', '24', '5', '');
INSERT INTO `haoyabo_calendar` VALUES ('201401', '24', '6', '');
INSERT INTO `haoyabo_calendar` VALUES ('201401', '24', '7', '');
INSERT INTO `haoyabo_calendar` VALUES ('201401', '24', '8', '');
INSERT INTO `haoyabo_calendar` VALUES ('201401', '24', '9', '');
INSERT INTO `haoyabo_calendar` VALUES ('201401', '24', '11', '');
INSERT INTO `haoyabo_calendar` VALUES ('201402', '10', '12', '');
INSERT INTO `haoyabo_calendar` VALUES ('201402', '10', '13', '');
INSERT INTO `haoyabo_calendar` VALUES ('201402', '10', '14', '');
INSERT INTO `haoyabo_calendar` VALUES ('201402', '10', '15', '');

-- ----------------------------
-- Table structure for `haoyabo_categories`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_categories`;
CREATE TABLE `haoyabo_categories` (
  `cateid` int(3) NOT NULL DEFAULT '0',
  `catename` text,
  `catedesc` text,
  `cateproperty` int(1) NOT NULL DEFAULT '0',
  `cateorder` int(20) NOT NULL DEFAULT '0',
  `catemode` int(1) NOT NULL DEFAULT '0',
  `cateicon` tinytext,
  `cateurl` text,
  `cateurlname` varchar(100) DEFAULT NULL,
  `empty2` text,
  `empty3` text,
  KEY `cateorder` (`cateorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_categories
-- ----------------------------
INSERT INTO `haoyabo_categories` VALUES ('0', 'é»˜è®¤åˆ†ç±»', 'è¿™æ˜¯ç¨‹åºè‡ªåŠ¨åˆ›å»ºçš„åˆ†ç±»ã€‚', '0', '0', '0', '', '', '', '', '');
INSERT INTO `haoyabo_categories` VALUES ('1', 'æŠ€æœ¯åˆ†äº«', 'ä¸ªäººæŠ€æœ¯åˆ†äº«', '0', '1', '0', '', '', '', '', '');
INSERT INTO `haoyabo_categories` VALUES ('2', 'ç”Ÿæ´»æ—¥è®°', 'ç”Ÿæ´»æ—¥è®°', '0', '2', '0', '', '', '', '', '');
INSERT INTO `haoyabo_categories` VALUES ('3', 'ä¸ªäººä½œå“', 'ä¸ªäººä½œå“', '0', '3', '0', '', '', '', '', '');
INSERT INTO `haoyabo_categories` VALUES ('4', 'æ¡ˆä¾‹ä¸‹è½½', 'æ¡ˆä¾‹ä¸‹è½½', '0', '4', '0', '', '', '', '', '');
INSERT INTO `haoyabo_categories` VALUES ('5', 'å…³äºŽåšä¸»', 'å…³äºŽåšä¸»', '0', '5', '0', '', 'about.myblog.com', 'å…³äºŽåšä¸»', '', '');

-- ----------------------------
-- Table structure for `haoyabo_counter`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_counter`;
CREATE TABLE `haoyabo_counter` (
  `total` int(20) NOT NULL DEFAULT '0',
  `max` int(20) NOT NULL DEFAULT '0',
  `today` int(20) NOT NULL DEFAULT '0',
  `entries` int(20) NOT NULL DEFAULT '0',
  `replies` int(20) NOT NULL DEFAULT '0',
  `tb` int(20) NOT NULL DEFAULT '0',
  `messages` int(20) NOT NULL DEFAULT '0',
  `users` int(20) NOT NULL DEFAULT '0',
  `empty1` int(20) NOT NULL DEFAULT '0',
  `empty2` int(20) NOT NULL DEFAULT '0',
  `empty3` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_counter
-- ----------------------------
INSERT INTO `haoyabo_counter` VALUES ('2', '0', '3', '15', '26', '0', '0', '0', '1392010973', '0', '0');

-- ----------------------------
-- Table structure for `haoyabo_forbidden`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_forbidden`;
CREATE TABLE `haoyabo_forbidden` (
  `banword` text,
  `nosearch` text,
  `keep` text,
  `suspect` text,
  `banip` text,
  `empty1` text,
  `empty2` text,
  `empty3` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_forbidden
-- ----------------------------
INSERT INTO `haoyabo_forbidden` VALUES ('', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `haoyabo_history`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_history`;
CREATE TABLE `haoyabo_history` (
  `hisday` int(8) NOT NULL DEFAULT '0',
  `visit` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_history
-- ----------------------------
INSERT INTO `haoyabo_history` VALUES ('20140124', '1');
INSERT INTO `haoyabo_history` VALUES ('20140125', '1');

-- ----------------------------
-- Table structure for `haoyabo_linkgroup`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_linkgroup`;
CREATE TABLE `haoyabo_linkgroup` (
  `linkgpid` int(3) NOT NULL DEFAULT '0',
  `linkgpname` text,
  `linkgppt` int(1) NOT NULL DEFAULT '1',
  `linkgporder` int(3) NOT NULL DEFAULT '0',
  `empty1` text,
  `empty2` text,
  KEY `linkgporder` (`linkgporder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_linkgroup
-- ----------------------------
INSERT INTO `haoyabo_linkgroup` VALUES ('0', 'é»˜è®¤é“¾æŽ¥ç»„', '1', '0', '', '');

-- ----------------------------
-- Table structure for `haoyabo_links`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_links`;
CREATE TABLE `haoyabo_links` (
  `linkid` int(4) NOT NULL DEFAULT '0',
  `linkname` text,
  `linkurl` text,
  `linklogo` text,
  `linkdesc` text,
  `linkgptoid` int(3) NOT NULL DEFAULT '0',
  `linkorder` int(4) NOT NULL DEFAULT '0',
  `isdisplay` int(1) NOT NULL DEFAULT '1',
  `empty1` text,
  `empty2` text,
  KEY `linkorder` (`linkorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_links
-- ----------------------------
INSERT INTO `haoyabo_links` VALUES ('0', 'zhaasdasd', 'http://#', '', 'Bo-Blog Official Site', '0', '0', '1', '', '');
INSERT INTO `haoyabo_links` VALUES ('1', 'BMForum', 'http://#', '', 'BMForum - å¸¦ç»™æ‚¨å…¨æ–°çš„è®ºå›ä½“éªŒ', '0', '0', '1', '', '');
INSERT INTO `haoyabo_links` VALUES ('2', 'sdfsdf', 'http://#', '', '', '0', '2', '1', '', '');

-- ----------------------------
-- Table structure for `haoyabo_maxrec`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_maxrec`;
CREATE TABLE `haoyabo_maxrec` (
  `maxblogid` int(8) NOT NULL DEFAULT '0',
  `maxuserid` int(8) NOT NULL DEFAULT '0',
  `maxcateid` int(8) NOT NULL DEFAULT '0',
  `maxgpid` int(8) NOT NULL DEFAULT '0',
  `maxrepid` int(8) NOT NULL DEFAULT '0',
  `maxmessagepid` int(8) NOT NULL DEFAULT '0',
  `maxtagid` int(8) NOT NULL DEFAULT '0',
  `maxlinkgpid` int(8) NOT NULL DEFAULT '0',
  `maxlinkid` int(8) NOT NULL DEFAULT '0',
  `empty1` int(8) NOT NULL DEFAULT '0',
  `empty2` int(8) NOT NULL DEFAULT '0',
  `empty3` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_maxrec
-- ----------------------------
INSERT INTO `haoyabo_maxrec` VALUES ('15', '1', '5', '3', '27', '0', '0', '0', '2', '0', '0', '0');

-- ----------------------------
-- Table structure for `haoyabo_messages`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_messages`;
CREATE TABLE `haoyabo_messages` (
  `repid` int(10) NOT NULL DEFAULT '0',
  `reproperty` int(1) NOT NULL DEFAULT '0',
  `reptime` int(11) NOT NULL DEFAULT '0',
  `replierid` int(8) NOT NULL DEFAULT '0',
  `replier` text,
  `repemail` text,
  `repurl` text,
  `repip` text,
  `repcontent` text,
  `html` int(1) NOT NULL DEFAULT '0',
  `ubb` int(1) NOT NULL DEFAULT '1',
  `emot` int(1) NOT NULL DEFAULT '1',
  `adminrepid` int(8) NOT NULL DEFAULT '0',
  `adminreplier` text,
  `adminreptime` int(11) NOT NULL DEFAULT '0',
  `adminrepcontent` text,
  `adminrepeditorid` int(8) NOT NULL DEFAULT '0',
  `adminrepeditor` text,
  `adminrepedittime` int(11) NOT NULL DEFAULT '0',
  `reppsw` tinytext,
  `empty2` text,
  `empty3` text,
  `empty4` text,
  `empty5` text,
  `empty6` text,
  `empty7` text,
  `empty8` text,
  KEY `repid` (`repid`),
  KEY `reptime` (`reptime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_messages
-- ----------------------------

-- ----------------------------
-- Table structure for `haoyabo_mods`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_mods`;
CREATE TABLE `haoyabo_mods` (
  `position` text,
  `name` text,
  `desc` text,
  `active` int(1) NOT NULL DEFAULT '1',
  `modorder` int(5) NOT NULL,
  `func` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_mods
-- ----------------------------
INSERT INTO `haoyabo_mods` VALUES ('header', 'index', 'é¦–é¡µé“¾æŽ¥', '1', '1', 'system');
INSERT INTO `haoyabo_mods` VALUES ('header', 'customrss', 'RSSé“¾æŽ¥', '0', '2', 'system');
INSERT INTO `haoyabo_mods` VALUES ('header', 'login', 'ç™»å…¥/ç™»å‡ºé“¾æŽ¥', '0', '3', 'system');
INSERT INTO `haoyabo_mods` VALUES ('header', 'modpro', 'ç¼–è¾‘ä¸ªäººèµ„æ–™é“¾æŽ¥', '0', '4', 'system');
INSERT INTO `haoyabo_mods` VALUES ('header', 'alltags', 'æŸ¥çœ‹Tagsåˆ—è¡¨é“¾æŽ¥', '1', '5', 'system');
INSERT INTO `haoyabo_mods` VALUES ('header', 'guestbook', 'ç•™è¨€æœ¬é“¾æŽ¥', '1', '6', 'system');
INSERT INTO `haoyabo_mods` VALUES ('header', 'togglesidebar', 'å¼€å…³ä¾§è¾¹æ é“¾æŽ¥', '1', '7', 'system');
INSERT INTO `haoyabo_mods` VALUES ('header', 'starred', 'æŸ¥çœ‹å·²åŠ æ˜Ÿæ ‡æ—¥å¿—', '1', '20', 'system');
INSERT INTO `haoyabo_mods` VALUES ('sidebar', 'category', 'åˆ†ç±»åˆ—è¡¨', '1', '8', 'system');
INSERT INTO `haoyabo_mods` VALUES ('sidebar', 'calendar', 'æ—¥åŽ†', '1', '9', 'system');
INSERT INTO `haoyabo_mods` VALUES ('sidebar', 'statistics', 'ç®€æ˜“ç»Ÿè®¡æ•°æ®', '1', '10', 'system');
INSERT INTO `haoyabo_mods` VALUES ('sidebar', 'entries', 'æœ€æ–°æ—¥å¿—', '1', '11', 'system');
INSERT INTO `haoyabo_mods` VALUES ('sidebar', 'replies', 'æœ€æ–°è¯„è®º', '1', '12', 'system');
INSERT INTO `haoyabo_mods` VALUES ('sidebar', 'columnbreak', 'ä¾§è¾¹æ ä¸€ä¸Žä¾§è¾¹æ äºŒçš„åˆ†å‰²çº¿', '1', '12', 'system');
INSERT INTO `haoyabo_mods` VALUES ('sidebar', 'link', 'é“¾æŽ¥ç»„å’Œé“¾æŽ¥', '1', '13', 'system');
INSERT INTO `haoyabo_mods` VALUES ('sidebar', 'archive', 'å½’æ¡£', '1', '14', 'system');
INSERT INTO `haoyabo_mods` VALUES ('sidebar', 'misc', 'æ‚é¡¹ä¸Žå…¶å®ƒä¿¡æ¯', '0', '15', 'system');
INSERT INTO `haoyabo_mods` VALUES ('footer', 'copyright', 'ç¨‹åºç‰ˆæƒ', '1', '16', 'system');
INSERT INTO `haoyabo_mods` VALUES ('footer', 'mii', 'ä¿¡æ¯äº§ä¸šéƒ¨ç½‘ç«™å¤‡æ¡ˆå·', '0', '17', 'system');
INSERT INTO `haoyabo_mods` VALUES ('sidebar', 'announcement', 'ä¾§è¾¹å…¬å‘Šæ ', '0', '0', 'custom');
INSERT INTO `haoyabo_mods` VALUES ('header', 'viewlinks', 'æŸ¥çœ‹æ‰€æœ‰é“¾æŽ¥çš„é“¾æŽ¥', '1', '7', 'system');
INSERT INTO `haoyabo_mods` VALUES ('sidebar', 'search', 'ä¾§è¾¹æœç´¢æ¡†', '1', '10', 'system');
INSERT INTO `haoyabo_mods` VALUES ('header', 'archivelink', 'å½’æ¡£æ±‡æ€»é“¾æŽ¥', '1', '11', 'custom');

-- ----------------------------
-- Table structure for `haoyabo_pages`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_pages`;
CREATE TABLE `haoyabo_pages` (
  `pageid` int(5) NOT NULL AUTO_INCREMENT,
  `pagetitle` varchar(255) DEFAULT NULL,
  `pagecontent` text,
  `pageauthor` int(8) NOT NULL DEFAULT '0',
  `pagetime` int(11) NOT NULL DEFAULT '0',
  `pageedittime` int(11) NOT NULL DEFAULT '0',
  `closesidebar` tinyint(1) NOT NULL DEFAULT '0',
  `htmlstat` tinyint(1) NOT NULL DEFAULT '0',
  `ubbstat` tinyint(1) NOT NULL DEFAULT '0',
  `emotstat` tinyint(1) NOT NULL DEFAULT '0',
  `pagealias` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pageid`),
  KEY `pageauthor` (`pageauthor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_pages
-- ----------------------------

-- ----------------------------
-- Table structure for `haoyabo_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_plugins`;
CREATE TABLE `haoyabo_plugins` (
  `plid` tinyint(3) NOT NULL,
  `plname` tinytext NOT NULL,
  `plauthor` tinytext,
  `plintro` tinytext,
  `plversion` tinytext,
  `plauthorurl` tinytext,
  `plblogversion` tinytext NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `pladmin` tinyint(1) DEFAULT NULL,
  `plregister` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_plugins
-- ----------------------------
INSERT INTO `haoyabo_plugins` VALUES ('1', 'viewstat', 'Bob', 'æŸ¥çœ‹ã€ç®¡ç†åŽ†å²è®¿é—®è®°å½•', '1.0', 'http://www.bo-blog.com', '2.0.1', '1', '1', '');
INSERT INTO `haoyabo_plugins` VALUES ('2', 'ccunion', 'Bob', 'CC Video Union plugin for Bo-Blog.', '1.1', 'http://www.bo-blog.com', '2.0.2', '0', '1', 'ubbeditor,ubbanalyseadvance,page');

-- ----------------------------
-- Table structure for `haoyabo_replies`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_replies`;
CREATE TABLE `haoyabo_replies` (
  `repid` int(10) NOT NULL DEFAULT '0',
  `reproperty` int(1) NOT NULL DEFAULT '0',
  `blogid` int(10) NOT NULL DEFAULT '0',
  `reptime` int(11) NOT NULL DEFAULT '0',
  `replierid` int(8) NOT NULL DEFAULT '-1',
  `replier` text,
  `repemail` text,
  `repurl` text,
  `repip` text,
  `repcontent` text,
  `html` int(1) NOT NULL DEFAULT '0',
  `ubb` int(1) NOT NULL DEFAULT '1',
  `emot` int(1) NOT NULL DEFAULT '1',
  `adminrepid` int(8) NOT NULL DEFAULT '0',
  `adminreplier` text,
  `adminreptime` int(11) NOT NULL DEFAULT '0',
  `adminrepcontent` text,
  `adminrepeditorid` int(8) NOT NULL DEFAULT '0',
  `adminrepeditor` text,
  `adminrepedittime` int(11) NOT NULL DEFAULT '0',
  `reppsw` tinytext,
  `empty2` text,
  `empty3` text,
  `empty4` text,
  `empty5` text,
  `empty6` text,
  `empty7` text,
  `empty8` text,
  KEY `repid` (`repid`),
  KEY `reptime` (`reptime`),
  KEY `blogid` (`blogid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_replies
-- ----------------------------
INSERT INTO `haoyabo_replies` VALUES ('1', '0', '6', '1390555006', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', '[emot]cry[/emot][emot]love[/emot][emot]shuai[/emot]', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('2', '0', '3', '1390617859', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'uiyuityuiyui', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('3', '0', '3', '1390637437', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', '678678', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('4', '2', '2', '1390637458', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'hjkhkhkhjkhj', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('5', '0', '2', '1390637480', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', '678678678', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('6', '0', '2', '1390637580', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', '67678', '0', '1', '1', '1', 'admin', '1390706795', 'ä¸Žiyui', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('7', '0', '2', '1390637592', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', '[emot]hamarneh[/emot]', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('8', '0', '11', '1390638191', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'dfdfgdfgdgf', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('9', '0', '11', '1390638196', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'zcxzczxczxcxcz', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('10', '0', '11', '1390638362', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', '567567567', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('11', '0', '11', '1390638365', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', '[emot]hamarneh[/emot]', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('12', '0', '11', '1390638501', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', '6786786786', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('13', '0', '11', '1390638507', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'sdfsfdsfsdf', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('14', '0', '11', '1390638731', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'tryrty', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('15', '0', '7', '1390639163', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'ertretre', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('16', '0', '7', '1390639169', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'sadasdasd', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('17', '0', '7', '1390639722', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', '67867867', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('18', '0', '7', '1390639727', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'sdfsdfsdf', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('19', '0', '7', '1390639730', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'sdfsdfjsdofsdjfosdfj', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('20', '0', '6', '1390701936', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'tryrtyrty', '0', '1', '1', '1', 'admin', '1390702611', 'retret', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('21', '0', '6', '1390703648', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'å¦‚å•¼çœ¼å¦‚å•¼çœ¼è®©ä»–', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('22', '0', '2', '1390705895', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', '678678678', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('23', '0', '2', '1390705906', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'ä¸å…«ä½°ä¼´å…«ä½°ä¼´å…«ä½°ä¼´', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('24', '0', '2', '1390706096', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'å¦‚å•¼çœ¼å¦‚å•¼çœ¼çŽ©å„¿é¢å¤–çƒ­çŽ‹çƒ­èˆžçƒ­èˆžçƒ­æ±¡æŸ“çŽ©å„¿çŽ©å„¿çŽ©å„¿é¢å¤–çƒ­æ¸©çƒ­æ±¡æŸ“', '0', '1', '1', '1', 'admin', '1390706778', 'uyiyuiyu', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('25', '0', '2', '1390707030', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', 'ä¸Žiä¸Žié‡uiyiuyié¢ å€’æ˜¯éž', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('26', '0', '2', '1392010071', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', '678678678', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');
INSERT INTO `haoyabo_replies` VALUES ('27', '0', '2', '1392010375', '1', 'admin', 'admin@yourname.com', 'http://www.yourname.com', '127.0.0.1', '67867867867', '0', '1', '1', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `haoyabo_tags`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_tags`;
CREATE TABLE `haoyabo_tags` (
  `tagid` int(10) NOT NULL DEFAULT '0',
  `tagname` text,
  `tagcounter` int(8) NOT NULL DEFAULT '0',
  `tagentry` text,
  `tagrelate` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_tags
-- ----------------------------
INSERT INTO `haoyabo_tags` VALUES ('1390555537', 'å„¿ç«¥', '1', '<tag>,8,<end>', '');
INSERT INTO `haoyabo_tags` VALUES ('1390556387', 'dsfdsf', '1', '<tag>,11,<end>', '');

-- ----------------------------
-- Table structure for `haoyabo_upload`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_upload`;
CREATE TABLE `haoyabo_upload` (
  `fid` int(6) NOT NULL AUTO_INCREMENT,
  `filepath` varchar(255) DEFAULT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `dltime` int(8) NOT NULL DEFAULT '0',
  `uploadtime` int(11) DEFAULT NULL,
  `uploaduser` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_upload
-- ----------------------------
INSERT INTO `haoyabo_upload` VALUES ('1', 'attachment/1390554018_975751c8.jpg', 'QQ%E6%88%AA%E5%9B%BE20140124170011.jpg', '14', '1390554018', '1');
INSERT INTO `haoyabo_upload` VALUES ('2', 'attachment/1390555495_417151c8.jpg', 'QQ%E6%88%AA%E5%9B%BE20140124170011.jpg', '17', '1390555495', '1');
INSERT INTO `haoyabo_upload` VALUES ('3', 'attachment/1390555518_8674f613.rar', 'chouce.rar', '1', '1390555518', '1');
INSERT INTO `haoyabo_upload` VALUES ('4', 'attachment/1390617463_4235a73f.txt', 'ie6.txt', '0', '1390617463', '1');

-- ----------------------------
-- Table structure for `haoyabo_user`
-- ----------------------------
DROP TABLE IF EXISTS `haoyabo_user`;
CREATE TABLE `haoyabo_user` (
  `userid` int(8) NOT NULL DEFAULT '0',
  `username` text,
  `userpsw` text,
  `regtime` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(2) NOT NULL DEFAULT '0',
  `email` text,
  `homepage` text,
  `qq` int(20) NOT NULL DEFAULT '0',
  `msn` text,
  `intro` text,
  `gender` int(1) NOT NULL DEFAULT '0',
  `skype` text,
  `fromplace` text,
  `birthday` int(11) NOT NULL DEFAULT '0',
  `regip` text,
  `avatar` text,
  KEY `userid` (`userid`),
  KEY `usergroup` (`usergroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of haoyabo_user
-- ----------------------------
INSERT INTO `haoyabo_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1390531113', '2', 'admin@yourname.com', 'http://www.yourname.com', '0', '', '', '0', '', '', '0', '127.0.0.1', '');
