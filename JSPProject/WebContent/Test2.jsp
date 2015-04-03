<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String gender = request.getParameter("gender");
	String[] season = request.getParameterValues("season");
	if(gender.equals("남자"))
		response.sendRedirect("http://www.naver.com");
	else
		response.sendRedirect("http://www.daum.net");
	
	if(season==null){
		out.print("선택하세요.");
	}
	else
		for(int i = 0; i<season.length;i++){
			
		}
		for(String str: season){
			out.print(str);
		}
%>


<!DOCTYPE html>

<html>
	<head>
		<title>JSP/Servlet</title>
	</head>

	<body>
	<h2>설문 조사 결과</h2>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	out.println("이름:<b>"+ name + "</b><br>");
	
	String gender = request.getParameter("gender");
	out.println("성별:");
	if(gender.equals("male")) {
		out.println("<b>남자</b><br>");
	}else {
		out.println("<b>여자</b><br>");
	}
	
	String seasonArr[] = request.getParameterValues("season");
	out.println("당신이 좋아하는 계절은 ");
	for (String season : seasonArr ){
		
		int n = Integer.parseInt(season);
		switch (n){
		case 1 : out.println("<b> 봄</b> 입니다.");
				break;
		case 2 : out.println("<b> 여름</b> 입니다.");
		break;
		case 3 : out.println("<b> 가을</b> 입니다.");
		break;
		case 4 : out.println("<b> 겨울 </b> 입니다.");
		break;
		}
		
	}
	
	%>
	<br>
	<b><a href='javascript:historty.go(-1)'>다시</a></b>
	
	</body>
</html>