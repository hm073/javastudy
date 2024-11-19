<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="DBPKG.Util" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록 조회/수정</title>
<style>
	* {margin:0; padding:0; box-sizing:border-box;}
	#layout {max-width:1200px; margin:auto; }
	section {background:lightgray; padding:50px; line-height:180%; min-height:60vh;}
	h2 span {font-size:1rem; background:yellow;}
	table { width:80%; margin:auto; margin-top:20px;}
	th,td {text-align:center; padding:3px;}
	th:nth-child(4) {width:30%;}
</style>
</head>
<body>
	<div id="layout">
		<jsp:include page="header.jsp" />
		<section>
			<h2>회원목록 조회/수정_ <span>회원번호를 클릭하면 수정페이지로 이동합니다.</span></h2>
			<form>
				<table border="1">
					<tr>
						<th>회원번호</th>
						<th>회원성명</th>
						<th>전화번호</th>
						<th>주소</th>
						<th>가입일자</th>
						<th>고객등급</th>
						<th>거주지역</th>
					</tr>
<%
	Connection conn = null;
	Statement stmt = null;
	String grade = "";
	try {
		conn = Util.getConnection();
		stmt = conn.createStatement();
		String sql = 	"SELECT * FROM member_tb1 ORDER BY custno";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			grade = rs.getString("grade");
			switch(grade) {
				case "A" : grade= "VIP"; break;
				case "B" : grade= "일반"; break;
				case "C" : grade= "직원"; break;
		}
%>
					<tr>
						<td><a href="modify.jsp?mod_custno=<%=rs.getString("custno") %>"><%=rs.getString("custno") %></a></td>
						<td><%=rs.getString("custname") %></td>
						<td><%=rs.getString("phone") %></td>
						<td><%=rs.getString("address") %></td>
						<td><%=rs.getString("joindate") %></td>
						<td><%=grade %></td>
						<td><%=rs.getString("city") %></td>
					</tr>
<%
	}
}

catch(Exception e) {
	e.printStackTrace();
}
%>
				</table>
			</form>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>