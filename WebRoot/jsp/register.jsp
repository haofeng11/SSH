<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<!DOCTYPE html> 
<html>
    <head>
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
   		<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>用户注册</title>

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
            height: 350px;
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
    
        <html:form action="/register">
        	<div class="mycenter">
        		<div class="mysign">
            		<input class="form-control required" type="text" placeholder="用户名" name="username" autofocus="autofocus" maxlength="30"/><html:errors property="username"/><br/>
            		<input class="form-control required" type="password" placeholder="密码" name="password" maxlength="20"/><html:errors property="password"/><br/>
            		<input class="form-control required" type="text" placeholder="昵称" name="nickname" maxlength="20"/><html:errors property="nickname"/><br/>  
            		<input type="submit" class="btn btn-primary col-sm-12" onclick="formSubmit()" value="注册"/>
            		<input type="reset" class="btn btn-primary col-sm-12" value="取消"/>
            	</div>
            </div>
        </html:form>
        
        <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>    
</html>