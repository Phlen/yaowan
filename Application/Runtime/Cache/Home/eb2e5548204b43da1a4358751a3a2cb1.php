<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
<meta name="viewport"
    content="initial-scale=1, width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
<link rel="shortcut icon" href="/work/yaowan/Public/images/logo.jpg"/>
<link rel="stylesheet" type="text/css" href="/work/yaowan/Public/css/common.css">
<link rel="stylesheet" type="text/css" href="/work/yaowan/Public/css/style.css">
	<title>联系我们--contact us</title>
	<!--引用百度地图API-->
	<style type="text/css">
	    html,body{margin:0;padding:0;}
	    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-

	right:13px;white-space:nowrap}
	    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-

	space:-moz-pre-wrap;word-wrap:break-word}
	</style>
</head>
<body>
<!--moblie-nav begin-->
	<div class="mobile-nav">
		<ul class="menu">
			<li><a href="/work/yaowan">首页</a></li>
			
	<?php if(is_array($cate)): $i = 0; $__LIST__ = $cate;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo["term_id"] == $page_id): ?><li>
				<a class="active" href="/work/yaowan/page/<?php echo ($vo["term_id"]); ?>"><?php echo ($vo["name"]); ?></a>
			</li>
			<?php else: ?>
			<li><a href="/work/yaowan/page/<?php echo ($vo["term_id"]); ?>"><?php echo ($vo["name"]); ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
			<li><a href="/work/yaowan/newsList">新闻资讯</a></li>
			<li><a class="active" href="/work/yaowan/contact">联系我们</a></li>
			<li><a href="http://www.9game.cn/" target="_blank">九游网</a></li>
		</ul>					
	</div> 
<!--mobile-nav end-->

<!--header beign-->
	<div class="header">
		<div class="wrapper">
			<div class="main">
				<a class = "logo" href="/work/yaowan"><i class = "green">Yao</i>wan</a>
				<strong></strong>
				<div class="nav">
					<ul class="menu">
						<li><a href="/work/yaowan">首页</a></li>
						
	<?php if(is_array($cate)): $i = 0; $__LIST__ = $cate;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo["term_id"] == $page_id): ?><li>
				<a class="active" href="/work/yaowan/page/<?php echo ($vo["term_id"]); ?>"><?php echo ($vo["name"]); ?></a>
			</li>
			<?php else: ?>
			<li><a href="/work/yaowan/page/<?php echo ($vo["term_id"]); ?>"><?php echo ($vo["name"]); ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
						<li><a href="/work/yaowan/newsList">新闻资讯</a></li>
						<li><a class="active" href="/work/yaowan/contact">联系我们</a></li>
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
					<h2>联系我们</h2>
					<p>地址：天河软件园凤凰园区</p>
					<p>QQ:361791214</p>
				</div>
			</div>
			
			<div class="title map-title">
				<h2>联系我们</h2>
				<p>地址：天河软件园凤凰园区</p>
				<p>QQ:361791214</p>
			</div>
			<div class="main map">
				<div class="wrapper">
					<div style="width:100%;height:550px;border:#ccc solid 1px;" id="dituContent"></div>
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
<script type="text/javascript" src="/work/yaowan/Public/js/lib/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<script type="text/javascript" src="/work/yaowan/Public/js/common.js"></script>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(113.407392,23.199311);//定义一个中心点坐标
        map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
		var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
		map.addControl(ctrl_nav);
	        //向地图中添加缩略图控件
		var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
		map.addControl(ctrl_ove);
	        //向地图中添加比例尺控件
		var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
		map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [
    	{
    		title:"我的标记",
    		content:"我的备注",
    		point:"113.40684|23.19971",
    		isOpen:0,
    		icon:{w:21,h:21,l:0,t:0,x:6,lb:5}
    	}
	 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title, {
					"offset": new BMap.Size(json.icon.lb-json.icon.x+10,-20)
			});

			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                borderColor:"#808080",
                color:"#333",
                cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" 

+ json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new 

BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new 

BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>
</body>
</html>