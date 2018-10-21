<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>${content.topTitle}</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<!--Google Fonts link-->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">
	
<link rel="stylesheet" href="${skinContext}css/iconfont.css">
<link rel="stylesheet" href="${skinContext}css/slick/slick.css">
<link rel="stylesheet" href="${skinContext}css/slick/slick-theme.css">
<link rel="stylesheet" href="${skinContext}css/jquery.fancybox.css">
<link rel="stylesheet" href="${skinContext}css/bootstrap.css">
<link rel="stylesheet" href="${skinContext}css/bootstrap.min.css">
<link rel="stylesheet" href="${skinContext}css/magnific-popup.css">

<!--For Plugins external css-->
<link rel="stylesheet" href="${skinContext}css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="${skinContext}css/index.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="${skinContext}css/responsive.css" />

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

</head>
<body data-spy="scroll" data-target=".navbar-collapse">
<input type="hidden" name="commonContext" value="${commonContext}">
<input type="hidden" name="skinContext" value="${skinContext}">

	<div class="culmn">
		<header id="main_menu" class="header navbar-fixed-top">
			<div class="main_menu_bg">
				<div class="container">
					<div class="row">
						<div class="nave_menu">
							<nav class="navbar navbar-default">
								<div class="container-fluid">

									<!-- 메뉴바 왼쪽  -->
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
											<h2>Invited You</h2>
										</a>
									</div>
									<!--메뉴바 오른쪽 -->
									<div class="collapse navbar-collapse"
										id="bs-example-navbar-collapse-1">

										<ul class="nav navbar-nav navbar-right">
											<li><a href="#home">HOME</a></li>
											<li><a href="#history">ABOUT</a></li>
											<li><a href="#account">ACCOUNT</a></li>
											<li><a href="#gallery">GALLERY</a></li>
											<li><a href="#navigation1">LOCATION</a></li>
											<li><a href="#video">VIDEO</a></li>
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
			
		<!--skin-top-section -->
		<section id="home" class="skin-top-section home">
			<div class="overlay">
				<div class="home_skew_border">
					<div class="container">
						<div class="row">
							<div class="col-sm-12 ">
								<div class="main_home_slider text-center">
									<!-- 상단 제목, 색상, 정렬 -->
									<!-- 상단 이미지 선택, 배치 -->
									<div class="main_home wow fadeInUp" data-wow-duration="600ms">
										<div class="col-md-12 col-sm-6 skin-top-img">
											<img class="text-center skin-top-img-file"
												alt="" width=600; src="http://bootdey.com/img/Content/user_1.jpg" />
										</div>
										<p>
											<span class="skin-top-title skin-top-font-color"></span>
										</p>
										<div class="separator"></div>
										<div class="skin-info-date">
											<div>
												<p>
													<span>행사일시</span>
												</p>
											</div>
											<p>
												<span class="skin-info-date-start"></span> <span>~</span> <span
													class="skin-info-date-end"></span>
											</p>

											<p>
												<span>행사 까지 남은 날짜</span>
											</p>
											<p>
												<span>D</span><span class="skin-info-dday"></span>
											</p>
										</div>										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<section id="home" class="history sections">
			<div class="container">
				<div class="row">
					<div class="main_history">
						<div class="col-sm-2"></div>
					</div>
				</div>
			</div>
		</section>
		<!--End of home -->

		<!-- skin-add-info-section -->
		<section id="pricing" class="skin-add-info-section pricing">
			<div class="container">
				<div class="row">
					<div class="main_pricing_area sections">
						<div class="head_title text-center">
							<h2>인사말</h2>
							<div class="separator"></div>
						</div>
						<!-- End off Head_title -->
						<div class="col-md-12 col-sm-6">
							<div class="single_pricing">
								<div class="pricing_body">
									<h4 class="skin-add-info-welcome text-center"></h4>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End off row -->
			</div>
			<!-- Design1 -->
			<section id="design2" class="design2 ">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 "></div>
					</div>
				</div>
			</section>
			<div id="history" class="container">
				<div class="row">
					<div class="main_sub_area sections">
						<!-- End off Head_title -->
						<div class="col-sm-12">
							<div class="single_sub">
								<div class="sub_head head_title1">
									<h2>문의</h2>
								</div>
								<div class="sub_body ">
									<!-- 문의정보 - 주최자 이름 -->
									<h4 class="skin-add-info-call-name"></h4>
									<!-- 문의정보 - 주최자 번호 -->
									<h4 class="skin-add-info-call-number"></h4>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="main_sub_area sections">
						<!-- End off Head_title -->
						<div class="col-sm-12">

							<div class="col-sm-6">
								<div class="single_sub">
									<div class="sub_head head_title1">
										<h2>주최기관</h2>
									</div>
									<div class="sub_body ">
										<!-- 주최사명 -->
										<h4 class="skin-add-info-logo-hold-name"></h4>
										<!-- 주최사 로고 -->
										<div class="skin-add-info-hold-img">
											<img />
										</div>									
									</div>
								</div>
							</div>

							<div class="col-sm-6">
								<div class="single_sub">
									<div class="sub_head head_title1">
										<h2>후원</h2>
									</div>
									<div class="sub_body ">
										<!-- 후원사명 -->
										<h4 class="skin-add-info-logo-help-name"></h4>
										<!-- 후원사 로고 -->
										<div class="skin-add-info-help-img">
											<img />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End off Pricing Section -->

		<!-- skin-account-section-->
		<section id="account"
			class="skin-account-section skin-account account">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="main_account_area text-center">
							<div class="col-sm-12 col-xs-12">
								<div class="head_title ">
									<p>
										<span>예금주 : </span> <span class="skin-account-name"></span>
									</p>
									<p>
										<span class="skin-account-bank"></span> <span
											class="skin-account-number"></span>
									</p>
									<p>
										<!-- &nbsp; <span></span>  -->
										<input type="submit" value="TOSS로 바로 입금하기 " tabindex="0" class="skin-account btn btn-lg">
									</p>
									<p>
										<span>회비 </span> <span class="skin-account-money"></span> <span>원
										</span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End off container -->
		</section>
		<!-- End of counter section -->

		<!-- skin-info-section -->
		<section class="skin-info-section sub">
			<div class="container">
				<div class="row">
					<div class="main_sub_area sections">
						<div class="head_title text-center">
							<h2>안내</h2>
							<div class="separator"></div>
						</div>

						<!-- End off Head_title -->
						<div class="col-sm-6">
							<div class="single_sub1">
								<div class="sub_head1">
									<p>
										<span class="m_t text-center">행사 시간</span>
									</p>
									<p>
										<span class="skin-info-time"></span>
									</p>
								</div>
							</div>
						</div>
						
						<!-- End off Head_title -->
						<div class="col-sm-6">
							<div class="single_sub1">
								<div class="sub_head1">
									<p>
										<span class="text-center">행사 열릴 장소</span>
									</p>
									<p>
										<span class="skin-info-place"></span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End off row -->
			</div>
			<!-- End off container -->
		</section>
		<!-- End off Pricing Section -->


		<!-- Gallery Section -->
		<section id="gallery" class="skin-multi-section gallery">
			<div class="col-sm-12">
				<div class="container-fluid">
					<div class="row">
						<div class="main_gallery sections">
							<div class="head_title text-center">
								<h2>Gallery</h2>
								<div class="separator"></div>
							</div>
							<!-- 세로형  -->
							<!-- End off Head_title -->
							<div class="row skin-gallery-type-col">
								<div class="main_gallery_content">
									<div class="col-xs-6 col-lg-3">
										<div class="single_gallery_img_col">
											<img class="skin-gallery-upload-img skin-gallery-1" src="${skinContext}img/blog1.jpg"
												alt="" />
										</div>
									</div>
									<div class="col-xs-6 col-lg-3">
										<div class="single_gallery_img_col">
											<img class="skin-gallery-upload-img skin-gallery-2" src="${skinContext}img/blog1.jpg"
												alt="" />
										</div>
									</div>
									<div class="col-xs-6 col-lg-3">
										<div class="single_gallery_img_col">
											<img class="skin-gallery-upload-img skin-gallery-3" src="${skinContext}img/blog1.jpg"
												alt="" />
										</div>
									</div>
									<div class="col-xs-6 col-lg-3">
										<div class="single_gallery_img_col">
											<img class="skin-gallery-upload-img skin-gallery-4" src="${skinContext}img/blog1.jpg"
												alt="" />
										</div>
									</div>
									<div class="col-xs-6 col-lg-3">
										<div class="single_gallery_img_col">
											<img class="skin-gallery-upload-img skin-gallery-5" src="${skinContext}img/blog1.jpg"
												alt="" />
										</div>
									</div>
									<div class="col-xs-6 col-lg-3">
										<div class="single_gallery_img_col">
											<img class="skin-gallery-upload-img skin-gallery-6" src="${skinContext}img/blog1.jpg"
												alt="" />
										</div>
									</div>
								</div>
							</div>
							<!-- 가로 형   -->
							<div class="row skin-gallery-type-row">
								<div class="main_gallery_content ">
									<div class="row">
										<div class="col-lg-6 col-sm-6">
											<div class="single_gallery_img_row">
												<img class="skin-gallery-upload-img skin-gallery-1" src="${skinContext}img/blog1.jpg"
													alt="" />
											</div>
										</div>
										<div class="col-lg-6 col-sm-6">
											<div class="single_gallery_img_row">
												<img class="skin-gallery-upload-img skin-gallery-2" src="${skinContext}img/blog1.jpg"
													alt="" />
											</div>
										</div>
										<div class="col-lg-6 col-sm-6">
											<div class="single_gallery_img_row">
												<img class="skin-gallery-upload-img skin-gallery-3" src="${skinContext}img/blog1.jpg"
													alt="" />
											</div>
										</div>
										<div class="col-lg-6 col-sm-6">
											<div class="single_gallery_img_row">
												<img class="skin-gallery-upload-img skin-gallery-4" src="${skinContext}img/blog1.jpg"
													alt="" />
											</div>
										</div>
										<div class="col-lg-6 col-sm-6">
											<div class="single_gallery_img_row">
												<img class="skin-gallery-upload-img skin-gallery-5" src="${skinContext}img/blog1.jpg"
													alt="" />
											</div>
										</div>
										<div class="col-lg-6 col-sm-6">
											<div class="single_gallery_img_row">
												<img class="skin-gallery-upload-img skin-gallery-6" src="${skinContext}img/blog1.jpg"
													alt="" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 슬라이드형  -->
							<div class="slide skin-gallery-type-slide">
								<div class="main_gallery_content">
									<div class="row">
										<div class="col-sm-12">
											<div class="container">
												<div id="carousel-example-generic" class="carousel slide">
													<!-- Indicators(이미지 하단의 동그란것->class="carousel-indicators") -->
													<ol class="carousel-indicators">
														<li data-target="#carousel-example-generic"
															data-slide-to="0" class="active"></li>
														<li data-target="#carousel-example-generic"
															data-slide-to="1"></li>
														<li data-target="#carousel-example-generic"
															data-slide-to="2"></li>
														<li data-target="#carousel-example-generic"
															data-slide-to="3"></li>
														<li data-target="#carousel-example-generic"
															data-slide-to="4"></li>
														<li data-target="#carousel-example-generic"
															data-slide-to="5"></li>
													</ol>
													<!-- Carousel items -->
													<div class="carousel-inner">
														<!-- class="carousel-inner" : 없으면 이미지 3장이 모두 세로로 배치된다. -->
														<div class="item active ">
															<img class="center-block skin-gallery-1" src="${skinContext}img/delete1.jpg"
																alt="First slide">
														</div>
														<div class="item">
															<img class="center-block skin-gallery-2" src="${skinContext}img/delete2.jpg"
																alt="Second slide">
														</div>
														<div class="item">
															<img class="center-block skin-gallery-3" src="${skinContext}img/delete3.jpg"
																alt="Third slide">
														</div>
														<div class="item">
															<img class="center-block skin-gallery-4" src="${skinContext}img/delete1.jpg"
																alt="Third slide">
														</div>
														<div class="item">
															<img class="center-block skin-gallery-5" src="${skinContext}img/delete2.jpg"
																alt="Third slide">
														</div>
														<div class="item">
															<img class="center-block skin-gallery-6" src="${skinContext}img/delete3.jpg"
																alt="Third slide">
														</div>
													</div>
													<!-- Controls -->
													<a class="left carousel-control"
														href="#carousel-example-generic" data-slide="prev"> <span
														class="icon-prev"></span>
													</a> <a class="right carousel-control"
														href="#carousel-example-generic" data-slide="next"> <span
														class="icon-next"></span>
													</a>
												</div>
											</div>
											<!-- End of slider -->

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	<!-- End off gallery sSection -->

	<!-- NAVIGATION Section -->
	<section id="navigation1 skin-spot-section" class="navigation1">
		<div class="container">
			<div class="row">
				<div id="sub" class="main_navigation1_area sections">
					<div class="head_title text-center">
						<h2>행사장 위치</h2>
						<div class="separator"></div>
					</div>
					<!-- End off Head_title -->
					<!-- skin-info-address  -->
					<div class="col-sm-12">
						<div class="single_navigation1">
							<div class="navigation1_body">
								<span>행사 주소</span>
								<span class="skin-info-address"></span>
								<!-- 장소 지도 -->
								<div id="info-address-map" style="width:100%;height:300px;" class="skin-info-map"></div>
							</div>
						</div>
					</div>
					<!-- skin-info-load-img-->
					<div class="col-sm-4">
						<div class="single_navigation1">
							<div class="navigation1_body">
								<span>약도</span>
								<div class="skin-info-load-img sub_body1">
									<img />
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="single_navigation1">
							<!-- skin-info-navi -->
							<div class="single_navigation1">
								<div class="skin-info-navi sub_body1">
									<a id="navi" href="#"> <img
										src="img/content/edit_img/page_img/navi_icon.png" width=100
										height=150 />
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- skin-info-find   -->
					<div class="col-sm-4">
						<div class="single_navigation1">
							<div class="skin-info-find sub_body1">
								<a id="navi" href="#"> <img
									src="img/content/edit_img/page_img/daum_icon.png" width=100
									height=150 />
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End off row -->
	</section>

		<!-- Design1 -->
		<section id="design" class="design">
			<div class="container">
				<div class="row">
					<div class="col-sm-12"></div>
				</div>
			</div>
		</section>

	
		<!-- 오시는 방법   -->
	<section>
		<div class="container">
			<div class="row">
				<div class="main_sub_area sections">
					<div class="head_title text-center">
						<h2>오시는 방법</h2>
						<div class="separator"></div>
					</div>
					<!-- End off Head_title -->
					<div class="col-sm-4">
						<div class="single_sub">
							<div class="sub_head">
								<div class="sub_price">
									<div class="p_r text-center">BUS</div>
									<div class="m_t text-center">버스로 오시는길</div>
								</div>
							</div>
							<!-- skin-info-bus -->
							<!-- dday -->
							<div class="sub_body">
								<h4 class="skin-info-bus "></h4>
							</div>
						</div>
					</div>
					<!-- End off Head_title -->
					<div class="col-sm-4">
						<div class="single_sub">
							<div class="sub_head">
								<div class="sub_price">
									<div class="p_r text-center">METRO</div>
									<div class="m_t text-center">지하철로 오시는길</div>
								</div>
							</div>
							<!-- skin-info-subway -->
							<div class="sub_body">
								<h4 class="skin-info-subway"></h4>
							</div>
						</div>
					</div>

					<!-- End off Head_title -->
					<div class="col-sm-4">
						<div class="single_sub">
							<div class="sub_head">
								<div class="sub_price">
									<div class="p_r text-center">PARKING</div>
									<div class="m_t text-center">주차</div>
								</div>
							</div>
							<!-- skin-info-parking  -->
							<div class="sub_body">
								<h4 class="skin-info-parking"></h4>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End off row -->
		</div>
		<!-- End off container -->
	</section>
	<!-- End off navigation Section -->

	<!-- skin-video-link -->
	<section id="video" class="video">
		<div class="container">
			<div class="row">
				<div class="main_video_area sections">
					<div class="head_title text-center">
						<h2>동영상</h2>
						<div class="separator"></div>
					</div>
					<!-- End off Head_title -->
					<div class="col-sm-12">
						<div class="single_video">
							<div class="video_body">
								<div class="skin-video">
									<iframe name='skin-video' src='' width="100%" frameborder="0"
										alow='autoplay; encrypted-media' allowfullscreen></iframe>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End off row -->
		</div>
		<!-- End off container -->
	</section>
	<!-- End off video Section -->

	<!-- 참석여부 skin-attend-section -->
	<section id="skin-attend-section" class="skin-attend-section">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="main_counter_area text-center">
						<div class="col-sm-12 col-xs-12 text-center">
							<div class="head_title ">
								<h2>행사 참석 여부 체크</h2>
								<div class="separator"></div>

								<div class="col-sm-12">
									<!-- 참석,불참 버튼  -->
									<div class="btn-group-lg" role="group"
										aria-label="Basic example">
										<button type="button"
											class="btn btn-warning btn-secondary attend"
											data-toggle="modal" data-target="#attend-modal">참석</button>
										<button type="button"
											class="btn btn-danger btn-secondary noattend"
											data-toggle="modal" data-target="#not-attend-modal">참석안함</button>
									</div>
									<!-- End 참/불 -->
									<!-- 모달 팝업1 -->
									<div class="modal fade" id="attend-modal" tabindex="-1"
										role="dialog" aria-labelledby="attend-modal-label"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">
														<span aria-hidden="true">×</span><span class="sr-only">Close</span>
													</button>
													<h4 class="modal-title" id="attend-modal-label">참석</h4>
												</div>
												<div class="modal-body ">
													<div class="form-group text-left">
														<label for="attend-name">이름</label> <input type="text"
															class="form-control" name="attend-name" placeholder="이름 입력 ">
													</div>
													<div class="form-group text-left">
														<label for="attend-password">본인확인용 비밀번호 4자리 </label> <input
															type="password" class="form-control" name="attend-password"
															placeholder="비밀 번호를 입력해 주세요.">
													</div>
													<!-- 설문조사 양식 -->
													<div id="attend-form" class="form-group text-left">
													</div>
												</div>
												<!--End of modal body -->
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">취소</button>
													<button type="button" class="btn btn-primary" onclick="attendBtn(1)">완료</button>
												</div>
											</div>
										</div>
									</div>
									<!-- 모달 팝업2 -->
									<div class="modal fade" id="not-attend-modal" tabindex="-1"
										role="dialog" aria-labelledby="not-attend-modal-label"
										aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">
														<span aria-hidden="true">×</span><span class="sr-only">Close</span>
													</button>
													<h4 class="modal-title" id="not-attend-modal-label">불참</h4>
												</div>
												<div class="modal-body">
													<form id="noattend-form">
														<div class="form-group text-left">
															<label for="not-attend-name text-left">이름</label> <input
																type="text" class="form-control" name="not-attend-name"
																aria-describedby="emailHelp" placeholder="이름 입력 ">
														</div>
														<div class="form-group text-left">
															<label for="not-attend-password">본인확인용 비밀번호 4자리</label> <input
																type="password" class="form-control"
																name="not-attend-password" placeholder="비밀 번호를 입력해 주세요.">
														</div>

														<div class="noattend-reason text-left">
															<label for="exampleFormControlTextarea1">불참 사유에
																대해 작성해 주세요. </label>
															<textarea class="form-control"
																id="exampleFormControlTextarea1" rows="3" name="reason"></textarea>
														</div>
													</form>

												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">취소</button>
													<button type="button" class="btn btn-primary" onclick="attendBtn(0)">완료</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End off container -->
	</section>
	<!-- End of counter section -->


	<!-- 방명록 skin-comment-section-->
	<section id="pricing skin-comment-section"
		class="skin-comment-section pricing skin-comment">
		<div class="container">
			<div class="row">
				<div class="main_pricing_area sections">
					<div class="head_title text-center">
						<h2>방명록</h2>
						<div class="separator"></div>
					</div>
					<!-- comment-box class -->
					<div class="col-sm-12">
						<div class="container">
							<div class="row">
								<c:forEach var="contentGuest" items="${contentGuests}">
									<div class="col-sm-3">
										<div class="panel panel-success post panel-shadow">
											<div class="post-heading">
												<div class="pull-left meta" style="width:100%;">
													<div class="title h5" style="display: flex; justify-content: space-between;">
														<b>${contentGuest.urlGuestName}</b>
														<span data-target="#guest-confirm-${contentGuest.urlGuestId}" data-toggle="modal" style="cursor: pointer; color: #e74c3c;">X</span>
													</div>
													<h4 class="text-muted time">${contentGuest.urlGuestAt}</h4>
												</div>
											</div>
											<div class="post-description">
												<p>${contentGuest.urlGuestText}</p>
												<div class="stats">
													<a href="#" class="btn btn-warning stat-item btn-block" style="min-width: 0;">
														<i class="glyphicon glyphicon-thumbs-up"></i>2
													</a>
												</div>
											</div>
										</div>
									</div>
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
									      <div class="modal-footer" style="display: flex; justify-content:center;">
									        <button type="button" class="btn btn-default modal-btn-si" name="guest-btn-si-${contentGuest.urlGuestId}" style="min-width: 0;">취소</button>
									        <button type="button" class="btn btn-primary modal-btn-no" name="guest-btn-no-${contentGuest.urlGuestId}" style="min-width: 0;">삭제</button>
									      </div>
									    </div>
									  </div>
									</div>
								</c:forEach>

							</div>
							<!-- End off commentbox -->
							<div class="text-center">
								<div class="single_pricing">
									<div class="pricing_body">
										<a href="${commonContext}guestForm.jsp?urlId=${content.urlId}" type="button"
											class="btn btn-lg btn-success commentbtn">글쓰기</a>
									</div>
								</div>
							</div>
							<!-- End off 글쓰기 -->
						</div>
					</div>
					<!-- End off row -->
				</div>
	</section>


	<!-- sns공유 체크  -->
	<!--skin-sns-share-section-->
	<section class="skin-sns-share-section footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="main_footer">
						<div class="row">
							<div class="col-sm-6 col-xs-12">

								<div class="skin-sns-share-icon flowus">
									<div class="skin-sns-share"></div>
								</div>
								<h4 class="skin-sns-msg-content"></h4>
							</div>

							<div class="col-sm-6 col-xs-12">
								<div class="copyright_text">
									<p class=" wow fadeInRight" data-wow-duration="1s">Made by
										InviteU</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End off footer Section-->
	</div>

	<!-- START SCROLL TO TOP  -->

	<div class="scrollup">
		<a href="#"><i class="fa fa-chevron-up"></i></a>
	</div>

	<script src="${skinContext}js/vendor/jquery-1.11.2.min.js"></script>
	<script src="${skinContext}js/vendor/bootstrap.min.js"></script>

	<script src="${skinContext}js/jquery.magnific-popup.js"></script>
	<script src="${skinContext}js/jquery.mixitup.min.js"></script>
	<script src="${skinContext}js/jquery.masonry.min.js"></script>

	<!--slick slide js -->
	<script src="${skinContext}css/slick/slick.js"></script>

	<script src="${skinContext}js/plugins.js"></script>
	<script src="${skinContext}js/index.js"></script>

  <!-- API --> 
  <!-- imgareaselect js -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/imgareaselect/0.9.10/js/jquery.imgareaselect.min.js"></script>
  <!-- map js -->
  <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=28s_5H2hA1HcHCbdhEUr&submodules=geocoder&callback=CALLBACK_FUNCTION"></script>
  <!-- Kakao navi -->
  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> 
  
  <script>
	str = ${contentStr};
  </script>
   <!-- edit js -->
   <script src="js/pageEdit.js"></script>
   <script src="js/pageEditFunc.js"></script>


</body>
</html>
