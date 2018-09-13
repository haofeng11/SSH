<%@page import="com.ssh.citizen.Citizen"%>
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
    <title>搜索</title>
    
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
    	 	margin-top: 50px;
            margin-left: auto;
            margin-right: auto;
            width: 500px;
            padding-left: 5%;
            padding-right: 5%;
    	}
    	.form-control{
    		margin-bottom: 5dp;
    	}
    	button{
    		margin-left:60px;
    	}
    	img{
    	width:300px;
    	height:200px;
    	}
    	body{background: url(img/bkg.jpg) no-repeat;background-size:cover;font-size: 16px;}
    	input{margin-bottom:10px;}
    </style>
    	
    	<script type="text/javascript">
    	function onSearch() {
        $.ajax({  
         url: "/SSH/getCitizen.do",
         type : 'POST',
         dataType: "text",  
         data : {  
          danyuan : $("#danyuan").val().trim(),
          location : $("#location").val().trim(),
          name : $("#name").val().trim() 
         },  
         success : function(data) {
          var result = JSON.parse(data);
          var trStr = '';//动态拼接table
          var errorHint = result.error;  
          if(errorHint != undefined){
          	alert("没有搜索到符合条件的信息，请重新搜索！");
          } else {
          	for(var i in result) {
          	var danyuanR = result[i].danyuan+"";
          	var locationR = result[i].location;
          	var nameR = result[i].name;
          	trStr += '<tr class="example">';//拼接处规范的表格形式
 			trStr += '<td width="15%" id="user">' + danyuanR + '</td>';//数据表的主键值
 			trStr += '<td width="15%">' + locationR + '</td>';//对应数组表的字段值
 			trStr += '<td width="15%">' + nameR + '</td>';
 			trStr += '<td width="35%"> <img src="' + result[i].imageURL + '" /></td>';
 			/*经典之处，要将主键对应的值以json的形式进行传递，才能在后台使用*/
 			trStr += '</tr>';  
 			} 
 			$("#tbody").html(trStr);//运用html方法将拼接的table添加到tbody中return;
           }
         }
        });
        };
	</script>
  </head>
  
  <body>
	<div name="searchForm">
		<div class="centerGroup">
			<div class="form-group">
				<input type="text" id="danyuan" class="form-control" placeholder="单元号(数字)">
				<input type="text" id="location" class="form-control" placeholder="地址">
				<input type="text" id="name" class="form-control" placeholder="姓名">
			</div>
			<button class="btn btn-primary col-sm-3" onclick="onSearch()">搜索</button>
			<button class="btn btn-primary col-sm-3" type="reset">取消</button>
		</div>
	</div>
	
	<div class="centerGroup" style="width:1000px; padding-left:15%; margin-top:150px">
		<table class="table">
		<thead>
 		<tr>
 		<th>单元号</th>
 		<th>地址</th>
 		<th>姓名</th>
 		<th width="35%">附件照片</th>
 		</tr>
 		</thead>
 		<tbody id="tbody">
 		</tbody>
		</table>
	</div>
	

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </body>
  
</html>
