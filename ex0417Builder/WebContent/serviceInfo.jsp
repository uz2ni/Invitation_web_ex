<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<article class="center col-8 text-center" style="height: 60vh;">
	<div class="col" style="height: 60vh">
		<h4 class="title text-left my-2">서비스 신청내역</h4>
		<div class="row my-5" style="height: 40vh">
			<!--table-->
			<table class="table table-bordered">
				<thead>
					<tr>
						<th scope="col"><input type="checkbox"
							aria-label="Checkbox for following text input"></th>
						<th scope="col">신청일</th>
						<th scope="col">구분</th>
						<th scope="col">서비스명</th>
						<th scope="col">주소</th>
						<th scope="col">결제금액</th>
						<th scope="col">결제방식</th>
						<th scope="col">결제상태</th>
						<th scope="col">영수증</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td scope="row"><input type="checkbox"
							aria-label="Checkbox for following text input"></th>
						<td>2018-05-03</td>
						<td>신규</td>
						<td>FREE</td>
						<td>URL</td>
						<td>- 원</td>
						<td>무료체험형</td>
						<td>결제완료</td>
						<td><a href="my_4"><button type="button"
									class="btn btn-sm"
									style="background: #333333; color: white;">출력</button></a></td>
					</tr>
				</tbody>
			</table>
			<!--table_end-->
			<div class="mx-auto">
				<a href="application_2.html"><button type="button" class="btn btn-lg" style="background-color:#959595; color:white; width:250px;">초대장 추가하기</button></a> 
				<a href="extension.html"><button type="button" class="btn btn-lg" style="background-color:#2d62cd; color:white; width:250px;">사용기간 연장하기</button></a>
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

</body>
</html>