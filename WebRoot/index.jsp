<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录</title>
</head>
<script type="text/javascript">
function check()// JavaScript Document
{
    var flag = true;
    if (document.form.no.value == "") {
        alert("用户名或密码不能为空");
        form.no.focus();
        flag = false; 
    } else if (document.form.psw.value == "") {
        alert("用户名或密码不能为空");
        form.psw.focus();
        flag = false;
    }
    if (flag) {
        document.form.submit();
    }
}
</script>
<style type="text/css">
body {
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    text-align: center;
    margin: 0px auto;
}

div {
    left: 80%;
    margin-left: -530px;
    position: absolute;
}
</style>
<body background="images\1.jpeg">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div>
        <font face="华文新魏">登录图书管理系统</font>
        <p>
        <form name="form" method="post" action="judge.jsp" align="center">
            <table width="256" border="1">
                <tr>
                    <td width="68" height="43"><font color="#003399">登录名：</font></td>
                    <td><input type="text" name="no"></td>
                </tr>
                <tr>
                    <td height="43"><font color="#003399">密码：</font></td>
                    <td><input type="password" name="psw"></td>
                </tr>
            </table>
            <br /> <input type="button" value="登录" onClick="check()"
                style="width: 130px;" />
        </form>
    </div>
</body>
</html>


