<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
<div -ms-overflow-style: none; id="section1" class="container-fluid p-0"
	style="height: 100vh; background-image: url(./img/common/bg.jpeg); background-size: cover;">
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
						<a class="dropdown-item" href="myService.do">나의 서비스</a>
						<a class="dropdown-item" href="sendMessage.do">문자 보내기</a>
					</div>
				</div>
				<!--/drop down-->
				<!--drop down-->
				<div class="dropdown">
					<li class="nav-item-top dropdown-toggle" data-toggle="dropdown">
						<a class="nav-link" href="#">마이 페이지</a>
					</li>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="serviceInfo.do">서비스 신청 내역</a>
						<a class="dropdown-item" href="pointInfo.do">포인트 충전내역</a>
						<a class="dropdown-item" href="statistics.do">통계 관리</a>
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
	<!--section1 - navigation 아래 첫 섹션 -->
	<section class="m-0" id="section1" style="background:rgba(0,0,0,0.0);">
		<div class="col text-center pt-5 mt-5" style="height: 19vh; color: white;">
			<h1>당신의 행사,</h1>
			<h3>특별하고 뜻깊은 행사로 만들겠습니다.</h3>
		</div>
		<div class="row justify-content-end" style="height: 69vh;">
			<div class="row col-12" style="">
				<a style="height:10vh; margin-left:5%; margin-top:10%;"
					class="row col-10 buttom_title justify-content-center text-center pt-4"
					href="brand.do">
					<button type="button" class="btn btn-lg"
						style="background:#f0771f; color: white; font-weight: bold; width:250px;">서비스 소개 바로가기</button>
				</a>
<!-- 				
				<div class="section col align-self-center text-center mx-5"
						style="margin-top: -100px; height: 40vh; background: rgba(0, 0, 0, 0.6); border-radius: 100%;"><img src="./img/pay/type_1.png" class="" ></div>
				<div class="section col align-self-center text-center mx-5"
						style="margin-top: -100px; height: 40vh; background: rgba(0, 0, 0, 0.6); border-radius: 100%;">발표회</div>
				<div class="section col align-self-center text-center mx-5"
						style="margin-top: -100px; height: 40vh; background: rgba(0, 0, 0, 0.6); border-radius: 100%;">종교 행사</div>
 -->						
				<!-- 섹션이동 / 송다원-->
				<div class="scroll-style col-1 row justify-content-end" style="margin-right:5vh;">
					<ul style="position: fixed; z-index:100;">
						<div class="dot my-2" id="bt01">
							<a><img src="./img/common/bt.png"></a>
						</div>
						<div class="dot my-2" id="bt02">
							<a><img src="./img/common/bt.png"></a>
						</div>
						<div class="dot my-2" id="bt03">
							<a><img src="./img/common/bt.png"></a>
						</div>
						<div class="dot my-2" id="bt04">
							<a><img src="./img/common/bt.png"></a>
						</div>
					</ul>
				</div>
				<!--섹션이동_end-->
			</div>
		</div>
	</section>
</div>