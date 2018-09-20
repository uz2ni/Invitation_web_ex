<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>${content.topTitle}</title>

    <!-- Bootstrap core CSS -->
    <link href="${skinContext}vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <%-- <link href="${skinContext}vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> --%>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="${skinContext}vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${skinContext}css/creative.min.css" rel="stylesheet">
    
    <!-- skin CSS -->
    <link href="${skinContext}css/skin1.css" rel="stylesheet">
</head>
<body id="page-top">
<input type="hidden" name="commonContext" value="${commonContext}">
<input type="hidden" name="skinContext" value="${skinContext}">
<input type="hidden" name="contentStr" value="${contentStr}">


   <!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
     <div class="container">
       <a class="navbar-brand js-scroll-trigger" href="#page-top">skin1</a>
       <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
       </button>
       <div class="collapse navbar-collapse" id="navbarResponsive">
         <ul class="navbar-nav ml-auto">
           <li class="nav-item">
             <a class="nav-link js-scroll-trigger" href="#about">About</a>
           </li>
           <li class="nav-item">
             <a class="nav-link js-scroll-trigger" href="#services">Services</a>
           </li>
           <li class="nav-item">
             <a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a>
           </li>
           <li class="nav-item">
             <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
           </li>
         </ul>
       </div>
     </div>
   </nav>

   <header class="masthead text-center text-white d-flex">
     <div class="container my-auto">
       <div class="row">
         <div class="col-lg-10 mx-auto">
           <h1>
           
           
             <!-- 상단 제목, 색상, 정렬 -->
             <p class="skin-top-title"></p>
             <!-- 상단 이미지 선택, 배치 -->
             <div class="skin-top-img"></div>
             
             <!-- 일자 -->
             <div class="skin-info-date">
             	<span class="skin-info-date-start"></span>
             	~
             	<span class="skin-info-date-end"></span>
             </div>
             <!-- dday -->
             <span>dday:</span>
             <span class="skin-info-dday"></span>
             <br>
             <!-- 행사 시간 -->
             <span>시간:</span>
             <span class="skin-info-time"></span>
             <br>
             <!-- 행사 장소 -->
             <span>장소:</span>
             <span class="skin-info-place"></span>
             <br>
             
             <!-- 인사말 -->
             <span>인사말:</span>
             <p class="skin-add-info-welcome"></p>
             <!-- 발표자 이름 -->
             <span>발표자 이름:</span>
             <span class="skin-add-info-img-name"></span>
             <br>
             <!-- 발표자 프로필 -->
             <div class="skin-add-info-img-profile"></div>
             <!-- 자리 배치도 이미지 -->
             <span>자리배치도</span>
             <div class="skin-add-info-img-sit"></div>
             <!-- 문의정보 - 주최자 이름 -->
             <span>주최자 이름:</span>
             <span class="skin-add-info-call-name"></span>
             <br>
             <!-- 문의정보 - 주최자 번호 -->
             <span>주최자 번호:</span>
             <span class="skin-add-info-call-number"></span>
             <br>
             <!-- 주최사명 -->
             <span>주최사 이름:</span>
             <span class="skin-add-info-logo-hold-name"></span>
             <br>
             <!-- 주최사 로고 -->
             <div class="skin-add-info-hold-img"></div>
             <!-- 후원사명 -->
             <span>후원사 이름:</span>
             <span class="skin-add-info-logo-help-name"></span>
             <br>
             <!-- 후원사 로고 -->
             <div class="skin-add-info-help-img"></div>
             <!-- 행사 장소 주소 -->
             <span>행사 주소:</span>
             <span class="skin-info-address"></span>
             <br>
             <!-- 장소 지도 -->
             <div class="skin-info-map">
             	<div id="info-address-map" style="width:100%;height:300px;"></div>
             </div>
             <!-- 네비 사용 여부 -->
             <div class="skin-info-navi">
	            <a id="navi" href="#">
				  <img src="${commonContext}img/content/edit_img/page_img/navi_icon.png" width=50 height=50/>
				</a>
             </div>
             <!-- 길찾기 앱 바로가기 사용 여부 -->
             <div class="skin-info-find">
             	<a id="info-find-link" href="#" target="_blank">
			  <img src="${commonContext}img/content/edit_img/page_img/daum_icon.png" width=50 height=50 style="border-radius: 5px;"/>
			</a>
             </div>
             <!-- 약도 이미지 -->
             <span>약도 이미지</span>
             <div class="skin-info-load-img"></div>
             <!-- 버스 교통 정보 -->
             <span>버스 교통 정보</span>
             <div class="skin-info-bus"></div>
             <!-- 지하철 교통 정보 -->
             <span>지하철 교통 정보</span>
             <div class="skin-info-subway"></div>
             <!-- 주차 교통 정보 -->
             <span>주차 교통 정보</span>
             <div class="skin-info-parking"></div>
             
             <!-- 갤러리 -->
             <span>갤러리</span>
             <div class="skin-gallery"></div>
             <!-- 동영상 -->
             <span>동영상</span>
             <div class="skin-video">
             	<iframe name='skin-video' src='' width="100%" frameborder="0" alow='autoplay; encrypted-media' allowfullscreen></iframe>
             	<!-- <iframe name='skin-video' src='' width="100%" frameborder="0" alow='autoplay; encrypted-media' allowfullscreen></iframe> -->
             </div>
             <!-- 참석 여부 체크 -->
             <div class="skin-attend">
             	참석 여부
             </div>
             <!-- 방명록 체크 -->
             <div class="skin-comment">
             	<span>방명록 사용중</span>
             	<ul>
					<c:forEach var="contentGuest" items="${contentGuests}">
	             		<li class="guest-li-${contentGuest.urlGuestId}">
		             		<p>작성자:${contentGuest.urlGuestName}</p><p>내용:${contentGuest.urlGuestText}</p>
		             		작성일:<span>${contentGuest.urlGuestAt}</span>
		             		<span data-target="#guest-confirm-${contentGuest.urlGuestId}" data-toggle="modal" style="cursor: pointer; color: #e74c3c;">X</span>
		             		<!-- delete button modal -->
			             	<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" id="guest-confirm-${contentGuest.urlGuestId}">
							  <div class="modal-dialog modal-sm modal-dialog-centered">
							    <div class="modal-content">
							      <div class="modal-header">
							      	<h4 class="modal-title text-dark" id="myModalLabel">방명록 삭제</h4>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							      </div>
							      <div class="modal-body">
									  <div class="form-group">
									    <label for="guest-password-${contentGuest.urlGuestId}" class="text-dark" style="font-size: 1rem;">방명록 비밀번호를 입력해주세요.</label>
									    <input type="password" class="form-control" id="guest-password-${contentGuest.urlGuestId}" name="guest-password-${contentGuest.urlGuestId}" placeholder="Password">
									  </div>
								  </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-default modal-btn-si" name="guest-btn-si-${contentGuest.urlGuestId}">취소</button>
							        <button type="button" class="btn btn-primary modal-btn-no" name="guest-btn-no-${contentGuest.urlGuestId}">삭제</button>
							      </div>
							    </div>
							  </div>
							</div>
		             	</li>
	             		<hr>
					</c:forEach>             	
             	</ul>
				<!-- guest write btn -->
             	<a href="${commonContext}guestForm.jsp?urlId=${content.urlId}">방명록 쓰기</a>
             </div>
             <!-- sns 공유 체크 -->
             <div class="skin-sns-share">
             	sns 공유 아이콘
             </div>
             
            
             <!-- <strong>Your Favorite Source of Free Bootstrap Themes</strong> -->
             <div class="content" style="font-size:12px;">
             </div>
           </h1>
           <hr>
         </div>
         <div class="col-lg-8 mx-auto">
           <p class="text-faded mb-5 text-box"></p>
           <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More</a>
         </div>
       </div>
     </div>
   </header>

   <section class="bg-primary" id="about">
     <div class="container">
       <div class="row">
         <div class="col-lg-8 mx-auto text-center">
           <h2 class="section-heading text-white">We've got what you need!</h2>
           <hr class="light my-4">
           <p class="text-faded mb-4">Start Bootstrap has everything you need to get your new website up and running in no time! All of the templates and themes on Start Bootstrap are open source, free to download, and easy to use. No strings attached!</p>
           <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Get Started!</a>
         </div>
       </div>
     </div>
   </section>

   <section id="services">
     <div class="container">
       <div class="row">
         <div class="col-lg-12 text-center">
           <h2 class="section-heading">At Your Service</h2>
           <hr class="my-4">
         </div>
       </div>
     </div>
     <div class="container">
       <div class="row">
         <div class="col-lg-3 col-md-6 text-center">
           <div class="service-box mt-5 mx-auto">
             <i class="fa fa-4x fa-diamond text-primary mb-3 sr-icons"></i>
             <h3 class="mb-3">Sturdy Templates</h3>
             <p class="text-muted mb-0">Our templates are updated regularly so they don't break.</p>
           </div>
         </div>
         <div class="col-lg-3 col-md-6 text-center">
           <div class="service-box mt-5 mx-auto">
             <i class="fa fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
             <h3 class="mb-3">Ready to Ship</h3>
             <p class="text-muted mb-0">You can use this theme as is, or you can make changes!</p>
           </div>
         </div>
         <div class="col-lg-3 col-md-6 text-center">
           <div class="service-box mt-5 mx-auto">
             <i class="fa fa-4x fa-newspaper-o text-primary mb-3 sr-icons"></i>
             <h3 class="mb-3">Up to Date</h3>
             <p class="text-muted mb-0">We update dependencies to keep things fresh.</p>
           </div>
         </div>
         <div class="col-lg-3 col-md-6 text-center">
           <div class="service-box mt-5 mx-auto">
             <i class="fa fa-4x fa-heart text-primary mb-3 sr-icons"></i>
             <h3 class="mb-3">Made with Love</h3>
             <p class="text-muted mb-0">You have to make your websites with love these days!</p>
           </div>
         </div>
       </div>
     </div>
   </section>

   <section class="p-0" id="portfolio">
     <div class="container-fluid p-0">
       <div class="row no-gutters popup-gallery">
         <div class="col-lg-4 col-sm-6">
           <a class="portfolio-box" href="${skinContext}img/portfolio/fullsize/1.jpg">
             <img class="img-fluid" src="${skinContext}img/portfolio/thumbnails/1.jpg" alt="">
             <div class="portfolio-box-caption">
               <div class="portfolio-box-caption-content">
                 <div class="project-category text-faded">
                   Category
                 </div>
                 <div class="project-name">
                   Project Name
                 </div>
               </div>
             </div>
           </a>
         </div>
         <div class="col-lg-4 col-sm-6">
           <a class="portfolio-box" href="${skinContext}img/portfolio/fullsize/2.jpg">
             <img class="img-fluid" src="${skinContext}img/portfolio/thumbnails/2.jpg" alt="">
             <div class="portfolio-box-caption">
               <div class="portfolio-box-caption-content">
                 <div class="project-category text-faded">
                   Category
                 </div>
                 <div class="project-name">
                   Project Name
                 </div>
               </div>
             </div>
           </a>
         </div>
         <div class="col-lg-4 col-sm-6">
           <a class="portfolio-box" href="${skinContext}img/portfolio/fullsize/3.jpg">
             <img class="img-fluid" src="${skinContext}img/portfolio/thumbnails/3.jpg" alt="">
             <div class="portfolio-box-caption">
               <div class="portfolio-box-caption-content">
                 <div class="project-category text-faded">
                   Category
                 </div>
                 <div class="project-name">
                   Project Name
                 </div>
               </div>
             </div>
           </a>
         </div>
         <div class="col-lg-4 col-sm-6">
           <a class="portfolio-box" href="${skinContext}img/portfolio/fullsize/4.jpg">
             <img class="img-fluid" src="${skinContext}img/portfolio/thumbnails/4.jpg" alt="">
             <div class="portfolio-box-caption">
               <div class="portfolio-box-caption-content">
                 <div class="project-category text-faded">
                   Category
                 </div>
                 <div class="project-name">
                   Project Name
                 </div>
               </div>
             </div>
           </a>
         </div>
         <div class="col-lg-4 col-sm-6">
           <a class="portfolio-box" href="${skinContext}img/portfolio/fullsize/5.jpg">
             <img class="img-fluid" src="${skinContext}img/portfolio/thumbnails/5.jpg" alt="">
             <div class="portfolio-box-caption">
               <div class="portfolio-box-caption-content">
                 <div class="project-category text-faded">
                   Category
                 </div>
                 <div class="project-name">
                   Project Name
                 </div>
               </div>
             </div>
           </a>
         </div>
         <div class="col-lg-4 col-sm-6">
           <a class="portfolio-box" href="${skinContext}img/portfolio/fullsize/6.jpg">
             <img class="img-fluid" src="${skinContext}img/portfolio/thumbnails/6.jpg" alt="">
             <div class="portfolio-box-caption">
               <div class="portfolio-box-caption-content">
                 <div class="project-category text-faded">
                   Category
                 </div>
                 <div class="project-name">
                   Project Name
                 </div>
               </div>
             </div>
           </a>
         </div>
       </div>
     </div>
   </section>

   <section class="bg-dark text-white">
     <div class="container text-center">
       <h2 class="mb-4">Free Download at Start Bootstrap!</h2>
       <a class="btn btn-light btn-xl sr-button" href="http://startbootstrap.com/template-overviews/creative/">Download Now!</a>
     </div>
   </section>

   <section id="contact">
     <div class="container">
       <div class="row">
         <div class="col-lg-8 mx-auto text-center">
           <h2 class="section-heading">Let's Get In Touch!</h2>
           <hr class="my-4">
           <p class="mb-5">Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
         </div>
       </div>
       <div class="row">
         <div class="col-lg-4 ml-auto text-center">
           <i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
           <p>123-456-6789</p>
         </div>
         <div class="col-lg-4 mr-auto text-center">
           <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
           <p>
             <a href="#">이메일</a>
           </p>
         </div>
         <!-- 계좌 연동 -->
         <div class="col-lg-4 mr-auto text-center inner">
          <div class="skin-account">
            <a href="#" class="skin-account-url" style="color:#007bff;"><i class="fa fa-credit-card fa-3x mb-3 sr-contact"></i></a>
            <p>예금주 <span class="skin-account-name"></span></p>
            <p><span class="skin-account-bank"></span>&nbsp;<span class="skin-account-number"></span>
            <p>회비 <span class="skin-account-money"></span> 원</p>
            <div id="ex"></div>
          </div>
         </div>          
       </div>
     </div>
   </section>

   <!-- Bootstrap core JavaScript -->
   <script src="${skinContext}vendor/jquery/jquery.min.js"></script>
   <script src="${skinContext}vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

   <!-- Plugin JavaScript -->
   <script src="${skinContext}vendor/jquery-easing/jquery.easing.min.js"></script>
   <script src="${skinContext}vendor/scrollreveal/scrollreveal.min.js"></script>
   <script src="${skinContext}vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

   <!-- Custom scripts for this template -->
   <script src="${skinContext}js/creative.min.js"></script>

  <!-- API --> 
  <!-- imgareaselect js -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/imgareaselect/0.9.10/js/jquery.imgareaselect.min.js"></script>
  <!-- map js -->
  <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=28s_5H2hA1HcHCbdhEUr&submodules=geocoder&callback=CALLBACK_FUNCTION"></script>
  <!-- Kakao navi -->
  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> 
   
   <!-- edit js -->
   <script src="${commonContext}js/pageEdit.js"></script>
   <script src="${commonContext}js/pageEditFunc.js"></script>
 </body>
  </html>