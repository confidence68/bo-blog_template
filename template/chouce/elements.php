<?PHP
$elements['header']=<<<eot
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="{language}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Language" content="UTF-8" />
<meta content="all" name="robots" />
<meta name="author" content="{blogname}" />
<meta name="description" content="{blogdesc}" />
<meta name="keywords" content="{blogkeywords}" />
{baseurl}
<link rel="alternate" title="{blogname}" href="feed.php" type="application/rss+xml" />
{csslocation}
<title>{pagetitle}{blogname} - {blogdesc}</title>
<script type="text/javascript" src="images/js/common.js?jsver={codeversion}"></script>
{ajax_js}
{extraheader}
</head>
<body id="{pageID}">
eot;

$elements['displayheader']=<<<eot
<div id="header-mask"></div>
    <div id="header" class="">
                        <div id="inner-header">

                                <div id="logo">
                                        <a href="/" class="logo" title="博雅苑首页"><h1><strong>博雅苑</strong></h1></a>
                                </div>

                                <div id="nav">
                                           <ul>
                                            <li><a href="index.php?go=category_1" title="技术分享" class="nav-webpick"><i class="iconfont">&#340;</i>技术分享</a></li>
                                            <li><a href="index.php?go=category_2" title="生活中的点滴" class="nav-diary"><i class="iconfont">&#236;</i>生活日记</a></li>
                                            <li><a href="index.php?go=category_3" title="我的设计作品" class="nav-works"><i class="iconfont">&#119;</i>个人作品</a></li>
                                             <li><a href="index.php?go=category_4" title="经典web前端案例下载" class="nav-works"><i class="iconfont">&#329;</i>案例下载</a></li>
                                            <li class="mobile-hide"><a href="http://about.haorooms.com" title="关于我" class="nav-about"><i class="iconfont">&#250;</i>关于博主</a></li>
                                        </ul>
                                </div>
                        </div>
    </div>

eot;

$elements['mainpage']=<<<eot
        <div id="wrapper">
         <div id="innerWrapper">
		<div id="mainWrapper">
			<div id="content" class="content">
				<div id="innerContent">
					<!-- div class="announce" style="display: {ifannouncement}">
						<div class="announce-content">
						{topannounce}
						</div -->
					</div>
					<div class="article-top" style="display: {iftoppage}">
						<div class="pages">
							{pagebar}
						</div>
					</div>
					{mainpart}
					<div class="article-bottom" style="display: {ifbottompage}">
						<div class="pages">
							{pagebar}
						</div>
					</div>
				</div>
			</div>
           </div>
        </div>
eot;

$elements['displayside']=<<<eot
                <div id="wrapper">
         <div id="innerWrapper">
		<div id="mainWrapper">
		<div id="sidebar" class="sidebar">
			<div id="innerSidebar">
				<!--div id="innerSidebarSearch">
				<global:{block_search}>
				</div -->
                <div id="blog-side-cate" class="panel"> 
                    <div class="panel-content">
        
                    </div> 
                </div>
                 <div class="clear"></div>
                    <div id="blog-side-about">
                           博雅苑是 <a href="#" title="关于我">Aaron</a> 的个人博客，内容包括技术分享和我的生活，平时我经常出没于 <a href="http://weibo.com/babygeili" title="我的新浪微博">新浪微博</a>、<a href="http://hi.baidu.com/confidence68" title="我的 百度个人中心 页面">百度</a> 和<a href="http://www.zhihu.com/people/haorooms" title="我的知乎页面">知乎</a>。<br><br>浏览过往博文请移步<a href="archive.php">归档页</a>，本博客所有内容若需转载请<a href="mailto:haoyabo2009@163.com" title="我的电子邮件">联系我</a>。
                    </div>
               <div class="clear"></div>
				<div id="innerSidebarOne">
					{section_side_components_one}
        					{section_side_components_two}
				</div>

			</div>
		</div>
        			</div>
           </div>
        </div>
eot;

$elements['otherpage']=<<<eot
		<div id="mainWrapper">
			<div id="content" class="content">
				<div id="innerContent">
					<div class="formbox">
						{mainpart}
					</div>
				</div>
			</div>
