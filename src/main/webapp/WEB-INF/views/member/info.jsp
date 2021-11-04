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
	<c:choose>
		<c:when test="${user == null }">
			<script>
				alert("잘못된 접근입니다.");
				location.href = "${contextPath}/member/index";
			</script>
		</c:when>
		<c:otherwise>
			<h1>개인정보</h1>
			<h2>id : ${user.getId() }</h2>
			<h2>pwd : ${user.getPwd() }</h2>
			<h2>name : ${user.getName() }</h2>
			<hr/>
			<a href="${contextPath }/member/member">목록으로 이동</a>
		</c:otherwise>
	</c:choose>
	
</body>
</html>