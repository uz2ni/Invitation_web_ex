<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title class="skin-top-title"></title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<!--Google fonts Link-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,500i,700,700i"
	rel="stylesheet">
<link rel="stylesheet" href="${skinContext}css/design.css">
<link rel="stylesheet" href="${skinContext}css/skills/progressbar.css">
<link rel="stylesheet" href="${skinContext}css/skills/style.css">
<link rel="stylesheet" href="${skinContext}css/index.css">
<link rel="stylesheet" href="${skinContext}css/fonticons.css">
<link rel="stylesheet" href="${skinContext}css/font-awesome.min.css">
<link rel="stylesheet" href="${skinContext}css/bootstrap.min.css">

<!-- font awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">

<!--For Plugins external css-->
<link rel="stylesheet" href="css/teamslide.css" />
<link rel="stylesheet" href="css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="css/responsive.css" />

<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<!--[if lt IE 8]>
     <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<!--[endif]-->

	<header id="main_menu" class="header navbar-fixed-top">
		<div class="main_menu_bg">
			<div class="container">
				<div class="row">
					<div class="nave_menu">
						<nav class="navbar navbar-default" id="navmenu">
							<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed"
										data-toggle="collapse"
										data-target="#bs-example-navbar-collapse-1"
										aria-expanded="false">
										<span class="sr-only">Toggle navigation</span> <span
											class="icon-bar"></span> <span class="icon-bar"></span> <span
											class="icon-bar"></span>
									</button>
									<a class="navbar-brand" href="#home">
										<h3 class="skin-top-title"></h3>
									</a>
								</div>

								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">

									<ul class="nav navbar-nav navbar-right">
										<li><a href="#home">Home</a></li>
										<li><a href="#calendar">Calendar</a></li>
										<li><a href="#introduce">Introduce</a></li>
										<li><a href="#account">Account</a></li>
										<li><a href="#address">Address</a></li>
										<li><a href="#gallery">Gallery</a></li>
										<li><a href="#video">Video</a></li>
										<li><a href="#question">Question</a></li>
										<li><a url="#">Comment</a></li>
									</ul>
								</div>

							</div>
						</nav>
					</div>
				</div>

			</div>

		</div>
	</header>
	<!--End of header -->

	<section id="home" class="home"><!-- 배경사진 -->
		<div class="overlay"><!-- 반투명막 -->
			<div class="d-flex" style="height:80vh; display:flex; align-items:center; justify-content:center">
			<div class="title" style="background: url(../skin4/img/welcome_img.png) no-repeat; background-position: 0 0; z-index:100;"></div>
			<!-- <img class="welcome-img"alt="" src="../skin4/img/welcome_img.png">-->
				<div class='square-box'>
					<div class='square-content'>
						<div class="col_third">	
							<i class="fa fa-heart fa-5x icn_blue wow shake" data-wow-iteration="infinite" data-wow-duration="1500ms"></i>		
						</div>
						 <h3>D 
						 <span class="skin-info-dday" style=""></span> Day
						 </h3>
						 <p class="skin-top-title text-center"></p><!-- 제목 -->
						 <div class="skin-top-img">
						 	<!-- 기본 이미지 픽스 해야 함 -->
						 	<img src="http://via.placeholder.com/100x100" alt="상단 이미지">
						 </div>
					</div>
				</div>
			</div>
			<div class="d-flex program_box" style="height:20vh; text-align:center;">
				<div style="margin:0 20px; background: white; border-radius:10px;">
					<div class="skin-info-date skin-top-shadow" style="border-radius:10px;
					background:url(../skin4/img/screw.png) no-repeat top left, url(../skin4/img/screw.png) no-repeat top right, 
							   url(../skin4/img/screw.png) no-repeat bottom left, url(../skin4/img/screw.png) no-repeat bottom right; 
					background-size: 24px 24px,24px 24px;"><!-- 날짜 -->
			              	<span class="skin-info-date-start"></span>
			              	~
			              	<span class="skin-info-date-end"></span><br>
			              	<span class="skin-info-time"></span><br><!-- 시간 -->
			              	<span class="skin-info-place"></span><!-- 장소 -->
			    	</div>
				</div>
			</div>
		</div>
	</section>

	<!-- skin-add-info-section  -->
	<section id="calendar" class="skin-info-section portfolio">
	<hr class="style12">
		<div class="container">
			<div class="row">
				<div class="main_mix_content text-center sections">
					<div class="head_title">
						<div class="main_newsletter sections">

							<!--skin-info-date   -->
							<div class="col-sm-4" style="margin-bottom:30px;">
								<div class=" msingle_newsletter_head">
								<i class="far fa-calendar-alt fa-3x" style="color:#223d61;"></i><br>
									<h2 style="margin:10px 0;">발표회 일자</h2>
									<div class="whiseparator2"></div>
									<!-- 일자 -->
									<div class="skin-info-date"><!-- 날짜 -->
						              	<span class="skin-info-date-start"></span>
						              	~
						              	<span class="skin-info-date-end"></span>
									</div>
								</div>
							</div>
							<!-- skin-info-time-->
							<div class="col-sm-4" style="margin-bottom:30px;">
								<div class="msingle_newsletter_head">
								<i class="far fa-clock fa-3x" style="color:#223d61;"></i><br>
									<h2 style="margin:10px 0;">발표회 시간</h2>
									<div class="whiseparator2"></div>
									<span class="skin-info-time"></span><!-- 시간 -->
								</div>
							</div>
							<!-- skin-info-place -->
							<div class="col-sm-4" style="margin-bottom:30px;">
								<div class="msingle_newsletter_head">
								<i class="fas fa-map-marker-alt fa-3x" style="color:#223d61;"></i><br>
									<h2 style="margin:10px 0;">발표회 장소</h2>
									<div class="whiseparator2"></div>
									<span class="skin-info-place"></span><!-- 장소 -->
								</div>
							</div>

						</div>
					</div>


				</div>
			</div>
		</div>
		<hr class="style12">
	</section>



	<!-- skin-add-info-section -->
	<section id="introduce" class="choose greenbackground">
		<div class="container">
			<div class="row">
				<div class="main_choose_area sections text-center">
					<div class="main_choose_content">
						<div class="single_newsletter_head">
							<h2>인사말</h2>
							<div class="whiseparator"></div>
							<!-- <div style="letter-spacing:-1px;"><h3 class="skin-add-info-welcome"></h3></div>-->
							<div class="greeting_box" id="sk_invite">
								<div class="greeting_content">
								<div class="content align_center">    WELCOME<br>
									<span class="skin-add-info-welcome content"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- skin-multi-section -->
	<section class="skin-multi-section blog1">
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="main_blog_area text-center sections" style="color:#223d61;">
						<!-- skin-add-info-img-profile -->
						<div class="col-sm-6" style="padding-bottom:30px;">
							<div class="single_newsletter_head">
								<h2 class="title" id="sk_invite_title"><span>발표자 프로필</span></h2><!-- <h2 style="color:#223d61;">발표자 프로필</h2>-->
								<div class="whiseparator2"></div>
								<div class="skin-add-info-img-profile picture-frame">
									<img src="http://placehold.it/280x250" alt="프로필사진" class="text-center">
								</div>
								<br>
								<span class="skin-add-info-img-name"></span>
							</div>
						</div>
						<!-- skin-add-info-img-sit -->
						<div class="col-sm-6" style="padding-bottom:30px;">
							<div class="single_newsletter_head">
								<h2 style="color:#223d61;">자리배치도</h2>
								<div class="whiseparator2"></div>
								<div class="skin-add-info-img-sit">
									<img src="http://placehold.it/280x250" alt="자리배치도" >
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- skin-account-section  -->
	<section id="account"
		class="skin-account-section newsletter text-center">
		<div class="container">
			<div class="row" style="padding:70px 0;">
				<div class="col-md-12 mr-auto text-center inner">
			          <div class="skin-account">
			          	<h2>ACCOUNT</h2>
						<div class="whiseparator"></div>
			            <a href="#" class="skin-account-url" style="color:#ffffff;"><i class="fa fa-credit-card fa-3x mb-3 sr-contact" data-sr-id="10" style="; visibility: visible;  -webkit-transform: scale(1); opacity: 1;transform: scale(1); opacity: 1;-webkit-transition: -webkit-transform 0.6s cubic-bezier(0.6, 0.2, 0.1, 1) 0s, opacity 0.6s cubic-bezier(0.6, 0.2, 0.1, 1) 0s; transition: transform 0.6s cubic-bezier(0.6, 0.2, 0.1, 1) 0s, opacity 0.6s cubic-bezier(0.6, 0.2, 0.1, 1) 0s; "></i></a>
			            <p style="padding-top:15px;">예금주 <span class="skin-account-name"></span></p>
			            <p><span class="skin-account-bank"></span>&nbsp;<span class="skin-account-number"></span>
			            </p><p>회비 <span class="skin-account-money"></span> 원</p>
			          </div>
		        </div>
				<div class="col-md-12">
					<div class="form-group">
						<input type="submit" value="TOSS로 바로 입금하기 " class="skin-account btn btn-primary">
					</div>
				</div>	
			</div>
		</div>
	</section>

	<!-- skin-spot-section  -->
	<section id="address"
		class="skin-spot-section testimonial"><hr class="style12">
		<div class="container">
			<div class="row">
				<div class="main_testimonial sections text-center">
					<div class=" col-md-12 text-center" style="padding-bottom: 5%;">
						<h2 style="color:#223d61;">찾아오시는 길</h2>
						
						<div class="whiseparator2"></div>
						<i class="fas fa-map-marker-alt fa-2x" style="margin-right:7px; color:#223d61;"></i>
						<span class="skin-info-address"></span>
						<span class="skin-info-map"></span>
					</div>
					<!-- <img src="http://placehold.it/300x250" alt="지도" class="text-center">-->
					<!-- skin-info-navi"  -->
					<div class="d-flex col-md-12 text-center" style="margin: 20px;">
							<div class="col-xs-6 skin-info-navi"></div><!-- 네비 -->
							<div class="col-xs-6 skin-info-find"></div><!-- 길찾기 -->
					</div>
					<div class="d-flex col-md-12 text-center" style="padding-top:30px;">
						<h2 style="color:#223d61;">약도</h2>
						<div class="whiseparator2"></div>
						<div class="skin-info-load-img"></div>
					</div>
				</div>
			</div>
		</div><hr class="style12">
	</section>

	<section class="newsletter text-center">
		<div class="container">
			<div class="row">
				<div class="main_newsletter sections text-center" style="margin:0 30px;">
					<!-- skin-info-bus  -->
					<div class="col-sm-4" style="padding:30px 0;">
						<div class="msingle_newsletter_head">
						<i class="fas fa-bus fa-3x"></i>
							<h2 style="margin:10px 0;">BUS</h2>
							<div class="whiseparator"></div>
							<div class="skin-info-bus"></div>
						</div>
					</div>
					<!-- skin-info-subway -->
					<div class="col-sm-4" style="padding:30px 0;">
						<div class="single_newsletter_head">
						<i class="fas fa-subway fa-3x"></i>
							<h2 style="margin:10px 0;">METRO</h2>
							<div class="whiseparator"></div>
							<div class="skin-info-subway"></div>
						</div>
					</div>
					<!-- skin-info-parking  -->
					<div class="col-sm-4" style="padding:30px 0;">
						<div class="single_newsletter_head">
						<i class="fab fa-product-hunt fa-3x"></i>
							<h2 style="margin:10px 0;">PARKING</h2>
							<div class="whiseparator"></div>
							<div class="skin-info-parking"></div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>


	<!-- skin-multi-section -->
	<section id="gallery" class="sections skin-multi-section blog p-0 program_box">
      <div class="container-fluid p-0">
      		<div class="head_title text-center">
				<h2 class="title" id="sk_invite_title"><span>GALLERY</span></h2>
			</div>
        <div class="row no-gutters popup-gallery" style="display: flex; justify-content: center;">
			<!-- 슬라이드 --> 
			<div id="carousel-example-generic" class="carousel slide skin-gallery-type-slide" data-ride="carousel">
			  <ol class="carousel-indicators">
			    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="5"></li>
			  </ol>
			
			  <div class="carousel-inner"role="listbox">
			    <div class="gallery-Frame item active">
			      <img src="../skin1/img/portfolio/thumbnails/1.jpg" alt="..." class="skin-gallery-1">
			      <div class="carousel-caption">
			        ...
			      </div>
			    </div>
			    <div class="gallery-Frame item">
			      <img src="../skin1/img/portfolio/thumbnails/2.jpg" alt="..." class="skin-gallery-2">
			      <div class="carousel-caption">
			        ...
			      </div>
			    </div>
			    <div class="gallery-Frame item">
			      <img src="../skin1/img/portfolio/thumbnails/3.jpg" alt="..." class="skin-gallery-3">
			      <div class="carousel-caption">
			        ...
			      </div>
			    </div>
			    <div class="gallery-Frame item">
			      <img src="../skin1/img/portfolio/thumbnails/3.jpg" alt="..." class="skin-gallery-4">
			      <div class="carousel-caption">
			        ...
			      </div>
			    </div>
			    <div class="gallery-Frame item">
			      <img src="../skin1/img/portfolio/thumbnails/3.jpg" alt="..." class="skin-gallery-5">
			      <div class="carousel-caption">
			        ...
			      </div>
			    </div>
			    <div class="gallery-Frame item">
			      <img src="../skin1/img/portfolio/thumbnails/3.jpg" alt="..." class="skin-gallery-6">
			      <div class="carousel-caption">
			        ...
			      </div>
			    </div>
			    
			  </div>
			
			  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="fas fa-angle-left fa-lg" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="fas fa-angle-right fa-lg" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
		<!-- 가로 나열 -->
		<div class="row skin-gallery-type-row">
          <div class="col-lg-4 col-sm-6" style="padding:0px;">
            <a class="portfolio-box" href="../skin1/img/portfolio/fullsize/1.jpg">
              <img class="img-fluid skin-gallery-1" src="../skin1/img/portfolio/thumbnails/1.jpg" alt="">
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
          <div class="col-lg-4 col-sm-6" style="padding:0px;">
            <a class="portfolio-box" href="../skin1/img/portfolio/fullsize/2.jpg">
              <img class="img-fluid skin-gallery-2" src="../skin1/img/portfolio/thumbnails/2.jpg" alt="">
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
          <div class="col-lg-4 col-sm-6" style="padding:0px;">
            <a class="portfolio-box" href="../skin1/img/portfolio/fullsize/3.jpg">
              <img class="img-fluid skin-gallery-3" src="../skin1/img/portfolio/thumbnails/3.jpg" alt="">
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
          <div class="col-lg-4 col-sm-6" style="padding:0px;">
            <a class="portfolio-box" href="../skin1/img/portfolio/fullsize/4.jpg">
              <img class="img-fluid skin-gallery-4" src="../skin1/img/portfolio/thumbnails/4.jpg" alt="">
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
          <div class="col-lg-4 col-sm-6" style="padding:0px;">
            <a class="portfolio-box" href="../skin1/img/portfolio/fullsize/5.jpg">
              <img class="img-fluid skin-gallery-5" src="../skin1/img/portfolio/thumbnails/5.jpg" alt="">
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
          <div class="col-lg-4 col-sm-6" style="padding:0px;">
            <a class="portfolio-box" href="../skin1/img/portfolio/fullsize/6.jpg">
              <img class="img-fluid skin-gallery-6" src="../skin1/img/portfolio/thumbnails/6.jpg" alt="">
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
          <!-- 세로 나열-->
          <div class="row col-sm-10 skin-gallery-type-col">
	          <div class="col-xs-6 col-lg-4" style="padding:0;">
	              <a class="portfolio-box-col" href="../skin1/img/portfolio/fullsize/1.jpg">
	              <img class="img-fluid-col skin-gallery-1" src="../skin1/img/portfolio/fullsize/1.jpg" alt="">
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
	          <div class="col-xs-6 col-lg-4" style="padding:0;">
	            <a class="portfolio-box-col" href="../skin1/img/portfolio/fullsize/2.jpg">
	              <img class="img-fluid-col skin-gallery-2" src="../skin1/img/portfolio/thumbnails/2.jpg" alt="">
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
	          <div class="col-xs-6 col-lg-4" style="padding:0;">
	            <a class="portfolio-box-col" href="../skin1/img/portfolio/fullsize/3.jpg">
	              <img class="img-fluid-col skin-gallery-3" src="../skin1/img/portfolio/thumbnails/3.jpg" alt="">
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
	          <div class="col-xs-6 col-lg-4" style="padding:0;">
	            <a class="portfolio-box-col" href="../skin1/img/portfolio/fullsize/4.jpg">
	              <img class="img-fluid-col skin-gallery-4" src="../skin1/img/portfolio/thumbnails/4.jpg" alt="">
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
	          <div class="col-xs-6 col-lg-4" style="padding:0;">
	            <a class="portfolio-box-col" href="../skin1/img/portfolio/fullsize/5.jpg">
	              <img class="img-fluid-col skin-gallery-5" src="../skin1/img/portfolio/thumbnails/5.jpg" alt="">
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
	          <div class="col-xs-6 col-lg-4" style="padding:0;">
	            <a class="portfolio-box-col" href="../skin1/img/portfolio/fullsize/6.jpg">
	              <img class="img-fluid-col skin-gallery-6" src="../skin1/img/portfolio/thumbnails/6.jpg" alt="">
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
      </div>
    </section>

	<section id="video" class="counter">
	<hr class="style12">
		<div class="container-fluid">
			<div class="row">
				<div class="main_counter sections">
					<div class="single_left_counter_bg">
						<div class="col-sm-12 col-xs-12">
							<div class="single_counter_left">
								<h2>VIDEO</h2>
							</div>
						</div>
					</div>
					<div class="col-sm-7 col-xs-12">
						<div class="single_counter_right_area text-center">
							<div class="row">
								<div class="skin-video">
									<iframe name='skin-video' src='' width="100%" frameborder="0"
										alow='autoplay; encrypted-media' allowfullscreen></iframe>
									<!-- <iframe name='skin-video' src='' width="100%" frameborder="0" alow='autoplay; encrypted-media' allowfullscreen></iframe> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr class="style12">
	</section>
	
	<section class="skin-multi-section greenbackground">
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="main_blog_area text-center sections">
						<!-- skin-add-info-call-name -->
						<div class="col-sm-12 col-md-4" style="padding-bottom:30px;">
							<div class="single_newsletter_head" style="padding-bottom:5%;">
								<h2>문의 정보</h2>
								<div class="whiseparator"></div>
								<span class="skin-add-info-call-name" style="padding-right:10px;"></span>
								<i class="fas fa-phone fa-lg"></i>
								<span class="skin-add-info-call-number"></span>
							</div>
							<button class="btn btn-call"><i class="fas fa-phone fa-2x"></i></button>
							<button class="btn btn-call"><i class="fas fa-envelope fa-2x"></i></button>
						</div>
						<!-- skin-add-info-logo-hold-name -->
						<div class="col-xs-6 col-md-4" style="padding-bottom:30px;">
							<div class="single_newsletter_head">
								<h2>주최</h2>
								<div class="whiseparator"></div>
								<div class="skin-add-info-hold-img">
									<img src="http://via.placeholder.com/50x50" class="add-info-hold-img-preview">
								</div>
								<span class="skin-add-info-logo-hold-name"></span>
							</div>
						</div>
						<!-- skin-add-info-logo-help-name -->
						<div class="col-xs-6 col-md-4" style="padding-bottom:30px;">
							<div class="single_newsletter_head">
								<h2>후원</h2>
								<div class="whiseparator"></div>
								<div class="skin-add-info-help-img">
									<img src="http://via.placeholder.com/50x50" class="add-info-hold-img-preview">
								</div>
								<span class="skin-add-info-logo-help-name"></span>
							</div>
						</div>
						<div class="col-sm-12">
							<div class="col-sm-6" style="">
								<div class="single_newsletter_head">
									<div class="form-group skin-attend">
										<button class="skin-account btn btn-primary"><i class="far fa-check-square fa-sm" style="margin-right:7px;"></i>참석여부</button>
									</div>
								</div>
							</div>
							<div class="col-sm-6" style="">
								<div class="single_newsletter_head">
									<div class="form-group skin-comment">
										<button class="skin-account btn btn-primary"><i class="fas fa-pencil-alt fa-sm" style="margin-right:7px;"></i>방명록</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 방명록 -->
	<section class="blog1 sections" style="color:#333">
		<div class="head_title text-center">
					<h2 class="title" id="sk_invite_title"><span>Comment</span></h2>
			</div>
		<div class="container" style="display:flex; justify-content:center;">
			
		<!-- 방명록list -->
		<div class="row">
			<div id="badge" class="col-md-4">
			  <div class="point-line"></div>
			  	<section class="all">
				    <div class="info">
				      <div class="total">
				        <span>박민정</span><br>2018-09-04 오후 10:34
				      </div>
				      <!-- heart -->
				      <ul class="choice-list">
						  <li class="heart-checkbox heart is-checked"></li>
					  </ul>
				      <button class="comment-delete-btn">삭제</button>
				      <div style="clear: both;"></div>
				    </div>
			    
				    <div class="list">
				      <section class="first">
				        <div class="img">
				          <img class="comment-img" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/36763/profile/profile-512_1.jpg" alt="" />
				        </div>
				        <div class="comments">
				          <p>Damn, how awesome is Ionut's design?</p>
				        </div>
				      </section>   
				    </div>
			  </section>
			</div>
			<div id="badge" class="col-md-4">
			  <div class="point-line"></div>
			  	<section class="all">
				    <div class="info">
				      <div class="total">
				        <span>박민정</span><br>2018-09-04 오후 10:34
				      </div>
				      <!-- heart -->
				      <ul class="choice-list">
						  <li class="heart-checkbox heart is-checked"></li>
					  </ul>
				      <button class="comment-delete-btn">삭제</button>
				      <div style="clear: both;"></div>
				    </div>
			    
				    <div class="list">
				      <section class="first">
				        <div class="img">
				          <img class="comment-img" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/36763/profile/profile-512_1.jpg" alt="" />
				        </div>
				        <div class="comments">
				          <p>Damn, how awesome is Ionut's design?</p>
				        </div>
				      </section>   
				    </div>
			  </section>
			</div>
			<div id="badge" class="col-md-4">
			  <div class="point-line"></div>
			  	<section class="all">
				    <div class="info">
				      <div class="total">
				        <span>박민정</span><br>2018-09-04 오후 10:34
				      </div>
				      <!-- heart -->
				      <ul class="choice-list">
						  <li class="heart-checkbox heart is-checked"></li>
					  </ul>
				      <button class="comment-delete-btn">삭제</button>
				      <div style="clear: both;"></div>
				    </div>
			    
				    <div class="list">
				      <section class="first">
				        <div class="img">
				          <img class="comment-img" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/36763/profile/profile-512_1.jpg" alt="" />
				        </div>
				        <div class="comments">
				          <p>Damn, how awesome is Ionut's design?</p>
				        </div>
				      </section>   
				    </div>
			  </section>
			</div>
		</div>
		</div>
	</section>

	<footer id="footer" class="footer" style="display:flex; align-items:center;">
		<div class="container">
			<div class="main_footer">
				<div class="row">
					<div class="skin-sns-share-section col-sm-6 col-xs-12 text-center">
						<div class="skin-sns-share">
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>


	<!-- START SCROLL TO TOP  -->
	<div class="scrollup">
		<a href="#" style="color: #ffffff;"><i class="fa fa-chevron-up"></i></a>
	</div>
  
	<script src="js/vendor/jquery-1.11.2.min.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>

	<script src="js/jquery.easypiechart.min.js"></script>
	<script src="js/jquery.mixitup.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="css/skills/inview.min.js"></script>
	<script src="css/skills/progressbar.js"></script>
	<script src="css/skills/main.js"></script>

	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>
	<script src="js/index.js"></script>

	<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
  	<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
</body>
</html>