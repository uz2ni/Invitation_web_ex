<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	<jsp:param name="title" value="회원 가입"/>
	<jsp:param name="bg" value="bg.jpeg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />


<article class="center col-8 text-center">
	<form action="joinPro.do" name="user-form" method="post">
		<center class="col d-flex flex-column justify-content-center">
			<!-- Join -->
				<!--로그인방식 선택-->
				<ul class="login_select">
					<li class="login_select_type on"><a class="d-flex justify-content-center" href="#"><span class="btn btn-lg">이메일로 회원가입</span></a></li>
					<li class="login_select_type"><a class="d-flex justify-content-center" href="#"><span class="btn btn-lg">네이버 아이디로 회원가입</span></a></li>
				</ul>
				<div class="row justify-content-left" style="width:460px;">
						<h5 class="join_title">아이디</h5>
						<div class="d-flex" style="width:100%">
							<input type="email" name="user-email" class="form-control"
								id="user-email" title="사용하실 아이디(이메일 주소)를 입력해주세요"
								placeholder="아이디(이메일 주소)" required>
							<button type="button" class="btn btn-sm ml-1" id="overlap" name="overlap" onclick='emailCheck()'>이메일인증</button>
						</div>
						<div class="d-flex email-confirm">
							<p class="px-1" style="margin: 8px 0">인증번호를 입력하세요 :</p>
							<input type="text" id="email-check" name="certify-num" placeholder="인증번호" />
							<button type="button" class="btn btn-sm ml-1 confirm-btn" name="certify-num-btn" onclick="certifyEmail()">확인</button>
						</div>
						<div id="timer-count" class="d-flex w-100 justify-content-center"></div>
						
						<h5 class="join_title">비밀번호</h5>
						<input type="Password" class="form-control" id="Pw" name="user-pw"
							title="숫자 7자 이상 ~ 14자 이내" placeholder="비밀번호(숫자 7자~14자)"
							ng-model="user.password" ng-required="true"
							ng-pattern="/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$/">
							 
						<h5 class="join_title">비밀번호 재확인</h5>
						<input type="Password" class="form-control" id="PwCheck" name="user-pw2"
							title="비밀번호를 한번 더 동일하게 입력해주세요" placeholder="비밀번호 확인" required>
						<p id="pwsame" style="color: red;"></p>
					
						<h5 class="join_title">이름</h5>
						<input type="name" class="form-control" id="inputname"
							name="user-name" title="이름을 입력해주세요" placeholder="이름" required>
					
					<h5 class="join_title">휴대전화</h5>
					<input type="text" class="form-control" id="inputtel"
							name="user-phone" title="하이픈(-)을 제외한 숫자로만 입력해주세요"
							placeholder="핸드폰 번호" required>
					
					<h5 class="join_title">생년월일</h5>
					<div class="d-flex" style="width:100%">
						<select name="user-year" class="form-control">
							<%
								for (int i = 2018; i > 1949; i--) {
							%>
							<option value="<%=i%>"><%=i%>년
							</option>
							<%
								}
							%>
						</select> <select name="user-month" class="form-control">
							<%
								for (int i = 1; i < 13; i++) {
							%>
							<option value="<%=i%>"><%=i%>월
							</option>
							<%
								}
							%>
						</select> <select name="user-day" class="form-control">
	
							<%
								for (int i = 1; i < 31; i++) {
							%>
							<option value="<%=i%>"><%=i%>일
							</option>
							<%
								}
							%>
						</select>
					</div>
				</div>
				<div class="pt-2">
					<input type="checkbox" name="req1"> <label
						for="chkProvision"> <a href="chkProvision"> <span
							class="viewlaw" data-toggle="modal" data-target="#viewlaw1"
							data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
							alt="Thumbnail [100%x225]">서비스 이용약관</span>
					</a>에 동의합니다.
					</label>
				</div>
				<div>
					<input type="checkbox" name="req2"> <label
						for="chkProvision"> <a href="chkProvision"> <span
							class="viewlaw" data-toggle="modal" data-target="#viewlaw2"
							data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
							alt="Thumbnail [100%x225]">개인정보처리방침</span>
					</a>에 동의합니다.
					</label>
				</div>
				<p id="checkok" style="color: red;"></p>
				
				<!--Join-->
				<div class="col-sm-6 pb-3 row justify-content-center">
					<div class="col-auto">
						<button type="submit" class="btn blue-submit-btn" onclick="chk()">가입하기</button>
					</div>
				</div>
			<!--form_end-->
		</center>
	</form>
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
	<script type="text/javascript" src="js/top.js?v=<%=System.currentTimeMillis()%>"></script>
	<!-- side bar js -->
	<script type="text/javascript" src="js/sidebar.js?v=<%=System.currentTimeMillis()%>"></script>
	<!-- custom js -->
	<script type="text/javascript" src="js/member.js?v=<%=System.currentTimeMillis()%>"></script>
</body>
</html>