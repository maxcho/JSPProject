<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<%@page import="java.io.*" %>
<%
	out.print("hello");
	int num1=10, num2 =20;
	int num3 = num1 +num2 ;
	
	out.print(num3);
	out.print(2/0);
	
	
%>
<%--JSP 주석 --%>
<!DOCTYPE html>

<html>
	<head>
		<title>JSP/Servlet</title>
	</head>
<!-- HTML 주석 -->
	<body>
	
	</body>
</html>