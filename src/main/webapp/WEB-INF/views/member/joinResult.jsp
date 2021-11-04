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
	<c:if test="${result  == 0 }">
		<script>
			alert("이미 등록된 아이디입니다.");
			location.href = "${contextPath}/member/index";
		</script>
	</c:if>
	
	<script>
		alert("등록되었습니다.");
		location.href = "${contextPath}/member/index";
	</script>
</body>
</html>