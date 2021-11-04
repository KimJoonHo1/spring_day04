<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	index.jsp<br/>
	<img src="${contextPath }/resources/21.06.23.jpg">
	<form action="result">
		<input type="text" name="id"/><br/>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>