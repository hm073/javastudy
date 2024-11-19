<%@page import="java.sql.*" %>
<%@page import="DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<script src="check.js"></script>
	<script>
		document.addEventListener("DOMContentLoaded" , ()=>{
			
			const btn_0 = document.getElementsByTagName("button")[0];
			btn_0.addEventListener("click" , ()=>{
				return joinCheck();
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
			<h2>쇼핑몰 회원 등록</h2>
			<form name="frm" method="post" action="action.jsp">
				<!--사용자에게는 보이지 않지만, 데이터를 폼에 포함시켜 서버로 전송하는 역할을 함. -->
				<input type="hidden" name="mode" value="insert">
				<table border="1">
<%
request.setCharacterEncoding("utf-8");

Connection conn = null;
Statement stmt = null;
String custno = "";

try {
	conn = Util.getConnection();// DB연결
	stmt = conn.createStatement();// sql 실행하기위한 변수생성
	String sql = "SELECT MAX(custno)+1 custno FROM member_tb1";
	ResultSet rs = stmt.executeQuery(sql); // stmt로 sql실행한 결과
	rs.next(); //1개의 결과출력
	custno = rs.getString("custno");
}
catch(Exception e){
	e.printStackTrace();
}
%>
					<tr>
						<th>회원번호(자동발생)</th>
						<td><input type="text" name="custno" value="<%=custno %>" readonly></td>
					</tr>
					<tr>
						<th>회원성명</th>
						<td><input type="text" name="custname"></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="tel" name="phone"></td>
					</tr>
					<tr>
						<th>회원주소</th>
						<td><input type="text" name="address"></td>
					</tr>
					<tr>
						<th>가입일자</th>
						<td><input type="datetime-local" step="60" name="joindate"></td>
					</tr>
					<tr>
						<th>고객등급[A:VIP , B:일반 , C:직원]</th>
						<td><input type="text" name="grade"></td>
					</tr>
					<tr>
						<th>도시코드</th>
						<td><input type="text" name="city"></td>
					</tr>
					<tr>
						<th colspan="2">
							<button type="submit">등록</button> &nbsp; 
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