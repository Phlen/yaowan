/*window.onresize = function () {
  var winWidth = window.innerWidth;     //获取设备宽度
  var html = document.getElementsByTagName("html")[0];
  html.style.fontSize = winWidth / 10 + 'px';     //设置HTML根文字大小，作为rem参考
}*/

$(function() {
  window.onload = function () {
  // var paginationWidth = $('.pagination-box').width();
  // var marL = paginationWidth/2;
  // $('.pagination-box').css({marginLeft:-marL});

 /* $(".wrapper-news [href$='.jpg']").addClass('img');
  $('.img').css({display:'block',textAlign:'center'});*/
    $("#showMenu").on("click",function(){
    //通过判断按钮showMenu有没有active这个class名判断是否已经点击过
    if($(this).hasClass("active")){
    //如果有了active，假设已经点击过了
      $('.mobile-nav').css({display:'none'});
      $('.mobile-nav .menu').css({display:'none'});
      //把active去掉
      $(this).removeClass("active");
    }else{
    //没有active，假设还没有点击过
    $('.mobile-nav').css({display:'block'});
    $('.mobile-nav .menu').css({display:'block'});
    $(this).addClass("active");
    }
   
  })  
  }
})
