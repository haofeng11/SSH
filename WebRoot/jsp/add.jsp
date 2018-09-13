<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
   		<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>添加记录</title>
		<!-- Bootstrap -->
    	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    	<!--[if lt IE 9]>
      	<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      	<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    	<![endif]-->
    	
    	<style>
       
        .mycenter
        {
            margin-top: 100px;
            margin-left: auto;
            margin-right: auto;
            width: 500px;
            padding: 5%;
            padding-left: 5%;
            padding-right: 5%;
        }
        .mycenter mysign
        {
            width: 440px;
        }
        .mycenter input, checkbox, button
        {
            margin-top: 2%;
            margin-left: 10%;
            margin-right: 10%;
        }
        body{background: url(../img/bkg.jpg) no-repeat;background-size:cover;font-size: 16px;}  
            .form{background: rgba(255,255,255,0.2);width:400px;margin:100px auto;}  
            #login_form{display: block;}  
            #register_form{display: none;}  
            .fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}  
            input[type="text"],input[type="password"]{padding-left:26px;}  
            .checkbox{padding-left:21px;}
        
    </style>
    	
    	<script type="text/javascript">
		function formSubmit()
  		{
  		document.getElementById("myForm").submit()
  		}
		</script>
    </head>
	<body>
	<div class="mycenter panel panel-primary">
		<div class="form-group" align="center">
    		<label for="danyuanNum" align="center">单元号:</label>
    	    <input type="text" class="form-control" id="danyuanNum" style="width:200px">
    		
  		</div>
  		<div class="form-group" align="center">
    		<label for="location">坐落:</label>
    		<input type="text" class="form-control" id="location" style="width:200px">
    		
  		</div>
  		<div class="form-group" align="center">
    		<label for="name">姓名:</label>
    		<input type="text" class="form-control" id="name" style="width:200px">
  		</div>
  		<div class="form-group" align="center">
    		<label for="photoURL">上传图片:</label>
    		</br></br>
    		<input type="file" id="photoURL" style="width:200px">
  		</div>
  		</br></br>
  		<div class="form-group" align="center">
  		<input class="btn btn-primary" type="button" value="保存" onclick="save()" >
  		<input class="btn btn-primary" type="button" value="返回" onclick="back()"  >
  		</div>
  		</div>
  		
    	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    	
    	<script>
    		function save() {
    			var reader = new FileReader();
	            reader.readAsDataURL($("#photoURL")[0].files[0]);
	            reader.onload = function (evt) {
	                var fileString = evt.target.result;
	                $.ajax({
	    				url: "/SSH/add.do",
	    				type: "POST",
	    				dataType: "text",
	    				data: {
	    					danyuanNum: $("#danyuanNum").val(),
	    					location: $("#location").val(),
	    					name: $("#name").val(),
	    					photoURL: fileString
	    				},
	    				success: function(result) {
	    					alert(result);
	    					window.location.href="home.jsp";
	    				}
	    			})
	            }
    		}
    		
    		function back() {
    			window.location.href="home.jsp";
    		}
    	</script>
	</body>
</html>

