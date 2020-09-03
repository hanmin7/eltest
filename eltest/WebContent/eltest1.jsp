<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eltest1.jsp</title>
</head>
<body>
<h3>배열(fruit)</h3>
	<c:forEach items="${fruit}" var="temp">
		<div>${ temp } 좋아요</div>
	</c:forEach>

<hr>
	첫번째 과일 : ${requestScope.fruit[0]} <br>
	두번째 회원의 이름 : ${user[1].name } <br>
	content : ${board.content} <br>
	id : ${ login.id } ${login.getId() } <br>
	list 첫번째회원의 이름 : ${ memberlist[0].name} <br>
</body>
</html>