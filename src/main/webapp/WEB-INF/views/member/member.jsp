<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>id</th>
			<th>password</th>
			<th>name</th>
		</tr>
		<c:choose>
			<c:when test="${list.size() == 0 }">
				<tr>
					<td colspan="3">데이터 없음</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="item" items="${list }">
					<tr>
						<td>${item.getId() }</td>
						<td>${item.getPwd() }</td>
						<td><a href="${contextPath }/member/info?id=${item.getId()}">${item.getName() }</a></td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<tr>
			<td colspan="3"><a href="${contextPath }/member/index">index
					이동</a></td>
		</tr>
	</table>
</body>
</html>