const joinCheck =()=> {
	if(document.frm.custname.value.length == 0) {
		alert( "회원성명이 입력되지 않았습니다." );
		frm.custname.focus();
		return false;
	}
	if(document.frm.phone.value.length == 0) {
		alert( "회원전화가 입력되지 않았습니다." );
		frm.custname.focus();
		return false;
	}
	if(document.frm.address.value.length == 0) {
		alert( "회원주소가 입력되지 않았습니다." );
		frm.custname.focus();
		return false;
	}
	if(document.frm.joindate.value.length == 0) {
		alert( "가입일자가 입력되지 않았습니다." );
		frm.custname.focus();
		return false;
	}
	if(document.frm.grade.value.length == 0) {
		alert( "고객등급이 입력되지 않았습니다." );
		frm.custname.focus();
		return false;
	}
	if(document.frm.city.value.length == 0) {
		alert( "도시코드가 입력되지 않았습니다." );
		frm.custname.focus();
		return false;
	}
	success();
	return true;
}

const  success = () => {
	alert("회원등록이 완료 되었습니다.");
}

const search = () => {
	window.location = "list.jsp";
}

const modify = () => {
	alert("회원수정이 완료 되었습니다.");
}