eot;

$elements['displayfooter']=<<<eot
	</div>
		<div id="footer">
		     	<div id="innerSidebarFooter">
				<span style="color:#20558a;">我的: &nbsp;&nbsp;&nbsp;</span><a href="#" target="_blank">关于页面</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="http://weibo.com/babygeili" target="_blank">新浪微博</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                                                                                    <a href="http://hi.baidu.com/confidence68" target="_blank">百度空间</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="http://www.zhihu.com/people/haorooms" target="_blank">知乎</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                                                                                    <a href="http://hi.nipic.com/confidence68/" target="_blank">昵图网</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="https://github.com/confidence68" target="_blank">github</a>
				<div id="processtime">
				</div>
				</div>
		</div>
	</div>
</div>
eot;

$elements['footer']=<<<eot
<script type="text/javascript">
loadSidebar();
</script>
</body>
</html>
eot;

$elements['displayall']=<<<eot
{headerhtml}
{headmenu}
{bodymenu}
{sidemenu}
{footmenu}
{footerhtml}
eot;

$elements['msgbox']=<<<eot
<div class="tips">Tips:<br/>{message}</div>
eot;

$elements['sideblock']=<<<eot
<div class="panel">
<h5 >{title}</h5>
<div class="panel-content" id="sidebar_{id}" style="display: {ifextend}">
{content}
</div>
</div>
eot;

$elements['sideblock_category']=<<<eot
<!-- div id='panelCategory' class="panel">
<h5 style="cursor: pointer" onclick='showhidediv("sideblock_category");'>{title}</h5>
<div class="panel-content" id="sideblock_category" style="display: {ifextend}">
{content}
</div>
</div -->
eot;

$elements['sideblock_search']='';

$elements['excerpt']=<<<eot
<div class="textbox">
	<!-- div class="textbox-calendar">
	<span class="textbox-calendar-month">{entrydatemnameshort}</span>
	<span class="textbox-calendar-day">{entrydated}</span>
	</div -->
	<div class="textbox-title">
		<h2>
		{entrytitle} {entrystar} {entryicon}
		</h2>
		<!-- div class="textbox-label">
		{entryauthor} , {entrytime} , {entrycate} , {entrycomment} , {entrytb} , {entryviews} , Via {entrysourcewithlink} {ifadmin}
		</div -->
	</div>
	{tbbar}
	{adminbar}
	<div class="textbox-content">
	{entrycontent}
	</div>
	<div class="textbox-bottom">
	</div>
	<div class="tags" style="display: {iftags}">{tags} {alltags}
	</div>
</div>
eot;

$elements['excerptontop']=<<<eot
<div class="textbox">
	<div class="textbox-calendar">
	<span class="textbox-calendar-month">{entrydatemnameshort}</span>
	<span class="textbox-calendar-day">{entrydated}</span>
	</div>
	<div class="textbox-title">
		<h4>
		[{$lnc[33]}] <a href="javascript: showhidediv('{topid}');">{entrytitletext}</a> {entrystar} {entryicon}
		</h4>
		<div class="textbox-label">
		{entryauthor} , {entrytime} , {entrycate} , {entrycomment} , {entrytb} , {entryviews} , Via {entrysourcewithlink} {ifadmin}
		</div>
	</div>
	{tbbar}
	{adminbar}
	<div id="{topid}" style="display: none;">
	<div class="textbox-content">
	{entrycontent}
	</div>
	<div class="textbox-bottom">
	</div>
	<div class="tags" style="display: {iftags}"> {tags} {alltags}
	</div>
	</div>
	<div class="textbox-top"></div>
</div>
eot;

$elements['viewentry']=<<<eot
<!-- div class="article-top">
	<div class="prev-article">{previous}</div>
	<div class="next-article">{next}</div>
