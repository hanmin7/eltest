<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEachTest.jsp</title>
</head>
<body>
	<h3>forEachTest</h3>
	<table border="1">
	<%-- request.setAttribute("sum", 0); --%>
	<% session.setAttribute("sum", 0); %>
	<% for(int i=1; i<10; i++){%>
		<tr>
			<% if(i % 2 == 0){%>
				<td><%=i%></td>
			<%} else { %>
				<td style="background-color:yellow"><%=i%></td>
			<% } %>
		</tr>
	<% } %>
	</table>
	
	<hr>
	<hr>
   <c:set var="sum" value="0" scope="session" />
   <table border="1">

      <c:forEach begin="1" end="9" var="i">
         <tr>
            <c:set var="style" value="" />
            <c:if test="${i%2==0}">
               <c:set var="style" value="style='background-color:gray;'" />
            </c:if>
            <td ${style}>${i}</td>
      </c:forEach>

   </table>
   <hr>

   
	<c:set var="sum" value="0" scope="session"/>
	<table border="1">
	<c:forEach begin="1" end="9" var="i">
	   <tr>
	      <c:set var="style" value=""/>
	      <td <c:if test="${i % 2==1 }">style="background-color:red"</c:if>>${i}</td>
	   </tr>
	</c:forEach>
	</table>
	
	<hr>

	
	<c:set var="sum" value="0"/>
	<table border="1">
	<c:forEach begin="1" end="9" var="i">
		<tr>
			<c:if test="${i % 2 == 0}">
			<td>${ i } </td>
			</c:if>
			<c:if test="${i % 2 == 1}">
				<td style="background-color:pink">${i}</td>
			</c:if>
		</tr>
	</c:forEach>
	</table>
	
	<hr>
	<hr>
	
	<table border="1">
	<c:forEach begin="1" end="9" var="i">
		<tr>
			<c:choose>
			<c:when test="${i % 2 == 0}">
			<td>${ i } </td>
			</c:when>
			<c:otherwise>
				<td style="background-color:green">${i}</td>
			</c:otherwise>
			</c:choose>
		</tr>
	</c:forEach>
	</table>
	
</body>
</html>