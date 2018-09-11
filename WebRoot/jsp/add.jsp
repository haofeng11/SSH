<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for AddForm form</title>
	</head>
	<body>
		<html:form action="/add">
			id : <html:text property="id"/><html:errors property="id"/><br/>
			danyuanNum : <html:text property="danyuanNum"/><html:errors property="danyuanNum"/><br/>
			photoURL : <html:text property="photoURL"/><html:errors property="photoURL"/><br/>
			location : <html:text property="location"/><html:errors property="location"/><br/>
			name : <html:text property="name"/><html:errors property="name"/><br/>
			<html:submit value="新增"/><html:cancel value="取消"/>
		</html:form>
	</body>
</html>