</div -->
<div class="textbox">
	<!-- div class="textbox-calendar">
	<span class="textbox-calendar-month">{entrydatemnameshort}</span>
	<span class="textbox-calendar-day">{entrydated}</span>
	</div -->
	<div class="textbox-title">
		<h2>
		{entrytitletext} {entrystar} {entryicon} 
		</h2>
		<!--div class="textbox-label">
		 {entryauthor} , {entrytime} , {entrycate} , {entrycomment} , {entrytb} , {entryviews} ,  Via {entrysourcewithlink} {ifadmin}<span class="text-label-indented">{toolbar}</span>
		</div-->
	</div>
	{tbbar}
	{adminbar}
	<div class="textbox-content" id="zoomtext">
	 	{entrycontent} {ifedited}
	</div>
	<div class="textbox-bottom">
	</div>
	<div class="tags" style="display: {iftags}"> {tags} {alltags}
	</div>
</div>
<div id="commentWrapper" class="comment-wrapper">
	<a name="topreply"></a>
	<div id="addnew"></div>
eot;


$elements['list']=<<<eot
	<tr>
		<td class="listbox-entry">
			[{entrycate}] {entrytitle}
		</td>
		<td class="listbox-entry" style="word-break: normal;" align="center">{entryauthor}</td>
		<td class="listbox-entry bordrts" width="70" align="center">{entrydate}</td>
	</tr>
eot;

$elements['listbody']=<<<eot
<div class="listbox">
	<div class="listbox-table">
	<table cellpadding="2" cellspacing="0" width="100%">
	<tr>
		<td class="listbox-header" align="center">
			{$lnc[237]}
		</td>
		<td class="listbox-header" style="word-break: normal;" align="center">{$lnc[238]}</td>
		<td class="listbox-header" width="70" align="center">{$lnc[239]}</td>
	</tr>
	{listbody}
	</table>
	</div>
</div>
eot;

$elements['comment']=<<<eot
	<div class="commentbox commentbox-{oddorcouplecss}">
		<div class="commentbox-title">
		{replier}
		</div>
		<div class="commentbox-content">
			<p>{replycontent}</p>
			<div class="quote bgcolor" style="display: {ifadminreplied}"  id="replied_{commentid}">
				<div class="quote-content">{adminreplycontent}</div>
                                                                                  <div class="quote-title othertitles">{adminrepliershow}</div>
			</div>
		</div>
                                         <div class="commentbox-label">{replytime} {addadminreply} {deladminreply} {delreply} {blockreply}</div>
		<div id="{commentid}" style="display: none">{adminreplybody}
		</div>
	</div>
eot;

$elements['trackback']=<<<eot
	<div class="trackbackbox">
		<div class="trackbackbox-title">
		 {tbtitle} 
			<div class="trackbackbox-label">
			[{tbtime}] {delreply}
			</div>
		</div>
		<div class="trackbackbox-content">
		 {$lnc[240]}<a href="{tburl}" target="_blank">{tbblogname}</a><br/>
		 {$lnc[76]}{tbcontent}
		</div>
	</div>
eot;


