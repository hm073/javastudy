<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="DBPKG.Util" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원매출 조회</title>
<style>
	* {margin:0; padding:0; box-sizing:border-box;}
	#layout {max-width:1200px; margin:auto; }
	section {background:lightgray; padding:50px; line-height:180%; min-height:60vh;}
	table { width:60%; margin:auto; margin-top:20px;}
	th,td {text-align:center; padding:3px; width:25%; }
	td {text-align:center; padding-left:20px; }	
</style>
</head>
<body>
	<div id="layout">
		<jsp:include page="header.jsp" />
		<section>
			<h2>회원매출 조회</h2>
			<form>
				<table border="1">
					<tr>
						<th>회원번호</th>
						<th>회원성명</th>
						<th>고객등급</th>
						<th>매출</th>
					</tr>
<%
	Connection conn = null;
	Statement stmt = null;
	String grade = "";
	try {
		conn = Util.getConnection();
		stmt = conn.createStatement();
		String sql = 	"SELECT me.custno, me.custname, me.grade, sum(mo.price) price "+
						"FROM member_tb1 me, money_tb1 mo "+
						"WHERE me.custno = mo.custno "+
						"GROUP BY me.custno, me.custname, me.grade "+
						"ORDER BY sum(mo.price) desc ";
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
						<td><%=rs.getString("custno") %></td>
						<td><%=rs.getString("custname") %></td>
						<td><%=grade %></td>
						<td><%=rs.getString("price") %></td>
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