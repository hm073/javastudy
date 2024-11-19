<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 상단부분</title>
<style>
	* {margin:0; padding:0; box-sizing:border-box;}
	header {background:blue; color:white; text-align:center; line-height:40px; font-size:30px; padding:30px;	}
	nav {background:lightblue; color:white; line-height:20px; padding:15px; font-weight:bold;}
	a {color:black; text-decoration:none; display:inline-block; transition:transform 0.5s;}
	a:hover {color:blue; text-decoration:underline; transform:translateY(-5px); text-shadow:0 0 5px aqua;}
</style>
</head>
<body>
	<header>쇼핑몰 회원관리 ver 1.0</header>
	<nav>
		<a href="join.jsp">회원등록</a> &nbsp; &nbsp; 
		<a href="list.jsp">회원목록조회/수정</a> &nbsp; &nbsp; 
		<a href="salary.jsp">회원매출조회</a> &nbsp; &nbsp; 
		<a href="index.jsp">홈으로</a>
	</nav>
</body>
</html>