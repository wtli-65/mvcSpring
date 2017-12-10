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
                        <li><a href="../html/articlelist.html" onclick="addClassAttribute(this)" target="postList">首页</a></li>
                        <li><a href="https://www.sogou.com/tx?query=%E7%9F%A5%E4%B9%8E&hdq=sogou-site-c91e3483cf4f9005-0001&ekv=3&sourceid=sugg&ie=utf8&" title="编辑精选博文" onclick="addClassAttribute(this)" target="postList">精华</a></li>
                        <li><a href="/candidate/" onclick="addClassAttribute(this)" title="候选区的博文">候选</a></li>
                        <li><a href="/news/" onclick="addClassAttribute(this)" title="新闻频道最新新闻">新闻</a></li>
                        <li><a href="/following" onclick="addClassAttribute(this)" title="我关注博客的最新博文">关注</a></li>
                        <li><a href="/aggsite/mycommented" onclick="addClassAttribute(this)"  title="我评论过的博文">我评</a></li>
                        <li><a href="/aggsite/mydigged" onclick="addClassAttribute(this)" title="我推荐过的博文">我赞</a></li>
                </ul>
                <div class="clear"></div>
			</div>
			<iframe name="postList" frameborder="0" rollback="auto" width="100%" height="700px">
			
			</iframe>
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
		
	</div>
</body>
</html>