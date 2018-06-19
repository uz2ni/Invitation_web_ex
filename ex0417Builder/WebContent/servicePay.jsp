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
<link rel="stylesheet" href="css/pay.css">

<title>Insert title here</title>
</head>
<body>
<jsp:include page="/template/header.jsp" flush="false" />

  	<!-- section1 -->
 <form method="POST" id="service-pay-form">
 	<input type="hidden" id="type" name="paymentType" value="">
  	
  	<section class="row justify-content-center" style="height:auto;">
	    <article class="col-12 d-flex flex-column justify-content-center" style="background:#6e9cf8; height:35vh; font-size:40px; text-align:center;">
	        <a class="card-img-overlay" style="top:90px; color:white; font-weight:bold;">제작 신청하기</a> 
	        <div class="banner row justify-content-end" style="padding-right:300px;">
	        	<img class="card-img" src="img/common/character_0.png" style="height:250px; width:250px;">
	        </div>
	    </article>
    
	    <div class="menubar-name col-sm-2">
	    	<a style:"color:white;">제작 신청하기</a>
	    </div>
      <div class="menubar col-10"></div> 
    
     <article class="side-back col-12 d-flex flex-article mt-2 justify-content-center" style="auto;">
		    <!--application_2-->
		    <article class="center col-8 text-center" style="height:145vh;">
		        <div class="col" style="height:145vh">
			        <h4 class="title text-center my-2">제작 신청하기</h4>
			          <div class="row">
                    <div class="col-sm">
                      <img src="img/common/type_1.png" width="200" height="140">
                      <button type="button" class="btn selectBtn btn1" name="1" onclick="insertSelected(1)" style="color:white; width:25vh;">모임</button>
                    </div>
                    <div class="col-sm">
                      <img src="img/common/type_2.png" width="200" height="140">
                      <button type="button" class="btn selectBtn btn2" name="2" onclick="insertSelected(2)" style="color:white; width:25vh;">발표회</button>
                    </div>
                    <div class="col-sm">
                      <img src="img/common/type_3.png" width="200" height="140">
                      <button type="button" class="btn selectBtn btn3" name="3" onclick="insertSelected(3)" style="color:white; width:25vh;">종교행사</button>
                    </div>
                  </div>
			        <!--form-->
			        <table class="table table-bordered">
                      <tbody>
                        <tr>
                          <tr>
                          <th scope="row">제공기능</th>
                          <td colspan="3" class="form-group text-left mx-0 mb-0">
                          <!--기능내용-->
                          <div id="show_1" class="row justify-content-center d-none bg-success">
                              <ul class="col-3 p-3 m-2 border-left-0 border-top-0 border-bottom-0">
                                <li class="border-0">무료aa 스킨</li>
                                <li class="border-0">네이버 지도</li>
                                <li class="border-0">기간 연장</li>
                                <li class="border-0">상단이미지 정렬</li>
                                <li class="border-0">카카오톡 보내기</li>
                              </ul>
                              <ul class="col-3 p-3 m-2 border-left-0 border-top-0 border-bottom-0">
                                <li class="border-0">유료형 스킨</li>
                                <li class="border-0">구글 지도</li>
                                <li class="border-0">유튜브 영상</li>
                                <li class="border-0">방명록</li>
                                <li class="border-0">규격형 갤러리</li>
                              </ul>
                              <ul class="col-3 p-3 m-2 border-0">
                                <li class="border-0">네비게이션 앱 연동</li>
                                <li class="border-0">사용기간 3개월</li>
                                <li class="border-0">약도 업로드</li>
                                <li class="border-0">SNS 공유</li>
                                <li class="border-0">자유형 갤러리</li>
                              </ul>
                          </div>
                          <div id="show_2" class="row justify-content-center d-none bg-warning">
                              <ul class="col-3 p-3 m-2 border-left-0 border-top-0 border-bottom-0">
                                <li class="border-0">무료bb 스킨</li>
                                <li class="border-0">네이버 지도</li>
                                <li class="border-0">기간 연장</li>
                                <li class="border-0">상단이미지 정렬</li>
                                <li class="border-0">카카오톡 보내기</li>
                              </ul>
                              <ul class="col-3 p-3 m-2 border-left-0 border-top-0 border-bottom-0">
                                <li class="border-0">유료형 스킨</li>
                                <li class="border-0">구글 지도</li>
                                <li class="border-0">유튜브 영상</li>
                                <li class="border-0">방명록</li>
                                <li class="border-0">규격형 갤러리</li>
                              </ul>
                              <ul class="col-3 p-3 m-2 border-0">
                                <li class="border-0">네비게이션 앱 연동</li>
                                <li class="border-0">사용기간 3개월</li>
                                <li class="border-0">약도 업로드</li>
                                <li class="border-0">SNS 공유</li>
                                <li class="border-0">자유형 갤러리</li>
                              </ul>
                          </div>
                          <div id="show_3" class="row justify-content-center d-none bg-danger">
                              <ul class="col-3 p-3 m-2 border-left-0 border-top-0 border-bottom-0">
                                <li class="border-0">무료cc 스킨</li>
                                <li class="border-0">네이버 지도</li>
                                <li class="border-0">기간 연장</li>
                                <li class="border-0">상단이미지 정렬</li>
                                <li class="border-0">카카오톡 보내기</li>
                              </ul>
                              <ul class="col-3 p-3 m-2 border-left-0 border-top-0 border-bottom-0">
                                <li class="border-0">유료형 스킨</li>
                                <li class="border-0">구글 지도</li>
                                <li class="border-0">유튜브 영상</li>
                                <li class="border-0">방명록</li>
                                <li class="border-0">규격형 갤러리</li>
                              </ul>
                              <ul class="col-3 p-3 m-2 border-0">
                                <li class="border-0">네비게이션 앱 연동</li>
                                <li class="border-0">사용기간 3개월</li>
                                <li class="border-0">약도 업로드</li>
                                <li class="border-0">SNS 공유</li>
                                <li class="border-0">자유형 갤러리</li>
                              </ul>
                          </div>
                          <div id="show_4" class="row justify-content-center d-none bg-success">
                              <ul class="col-3 p-3 m-2 border-left-0 border-top-0 border-bottom-0">
                                <li class="border-0">유료aa 스킨</li>
                                <li class="border-0">네이버 지도</li>
                                <li class="border-0">기간 연장</li>
                                <li class="border-0">상단이미지 정렬</li>
                                <li class="border-0">카카오톡 보내기</li>
                              </ul>
                              <ul class="col-3 p-3 m-2 border-left-0 border-top-0 border-bottom-0">
                                <li class="border-0">유료형 스킨</li>
                                <li class="border-0">구글 지도</li>
                                <li class="border-0">유튜브 영상</li>
                                <li class="border-0">방명록</li>
                                <li class="border-0">규격형 갤러리</li>
                              </ul>
                              <ul class="col-3 p-3 m-2 border-0">
                                <li class="border-0">네비게이션 앱 연동</li>
                                <li class="border-0">사용기간 3개월</li>
                                <li class="border-0">약도 업로드</li>
                                <li class="border-0">SNS 공유</li>
                                <li class="border-0">자유형 갤러리</li>
                              </ul>
                          </div>
                          <div id="show_5" class="row justify-content-center d-none bg-success">
                              <ul class="col-3 p-3 m-2 border-left-0 border-top-0 border-bottom-0">
                                <li class="border-0">유료bb 스킨</li>
                                <li class="border-0">네이버 지도</li>
                                <li class="border-0">기간 연장</li>
                                <li class="border-0">상단이미지 정렬</li>
                                <li class="border-0">카카오톡 보내기</li>
                              </ul>
                              <ul class="col-3 p-3 m-2 border-left-0 border-top-0 border-bottom-0">
                                <li class="border-0">유료형 스킨</li>
                                <li class="border-0">구글 지도</li>
                                <li class="border-0">유튜브 영상</li>
                                <li class="border-0">방명록</li>
                                <li class="border-0">규격형 갤러리</li>
                              </ul>
                              <ul class="col-3 p-3 m-2 border-0">
                                <li class="border-0">네비게이션 앱 연동</li>
                                <li class="border-0">사용기간 3개월</li>
                                <li class="border-0">약도 업로드</li>
                                <li class="border-0">SNS 공유</li>
                                <li class="border-0">자유형 갤러리</li>
                              </ul>
                          </div>
                          <div id="show_6" class="row justify-content-center d-none bg-success">
								<ul
									class="col-3 p-3 m-2 border-left-0 border-top-0 border-bottom-0">
									<li class="border-0">유료cc 스킨</li>
									<li class="border-0">네이버 지도</li>
									<li class="border-0">기간 연장</li>
									<li class="border-0">상단이미지 정렬</li>
									<li class="border-0">카카오톡 보내기</li>
								</ul>
								<ul class="col-3 p-3 m-2 border-left-0 border-top-0 border-bottom-0">
                                <li class="border-0">유료형 스킨</li>
                                <li class="border-0">구글 지도</li>
                                <li class="border-0">유튜브 영상</li>
                                <li class="border-0">방명록</li>
                                <li class="border-0">규격형 갤러리</li>
                              </ul>
                              <ul class="col-3 p-3 m-2 border-0">
                                <li class="border-0">네비게이션 앱 연동</li>
                                <li class="border-0">사용기간 3개월</li>
                                <li class="border-0">약도 업로드</li>
                                <li class="border-0">SNS 공유</li>
                                <li class="border-0">자유형 갤러리</li>
                              </ul>
                          </div>
                             <!--show_1_end-->
                          <!--기능내용-->
                          </td>
                        </tr>
                          <th scope="row">기간</th>
                          <td colspan="3">
                            <!--option-->
                              <div class="input-group mb-3">
                                <select class="custom-select" id="inputGroupSelect01" name="paymentMonth" onchange="selectEvent(this)">
                                  <option selected value="0">선택하세요.</option>
                                  <option value="1">1개월</option>
                                  <option value="3">3개월</option>
                                  <option value="6">6개월</option>
                                  <option value="12">12개월</option>
                                </select>
                              </div>
                            <!--option-->
                          </td>
                        </tr>
                        <tr>
                          <th scope="row">초대장주소</th>
                          <td colspan="3" class="form-group">
                              <!--link-->
                              <div class="row justify-content-center">
                                http://invitedu.com/
                                  <input type="text" class="form-control col-sm-4" name="paymentUrlName" id="inputPassword3" placeholder="도메인 입력">
                                  <button type="button" class="btn" style="background:#004042; color:white;">중복확인</button>
                              </div>
                              <!--link-->
                          </td>
                        </tr>
                        
                        <tr>
                          <th scope="row">주의사항</th>
                          <td colspan="3">-</td>
                        </tr>
                      </tbody>
                    </table>
			        <!--form_end-->
			        
			        <!--view-->
			        <!--
			        <h4 style="background-color:#F2CE82;">미리보기</h4>
			        <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true" style="background:#486A67; color:white;">동창회&동호회</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false" style="background:#486A67; color:white;">전시회</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false" style="background:#486A67; color:white;">기타 행사</a>
                </li>
              </ul>
              
              <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <!--동창회&동호회-->
                <!--
                      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <!--1-->
                            <!--
                            <div class="carousel-item active">
                                <div class="row justify-content-center">
                                    <div class="col-md-3">
                                        <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="http://via.placeholder.com/350x150" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
                                        <div class="card-body"></div>
                                    </div>
                                    <div class="col-md-3">
                                        <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="http://via.placeholder.com/350x150" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
                                        <div class="card-body"></div>
                                    </div>
                                    <div class="col-md-3">
                                        <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="http://via.placeholder.com/350x150" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
                                        <div class="card-body"></div>
                                    </div>
                                </div>
                            </div>
                            -->
                            <!--1_end-->
                            <!--2-->
                            <!--
                            <div class="carousel-item">
                                <div class="row justify-content-center">
                                        <div class="col-md-3">
                                            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="http://via.placeholder.com/350x150" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
                                            <div class="card-body"></div>
                                        </div>
                                        <div class="col-md-3">
                                            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="http://via.placeholder.com/350x150" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
                                            <div class="card-body"></div>
                                        </div>
                                        <div class="col-md-3">
                                            <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]" src="http://via.placeholder.com/350x150" data-holder-rendered="true" style="height: 225px; width: 100%; display: block;">
                                            <div class="card-body"></div>
                                        </div>
                                    </div>
                                </div>
                                -->
                            <!--2_end-->
                            <!--
                        </div>
                            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                              <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                              <span class="carousel-control-next-icon" aria-hidden="true"></span>
                              <span class="sr-only">Next</span>
                            </a>
                      </div>
                      -->
                <!--동창회&동호회_end-->
                <!--
                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
                <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
              </div>
              -->
			        <!--view_end-->
              <!--내용제공-->
                <div class="container col-12">
                  <div class="container-inner row">
                              <div class="col-7 pt-2">
                                설치비용 - 원<br>서비스사용내용 : - 원
                              </div>
                                <div class="col pt-3">
                                  합 계
                                </div>
                                <div class="col-sm-4 pt-3"><span class="total-money">0</span>원
                                </div>
                  </div>
                </div>
              <!--내용제공_end-->
              <!--결제정보-->
			       <div class="col-12 mt-5">
			             <div class="row">
			                 <h4 class="title text-center my-2">결제 정보</h4>
			             </div>
			             <table class="table table-bordered">
                      <thead>
                         <tr>
                             <th scope="row">결제금액</th>
                             <td><h3 class="text-left m-1"><span class="total-money">0</span>원</h3></td>
                         </tr>
                      </thead>
              <!--결제 수단 선택-->
                      <tbody>
                          <tr>
                              <th scope="row">결제방법</th>
                              <td>
                              <!--결제방법-->
                                 <div class="row m-1">
                                     <div class="form-check">
                                         <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                                         <label class="form-check-label m-1" for="chargeway">신용카드</label>
                                     </div>
