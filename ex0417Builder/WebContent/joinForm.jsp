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


	<article class="center col-8 text-center"
		style="height:85vh; padding-top:9vh;">
	<form action="joinPro.do" name="user-form" method="post">
		<center class="col d-flex flex-column justify-content-center">
			<!-- Join -->
			<div>
				<h2 style="background: #2d62cd; color: white;">회원가입</h2>
			</div>
			<hr>
			<div class="d-flex flex-column">
				<!--로그인방식 선택-->
				<div class="col-sm-12 form-group row justify-content-center">
					<div class="col-auto">
						<button type="submit" class="btn btn-lg"
							style="background: #fecb05; color: white; width: 232px; font-size: 17px;">이메일로
							회원가입</button>
					</div>
					<div class="col-auto">
						<button type="submit" class="btn btn-lg"
							style="background: #585858; color: white; width: 232px; font-size: 17px;">네이버
							아이디로 회원가입</button>
					</div>
				</div>
				<!--Id-->
				<div class="col-sm-6 form-group row justify-content-center">
					<div class="col-sm-9">
						<input type="email" name="user-email" class="form-control"
							id="inputEmail" title="사용하실 아이디(이메일 주소)를 입력해주세요"
							placeholder="아이디(이메일 주소)" required>
					</div>
				</div>
				<!--Password-->
				<div class="col-sm-6 form-group row justify-content-center">
					<div class="col-sm-9">
						<input type="Password" class="form-control" id="Pw" name="user-pw"
							title="숫자 7자 이상 ~ 14자 이내" placeholder="비밀번호(숫자 7자~14자)"
							ng-model="user.password" ng-required="true"
							ng-pattern="/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$/"> <input
							type="Password" class="form-control" id="PwCheck" name="user-pw2"
							title="비밀번호를 한번 더 동일하게 입력해주세요" placeholder="비밀번호 확인" required>
						<p id="pwsame" style="color: red;"></p>
					</div>
				</div>
				<!--Name-->
				<div class="col-sm-6 form-group row justify-content-center">
					<div class="col-sm-9">
						<input type="name" class="form-control" id="inputname"
							name="user-name" title="이름을 입력해주세요" placeholder="이름" required>
					</div>
				</div>
				<!--Phone Number`-->
				<div class="col-sm-6 form-group row justify-content-center">
					<div class="col-sm-9">
						<input type="text" class="form-control" id="inputtel"
							name="user-phone" title="하이픈(-)을 제외한 숫자로만 입력해주세요"
							placeholder="핸드폰 번호" required>
					</div>
				</div>
				<!--생년월일-->
				<div class="col-sm-6 form-group row justify-content-center">
					<div class="col-sm-9">
						<select name="user-year">
							<%
								for (int i = 2018; i > 1949; i--) {
							%>
							<option value="<%=i%>"><%=i%>년
							</option>
							<%
								}
							%>
						</select> <select name="user-month">
							<%
								for (int i = 1; i < 13; i++) {
							%>
							<option value="<%=i%>"><%=i%>월
							</option>
							<%
								}
							%>
						</select> <select name="user-day">

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
				<div>
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
				<div class="col-sm-6 form-group row justify-content-center">
					<div class="col-auto">
						<button type="submit" class="btn" onclick="chk()"
							style="background: #2d62cd; color: white; width: 360px;">가입하기</button>
					</div>
				</div>
			</div>
			<!--form_end-->
		</center>
	</article>
	</form>

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
	<script type="text/javascript">
		function tocheckpw() {
			//비밀번호 중복확인 2018-05-27 작성자 : 박민정
			var pw = document.getElementById("Pw").value;
			var pwck = document.getElementById("PwCheck").value;
			if (pw != pwck) {
				document.getElementById('pwsame').innerHTML = '비밀번호가 틀렸습니다. 다시 입력해 주세요';
				return false;
			}
			//비밀번호 길이제한
			if (pw.length >= 14 && pw.length <= 7) {
				document.getElementById('pwsame').innerHTML = '숫자 7자 이상 ~ 14자 이내로 다시 입력해 주세요';
				return true;
			}
		}

		//이용약관동의 2018-05-27 작성자 : 박민정
		function chk() {
			var req1 = document.form.req1.checked;
			var num = 0;

			if (req1 == true) {
				num = 1;
			}
			if (num == 1) {
				document.form.submit();
			} else {
				document.getElementById('checkok').innerHTML = '서비스 이용약관에 동의하셔야 합니다.';
				return false;
			}

			var req2 = document.form.req2.checked;
			var num = 0;

			if (req2 == true) {
				num = 1;
			}
			if (num == 1) {
				document.form.submit();
			} else {
				document.getElementById('checkok').innerHTML = '개인정보처리방침에 동의하셔야 합니다.';
				return false;
			}
		}
	</script>
</body>
</html>