<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="utf-8" %>
    
<% 
	//String title = java.net.URLDecoder.decode(request.getParameter("title"), "utf-8");
	//title = (title == null) ? "" : title;
	String title = request.getParameter("title");
	String bg = request.getParameter("bg");
%>    
<head>
<meta charset="utf-8">
<meta http-e quiv="Content-type" CONTENT="text/html;charset=utf-8">
</head>
<!-- header -->
<div -ms-overflow-style: none; id="section1" class="container-fluid p-0"
	style="height: 100vh; background-image: url(./img/common/<%=bg%>); background-size: cover;">
	
	<header id="menu" class="nav-back row justify-content-end m-0">
		<nav class="nav-back-center col-8 mx-5 my-3 text-center"
			style="height: 12vh;">
			<ul class="card-img-overlay nav justify-content-center">
				<!--drop down-->
				<div class="dropdown">
					<li class="nav-item-top dropdown-toggle" data-toggle="dropdown">
						<a class="nav-link" href="#">서비스 소개</a>
					</li>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="brand.do">브랜드 소개</a>
						<a class="dropdown-item" href="function.do">기능 소개</a>
						<a class="dropdown-item" href="manual.do">매뉴얼</a>
						<a class="dropdown-item" href="lookList.do">구경하기</a>
						<a class="dropdown-item" href="faq.do">고객 센터</a>
					</div>
				</div>
				<!--/drop down-->
				<!--drop down-->
				<div class="dropdown">
					<li class="nav-item-top dropdown-toggle" data-toggle="dropdown">
						<a class="nav-link" href="#">신청 하기</a>
					</li>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="servicePay.do">제작 신청하기</a>
						<a class="dropdown-item" href="messagePay.do">문자 포인트 충전</a>
					</div>
				</div>
				<!--/drop down-->
				<li class="nav-item-logo" style="margin-top: -40px;">
					<a class="nav-link pt-3" href="index.do"><img src="./img/common/logo_8.png" width="200" height="90" /></a>
				</li>
				<!--/drop down-->
				<!--drop down-->
				<div class="dropdown">
					<li class="nav-item-top dropdown-toggle" data-toggle="dropdown">
						<a class="nav-link" href="#">초대장 관리</a>
					</li>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="myService.do">초대장 관리</a>
						<a class="dropdown-item" href="statistics.do">통계</a>
					</div>
				</div>
				<!--/drop down-->
				<!--drop down-->
				<div class="dropdown">
					<li class="nav-item-top dropdown-toggle" data-toggle="dropdown">
						<a class="nav-link" href="#">마이페이지</a>
					</li>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="myPayUseInfo.do">결제/사용 내역</a>
						<a class="dropdown-item" href="myInfo.do">내 정보</a>
					</div>
				</div>
				<!--/drop down-->
			</ul>
		</nav>
		<div class="nav-right mx-3">
			<!-- 로그인 세션 여부에 따라 다른 버튼 보여주기 -->
	    	<% if(session.getAttribute("user") == null) { %> <!-- 로그인 세션 없을 경우 -->
		    	<a href="loginForm.do"><button type="button" class="btn login-btn mt-1">로그인</button></a>
				<a href="joinForm.do"><button type="button" class="btn login-btn mt-1" style="">회원가입</button></a>
	    	<% } else { %> <!-- 로그인 세션 있을 경우 -->
		    	<a href="contentEditForm.do"><button type="button" class="btn login-btn mt-1">초대장 편집</button></a>
				<a href="logoutPro.do" onclick="alert('로그아웃 성공');"><button type="button" class="btn login-btn mt-1" style="">로그아웃</button></a>
	    	<% } %>
		</div>
	</header>
	
  	<!-- section1 -->
  	<section class="row justify-content-center m-0" style="height:auto;">
	    <article class="col-12 d-flex flex-column justify-content-center" style="height:35vh; font-size:40px; text-align:center;">
	        <a class="card-img-overlay" style="top:90px; color:white; font-weight:bold;"><%=title%></a> 
	        <div class="banner row justify-content-end" style="padding-right:300px;">
	        </div>
	    </article>
	</section>
	<!-- 라인 -->
    <div class="menubar" style="background-repeat:repeat; background-image: url(./img/common/pattern.png); background-size:500px; ">
    	<div class="menubar-name col-sm-2" style="height:10px;"></div>
 	</div>
 	<!-- /라인 --> 
	
<!-- 사이드바, 섹션 묶는 wrap. footer에서 닫는 코드 사용 -->
<article class="side-back col-12 d-flex flex-article" style="auto;">