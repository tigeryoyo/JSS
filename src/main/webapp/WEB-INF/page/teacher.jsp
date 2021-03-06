<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>作业提交系统</title>  
    <link rel="stylesheet" href="./css/pintuer.css">
    <link rel="stylesheet" href="./css/admin.css">
     

     

    <script src="./js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="./img/logo.png" class="rotate-hover" height="50" alt="" />作业提交系统</h1>
  </div>
  <div class="head-l" style="float:right"><span style="color: white; font-size:16px">尊敬的：${teaName}老师</span>&nbsp;&nbsp;<a class="button button-little bg-red" href="logout"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>基本设置</h2>
  <ul style="display:block">
    <li><a href="pass" target="right"><span class="icon-caret-right"></span>修改密码</a></li>

  </ul>   
  <h2><span class="icon-pencil-square-o"></span>栏目管理</h2>
  <ul>
    <li><a href="addStudent" target="right"><span class="icon-caret-right"></span>导入学生名单</a></li>
    <li><a href="managejob" target="right"><span class="icon-caret-right"></span>作业列表</a></li> 
    <li><a href="queryResult" target="right"><span class="icon-caret-right"></span>成绩查看</a></li>      
    <li><a href="exportResult" target="right"><span class="icon-caret-right"></span>导出</a></li>        
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="pass" target="right" class="icon-home"> 首页</a></li>
   <li><a href="javascript:;" id="a_leader_txt"></a></li> 
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">

</div>
</body>
</html>