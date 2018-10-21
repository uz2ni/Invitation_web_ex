<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="css/common.css?ver=1">

<!-- header -->
<div -ms-overflow-style: none; id="section1" class="container-fluid p-0"
	style="height: 100vh; background-image: url(./img/common/bg.jpeg); background-size: cover;">
	
	<a href="javascript:void(0)" class="lnb_mobileicon" id="lnb_mobileicon">
			<div class="hamburger" id="hamburger">
				<div class="bar top"></div>
				<div class="bar middle"></div>
				<div class="bar bottom"></div>
			</div>
		</a>
	<header id="menu" class="nav-back d-flex sublnb_wrap">
		<div style="width:20vh; padding-top: 10px;">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".nav-back-center">
		        <span class="sr-only">Toggle navigation</span>
		      </button>
		</div>
		<div class="d-flex col lnb_menu" style="width:60vh;">
			<nav class="nav-back-center text-center">
				<ul class="card-img-overlay nav justify-content-center" id="navbarSupportedContent">
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
						<a class="nav-link pt-3" href="/"><img src="./img/common/main_logo_1.png" width="200" height="90" /></a>
					</li>
					<!--/drop down-->
					<!--drop down-->
					<div class="dropdown">
						<li class="nav-item-top dropdown-toggle" data-toggle="dropdown">
							<a class="nav-link" href="#">초대장 관리</a>
						</li>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="myService.do">초대장 관리</a>
						<c:if test="${contents != 'no'}">
							<a class="dropdown-item" href="statisticAttend.do?urlId=${contents[0].urlId}">통계</a>
						</c:if>
						<c:if test="${contents == 'no'}">
							<a class="dropdown-item" href="login.do">통계</a>
						</c:if>
						</div>
					</div>
					<!--/drop down-->
					<!--drop down-->
					<div class="dropdown">
						<li class="nav-item-top dropdown-toggle" data-toggle="dropdown">
							<a class="nav-link" href="#">마이 페이지</a>
						</li>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="myPayUseInfo.do">결제/사용 내역</a>
							<a class="dropdown-item" href="myInfo.do">내 정보</a>
						</div>
					</div>
					<!--/drop down-->
				</ul>
			</nav>
		</div>	
		<div class="nav-right d-flex" style="width:20vh;">
			<!-- 로그인 세션 여부에 따라 다른 버튼 보여주기 -->
	    	<% if(session.getAttribute("user") == null) { %> <!-- 로그인 세션 없을 경우 -->
		    	<a href="loginForm.do"><button type="button" class="btn login-btn mt-1" style="width:60px;">로그인</button></a>
				<a href="joinForm.do"><button type="button" class="btn login-btn mt-1">회원가입</button></a>
	    	<% } else { %> <!-- 로그인 세션 있을 경우 -->
		    	<!-- <a href="contentEditForm.do"><button type="button" class="btn login-edit mt-1"">초대장 편집</button></a>-->
		    	<div class="dropdown"><!-- href="contentEditForm.do" -->
						<button class="btn login-edit dropdown-toggle mt-1" type="button"data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						     초대장 편집
						</button>
						<div class="login-edit-list dropdown-menu">
							<!-- 18.10.06 유진 수정 -->
							<c:if test="${contents != 'no'}">
								<c:forEach items="${contents}" var="content">
								    <a class="dropdown-item" href="contentEditForm.do?urlId=${content.urlId}">${content.urlName}</a>
								</c:forEach>
							</c:if>
							<!-- / 수정 끝 -->
						</div>
				</div>
				<a href="logoutPro.do" onclick="alert('로그아웃 성공');"><button type="button" class="btn login-btn mt-1">로그아웃</button></a>
	    	<% } %>
		</div>
		<!--  송다원 18.09.09section별 스크롤 수정 및 추가 */  -->
			<div id="cont1" class="section-scroll text-center">
					<div class="sub-section ssm-section"></div>
					<div class="sub-section ssm-section"></div>
					<div class="sub-section ssm-section"></div>
					<div class="sub-section ssm-section"></div>
			</div>
	</header>
		
			
		
		
	<!--section1 - navigation 아래 첫 섹션 -->
	<section class="m-0" id="section1" style="background:rgba(0,0,0,0.0);">
		<div class="col text-center" style="padding-top: 200px; color: white;">
			<h1>당신의 행사,</h1>
			<h3>특별하고 뜻깊은 행사로 만들겠습니다.</h3>
		</div>
		<div class="row justify-content-center align-items-center" style="padding-top:50px;">
			<div>
				<a class="buttom_title justify-content-center text-center pt-4"
					href="brand.do">
					<button type="button" class="btn btn-lg index-s1-btn"
						style="">서비스 소개 바로가기</button>
				</a>
			</div>
		</div>
	</section>
</div>