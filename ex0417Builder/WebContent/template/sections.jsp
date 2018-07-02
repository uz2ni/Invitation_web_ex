<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<!--section2-->
	<section  id = "section2" class="section2 align-self-center" >
		<!--main-->
		<article class="articel-center" style="height:90vh; ">
			<!--종류 선택-->
			<nav style="height:8vh; background:#FFFFFF ;">
				<div class="nav nav-tabs justify-content-center pt-4 text-center" id="nav-tab"
								role="tablist">
					<!--tab 4가지-->
					<a class="nav-item nav-link active font-weight-bold"
						id="nav-home-tab" data-toggle="tab" href="#nav-01" role="tab"
						aria-controls="nav-01" aria-selected="true">ALL</a> 
						
					<a class="nav-item nav-link font-weight-bold"
						id="nav-home-tab" data-toggle="tab" href="#nav-02" role="tab"
						aria-controls="nav-02" aria-selected="flase">모임</a> 
						
					<a class="nav-item nav-link font-weight-bold" id="nav-profile-tab"
						data-toggle="tab" href="#nav-03" role="tab"
						aria-controls="nav-03" aria-selected="false">발표회</a> 
						
					<a class="nav-item nav-link font-weight-bold" id="nav-contact-tab"
						data-toggle="tab" href="#nav-04" role="tab"
						aria-controls="nav-04" aria-selected="false">종교행사</a>
				</div>
			</nav>
			<!--종류 선택_end-->
			<div class="tab-content" style="height:82vh;" id="nav-tabContent"><!--***필수***-->
				<!--nav01-->
				<div class="tab-pane fade show active" id="nav-01" role="tabpanel" aria-labelledby="nav-01-tab">
					<div class="row">
						<c:forEach var="look" items="${looks}">
							<div class="article-box col-3" style="padding-left:0px;">
					                <img class="box-img mx-0 justify-content-center" src="${look.lookImg}" height="380">
					                <div class="overlay">
					                  	<div class="text">${look.lookTitle }</div>
					                </div>
							</div>
						</c:forEach>
					</div>
				</div>
				
				<!--nav02-->
			<div class="tab-pane fade" id="nav-02" role="tabpanel" aria-labelledby="nav-02-tab">
					<div class="row">
					<div class="article-box col-3" style="padding-left:0px;">
			                <img class="box-img mx-0 justify-content-center" src="./img/index/section2/index_section_2_club_7.png" height="400">
			                <div class="overlay">
			                  	<div class="text">모임</div>
			                </div>
						</div>
					</div>
				</div>
				<!--nav3-->
				<div class="tab-pane fade" id="nav-03" role="tabpanel" aria-labelledby="nav-03-tab">
					<div class="row">
						<div class="article-box col-3" style="padding-left:0px;">
			                <img class="box-img mx-0" src="./img/index/section2/index_section2_concert_1.gif" height="370">
			                <div class="overlay">
			                  	<div class="text">모임</div>
			                </div>
						</div>
					</div>
				</div>
				<!--nav04-->
				<div class="tab-pane fade" id="nav-04" role="tabpanel" aria-labelledby="nav-04-tab">
					<div class="row">
						<div class="article-box col-3" style="padding-left:0px;">
			                <img class="box-img mx-0" src="./img/index/section2/index_section2_regilon3.png" height="340">
			                <div class="overlay">
			                  	<div class="text">모임</div>
			                </div>
						</div>
					</div>
				</div>
			</div>
		</article>
		<article class="" style="height:10vh; background:#FFFFFF ;"></article>
	</section>	  	
	<!-- /section 2 -->
	
	<!-- section 3 -->
	<section id="section3" class="section3 fp-section fp-table row justify-content-center"  
	data-anchor="secondPage" style="height: 100vh; background-image:url(./img/common/service_1_top.jpg); background-size:cover;" >
	
							<div class="col-12" style="height:15vh; background:rgba(244,244,243,0.8);"></div>
							<div class="col-12" style="height:70vh;">
								<div class="text-center" style="background:rgba(0,0,0,0.5); height:100%;">
									<a><img src="./img/index/index_section3_2.png" width="80%;" height="100%;"></a>
								</div>
							</div>
							<div class="col-12" style="height:15vh; background:rgba(244,244,243,0.8);"></div>
	</section>
	<!-- /section 3 -->
	
	<!-- section 4 -->
	<section id="section4"
		class="section3 fp-section fp-table row justify-content-center"
		data-anchor="3rdPage"
		style="height: 100vh; background:#FFF9F4 - ">
		<article class="d-flex flex-column justify-content-center text-center"
			style="height: 90vh; width: 100%">
			
			<div class="nav nav-tabs justify-content-center pt-3 text-center" >
				<h2 style="font-weight:"> 초대해U 사용방법</h2>
			</div>
				
			<div class="row justify-content-center">
				<a class="row col-11 buttom_title justify-content-center text-center"
					style=""></a>
				<div
					class="row col-12 no-gutters justify-content-center text-center"
					style="height: 65vh;">
					
					<div id="scrollAni" class="col-md-3 d-flex flex-column justify-content-center">
						<img src="./img/index/section4/index_section4_1.png" class="w-100"></a> <br>
						<h5 style="font-weight: ">1. 먼저 원하는 초대장 종류를<br> 선택 후 제작 신청합니다.</h5>
					</div>
					
					<div id="scrollAni" class="col-1 my-auto justify-content-center">
						<img src="./img/index/section4/arrow.png" class="w-75 px-3"/></a>
					</div>
					
					<div id="scrollAni" class="col-md-3 d-flex flex-column justify-content-center" >
						<img src="./img/index/section4/index_section4_2.png" class="w-100"></a> <br>
						<h5 style="font-weight:">2. 신청 완료 후 초대장 만들기에<br>들어가서 편집합니다.</h5>
					</div>
					
					<div id="scrollAni" class="col-1 my-auto justify-content-center">
						<img src="./img/index/section4/arrow.png" class="w-75 px-3"/></a>
					</div>
					
					<div id="scrollAni" class="col-md-3 d-flex flex-column justify-content-center">
						<img src="./img/index/section4/index_section4_3.png" class="w-100"></a> <br>
						<h5 style="font-weight:">3. 연락처를 입력하여<br>문자 및 카톡을 전송합니다.</h5>
					</div>
				</div>
				<a
					class="row col-10 buttom_title justify-content-center text-center pt-4"
					href="servicePay.do">
					<button type="button" class="btn btn-lg"
						style="background:#f0771f; color: white; font-weight: bold; width:250px;">지금 바로 만들기</button>
				</a>
			</div>
		</div>
	</article>
		
	</section>
	<!-- /section 4 -->
  
	  	
	  	</div>