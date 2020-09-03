<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getDeptList.jsp</title>
</head>
<body>
	<h3>부서명과 도시명 출력</h3>
	
		<!-- 데이터조회 시작 -->
      <sql:setDataSource var = "snapshot" driver = "oracle.jdbc.OracleDriver"
         url = "jdbc:oracle:thin:@localhost:1521:xe"
         user = "hr"  password = "hr"/>

         <sql:query dataSource = "${snapshot}" var = "result">
             SELECT D.DEPARTMENT_NAME, L.CITY
             FROM DEPARTMENTS D, LOCATIONS L
             WHERE D.LOCATION_ID = L.LOCATION_ID
             ORDER BY DEPARTMENT_ID
         </sql:query>
	<!-- 데이터조회 끝--> 
	
      <!-- 목록 시작  -->
      <table border = "1" width = "40%">
         <tr>
            <th>DEPT_NAME</th>
            <th>CITY</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}"> 
            <tr>
               <td align="center"><c:out value = "${row.department_name}"/></td>
               <td align="center"><c:out value = "${row.city}"/></td>

            </tr>
         </c:forEach>
      </table>
      <!-- 목록 끝  -->
	
</body>
</html>