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
<!-- <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gugi|Jua|Song+Myung|Sunflower:300" rel="stylesheet"> -->

<!-- custom CSS -->
<link rel="stylesheet" href="css/font.css?ver=1">
<link rel="stylesheet" href="css/sidebar.css?ver=1">
<link rel="stylesheet" href="css/common.css?ver=1">
<link rel="stylesheet" href="css/brand.css?ver=1">

<title>Insert title here</title>
</head>
<body>

<jsp:include page="/template/header.jsp" flush="false">
	<jsp:param name="title" value="브랜드 소개"/>
	<jsp:param name="bg" value="top_1.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />

<!-- brand view -->
<article class="center col-8 text-center">
	<!--브랜드 소개-->
	<div class="col" style="height: 80vh;">
		<h4 class="title text-left my-2">브랜드 소개</h4>
		<div class="row pt-2 col-12 d-flex align-items-center">
			<div class="col-5">
				<img class="img" style="folat: left;"
					src="./img/common/logo_8.png">
			</div>
			<div class="col-7 text-left">
				<strong class="" style="font-size: 17px;">초대해U에 방문하신
					여러분께 진심으로 감사의 말씀 드립니다.</strong><br>
				<br>
				<p style="font-size: 13px;">
					안녕하세요. 초대해U입니다. <br> 초대해U는 사랑하는 모든이에게 따뜻한 마음을 연결시켜주는
					사이트입니다. <br> 초대해U는 <b>초대해+U(You/당신) <u>“당신을 초대한다”</u></b>
					라는 의미의 합성어입니다. <br>
					<br> 모바일이 보편화되고 스마트폰 시장이 활성화되면서 초대장도 스마트하게 발 맞추어<br>야
					하는 시대가 왔습니다. 저희 초대해U는 급변하는 시대적 흐름에 맞추어 다양한 미<br>디어 개발을 통해
					고객의 다양한 시각적 요구를 충족시켜 드릴 수 있도록 항상 최선의 노력을 하고 있습니다. <br>
					<br> <img class="img" style="folat: left;"
						src="./img/info/brand/tomake.png" width="400" height="150"><br>
					<br> 초대해U는 다양한 모바일 “행사” 초대장 전문제작으로 디자인에서부터 맞춤제작까지 <br>제공하며,
					고객님의 특별한 행사를 더욱 돋보이게 해드리겠습니다.<br>
					<br> 초대해U는 행복한 추억을 만들어 드릴것이며, 풍족한 컨텐츠와 차별화된 서비스를 제<br>공할
					것이며, 언제나 여러분과 즐거운 동반자가 될 것을 약속드립니다.<br> 감사합니다.
				</p>
			</div>
		</div>
	</div>
	<!--브랜드 가치관-->
	<div class="col"
		style="height: 51vh; background: #f2f2f2;">
		<div class="row p-5 col-12 justify-content-center"
			style="font-size: 20px;">
			<!--<img src="http://via.placeholder.com/400x300">-->
			<p style="font-size: 16px; color: #4e4e4e;">
				<strong style="font-size: 20px; color: #f0771f;">무료로 모바일
					초대장을 만들어보세요!</strong><br> 무료로 모바일 초대장을 만들 수 있습니다.<br>
				<br> <strong style="font-size: 20px; color: #fecb05;">원하는
					색상,원하는 기능, 나만의 스타일을 설정가능!</strong><br> 배경,제목,테두리 색상, 폰트, 필요한 기능만을
				선택할 수 있습니다.<br>
				<br> <strong style="font-size: 20px; color: #f0771f;">하나의
					초대장으로 여러사람에게 나눠주세요!</strong><br> 초대장 하나로 많은 사람들에게 쉽고 빠르게 알리 실 수
				있습니다.<br>
				<br> <strong style="font-size: 20px; color: #fecb05;">스미싱
					걱정없이 이용하세요!</strong><br> 카톡 초대장문구와 이미지가 같이 첨부되어 스미싱 걱정없이 이용가능합니다.<br>
			</p>
		</div>
	</div>
	<!--차별과-->
	<div class="col" style="height: 65vh;">
		<h4 class="title text-left my-2">차별화</h4>
		<p class=text-left style="font-size: 13px; color: #4e4e4e;">
			<strong style="font-size: 17px;">초대해U에서는 당신이 주인공입니다.</strong><br>
			초대해U는 상품, 서비스, 디스플레이 등 모든 면에서 고객 중심의 새로운 패러다임을 제시합니다.<br>
			기존에 경험할 수 없던 즐거운 체험과 새로운 감동으로 여러분들의 특별한 하루를 책임지겠습니다.
		</p>
		<div class="col-10 d-flex mx-auto py-2 justify-content-center"
			style="height: 45vh;">
			<img class="img" style="folat: left;" src="./img/info/brand/differ.png"
				width="650" height="330">
		</div>
	</div>
	<!--시스템 구조 그래프-->
	<div class="col py-3"
		style="background: #f2f2f2;">
		<h4 class="title text-left my-2">팀원 소개</h4>
		<!--프로필-->
		<div class="profile row my-4">
			<div class="col-6 item-box">
	            <!-- Shop item images -->
	            <div class="shop-item">
	              <div class="item-img">
	                <img src="./img/info/brand/pmj.jpg" style="width:250px; height:250px; filter: gray;  -webkit-filter: grayscale(1);">
	              </div>
	            </div>
	            <!-- End Shop item images -->
	            <!-- Shop item info -->
	            <div class="shop-item-info">
	              <h4 class="shop-item-name">박민정 (디자인/퍼블리싱)</h4>
	              <div class="shop-item-price" style="">
	              	<span>
	              		<p>
						성결대학교 멀티미디어공학부 전공
						</p>
					</span>
				  </div>
	            </div>
	            <!-- Shop item info -->
	         </div>
	         <div class="col-6 item-box">
	            <!-- Shop item images -->
	            <div class="shop-item">
	              <div class="item-img">
	                <img src="./img/info/brand/syj.jpeg" style="width:250px; height:250px; filter: gray;  -webkit-filter: grayscale(1);">
	              </div>
	            </div>
	            <!-- End Shop item images -->
	            <!-- Shop item info -->
	            <div class="shop-item-info">
	              <h4 class="shop-item-name">송유진 (퍼블리싱/개발)</h4>
	              <div class="shop-item-price" style="">
	              	<span>
	              		<p>
						성결대학교 멀티미디어공학부 전공
						</p>
					</span>
				  </div>
	            </div>
	            <!-- Shop item info -->
	         </div>
	         <div class="col-6 item-box">
	            <!-- Shop item images -->
	            <div class="shop-item">
	              <div class="item-img">
	                <img src="./img/info/brand/sdw.jpeg" style="width:250px; height:250px; filter: gray;  -webkit-filter: grayscale(1);">
	              </div>
	            </div>
	            <!-- End Shop item images -->
	            <!-- Shop item info -->
	            <div class="shop-item-info">
	              <h4 class="shop-item-name">송다원 (디자인/개발)</h4>
	              <div class="shop-item-price" style="">
	              	<span>
	              		<p>
						성결대학교 멀티미디어공학부 전공
						</p>
					</span>
				  </div>
	            </div>
	            <!-- Shop item info -->
	         </div>
	         <div class="col-6 item-box">
	            <!-- Shop item images -->
	            <div class="shop-item">
	              <div class="item-img">
	                <img src="./img/info/brand/kkk.jpeg" style="width:250px; height:250px; filter: gray;  -webkit-filter: grayscale(1);">
	              </div>
	            </div>
	            <!-- End Shop item images -->
	            <!-- Shop item info -->
	            <div class="shop-item-info">
	              <h4 class="shop-item-name">김기광(개발)</h4>
	              <div class="shop-item-price" style="">
	              	<span>
	              		<p>
						성결대학교 멀티미디어공학부 전공
						</p>
					</span>
				  </div>
	            </div>
	            <!-- Shop item info -->
	         </div>
       </div>
       <!--프로필_end-->
	</div>
	
</article>
<!-- /brand view -->

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