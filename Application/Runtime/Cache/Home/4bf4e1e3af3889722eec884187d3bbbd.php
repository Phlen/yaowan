<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
<meta name="viewport"
    content="initial-scale=1, width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
<link rel="shortcut icon" href="/work/yaowan/Public/images/logo.jpg"/>
<link rel="stylesheet" type="text/css" href="/work/yaowan/Public/css/common.css">
<link rel="stylesheet" type="text/css" href="/work/yaowan/Public/css/style.css">
	<title>关于我们--about us</title>
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
<!-- <div class="mobile-nav">
	<ul class="menu">
		<li><a href="<?php echo U('index/index');?>">首页</a></li>
		<li><a class="active" href="<?php echo U('about/index');?>">关于我们</a></li>
		<li><a href="<?php echo U('newsList/index');?>">新闻资讯</a></li>
		<li><a href="<?php echo U('manager/index');?>">中国合伙人</a></li>
		<li><a href="<?php echo U('join/index');?>">加入家族</a></li>
		<li><a href="<?php echo U('contact/index');?>">联系我们</a></li>
		<li><a href="http://www.9game.cn/" target="_blank">九游网</a></li>
	</ul>					
</div> -->
<!--mobile-nav end-->

<!--header beign-->
<div class="header">
	<div class="wrapper">
		<div class="main">
			<a  class = "logo" href="<?php echo U('index/index');?>"><i class = "green">Yao</i>wan</a>
			<strong></strong>
			<div class="nav">
				<ul class="menu">
					<li><a href="<?php echo U('index/index');?>">首页</a></li>
					<li><a class="active" href="<?php echo U('about/index');?>">关于我们</a></li>
					<li><a href="<?php echo U('newsList/index');?>">新闻资讯</a></li>
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
					<h2>公司介绍</h2>
				<ul>
					<li><a class="cur" href="<?php echo U('about/index');?>">关于我们</a></li>
					<li><a href="<?php echo U('manager/index');?>">管理团队</a></li>
					<li><a href="<?php echo U('join/index');?>">加入我们</a></li>
					<li><a href="<?php echo U('contact/index');?>">联系我们</a></li>
				</ul>
				</div>
			</div>
			
			<div class="title">
				<h2>关于我们</h2>
			</div>
			<div class="main">
				<div class="wrapper">
					<div class="img-box about-img"></div>
					<div class="main-box about-content">
						<p>耀玩网络科技有限公司</p>
						<p>成立于2015.8月</p>
						<p>坐落于美丽的国家级软件产业基地——<a href="<?php echo U('contact/index');?>" target="_blank">广州天河软件园</a></p>
						<p>于鱼龙混杂的手游市场之中崛起，耀玩家族将自身定位为——</p>
						<p>做一个阳光闪耀的企业！</p>
						<p>不哄抬价格，诚信第一</p>
						<p>严格按照市场价值规律定价</p>
						<p>为开创高信誉、更稳定、高品质互联网营销平台带来一缕缕阳光</p>
						<p>闪耀于手游企业！</p>
					</div>
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
</html>