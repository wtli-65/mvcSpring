<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="../js/aggsites.js">123</script>
<link rel="stylesheet" type="text/css" href="../css/cnblogs-index.css">
<meta charset="UTF-8">
<title>博客园 - 开发者的网上家园</title>
</head>
<body>
	<div id="wrapper">
		<!-- hd_info块 -->
		<div id="hd_info">
			<div id="cnts">
                <div id="site_nav_top">代码改变世界</div>
                <div id="login_area"><span id="span_userinfo">
                	<% if(request.getAttribute("UserName")==null){ %>
	                	<a href="#" onclick="login();return false">登录</a>
		                <a href="#" onclick="register();return false">注册</a>
                	<%}else{ %>
	                <a href="#" onclick="login();return false">${requestScope.UserName}</a>
	                <a href="#" onclick="register();return false">${requestScope.Info}</a>
	                <%} %>
                </span></div>
                <div class="clear"></div>
            </div>
		</div>
		<!-- header块 -->
		<div id="header">
			 <p class="h_r_3"></p><p class="h_r_2"></p><p class="h_r_1"></p>
            <div id="header_block">
                <div id="logo">
                    <h1>
                        <a href="https://www.cnblogs.com/" title="开发者的网上家园"><img src="../images/logo_small.gif" alt="博客园Logo" width="142" height="55" /></a>
                    </h1>
                </div>

                <div class="clear"></div>
            </div>
            <p class="h_r_1"></p><p class="h_r_2"></p><p class="h_r_3"></p>
		</div>
		<!-- nav_menu块 -->
		<div id="nav_menu">
			<a href="https://home.cnblogs.com/">园子</a>
			<a href="https://news.cnblogs.com/">新闻</a>
			<a href="https://q.cnblogs.com/">博问</a>
			<a href="https://ing.cnblogs.com/">闪存</a>
			<a href="https://group.cnblogs.com/">小组</a>
			<a href="https://wz.cnblogs.com/">收藏</a>
			<a href="https://job.cnblogs.com/">招聘</a>
			<a href="http://kb.cnblogs.com/">知识库</a>
			<a href="http://zzk.cnblogs.com/">找找看</a>
		</div>
		<!-- main块 -->
		<div id="main">
			<div class="post_nav_block_wrapper">
				<ul class="post_nav_block">
                        <li><a href="./" onclick="addClassAttribute(this)">首页</a></li>
                        <li><a href="/pick" title="编辑精选博文" target="postList">精华</a></li>
                        <li><a href="/candidate/" onclick="addClassAttribute(this)" title="候选区的博文">候选</a></li>
                        <li><a href="/news/" onclick="addClassAttribute(this)" title="新闻频道最新新闻">新闻</a></li>
                        <li><a href="/following" onclick="addClassAttribute(this)" title="我关注博客的最新博文">关注</a></li>
                        <li><a href="/aggsite/mycommented" onclick="addClassAttribute(this)"  title="我评论过的博文">我评</a></li>
                        <li><a href="/aggsite/mydigged" onclick="addClassAttribute(this)" title="我推荐过的博文">我赞</a></li>
                </ul>
                <div class="clear"></div>
			</div>
			<iframe name="postList" rollback="auto" width="100%" height="100%">
				
			</iframe>
			<div id="pager_bottom">
				<div id="paging_block">
					<div class="pager"><a href="/" class="p_1 current" onclick="aggSite.loadCategoryPostList(1,20);buildPaging(1);return false;">1</a>
						<a href="/sitehome/p/2" class="p_2 middle" onclick="aggSite.loadCategoryPostList(2,20);buildPaging(2);return false;">2</a>
						<a href="/sitehome/p/3" class="p_3 middle" onclick="aggSite.loadCategoryPostList(3,20);buildPaging(3);return false;">3</a>
						<a href="/sitehome/p/4" class="p_4 middle" onclick="aggSite.loadCategoryPostList(4,20);buildPaging(4);return false;">4</a>
						<a href="/sitehome/p/5" class="p_5 middle" onclick="aggSite.loadCategoryPostList(5,20);buildPaging(5);return false;">5</a>
						<a href="/sitehome/p/6" class="p_6 middle" onclick="aggSite.loadCategoryPostList(6,20);buildPaging(6);return false;">6</a>
						<a href="/sitehome/p/7" class="p_7 middle" onclick="aggSite.loadCategoryPostList(7,20);buildPaging(7);return false;">7</a>
						<a href="/sitehome/p/8" class="p_8 middle" onclick="aggSite.loadCategoryPostList(8,20);buildPaging(8);return false;">8</a>
						<a href="/sitehome/p/9" class="p_9 middle" onclick="aggSite.loadCategoryPostList(9,20);buildPaging(9);return false;">9</a>
						<a href="/sitehome/p/10" class="p_10 middle" onclick="aggSite.loadCategoryPostList(10,20);buildPaging(10);return false;">10</a>
						<a href="/sitehome/p/11" class="p_11 middle" onclick="aggSite.loadCategoryPostList(11,20);buildPaging(11);return false;">11</a>
						<span class="ellipsis">···</span>
						<a href="/sitehome/p/200" class="p_200 last" onclick="aggSite.loadCategoryPostList(200,20);buildPaging(200);return false;">200</a>
						<a href="/sitehome/p/2" onclick="aggSite.loadCategoryPostList(2,20);buildPaging(2);return false;">Next &gt;</a>
					</div>
				</div>
			</div>
			<div id="side_nav">
				<div id="cate_title_block">
					<div id="cate_title_title"><div class="cate_title">网站分类</div></div>
					<ul id="cate_item">
					<li id="cate_item_108698" onmouseover="cateShow(108698)" onmouseout="cateHidden(108698)">
					<a href="/cate/108698/">.NET技术(2)</a>
					</li>
					<li id="cate_item_2" onmouseover="cateShow(2)" onmouseout="cateHidden(2)">
					<a href="/cate/2/">编程语言(9)</a>
					</li>
					<li id="cate_item_108701" onmouseover="cateShow(108701)" onmouseout="cateHidden(108701)">
					<a href="/cate/108701/">软件设计(0)</a>
					</li>
					<li id="cate_item_108703" onmouseover="cateShow(108703)" onmouseout="cateHidden(108703)">
					<a href="/cate/108703/">Web前端(1)</a>
					</li>
					<li id="cate_item_108704" onmouseover="cateShow(108704)" onmouseout="cateHidden(108704)">
					<a href="/cate/108704/">企业信息化(0)</a>
					</li>
					<li id="cate_item_108705" onmouseover="cateShow(108705)" onmouseout="cateHidden(108705)">
					<a href="/cate/108705/">手机开发(0)</a>
					</li>
					<li id="cate_item_108709" onmouseover="cateShow(108709)" onmouseout="cateHidden(108709)">
					<a href="/cate/108709/">软件工程(0)</a>
					</li>
					<li id="cate_item_108712" onmouseover="cateShow(108712)" onmouseout="cateHidden(108712)">
					<a href="/cate/108712/">数据库技术(1)</a>
					</li>
					<li id="cate_item_108724" onmouseover="cateShow(108724)" onmouseout="cateHidden(108724)">
					<a href="/cate/108724/">操作系统(1)</a>
					</li>
					<li id="cate_item_4" onmouseover="cateShow(4)" onmouseout="cateHidden(4)">
					<a href="/cate/4/">其他分类(4)</a>
					</li>
					<li id="cate_item_0" onmouseover="cateShow(0)" onmouseout="cateHidden(0)">
					<a href="/cate/all/">所有随笔(251)</a>
					</li>
					<li id="cate_item_-1" onmouseover="cateShow(-1)" onmouseout="cateHidden(-1)">
					<a href="/comment/">所有评论(73)</a>
					</li>
					</ul>
					<div class="cate_bottom"></div>
					
					<div class="l_s"></div>
				</div>
				<p class="r_l_3"></p><p class="r_l_2"></p><p class="r_l_1"></p>
				<div class="w_l">
					<h4>链接</h4>        
					<ul>
					    <li><a href="http://space.cnblogs.com/forum/public" target="_blank">反馈或建议</a></li> 
					    <li><a href="http://www.cnblogs.com/cmt/" target="_blank">官方博客</a></li>
					    <li><a href="/skins.aspx" target="_blank">博客模板</a></li>
					    <li><a href="http://www.blogjava.net/">Java博客</a></li>
					    <li><a href="http://www.cppblog.com/">C++博客</a></li>
					    <li><a href="http://www.cnblogs.com/cmt/archive/2009/09/26/1574616.html">手机版</a></li>
					</ul>
				</div>
				<div class="l_s"></div>
				<div id="user_stats">
					<p class="r_l_3"></p><p class="r_l_2"></p><p class="r_l_1"></p>
					<div class="w_l"></div>
					<div class="w_l"></div>
					<div class="w_l"></div>
				</div>
				<div class="l_s"></div>
				<p class="r_l_3"></p><p class="r_l_2"></p><p class="r_l_1"></p>
				<div class="w_l">
					<div id="site_stats"></div>      
				</div>
				<p class="r_l_1"></p><p class="r_l_2"></p><p class="r_l_3"></p>
			</div>
			<div id="side_right">
				<div id="search_block">
                        <div class="side_search">
                            <input type="text" id="zzk_q" class="search_input" onkeydown="return zzk_go_enter(event);" tabindex="3" /><input onclick="zzk_go()" type="button" class="search_btn" value="找找看" />
                        </div>
                        <div id="google_search" class="side_search">
                            <input type="text" id="google_search_q" class="search_input" onkeydown="return google_search_enter(event);" /><input type="button" value="Google" class="search_btn" onclick="return google_search();" />
                        </div>
                    </div>
                <div id="banner_right"></div>                                           
                <div id="ad_b1" class="ad_right"></div>
                <div id="ad_right_text" class="ad_right_text"></div>
                <div id="side_right_block"></div>
			</div>
		</div>
		<!-- footer块 -->
		<div id="footer"></div>
			<div class="footer_block">
                <p class="r_b_3"></p><p class="r_b_2"></p><p class="r_b_1"></p>
                <div id="friend_link">
					友情链接：<a href="http://click.aliyun.com/m/994/" target="_blank"><img src="../images/aliyun.png" alt="阿里云" /></a>
					<a href="http://www.hujiang.com" target="_blank">沪江网</a>
					<a href="http://www.chinaz.com/" target="_blank">站长之家</a>
					<a href="http://dev.yesky.com" target="_blank">天极网</a>
					<a href="http://down.admin5.com" target="_blank">A5源码下载</a>
					<a href="http://www.gcpowertools.com.cn" target="_blank">葡萄城控件</a>
					<a href="https://www.upyun.com/?md=cnblogs" target="_blank">又拍云存储</a>
					<a href="http://zt.cnblogs.com/tingyun/" target="_blank">听云APP</a>
					<a href="http://www.rongcloud.cn/" target="_blank">融云IM云</a>
					<a href="http://www.hightopo.com/cn-index.html" target="_blank">图扑软件</a>
					<a href="https://yq.aliyun.com/" target="_blank">阿里云栖社区</a>
					<a href="http://www.cnblogs.com/mipengine/" target="_blank">百度MIP博客</a>
					<a href="http://www.easemob.com" target="_blank">环信IM</a>
					</div><p class="r_b_1"></p><p class="r_b_2"></p><p class="r_b_3"></p>
            </div>
		<!-- footer_bottom块 -->	
		<div id="footer_bottom">
			<div><a href="/AboutUS.aspx">关于博客园</a><a href="/ContactUs.aspx">联系我们</a>&copy;2004-2017<a href="http://www.cnblogs.com/">博客园</a>保留所有权利<a href="http://www.miitbeian.gov.cn" target="_blank">沪ICP备09004260号</a></div>
            <div><a href="https://ss.knet.cn/verifyseal.dll?sn=e131108110100433392itm000000&amp;ct=df&amp;a=1&amp;pa=0.25787803245785335" rel="nofollow" target="_blank"><img id="cnnic_img" src="../images/cnnic.png" alt="" width="64" height="23" /></a><a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31011502001144" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="../images/ghs.png" alt="" /><span style="float:left;height:20px;line-height:20px;margin: 0 5px 0 5px; color:#939393;">沪公网安备 31011502001144号</span></a></div>
		</div>
	</div>
</body>
</html>