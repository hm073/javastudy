<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX</title>
<style>
	* {margin:0; padding:0; box-sizing:border-box;}
	#layout {max-width:1200px; margin:auto;}
	section {background:lightgray; padding:50px; line-height:180%; min-height:60vh;}}
	h3 {padding-top:20px;}
	ol {list-style-position:inside; padding:10px;}
</style>
</head>
<body>
	<div id="layout">
		<jsp:include page="header.jsp" />
		<section>
			<h2>쇼핑몰 회원관리 프로그램</h2>
			쇼핑몰 회원정보와 회원매출 정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.
			<h3>프로그램 작성 순서</h3>
			<ol>
				<li>회원정보 테이블을 작성한다.</li>
				<li>매출정보 테이블을 작성한다.</li>
				<li>회원정보, 매출정보 테이블에 제시된 문제지의 참조 데이터를 추가 생성한다.</li>
				<li>회원정보 입력 화면프로그램을 작성한다.</li>
				<li>회원정보 조회 프로그램을 작성한다.</li>
				<li>회원매출정보 조회 프로그램을 작성한다.</li>
			</ol>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>