$elements['form_reply']=<<<eot
	<a name="reply"></a>
	<div id="commentForm">
		<form name="visitorinput" id="visitorinput" method="post" action="javascript: ajax_submit('{jobnow}');">
		<table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" class="formbox-comment">
			<tr>
				<td  class="formbox-comment-title" colspan="2"><span font-size:1em;font-weight:bold;>{formtitle}</span>
                                                                                  &nbsp;   &nbsp;
                                                                                  <span style="padding-bottom:5px" class="font_sz">
                                                                                               {if_neednopsw_begin}
                                                                                               {$lnc[246]} <input name="v_replier" id="v_replier" type="text" size="12" class="text" value="{replier}" {disable_replier}/>&nbsp;
                                                                                                {$lnc[133]} <input name="v_password" id="v_password" type="password" size="12" class="text"  value="{password}" {disable_password}/>&nbsp; {$lnc[247]} 
                                                                                               <br/>
                                                                                               {$lnc[170]} <input name="v_repurl" id="v_repurl" type="text" size="12" class="text" value="{repurl}" />&nbsp;
                                                                                               {$lnc[248]} <input name="v_repemail" id="v_repemail" type="text" size="12" class="text"  value="{repemail}" />&nbsp; {if_neednopsw_end}{additional}
                                                                                               </span
                                                                               </td>
			</tr>
			<tr>
				<td class="formbox-comment-rowheader"  valign="top">
					<div class="panel-smilies" style="display:none;">
						<div class="panel-smilies-title">{$lnc[241]}</div>
							<div class="panel-smilies-content">
								{emots}
							</div>
						</div>
						<div style="text-align: left;display:none;">
							<input name="stat_html" id="stat_html" type="checkbox" value="1" {disable_html} /> {$lnc[242]}<br />
							<input name="stat_ubb" id="stat_ubb" type="checkbox" value="1" {disable_ubb} /> {$lnc[243]}<br />
							<input name="stat_emot" id="stat_emot" type="checkbox" value="1" {disable_emot} /> {$lnc[244]}<br />
							<input name="stat_property" id="stat_property" type="checkbox" value="1" onclick="promptreppsw();"/> {$lnc[245]}
							{if_neednopsw_begin}<br />
							<input name="stat_rememberme" id="stat_rememberme" type="checkbox" value="1" {checked_rememberme} onclick="quickremember();"/>  {$lnc[284]} {if_neednopsw_rawend}
						</div>
				</td>
				<td class="formbox-comment-content" valign="top"></td>
			</tr>
                                                        <tr>
                                                           <td colspan=2>
                                                                    {ubbcode}
                                                                    {if_securitycode_begin}<script type="text/javascript">securitycodejs="{$lnc[249]} <span id='securityimagearea'><img src='inc/securitycode.php?rand={rand}' alt='' title='{$lnc[250]}'/></span> <input name='v_security' id='v_security' type='text' size='4' maxlength='4' class='text' /> {$lnc[251]}   [<a href=\"javascript: refreshsecuritycode('securityimagearea', 'v_security');\">{$lnc[283]}</a>]";</script>  {if_securitycode_end}
                                                                                                              <div class="ds-textarea-wrapper ds-rounded-top">
                                                                    <textarea name="v_content" id="v_content" class="comment_cont" cols="44" rows="10" placeholder="说点什么吧…" onkeydown="ctrlenterkey(event);" onfocus="if (securitycodejs!=null) {document.getElementById('showsecuritycode').innerHTML=securitycodejs; securitycodejs=null;}"></textarea> </div>	<span id="showsecuritycode"></span>
                                                                    <div style="padding-top:10px;padding-left:1em;">
                                                                    {hidden_areas}
                                                                            <input type="button" name="btnSubmit" id="btnSubmit" value="{$lnc[25]}" class="button" onclick="ajax_submit('{jobnow}'); return false;"/>&nbsp;
                                                                            <input name="reset" id="reset" type="reset" value="{$lnc[252]}" class="button" />
                                                                    </div>
                                                            </td>
                                                        
                                                        </tr>
		</table>
		</form>
	</div>
eot;

$elements['endviewentry']=<<<eot
	<div class="comment-pages">
	{innerpages}
	</div>
</div>
{form_reply}
eot;

$elements['entryadditional']=<<<eot
<div style="margin-top: 9px;">
<img src="{$template['images']}/readmore.gif" alt=""/>{readmore}
</div>
eot;