<!-- 
                                     <div class="form-check">
                                         <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                                         <label class="form-check-label m-1" for="chargeway">계좌이체</label>
                                     </div>
                                     <div class="form-check">
                                         <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                                         <label class="form-check-label m-1" for="chargeway">KAKAO PAY </label>
                                     </div>
 -->
                                  </div>
                                          <!--결제방법_end-->
                                </td>
                            </tr>
                        </tbody>
                    </table>
                  </div>
              <!--결제 수단 선택_end-->
              <!--총 결제금액_end-->
              <div class="mt-4">
                <a href="application.html"><button type="button" class="btn btn-lg" style="background-color:#F2CE82;">이전으로</button></a>
                <button type="button" class="btn btn-lg" style="background-color:#B91D1E; color:white;" onclick="requestPay('${sessionScope.user.userId}', '초대장')">결제하기</button>
              </div>
			   </div>
		    </article>
		    <!--application_2-->
    </article>
  </section>
</form>


<jsp:include page="/template/footer.jsp" flush="false" />
<!-- bootstrap js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- import js (결제 라이브러리) -->
<script src="https://service.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
<!-- 결제 기능 구현 -->
<script type="text/javascript" src="js/pg.js?v=<%=System.currentTimeMillis() %>"></script>
<!-- custom js -->
<script type="text/javascript" src="js/pay.js?v=<%=System.currentTimeMillis() %>"></script>
</body>
</html>