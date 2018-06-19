<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="container-fluid" style="height:100vh;">
<!-- header -->
  <header id="menu" class="index-nav-back row justify-content-end">
    <nav class="nav-back-center col-8 mx-5 my-3 text-center" style="height:85px;">
		<ul class="card-img-overlay nav justify-content-center">
		  <!--drop down-->
		  <div class="dropdown">
			  <li class="index-nav-item-top dropdown-toggle" data-toggle="dropdown">
			    <a class="nav-link" href="#">서비스 소개</a>
			  </li>
			  <div class="dropdown-menu">
			    <a class="dropdown-item" href="service_1.html">기능소개</a>
			    <a class="dropdown-item" href="lookList.do">구경하기</a>
			    <a class="dropdown-item" href="service_3.html">매뉴얼</a>
			    <a class="dropdown-item" href="service_4.html">고객센터</a>
			    <a class="dropdown-item" href="service_5.html">회사소개</a>
			  </div>
		  </div>
		  <!--/drop down-->
		  <!--drop down-->
		  <div class="dropdown">
			  <li class="index-nav-item-top dropdown-toggle" data-toggle="dropdown">
			    <a class="nav-link" href="#">신청 하기</a>
			  </li>
			  <div class="dropdown-menu">
			    <a class="dropdown-item" href="servicePay.do">제작 신청하기</a>
			  </div>
		  </div>
		  <!--/drop down-->
			  <li class="nav-item-logo" style="margin-top:-35px;">
			    <a class="nav-link" href="index.do"><img src="./img/common/logo.png" width="120" height="110"/></a>
			  </li>
		  <!--/drop down-->		  
		  <!--drop down-->
		  <div class="dropdown">
			  <li class="index-nav-item-top dropdown-toggle" data-toggle="dropdown">
			    <a class="nav-link" href="#">초대장 관리</a>
			  </li>
			  <div class="dropdown-menu">
			    <a class="dropdown-item" href="myService.do">나의 서비스</a>
			    <a class="dropdown-item" href="manage_2.html">포인트 충전내역</a>
			    <a class="dropdown-item" href="manage_3.html">문자 보내기</a>
			  </div>
		  </div>
		  <!--/drop down-->
		  <!--drop down-->
		  <div class="dropdown">
			  <li class="index-nav-item-top dropdown-toggle" data-toggle="dropdown">
			    <a class="nav-link" href="#">마이 페이지</a>
			  </li>
			  <div class="dropdown-menu">
			  	<a class="dropdown-item" href="my_1.html">서비스 신청 내역</a>
			    <a class="dropdown-item" href="my_2.html">통계 관리</a>
			  </div>
		  </div>
		  <!--/drop down-->
		</ul>
    </nav>
	    <div class="nav-right mx-3">
	    <!-- 로그인 세션 여부에 따라 다른 버튼 보여주기 -->
	    <% if(session.getAttribute("user") == null) { %> <!-- 로그인 세션 없을 경우 -->
	  	  <a href="loginForm.do"><button type="button" class="btn mt-1" style="background:white; color:#2d62cd; font-weight:bold; width:85px;">로그인</button></a>
		  <a href="joinForm.do"><button type="button" class="btn mt-1" style="background:white; color:#2d62cd; font-weight:bold; width:85px;">회원가입</button></a>
	  	<% } else { %> <!-- 로그인 세션 있을 경우 -->
	  	  <a href="contentEditForm.do"><button type="button" class="btn mt-1" style="background:white; color:#2d62cd; font-weight:bold; width:85px;">초대장 편집</button></a>
		  <a href="logoutPro.do" onclick="alert('로그아웃 성공');"><button type="button" class="btn mt-1" style="background:white; color:#2d62cd; font-weight:bold; width:85px;">로그아웃</button></a>
		<% } %>	  	     	
	    </div>
  </header>