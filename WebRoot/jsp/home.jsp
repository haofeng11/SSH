<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>国土</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- Bootstrap -->
    	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    	<!--[if lt IE 9]>
      	<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      	<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    	<![endif]-->
    	
    <style type="text/css">
    	.centerGroup{
    	 	margin-top: 100px;
            margin-left: auto;
            margin-right: auto;
            height: 350px;
            width: 800px;
            padding: 5%;
            padding-left: 5%;
            padding-right: 5%;
    	}
    	.buttonNav{
    		width:220px;
    		height:250px;
    		margin-left: 5%;
            margin-right: 5%;
            padding-top:110px
    	}
    	h2{
    		margin-bottom: 50px;
    		margin-left: 90px;
    	}
    	body{background: url(img/bkg.jpg) no-repeat;background-size:cover;font-size: 16px;}  
            .form{background: rgba(255,255,255,0.2);width:400px;margin:100px auto;}  

    </style>

  </head>
  
  <body>
  
  	<div class="centerGroup">
  		<h2>欢迎使用故土资源局信息系统</h2>
    	<a href="jsp/search.jsp" class="btn btn-primary btn-lg active buttonNav" role="button">查询信息</a>
    	<a href="jsp/add.jsp" class="btn btn-primary btn-lg active buttonNav" role="button">新增记录</a>
    </div>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </body>
</html>
