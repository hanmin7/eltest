<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlTest.jsp</title>
</head>
<body>
<h3>fmtTest</h3>
	<br>숫자포맷 : ${price}
	<br><fmt:formatNumber value="${price}" pattern="000,000.0"/>
	<br><fmt:formatNumber value="${price}" type="number"/>
	<br><fmt:formatNumber value="${price}" type="currency" currencySymbol="$"/>

	<hr>

	<br>스트링숫자포맷 : ${priceStr}
	<br><fmt:formatNumber value="${priceStr}" pattern="000,000.0"/>

	<hr>

	<br>${today}
	<br><fmt:formatDate value="${today}" pattern="yyyy-MM-dd"/>
	<br>오늘은 <fmt:formatDate value="${today}" pattern="E"/>요일입니다.
	<br>미리 정의된 날짜형식 : <fmt:formatDate value="${today}" dateStyle="short"/>
	<br>미리 정의된 날짜형식 : <fmt:formatDate value="${today}" dateStyle="long"/>
	<br>미리 정의된 시간형식 : <fmt:formatDate value="${today}" timeStyle="long"/>
	<br>미리 정의된 시간형식 : <fmt:formatDate value="${today}" pattern="MM/dd hh:mm"/>
	<br>미리 정의된 시간형식 : <fmt:formatDate value="${today}" type="time"/>
	<br>미리 정의된 시간형식 : <fmt:formatDate value="${today}" type="both"/>
	<hr>
	<br>${todayStr}
	<fmt:parseDate value="${todayStr}" pattern="yyyy/MM/dd" var="parseToday" />
	<br><fmt:formatDate value="${parseToday}" pattern="E" />요일입니다.
	
	<hr>
	
	<%
		Date birth = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String birthStr = format.format(birth);
		out.print("<br>" + birth);
		out.print("<br>" + birthStr);
	%>
</body>
</html>