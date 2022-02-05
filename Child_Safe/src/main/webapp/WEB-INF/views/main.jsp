<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var="cpath" value = "${pageContext.request.contextPath}"/> <!-- context path -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>프로젝트 시작</h1>
    <table>
		<tr>
			<td>1</td>
			<td>1</td>
			<td>1</td>
			<td>1</td>
			<td>1</td>
			<td>12</td>
			<td>1</td>
			<td>1</td>
			<td>1</td>
		</tr>
		<c:forEach var="vo" items="${list}">
			<tr>
				<td>${vo.memId}</td>
				<td>${vo.memPw}</td>
				<td>${vo.memName}</td>
				<td>${vo.memBirthdate}</td>
				<td>${vo.memPhone}</td>
				<td>${vo.memEmail}</td>
				<td>${vo.memAddr}</td>
				<td>${vo.memJoindate}</td>
				<td>${vo.adminYn}</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>