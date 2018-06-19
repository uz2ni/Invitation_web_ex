<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- meta tag -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- custom CSS -->
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/member.css">

<title>Insert title here</title>
</head>
<body>
<jsp:include page="/template/header.jsp" flush="false" />

<section class="row justify-content-center py-5" style="height:80vh;">
   <center class="col-9 d-flex flex-column justify-content-center" style="background:#f2f2f2;">
  	<!-- login -->
  	    <center>
  		<h2 style="background:#fa5e5e; color:white;">로그인</h2>
  		</center>
  		<hr>
  		<center class="d-flex flex-column">
  			<h3>${msg}</h3>
			<form class="form-horizontal justify-content-center" action="loginPro.do" method="post" style="width:300px;"> 
			    <div class="form-group">
			      <input type="email" name="user-email" class="form-control" title="사용하실 아이디(이메일 주소)를 입력해주세요" placeholder="아이디(이메일 주소)" value="${email == null ? '' : email}" required>
			    </div>
			    <div class="form-group">
			      <input type="password" name="user-pw" class="form-control" title="숫자 7자 이상 ~ 14자 이내" placeholder="비밀번호(숫자 7자~14자)" required>
			    </div>
			    
			    <div class="form-check text-left pb-3">
			      <input type="checkbox" id="chk_save_id" class="form-check-input">
			      <label class="form-check-label" for="dropdownCheck">
			        아이디 저장
			      </label>
			    </div>
				    <button id="lb" type="submit" class="btn" style="background:#fa5e5e; color:white; width:300px;">로그인</button>
			  </form>
		  <!--<div class="dropdown-divider"></div>-->
		  	<a class="dropdown-item" href="joinForm.do">회원가입</a>
		  	<a class="dropdown-item" href="password_search.html">비밀번호 찾기</a>
		</div>

	 	</center>
   </center>
  </section>

<jsp:include page="/template/footer.jsp" flush="false" />

<!-- bootstrap js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- custom js -->
<script src="js/member.js?v=<%=System.currentTimeMillis() %>"></script>
</body>
</html>