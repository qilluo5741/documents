<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your exclusive website</title>
<link href="css/lanren.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<!-- 代码部分begin -->
<div class="index-con" style="z-index: 0">
  <ul>
    <li class="in-kct in-course"> <a href="weather/index.html" title="天气">
      <div class="in-block"> <i class="bigger"></i> <span class="ch show" style="display: block;">天气</span> <i class="in-none"></i> <span class="in-text" style="display: none;">
        <p><em>选择你喜欢的天气</em></p>
        </span> </div>
      </a> </li>
    <li class="in-kct in-quest"> <a href="words/index.html" title="动态文学">
      <div class="in-block"> <i class=""></i> <span class="ch" style="display: inline;">动态</span> <i class="in-none"></i> <span class="in-text" style="display: none; width: 280px; left: 30px">
        <p><em>4.34万</em>动态文学</p>
        <p>让你的水平提<em>升更容易</em>！</p>
        </span> </div>
      </a> </li>
    <li class="in-jbk in-plan"> <a href="delicious/index.html" title="美食美味">
      <div class="in-block"> <i style="display: block;"></i> <span style="display: inline;">美食美味</span> <i class="in-none toLeft1" style="display: none;"></i> <span class="in-text" style="display: none;">
        <p>每天的必吃</p>
        <p>美味可口，很不错哦</p>
        </span> </div>
      </a> </li>
    <li class="in-jbk in-report"> <a href="Picture/index.html" title="热点图片">
      <div class="in-block"> <i style="display: block;"></i> <span style="display: inline;">热点图片</span> <i class="in-none toLeft2" style="display: none;"></i> <span class="in-text" style="display: none;">
        <p>图片翻转</p>
        <p>图片动态翻滚效果，很不错哦</p>
        </span> </div>
      </a> </li>
    <li class="in-zxl in-forma"> <a href="albums/index.html" title="照片画廊">
      <div class="in-block"> <i style="display: block;"></i> <span style="display: inline;">照片画廊</span> <i class="in-none toLeft0 toLeft4" style="display: none;"></i> <span class="in-text" style="display: none;">
        <p>更简洁、更简单、更强大、更专业</p>
     
        </span> </div>
      </a> </li>
    <li class="in-zxl in-means"> <a href="3D/index.html" title="3D视图">
      <div class="in-block"> <i></i> <span>3D视图</span> <i class="in-none"></i> <span class="in-text">
        <p>3D软件</p>
        <p>应有尽有</p>
        </span> </div>
      </a> </li>
    <li class="in-jbk in-client"> <a href="canvas/index.html" title="微社区">
      <div class="in-block"> <i></i> <span>微社区</span> <i class="in-none"></i> <span class="in-text">
        <p>在线交流</p>
        <p>让你学习更多</p>
        </span> </div>
      </a> </li>
  </ul>
</div>
<script src="js/core.js" type="text/javascript"></script>
<script src="http://www.lanrenzhijia.com/ajaxjs/jquery.min.js"></script>
<script>
    seajs.use('jquery',function($) {
        $(function () {
             //
            $(".index-con .in-kct").hover(function() {
                $(this).find('i:first').addClass('smaller').removeClass('bigger')
                $(this).find('span:first').fadeOut('')
                $(this).find('.in-text').show('fast').addClass('show')
                $(this).find('.ch').removeClass('')
            }, function() {
                $(this).find('i:first').removeClass('smaller').addClass('bigger')
                $(this).find('span:first').fadeIn('')
                $(this).find('.in-text').hide('').removeClass('fast')
                $(this).find('.ch').addClass('show')
            })
            $(".index-con .in-jbk").hover(function() {
                $(this).find('i:first').addClass('hide')
                $(this).find('span:first').hide('')
                $(this).find('.in-text').show('').addClass('show')
                var num = $(this).index('.in-jbk') + 1;
                $(this).find('.in-none').show('').addClass('toLeft' + num).removeClass('toRight' + num)
                $(this).find('.ch1').removeClass('show')
            }, function() {
                $(this).find('i:first').addClass('hide')
                $(this).find('span:first').fadeIn('')
                $(this).find('.in-text').hide('').removeClass('show')
                var num = $(this).index('.in-jbk') + 1;
                $(this).find('.in-none').show().addClass('toRight' + num).removeClass('toLeft' + num)
                $(this).find('.ch1').addClass('show')
            })
            $(".index-con .in-zxl").hover(function() {
                $(this).find('i:first').addClass('hide')
                $(this).find('span:first').hide('')
                $(this).find('.in-text').show().addClass('show')
                var nums = $(this).index('.in-zxl') + 1;
                $(this).find('.in-none').show().addClass('toLeft4').removeClass('toRight4')
                $(this).find('.ch2').removeClass('show')
            }, function() {
                $(this).find('i:first').addClass('hide')
                $(this).find('span:first').fadeIn('fast')
                $(this).find('.in-text').hide().removeClass('show')
                $(this).find('.in-none').show().addClass('toRight4').removeClass('toLeft4')
                $(this).find('.ch2').addClass('show')
            });
        });
    })
</script>
<!-- 代码部分end -->
</body>
</body>
</html>