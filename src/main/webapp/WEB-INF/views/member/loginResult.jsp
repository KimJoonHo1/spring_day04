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
		<c:when test="${result eq '-1' }">
			<script>
				alert("존재하지 않는 id 입니다!!!");
				location.href = "${contextPath}/member/index";
			</script>
		</c:when>
		<c:when test="${result eq '0' }">
			<script>
				alert("비밀번호가 틀렸습니다!!!");
				location.href = "${contextPath}/member/index";
			</script>
		</c:when>
		<c:otherwise>
			${result } 님 환영합니다!!!<br/>
			<a href="${contextPath }/member/member">모든 회원보기</a>
		</c:otherwise>
	</c:choose>
</body>
</html>