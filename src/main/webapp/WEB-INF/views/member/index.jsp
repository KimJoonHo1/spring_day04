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
	<form action="${contextPath }/member/loginController" method="post">
		<input type="text" name="id" placeholder="id"/><br/>
		<input type="password" name="pwd" placeholder="pwd"/><br/>
		<input type="submit" value="login"/> <a href="${contextPath }/member/join">회원가입</a>
	</form>
	<a href="${contextPath }/member/member">모든 회원보기</a>
</body>
</html>