<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${ctx}/css/pintuer.css">
<link rel="stylesheet" href="${ctx}/css/admin.css">
<script src="${ctx}/js/jquery.js"></script>
<script src="${ctx}/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加作业</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="managejob.html">  
      <div class="form-group">
        <div class="label">
          <label>作业名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value=""  data-validate="required:请输入作业名" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>题目内容：</label>
        </div>
        <div class="field">
          <input type="file"  class="input w50" data-validate="required:请选择文件" >
        </div>
      </div>     
      
     
      <div class="form-group">
        <div class="label">
          <label>截止时间：</label>
        </div>
        <div class="field"> 
          <script src="js/laydate/laydate.js"></script>
          <input type="text" class="laydate-icon input w50" name="datetime" onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" value=""  data-validate="required:日期不能为空" style="padding:10px!important; height:auto!important;border:1px solid #ddd!important;" />
          <div class="tips"></div>
        </div>
      </div>
     
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>