<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
        content="initial-scale=1, width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <link rel="shortcut icon" href="/work/yaowan/Public/images/logo.jpg"/>
    <link rel="stylesheet" type="text/css" href="/work/yaowan/Public/css/common.css">
    <link rel="stylesheet" type="text/css" href="/work/yaowan/Public/css/style.css">
	<title>管理团队</title>
</head>
<body>
	<!--moblie-nav begin-->
<div class="mobile-nav">
	<ul class="menu">
		<li><a href="<?php echo U('index/index');?>">首页</a></li>
		<li><a href="<?php echo U('about/index');?>">关于我们</a></li>
		<li><a href="<?php echo U('newsList/index');?>">新闻资讯</a></li>
		<li><a class="active" href="<?php echo U('manager/index');?>">中国合伙人</a></li>
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
			<a  class = "logo" href="<?php echo U('index/index');?>"><i class = "green">Yao</i>wan</a>
			<strong></strong>
			<div class="nav">
				<ul class="menu">
					<li><a href="<?php echo U('index/index');?>">首页</a></li>
					<li><a href="<?php echo U('about/index');?>">关于我们</a></li>
					<li><a href="<?php echo U('newsList/index');?>">新闻资讯</a></li>
					<li><a class="active" href="<?php echo U('manager/index');?>">中国合伙人</a></li>
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
					<li><a href="<?php echo U('about/index');?>">关于我们</a></li>
					<li><a class="cur" href="<?php echo U('manager/index');?>">管理团队</a></li>
					<li><a href="<?php echo U('join/index');?>">加入我们</a></li>
					<li><a href="<?php echo U('contact/index');?>">联系我们</a></li>
				</ul>
				</div>
			</div>
			
			<div class="title">
				<h2>管理团队</h2>
			</div>
			<div class="main">
				<div class="wrapper">
					<div class="img-box manager-img"></div>
					<div class="main-box about-content">
						<p>耀玩家族拥有一支规模宏大、高品质、高执行力的管理团队。</p>
						<p>具备更专业更精益求精的培训上岗指导</p>
						<p>团队成员各司其职，各尽其能，乐在沟通，乐在手游，乐在耀玩！</p>
						<br>
						<p>总裁心语便利贴:</p>
						<!-- <p>Sticky Note With Wishes Of President</p> -->
						<p>没有执行，一切都是空谈！</p>
						<!-- <p>No execution, everything is talk!</p> -->
						<p>客户虐我千万遍，我待客户如初恋！</p>
						<!-- <p>Customer abuse me thousands of times, 
							I treat customers like the first love!
						</p> -->
						<p>挑战无处不在，志存高远，掌握未来，突破创新，超越更高的目标！</p>
						<!-- <p>Challenge is everywhere,to be ambitious, grasp the future, breakthrough innovation, beyond the higher goal!</p> -->
						<p>将来的你会感谢现在奋斗的你！</p>
						<!-- <p>In The Future You Will Appreciate Today!</p> -->
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