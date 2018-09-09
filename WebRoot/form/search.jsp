<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for SearchForm form</title>
	</head>
	<body>
		<html:form action="/search">
			searchStr : <html:text property="searchStr"/><html:errors property="searchStr"/><br/>
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

