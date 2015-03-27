<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<title>JSP/Servlet</title>
	<style >
	body{
			background-image:url("1234.jpg");
			background-repeat:no-repeat;
			background-attachment:fixed;
	}
	input, select, textarea {
			border:red 1pt dashed;
			background:white;
			color:blue;
			font-size:10px;
			font-weight:bold
	}
	</style>
	
	<script>
		function testfunc() {
			alert("hello JavaScript!");
			
		}
	
	</script>
		
	</head>

	<body>
	
	<h1>Servlet Test</h1>
	<hr>
	<form action="TestServlet" onsubmit="return testfunc()">
	<input type="text" name="id"><br>
	<input type="radio" name="gender" value="남자"> 남자
	
	<input type="radio" name="gender" value="여자"> 여자 <br>
	
	<input type="checkbox" name="hobby" value="축구">축구
	<input type="checkbox" name="hobby" value="야구">야구
	<input type="checkbox" name="hobby" value="농구">농구 <br>
	
	<select name = "subject">
		<option value="html">HTML
		<option value="css">CSS
		<option value="javascript">JavaScript
	
	</select><br>
	
	<textarea name="txt" rows="100" cols= "60"></textarea>
	
	<input type="color" name= "mycolor"><br>
	<input type="email" name= "myemail"><br>
	<input type="submit" value="서버로 제출"> 
	</form>
	</body>
</html>