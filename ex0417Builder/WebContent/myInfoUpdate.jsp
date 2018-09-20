<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
<%
	String flag = (String)request.getAttribute("flag");
%>
$(document).ready(function(){
	var msg = "";
	if("<%=flag%>" == "true") {
		msg = "정보가 변경되었습니다.";
	}else {
		msg = "비밀번호를 옳바르게 입력하세요.";
	}
	alert(msg);
	document.location.href = "myInfo.do";
});
</script>
</body>
</html>