$elements['login']=<<<eot
<form name="register" method="post" action="login.php?job=verify">
<table cellspacing="1" width="500px" align="center" class="formbox">
  <tr><td class="formbox-title" colspan="2">{$lnc[253]} [<a href="login.php?job=register">{$lnc[254]}</a>]</td></tr>
  <tr>
    <td class="formbox-rowheader">{$lnc[132]}</td>
    <td class="formbox-content"><input name="username" type="text" id="username" size="24" class="text" />
  </tr>
  <tr>
    <td class="formbox-rowheader">{$lnc[133]}</td>
    <td class="formbox-content"><input name="password" type="password" id="password" size="16" class="text" />
  </tr>
  <tr>
    <td class="formbox-rowheader">{$lnc[255]}</td>
    <td class="formbox-content"><input name="savecookie" type="radio" id="savecookie" value="0"/>{$lnc[256]} <input name="savecookie" type="radio" id="savecookie" value="3600"/>{$lnc[257]} <input name="savecookie" type="radio" id="savecookie" value="86400"/>{$lnc[258]}  <input name="savecookie" type="radio" id="savecookie" value="604800"/>{$lnc[259]}  <input name="savecookie" type="radio" id="savecookie" value="2592000"/>{$lnc[260]}   <input name="savecookie" type="radio" id="savecookie" value="31104000"/>{$lnc[261]}   
  </tr>
  {lvstart}
  <tr>
    <td class="formbox-rowheader">{$lnc[249]}</td>
    <td class="formbox-content"><span id='securityimagearea'><img src="inc/securitycode.php?rand={rand}" alt="" title="{$lnc[250]}"/></span> <input name="securitycode" type="text" id="securitycode" size="16" class="text" /> {$lnc[251]}  [<a href="javascript: refreshsecuritycode('securityimagearea', 'securitycode');">{$lnc[283]}</a>]
  </tr>
  {lvend}
  <tr>
    <td class="formbox-content"></td>
    <td class="formbox-content">
    <input name="Submit" type="submit" id="Submit" value="{$lnc[25]}" class="button" /> &nbsp;
    <input name="Reset" type="reset" id="Reset" value="{$lnc[252]}" class="button" />
    </td>
  </tr>
</table>
</form>
eot;

$elements['contentpage']=<<<eot
<div class="pagebox-title"><h4>{title}</h4></div>
<div class="pagebox-content">
{contentbody}
</div>
eot;

$elements['taglist']=<<<eot
<table width="98%" align="center" cellpadding="4" cellspacing="0">
<tr><td>{tagcategory}</td></tr>
<tr><td style="word-break: none; word-wrap: break-word;">{tagcontent}</td></tr>
<tr><td>{tagextra}</td></tr>
</table>
<br/><br/>
eot;

$elements['register']=<<<eot
<form name="register" method="post" action="{job}">
<table cellspacing="1" width="500px" align="center" class="formbox">
  <tr><td class="formbox-title" colspan="2">{title} {$lnc[262]}</td></tr>
  {registerbody}
  <tr><td colspan="2" align="center"><input type="submit" value="{$lnc[25]}" class="button"/> <input type="reset" value="{$lnc[252]}" class="button"/></td></tr>
</table>
</form>
eot;

$elements['normaltable']=<<<eot
<table cellspacing="0" width="500px" align="center" class="formbox">
  {tablebody}
</table>
eot;

$elements['normaltablewithtitle']=<<<eot
<table cellspacing="0" width="500px" align="center" class="formbox">
  <tr><td class="formbox-title" colspan="6">{title}</td></tr>
  {tablebody}
</table>
eot;

$elements['form_eachline']=<<<eot
  <tr>
    <td class="formbox-rowheader">{text}</td>
    <td class="formbox-content">{formelement}</td>
  </tr>
eot;

$elements['eachlink']=<<<eot
<div class="linkbody">
<div class="linkimg">{logo}</div>
<div class="linktxt"><span class="linktitle">{title}</span><br/>
<span class="linkdesc">{desc}</span></div>
</div>
eot;

$elements['linkdiv']=<<<eot
<div class="linkover">
<div class="linkgroup">{title}</div>
<div class="linkgroupcontent">{tablebody}</div>
</div>
eot;

$elements['viewpage']=<<<eot
<div class="pagebox">
	<div class="pagebox-title">
		<h4>
		{entrytitle}
		</h4>
	</div>
	<div class="pagebox-content">
		{entrycontent}
	</div>
</div>
eot;


//Message page
$elements['tips']=<<<eot
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="{language}" style=" background-color:#e9e9e9;border-top: 5px solid #022e79;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Language" content="UTF-8" />
{csslocation}
<title>{blogname} - {blogdesc}</title>
<script type="text/javascript" src="images/js/common.js"></script>
</head>
<body id="messagebox">
<center>
<div class="messagebox textbox">
  <h3>{title}</h3>
  <div class="messagebox-content">
  {tips}
  </div>
  <div class="messagebox-bottom"><a href="javascript: window.history.back();">{$lnc[263]}</a> | <a href="index.php">{$lnc[88]}</a> {admin_plus}</div>
</div>
</center>
</div>
</body>
</html>
eot;
?>