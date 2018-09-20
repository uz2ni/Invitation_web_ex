<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
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
<link rel="stylesheet" href="css/serviceInfo.css?ver=1">

<body>

<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="서비스 신청 내역"/>
	<jsp:param name="bg" value="top_4.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />

<!-- serviceInfo view -->
<article class="center col-8" style="padding: 0 0;">
		<!-- 탭 -->
		<div class="Info-container">
		  <div class="d-flex Info-tabs">
		
		    <div class="tabbable" style="width:100%;">
		      <ul class="nav Info-nav-tabs">
		        <li><a href="#tab1" data-toggle="tab">문자 발송내역</a></li>
		        <li><a href="#tab2" data-toggle="tab">포인트 충전내역</a></li>
		        <li class="active"><a href="#tab3" data-toggle="tab">서비스 신청내역</a></li>
		      </ul>
		      <div class="tab-content text-center">
		      <!-- tab1 문자 발송 내역 -->
		        <div class="tab-pane" id="tab1">
		          <p>문자발송내역</p>
		          <div class="row my-5">
					<!--table-->
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col"><input type="checkbox"
									aria-label="Checkbox for following text input"></th>
								<th scope="col">유형</th>
								<th scope="col">초대장제목</th>
								<th scope="col">우표</th>
								<th scope="col">발신번호</th>
								<th scope="col">전송일시</th>
								<th scope="col">총건수</th>
								<th scope="col">전송상태</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="payment" items="${payments}">
						<c:if test="${payment.paymentStatus eq 'paid'}">
							<tr>
								<td scope="row"><input type="checkbox"
									aria-label="Checkbox for following text input"></th>
								<td>${payment.paymentStyle}</td>
								<td>전국노래자랑</td>
								<td>2장</td>
								<td>010-9421-6813</td>
								<td>2018-08-31</td>
								<td>1</td>
								<td>전송완료</td>
							</tr>
							</c:if>
							</c:forEach>
						</tbody>
					</table>
					<!--table_end-->
					<div class="mx-auto">
						<a href="#"><button type="button" class="btn btn-lg info-btn">포인트 충전하기</button></a> 
						<a href="#"><button type="button" class="btn btn-lg info-btn">문자보내기</button></a>
					</div>
				</div>
		          
		        </div>
		        <!-- tab2 포인트 충전내역 -->
		        <div class="tab-pane" id="tab2">
		          <p>포인트 충전 내역</p>
		          <div class="row my-5 justify-content-center">
						<!--공지-->
						<div class="col-8 text-left point-info">
							<ul class="point-info-ul m-0">
								<li>포인트는 기간에 상관없이 소진될 때까지 이용하실 수 있습니다.</li>
								<li>영수증 버튼을 클릭하여 영수증 확인 및 인쇄를 하실 수 있습니다.</li>
							</ul>
						</div>
						<!--공지_end-->
						<!--잔여포인트-->
						<div class="col-12">
							<form class="row justify-content-end py-2">
								<div class="d-flex px-2 pt-2">
									<h5 class="">남은 우표(포인트) : <span class="">${user.userPoint}</span> 장</h5>
								</div>
								<div class="">
									<a href="messagePay.do"><button type="button" class="btn" style="background: #333333; color: white;">충전하기</button></a>
								</div>
							</form>
							<!--잔여포인트_end-->
							<!--table-->
							<table class="table table-bordered">
								<thead>
									<tr>
										<th scope="col">NO</th>
										<th scope="col">충전일</th>
										<th scope="col">구성</th>
										<th scope="col">충전포인트</th>
										<th scope="col">결제금액</th>
										<th scope="col">결제방식</th>
										<th scope="col">결제상태</th>
										<th scope="col">영수증</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="point" items="${points}">
										<tr>
											<td scope="row">${point.paymentId}</td>
											<td>${point.paymentAt}</td>
											<td>${point.paymentName}</td>
											<td>충전 포인트</td>
											<td>${point.paymentAmount} 원</td>
											<td>${point.paymentPayMethod}</td>
											<td>${point.paymentStatus}</td>
											<td><a href="my_4"><button type="button"
														class="btn btn-sm"
														style="background: #333333; color: white;">출력</button></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!--table-->
						</div>
					</div>
		          
		        </div>
		        <!-- tab3 서비스 신청내역 -->
		        <div class="tab-pane active" id="tab3">
		          <p>서비스 신청내역</p>
		          <div class="row my-5">
					<!--table-->
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col"><input type="checkbox"
									aria-label="Checkbox for following text input"></th>
								<th scope="col">신청일</th>
								<th scope="col">구분</th>
								<th scope="col">기간</th>
								<th scope="col">서비스명</th>
								<th scope="col">주소</th>
								<th scope="col">결제금액</th>
								<th scope="col">결제방식</th>
								<th scope="col">결제상태</th>
								<th scope="col">영수증</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="service" items="${services}">
								<tr>
									<td scope="row"><input type="checkbox"
										aria-label="Checkbox for following text input"></td>
									<td>${service.paymentAt}</td>
									<td>${service.paymentStyle}</td>
									<td>${service.paymentMonth}개월</td>
									<td>${service.paymentName}</td>
									<td>${service.paymentUrlName}</td>
									<td>${service.paymentAmount}</td>
									<td>${service.paymentPayMethod}</td>
									<td>${service.paymentStatus}</td>
									<td><a href="my_4"><button type="button"
												class="btn btn-sm"
												style="background: #333333; color: white;">출력</button></a></td>
								</tr>
							</c:forEach>						
						</tbody>
					</table>
					<!--table_end-->
					<div class="mx-auto">
						<a href="application_2.html"><button type="button" class="btn btn-lg info-btn">초대장 추가하기</button></a> 
						<a href="extension.html"><button type="button" class="btn btn-lg info-btn">사용기간 연장하기</button></a>
					</div>
				</div>
		        </div>
		      </div>
		    </div>
		
		  </div>
		</div>
</article>
<!-- /serviceInfo view -->


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
<script>
$(function(){
	  var hash = window.location.hash;
	  hash && $('ul.nav a[href="' + hash + '"]').tab('show');

	  $('.Info-nav-tabs a').click(function (e) {
	    $(this).tab('show');
	    var scrollmem = $('body').scrollTop();
	    window.location.hash = this.hash;
	    $('html,body').scrollTop(scrollmem);
	  });
	});
	
var tabs = $('.Info-nav-tabs > li');

tabs.on("click", function(){
  tabs.removeClass('active');
  $(this).addClass('active');
});
</script>
</body>
</html>