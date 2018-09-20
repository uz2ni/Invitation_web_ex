<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- font awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">

<!-- web-font -->
<!-- Jua --> 
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gugi|Jua|Song+Myung|Sunflower:300" rel="stylesheet">

<!-- custom CSS -->
<link rel="stylesheet" href="css/font.css?ver=1">
<link rel="stylesheet" href="css/common.css?ver=1">
<link rel="stylesheet" href="css/skincomment.css?ver=1">

<title>Insert title here</title>
</head>
<body data-spy="scroll" data-target=".navbar-collapse" style="height:100vh; background:url(img/comment-bg2.jpg); background-repeat:no-repeat; 
			 												  background-position: center; background-size: cover; background-attachment: fixed; margin: 0;">

<%
	String urlId = request.getParameter("urlId");
%>
	<!--[if lt IE 8]>
    	<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<!--[endif]-->
<form action="guestPro.do" method="post">
	<header id="main_menu" class="header navbar-fixed-top" style="display:flex; padding: 10px 10px; background:white; font-size: 15px; border-bottom: 1px solid #444;">
		<button style="width:33%;" class="d-flex align-items-center btn-style-none" onclick="back()"><i class="fas fa-chevron-left fa-lg" style="color:#3498db;"></i></button>
		<div style="width:33%; text-align: center; font-weight:bold; color:#3c3c3c;">방명록</div>
		<button type="submit" class="btn-style-none" style="width:33%; text-align: end; color:#3498db; font-weight:bold;">완료</button>
	</header>
	<!--End of header -->
	<!-- skin-add-info-section  -->
	<section class="text-center">
	  <div id="form-div">
	    
	      <input type="hidden" name="url-id" value="<%=urlId%>">
	      <p class="comment-name">
	        <input name="guest-name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="이름" id="commentname" />
	      </p>
	      <p class="comment-pw">
	        <input name="guest-pw" type="password" class="validate[required,custom[email]] feedback-input" id="pwinput" placeholder="비밀번호" />
	      </p>
	      <p class="comment-text">
	        <textarea name="guest-text" class="validate[required,length[6,300]] feedback-input" id="commenttext" placeholder="방명록을 작성해주세요."></textarea>
	      </p>
	  </div>
	</section>
</form>

<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
<script>
function back() {
	history.back();
}
</script>
</body>
</html>

