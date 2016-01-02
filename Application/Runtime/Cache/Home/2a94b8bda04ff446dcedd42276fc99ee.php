<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
        content="initial-scale=1, width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <meta name="keywords" content="耀玩,耀玩网络科技有限公司" />
    <link rel="shortcut icon" href="/work/yaowan/Public/images/logo.jpg"/>
    <link rel="stylesheet" type="text/css" href="/work/yaowan/Public/css/common.css">
    <link rel="stylesheet" type="text/css" href="/work/yaowan/Public/css/style.css">
	<title>耀玩网络科技有限公司</title>
</head>
<body>
<!--moblie-nav begin-->
<div class="mobile-nav">
	<ul class="menu">
		<li><a class="active" href="<?php echo U('index/index');?>">首页</a></li>
		<li><a href="<?php echo U('about/index');?>">关于我们</a></li>
		<li><a href="<?php echo U('newsList/index');?>">新闻资讯</a></li>
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
			<a  class = "logo" href="<?php echo U('index/index');?>"><i class = "green">Yao</i>wan</a>
			<strong></strong>
			<div class="nav">
				<ul class="menu">
					<li><a class="active" href="<?php echo U('index/index');?>">首页</a></li>
					<li><a href="<?php echo U('about/index');?>">关于我们</a></li>
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
<div id="home" class="home-content">	
	<div class="gallery-wrap">
		<div class="gallery">
			<div class="slider-wrap">
				<ul id="slider" class="roundabout-holder">
				<?php if(is_array($slider)): $i = 0; $__LIST__ = $slider;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="roundabout-moveable-item"><img src="<?php echo ($vo["guid"]); ?>" alt=""/></li><?php endforeach; endif; else: echo "" ;endif; ?>          			
        		</ul>
			</div>			
		</div>
	</div>

	<div class="main-box">
      <div class="container">
        <div class="inside">

          <div class="sidebar">
            <h2>最新 <span>资讯</span></h2>

            <ul class="news">
            	<?php if(is_array($newItems)): $k = 0; $__LIST__ = $newItems;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($k % 2 );++$k;?><li class="item<?php echo ($k); ?>">
                     <div class='figure'><strong><?php echo (date( 'd',$item["post_date"])); ?></strong><?php echo (date( 'M',$item["post_date"])); ?></div>
                     <h3><a href="<?php echo U('news/index','','');?>/id/<?php echo ($item["ID"]); ?>"><?php echo ($item["post_title"]); ?></a> </h3>
                     <p><?php echo (msubstr($item["post_content"],0,15,'utf-8',false)); ?><a href="<?php echo U('news/index','','');?>/id/<?php echo ($item["ID"]); ?>"> ...</a> </p>
                   </li><?php endforeach; endif; else: echo "" ;endif; ?>  
            </ul>

          </div>

          <div class="main">
            <h2>关于 <span>我们</span></h2>
            <p>耀玩网络科技有限公司成立于2015.8月坐落于美丽的国家级软件产业基地——广州天河软件园
				于鱼龙混杂的手游市场之中崛起，耀玩家族将自身定位为——做一个阳光闪耀的企业！不哄抬价格，诚信第一严格按照市场价值规律定价为开创高信誉、更稳定、高品质互联网营销平台带来一缕缕阳光闪耀于手游企业！
			</p>
			<div class="img-box">
				
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
<script type="text/javascript" src="/work/yaowan/Public/js/lib/roundabout.js"></script>
<script type="text/javascript" src="/work/yaowan/Public/js/lib/roundabout_shapes.js"></script>
<!-- <script type="text/javascript" src="js/lib/unslider.js"></script> -->
<script type="text/javascript" src="/work/yaowan/Public/js/slider.js"></script>
<script type="text/javascript" src="/work/yaowan/Public/js/common.js"></script>

</html>