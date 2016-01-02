<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
        content="initial-scale=1, width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <link rel="shortcut icon" href="/work/yaowan/Public/images/logo.jpg"/>
    <link rel="stylesheet" type="text/css" href="/work/yaowan/Public/css/common.css">
    <link rel="stylesheet" type="text/css" href="/work/yaowan/Public/css/style.css">
    <link rel="stylesheet" type="text/css" href="/work/yaowan/Public/css/fontstyle.css">

	<title>新闻资讯--news</title>
</head>
<body>
	<!--moblie-nav begin-->
<div class="mobile-nav">
	<ul class="menu">
		<li><a href="<?php echo U('index/index');?>">首页</a></li>
		<li><a href="<?php echo U('about/index');?>">关于我们</a></li>
		<li><a class="active" href="<?php echo U('newsList/index');?>">新闻资讯</a></li>
		<li><a href="<?php echo U('manager/index');?>">中国合伙人</a></li>
		<li><a href="<?php echo U('join/index');?>">加入家族</a></li>
		<li><a href="<?php echo U('contact/index');?>">联系我们</a></li>
		<li><a href="http://www.9game.cn/" target="_blank">九游网</a></li>
	</ul>					
</div>
<!--mobile-nav end-->

<!--header beign-->
<div class="header">
	<div class="wrapper">
		<div class="main">
			<a  class = "logo" href="index.html"><i class = "green">Yao</i>wan</a>
			<strong></strong>
			<div class="nav">
				<ul class="menu">
					<li><a href="<?php echo U('index/index');?>">首页</a></li>
					<li><a href="<?php echo U('about/index');?>">关于我们</a></li>
					<li><a class="active" href="<?php echo U('newsList/index');?>">新闻资讯</a></li>
					<li><a href="<?php echo U('manager/index');?>">中国合伙人</a></li>
					<li><a href="<?php echo U('join/index');?>">加入家族</a></li>
					<li><a href="<?php echo U('contact/index');?>">联系我们</a></li>
					<li><a href="http://www.9game.cn/" target="_blank">九游网</a></li>
				</ul>					
			</div>
			<a id="showMenu" class="showMenu" href="javascript:;"><span></span></a>
		</div>
	</div>
</div>
<!--header end-->
<!--main begin-->
<div class="content-box">
	<div class="content-wrap">
		<div class="content">
			<div class="sidebar">
				<div class="side-main">
					<h2>新闻资讯</h2>
				</div>
			</div>
			
			<div class="title">
				<h2>新闻资讯</h2>
			</div>
			<div class="main news-main">
				<div class="wrapper-news">				
					<?php if(is_array($news)): $i = 0; $__LIST__ = $news;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><h2><?php echo ($vo["post_title"]); ?></h2>
						<h3>发布日期：<?php echo ($vo["post_date"]); ?></h3>
						<p><?php echo ($vo["post_content"]); ?></p><?php endforeach; endif; else: echo "" ;endif; ?>
				</div>
			</div>
		</div>
	</div>
</div>
<!--main end-->
<!--footer begin-->
	<div class="footer">
		<div class="wrapper">
			<div class="main">
				<div class="company-logo">
					<div class="logo"><img src="/work/yaowan/Public/images/logo.jpg"></div>
					<p>耀玩网络科技有限公司</p>
				</div>
				<div class="qrcode">
					<div class="content">
					<img src="/work/yaowan/Public/images/qrcode.png">
				</div>
				</div>				
				<div class="info">
					<p><a href="javascript:;">增值电信业务经营许可证：粤 XXXXXXXXXXX</p>
					<p><a href="javascript:;">网络文化经营许可证：粤网文 XXXXXXXXXXXX</p>
					<p><a href="javascript:;">互联网出版许可证：XXXXXXXXXXXXX</p>
					<p><a href="javascript:;">版权所有 &copy;耀玩网络科技有限公司</p>

				</div>
			</div>
		</div>
	</div>
	<!--footer end-->
</body>
<script type="text/javascript" src="/work/yaowan/Public/js/lib/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/work/yaowan/Public/js/common.js"></script>
<script type="text/javascript" src="/work/yaowan/Public/js/lib/lte-ie7.js"></script>
</html>