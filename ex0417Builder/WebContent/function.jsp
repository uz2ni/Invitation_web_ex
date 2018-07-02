<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- meta tag -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- web-font -->
<!-- Jua --> 
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gugi|Jua|Song+Myung|Sunflower:300" rel="stylesheet">

<!-- custom CSS -->
<link rel="stylesheet" href="css/font.css?ver=1">
<link rel="stylesheet" href="css/sidebar.css?ver=1">
<link rel="stylesheet" href="css/common.css?ver=1">
<link rel="stylesheet" href="css/function.css?ver=1">

<title>Insert title here</title>
</head>
<body>

<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="기능 소개"/>
	<jsp:param name="bg" value="top_1.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />

<!-- function view -->
<article class="center col-8 text-center">
   	<!--part1-->
    <div class="part1 d-flex col" style="height:40vh; background:#ffffff;">
    	<div class="col-4 d-flex justify-content-center" style="">
	    		<div class="rounded-circle align-self-center" style="">
	    			<img src="./img/info/function/service_bg/service_bg1.png">
	    			<div class="rounded-circle-inner align-self-center">
	    				<img src="./img/info/function/service_icon/service_icon1.png">
	    				<p>행사 종류에 따른<br>다양한 스킨 제공</p>
	    			</div>
	    		</div>
    	</div>
    	<div class="col-4 d-flex justify-content-center" style="">
    		<div class="rounded-circle align-self-center" style="">
	    			<img src="./img/info/function/service_bg/service_bg2.png">
	    			<div class="rounded-circle-inner align-self-center">
	    				<img src="./img/info/function/service_icon/service_icon2.png">
	    				<p>첫 방문자도 쉽고 빠른<br>편리한 제작 방법</p>
	    			</div>
	    		</div>
    	</div>
    	<div class="col-4 d-flex justify-content-center" style="">
    		<div class="rounded-circle align-self-center" style="">
	    			<img src="./img/info/function/service_bg/service_bg3.jpg">
	    			<div class="rounded-circle-inner align-self-center">
	    				<img src="./img/info/function/service_icon/service_icon3.png">
	    				<p>원할 때 언제 어디서든지<br>실시간 수정</p>
	    			</div>
	    	</div>
    	</div>
    </div>
    <!--part2-->
    <div class="part2 d-flex col" style="height:40vh; background:#ffffff;">
    	<div class="col-4 d-flex justify-content-center" style="">
	    		<div class="rounded-circle align-self-center" style="">
	    			<img src="./img/info/function/service_bg/service_bg4.jpg">
	    			<div class="rounded-circle-inner align-self-center">
	    				<img src="./img/info/function/service_icon/service_icon4.png">
	    				<p>궁금한 사항은 언제든지<br>실시간 문의 서비스</p>
	    			</div>
	    		</div>
    	</div>
    	<div class="col-4 d-flex justify-content-center" style="">
	    		<div class="rounded-circle align-self-center" style="">
	    			<img src="./img/info/function/service_bg/service_bg5.jpg">
	    			<div class="rounded-circle-inner align-self-center">
	    				<img src="./img/info/function/service_icon/service_icon5.png">
	    				<p>모바일 초대장<br>스미싱 오해는 NO</p>
	    			</div>
	    		</div>
    	</div>
    	<div class="col-4 d-flex justify-content-center" style="">
	    		<div class="rounded-circle align-self-center" style="">
	    			<img src="./img/info/function/service_bg/service_bg6.jpg">
	    			<div class="rounded-circle-inner align-self-center">
	    				<img src="./img/info/function/service_icon/service_icon6.png">
	    				<p>행사 참석자들을 위한<br>감사 답례 문자</p>
	    			</div>
	    		</div>
    	</div>
    </div>
    <!--part3-->
    <div class="part3 d-flex col" style="height:40vh; background:#ffffff;">
    	<div class="col-4 d-flex justify-content-center" style="">
	    		<div class="rounded-circle align-self-center" style="">
	    			<img src="./img/info/function/service_bg/service_bg7.jpg">
	    			<div class="rounded-circle-inner align-self-center">
	    				<img src="./img/info/function/service_icon/service_icon7.png">
	    				<p>장기적 행사를 위한<br>통계관리 서비스</p>
	    			</div>
	    		</div>
    	</div>
    	<div class="col-4 d-flex justify-content-center" style="">
	    		<div class="rounded-circle align-self-center" style="">
	    			<img src="./img/info/function/service_bg/service_bg8.jpg">
	    			<div class="rounded-circle-inner align-self-center">
	    				<img src="./img/info/function/service_icon/service_icon8.png">
	    				<p>정기적 회비도 간단하고 빠르게<br>입금 서비스</p>
	    			</div>
	    		</div>
    	</div>
    	<div class="col-4 d-flex justify-content-center" style="">
	    		<div class="rounded-circle align-self-center" style="">
	    			<img src="./img/info/function/service_bg/service_bg9.jpg">
	    			<div class="rounded-circle-inner align-self-center">
	    				<img src="./img/info/function/service_icon/service_icon9.png">
	    				<p>한번 본 초대장도 다시한번<br>행사 D-day 알림</p>
	    			</div>
	    		</div>
    	</div>
    </div>
    <!--part4-->
    <div class="part4 d-flex col" style="height:40vh; background:#ffffff;">
    	<div class="col-4 d-flex justify-content-center" style="">
	    		<div class="rounded-circle align-self-center" style="">
	    			<img src="./img/info/function/service_bg/service_bg10.jpg">
	    			<div class="rounded-circle-inner align-self-center">
	    				<img src="./img/info/function/service_icon/service_icon10.png">
	    				<p>네비게이션 앱으로<br>길 안내 역할까지</p>
	    			</div>
	    		</div>
    	</div>
    	<div class="col-4 d-flex justify-content-center" style="">
	    		<div class="rounded-circle align-self-center" style="">
	    			<img src="./img/info/function/service_bg/service_bg11.jpg">
	    			<div class="rounded-circle-inner align-self-center">
	    				<img src="./img/info/function/service_icon/service_icon11.png">
	    				<p>휴대폰 안의 연락처를 한번에<br>주소록 연동 서비스</p>
	    			</div>
	    		</div>
    	</div>
    	<div class="col-4 d-flex justify-content-center" style="">
	    		<div class="rounded-circle align-self-center" style="">
	    			<img src="./img/info/function/service_bg/service_bg12.jpg">
	    			<div class="rounded-circle-inner align-self-center">
	    				<img src="./img/info/function/service_icon/service_icon12.png">
	    				<p>간편하게 Tag 검색으로<br>원하는 정보를 빠르게</p>
	    			</div>
	    		</div>
    	</div>
    </div>
</article>

<jsp:include page="/template/footer.jsp" flush="false" />


<!-- bootstrap js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- top js -->
<script type="text/javascript" src="js/top.js?v=<%=System.currentTimeMillis()%>"></script>
<!-- side bar js -->
<script type="text/javascript" src="js/sidebar.js?v=<%=System.currentTimeMillis()%>"></script>

<!-- custom js -->


</body>
</html>