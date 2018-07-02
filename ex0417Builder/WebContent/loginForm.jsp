<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- meta tag -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- web-font -->
<!-- Jua -->
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gugi|Jua|Song+Myung|Sunflower:300"
	rel="stylesheet">

<!-- custom CSS -->
<link rel="stylesheet" href="css/font.css?ver=1">
<link rel="stylesheet" href="css/sidebar.css?ver=1">
<link rel="stylesheet" href="css/common.css?ver=1">
<link rel="stylesheet" href="css/member.css?ver=1">

<title>Insert title here</title>
</head>
<body>
<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="로그인"/>
	<jsp:param name="bg" value="bg.jpeg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />


<article class="center col-8 text-center"
	style="height:60vh; padding-top:9vh;"> <!-- login -->
	<div>
		<h2 style="background: #f05228; color: white;">로그인</h2>
	</div>
	<hr>
	<center class="d-flex flex-column">
		<form class="form-horizontal justify-content-center" method="post"
			action="loginPro.do" style="width: 300px;">
			<div class="form-group">
				<input type="email" class="form-control" name="user-email"
					title="사용하실 아이디(이메일 주소)를 입력해주세요" placeholder="아이디(이메일 주소)" required>
			</div>
			<div class="form-group">
				<input type="password" class="form-control" name="user-pw"
					title="숫자 7자 이상 ~ 14자 이내" placeholder="비밀번호(숫자 7자~14자)" required>
			</div>

			<div class="form-check text-left pb-3">
				<input type="checkbox" id="chk_save_id" class="form-check-input">
				<label class="form-check-label" for="dropdownCheck"> 아이디 저장
				</label>
			</div>
			<a href="login.html"><button id="lb" type="submit" class="btn"
					style="background: #f05228; color: white; width: 300px;">로그인</button></a>
		</form>
		<!--<div class="dropdown-divider"></div>-->
		<a class="dropdown-item" href="join.html">회원가입</a> <a
			class="dropdown-item" href="password_search.html">비밀번호 찾기</a>
	</center>
</article>

<jsp:include page="/template/footer.jsp" flush="false" />

<!-- bootstrap js -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<!-- top js -->
<script type="text/javascript"
	src="js/top.js?v=<%=System.currentTimeMillis()%>"></script>
<!-- side bar js -->
<script type="text/javascript"
	src="js/sidebar.js?v=<%=System.currentTimeMillis()%>"></script>

<!-- custom js -->
<%-- <script src="js/member.js?v=<%=System.currentTimeMillis() %>"></script> --%>
</body>
</html>