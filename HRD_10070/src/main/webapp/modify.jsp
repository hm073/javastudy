<%@page import="java.text.*" %>
<%@page import="java.sql.*" %>
<%@page import="DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보 수정</title>
	<script src="check.js"></script>
	<script>
		document.addEventListener("DOMContentLoaded" , ()=>{
			
			const btn_0 = document.getElementsByTagName("button")[0];
			btn_0.addEventListener("click" , ()=>{						
				//event.preventDefault();
				//return modify();
			});

			const btn_1 = document.getElementsByTagName("button")[1];
			btn_1.addEventListener("click" , ()=>{
				return search();
			});
			
		});//전체끝부분...		
	</script>
	<style>
		* {margin:0; padding:0; box-sizing:border-box;	}
		#layout {max-width:1200px; margin:auto; }	
		section {background:lightgray; padding:50px; line-height:180%; min-height:60vh;}
		table { width:60%; margin:auto; margin-top:20px;}
		th {width:50%; text-align:center; padding:3px; }
		td {padding-left:20px; }
		input {width:60%;}
		button {padding:3px 8px;}
	</style>
</head>
<body>
	<div id="layout">
		<jsp:include page="header.jsp" />
		<section>
			<h2>쇼핑몰 회원정보 수정</h2>
			<form method="post" action="action.jsp" >
				<input type="hidden" name="mode" value="modify">
				<table border="1">
<%
request.setCharacterEncoding("utf-8");

Connection conn = null;
Statement stmt = null;
String mod_custno = request.getParameter("mod_custno");
String custname = "";
String phone = "";
String address = "";
Date joindate ;
String grade = "";
String city = "";
String joindateStr = "";
//int no = Integer.parseInt(mod_custno);

try {
	conn = Util.getConnection();// DB연결
	stmt = conn.createStatement();// sql 실행하기위한 변수생성
	
	String sql = "SELECT * FROM member_tbl_02 WHERE custno = "+ mod_custno;
	System.out.println("번호:"+mod_custno);
	ResultSet rs = stmt.executeQuery(sql); // stmt로 sql실행한 결과
	
	boolean result = rs.next(); //1개의 결과출력

	if(!result)
		System.out.println("결과 없음");
		mod_custno = rs.getString("custno");
		custname =   rs.getString("custname");
		phone = rs.getString("phone");
		address = rs.getString("address");
		joindate = rs.getDate("joindate");
		grade = rs.getString("grade");
		city = rs.getString("city");
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm"); //대소문자 주의
		joindateStr = transFormat.format(joindate);
		//joindateStr = joindateStr.substring( 0, joindateStr.length() - 3 );
}
catch(Exception e){
	e.printStackTrace();
	
}
%>
					<tr>
						<th>회원번호</th>
						<td><input type="text" name="custno" value="<%=mod_custno %>"></td>
					</tr>
					<tr>
						<th>회원성명</th>
						<td><input type="text" name="custname" value="<%=custname %>"></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="tel" name="phone" value="<%=phone %>"></td>
					</tr>
					<tr>
						<th>회원주소</th>
						<td><input type="text" name="address" value="<%=address %>"></td>
					</tr>
					<tr>
						<th>가입일자</th>
						<td><input type="datetime-local" step="60" name="joindate" value="<%=joindateStr %>"></td>
					</tr>
					<tr>
						<th>고객등급[A:VIP , B:일반 , C:직원]</th>
						<td><input type="text" name="grade" value="<%=grade %>"></td>
					</tr>
					<tr>
						<th>도시코드</th>
						<td><input type="text" name="city" value="<%=city %>"></td>
					</tr>
					<tr>
						<th colspan="2">
							<button type="submit" onclick="return modify();">수정</button> &nbsp; 
							<button type="button">조회</button>
						</th>						
					</tr>
				</table>
			</form>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>