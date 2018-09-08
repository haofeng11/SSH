<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html>
    <head>
        <title>注册页</title>
    </head>
    <body>
        <html:form action="/register">
            用户名 : <html:text property="username"/><html:errors property="username"/><br/>
            密码 : <html:password property="password"/><html:errors property="password"/><br/>
            昵称 : <html:text property="nickname"/><html:errors property="nickname"/><br/>
            <html:submit value="确定"/><html:cancel value="取消"/>
        </html:form>
    </body>
</html>
