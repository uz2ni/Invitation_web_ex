<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<link rel="stylesheet" href="css/pointInfo.css?ver=1">

<title>Insert title here</title>
</head>
<body>

<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="포인트 충전 내역"/>
	<jsp:param name="bg" value="top_4.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />

<!-- pointInfo view -->

<article class="center col-8 text-center">
	<div class="col" style="height: 80vh">
					<h4 class="title text-left mt-2">포인트 충전내역</h4>
					<div class="row my-5" style="height: 60vh">
						<!--공지-->
						<div class="col-8 text-left py-4 mx-auto"
							style="border-radius: 20px; background-color:#f5f5f5; color:#333333;">
							<ul class="point-info-ul" style="padding-left:40px;">
								<li>포인트는 기간에 상관없이 소진될 때까지 이용하실 수 있습니다.</li>
								<li>영수증 버튼을 클릭하여 영수증 확인 및 인쇄를 하실 수 있습니다.</li>
							</ul>
						</div>
						<!--공지_end-->
						<!--잔여포인트-->
						<div class="col-12">
							<form class="row mb-3 justify-content-end">
								<div class="row col-4 justify-content-end mt-2">
									<h5 class="">남은 우표(포인트)</h5>
									<span class="px-2" style="font-size:1.5em;">${user.userPoint}</span>
									<h5 class="">장</h5>
								</div>
								<div class="col-2">
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
									<tr>
										<td scope="row">01</th>
										<td>2018-04-21</td>
										<td>-</td>
										<td>1,000p</td>
										<td>1,0000 원</td>
										<td>카드</td>
										<td>-</td>
										<td>-</td>
										</td>
									</tr>
								</tbody>
							</table>
							<!--table-->
						</div>
					</div>
				</div>
</article>

<!-- /pointInfo view -->

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