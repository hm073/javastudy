<%@page import="java.sql.*" %>
<%@page import="DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>action</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

Connection conn = null;
Statement stmt = null;

String mode = request.getParameter("mode");

String custno = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String joindate = request.getParameter("joindate");
joindate = joindate.replace("T", " ");
String grade = request.getParameter("grade");
String city = request.getParameter("city");

try {
	conn = Util.getConnection();// DB연결
	stmt = conn.createStatement();// sql 실행하기위한 변수생성
	String sql = " ";
	System.out.println("모드:"+mode);
	switch(mode) {
		case "insert" :
			sql = "INSERT INTO member_tb1 VALUES( " + 
						custno + "," +
						"'" + custname + "'," +
						"'" + phone + "'," +
						"'" + address + "'," +
						//"'" + joindate + "'," +
						"TO_DATE('" + joindate + "','yyyy-MM-dd HH24:mi')," +  
						"'" + grade + "'," +
						"'" + city +
			"')";
			stmt.executeUpdate(sql);
%>
<jsp:forward page="list.jsp" />
<%
break;

		case "modify":
			sql = "UPDATE member_tb1 SET "+
					"custname ='" + custname + "'," +
					"phone ='" + phone + "'," +
					"address ='" + address + "'," +
					//"joindate ='" + joindate + "'," +
					"joindate = TO_DATE('" + joindate + "', 'yyyy-MM-dd HH24:mi')," +
					"grade ='" + grade + "'," +
					"city ='" + city + "' " +
					"WHERE custno = " + custno ;
							
					stmt.executeUpdate(sql);	
%>
<jsp:forward page="list.jsp" />
<%
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>