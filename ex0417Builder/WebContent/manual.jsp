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
<link rel="stylesheet" href="css/manual.css?ver=1">

<title>Insert title here</title>
</head>
<body>

<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="매뉴얼"/>
	<jsp:param name="bg" value="top_1.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />

<!-- manual view -->
<article class="center col-8 text-center" style="height: 65vh;">
	<nav class="navbar navbar-light justify-content-center"
		style="background-color: #f5f5f5;">
			<div class="nav nav-tabs justify-content-center" id="nav-tab"
				role="tablist">
				<a class="nav-item nav-link active font-weight-bold"
					id="nav-home-tab" data-toggle="tab" href="#nav-01" role="tab"
					aria-controls="nav-01" aria-selected="true">초대장 만들기</a> 
				<a class="nav-item nav-link font-weight-bold" id="nav-profile-tab"
					data-toggle="tab" href="#nav-02" role="tab"
					aria-controls="nav-02" aria-selected="false">초대장 공유</a> 
				<a class="nav-item nav-link font-weight-bold" id="nav-contact-tab"
					data-toggle="tab" href="#nav-03" role="tab"
					aria-controls="nav-03" aria-selected="false">문자 보내기</a> 
				<a class="nav-item nav-link font-weight-bold" id="nav-profile-tab"
					data-toggle="tab" href="#nav-04" role="tab"
					aria-controls="nav-04" aria-selected="false">통계 관리하기</a> 
				<a class="nav-item nav-link font-weight-bold" id="nav-profile-tab"
					data-toggle="tab" href="#nav-05" role="tab"
					aria-controls="nav-05" aria-selected="false">기타</a>

			</div>
		</nav>

	<div class="tab-content pt-5" id="nav-tabContent">
		<div class="tab-pane fade show active col-12" id="nav-01" role="tabpanel" aria-labelledby="nav-01-tab">
			<div class="row">
				<!--1-->
				<div class="manual-box col-4 align-self-center">
					<div style="height: 30px;">
						<div class="manual-type col-5">초대장만들기</div>
					</div>
					<div style="height: 50px;">
						<div class="manual-title">모임 초대장 만들기</div>
					</div>
					<div style="height: 100px;">
						<img class="" src="http://via.placeholder.com/100x100"
							data-holder-rendered="true">
					</div>
				</div>
				<!--click-->
				<div class="modal modal-center fade" id="manual-Modal"
					tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
					<div class="modal-dialog modal-center modal-fullsize modal-lg" 
						role="document"><!---->
						<div class="modal-content modal-fullsize">
							<div class="modal-header" style="background: #b0afaf;">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span style="color: white;" aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel"></h4>
							</div>
							<div class="modal-body d-flex">
								<img class="" src="http://via.placeholder.com/765x550"
									data-holder-rendered="true">
							</div>
							<div class="modal-footer" style="background: #b0afaf;">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
				<!--click-->
				<div class="manual-box col-4 align-self-center">
					<div style="height: 30px;">
						<div class="manual-type col-5">초대장만들기</div>
					</div>
					<div style="height: 50px;">
						<div class="manual-title">발표회 초대장 만들기</div>
					</div>
					<div style="height: 100px;">
						<img class="" src="http://via.placeholder.com/100x100"
							data-holder-rendered="true">
					</div>

					<div class="textBox" data-toggle="modal"
						data-target="#manual-Modal"
						data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
						alt="Thumbnail [100%x225]"></div>
				</div>
				<div class="manual-box col-4 align-self-center">
					<div style="height: 30px;">
						<div class="manual-type col-5">초대장만들기</div>
					</div>
					<div style="height: 50px;">
						<div class="manual-title">종교행사 초대장 만들기</div>
					</div>
					<div style="height: 100px;">
						<img class="" src="http://via.placeholder.com/100x100"
							data-holder-rendered="true">
					</div>

					<div class="textBox" data-toggle="modal"
						data-target="#manual-Modal"
						data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
						alt="Thumbnail [100%x225]"></div>
				</div>
				<!--2-->

			</div>
		</div>
		<div class="tab-pane fade" id="nav-02" role="tabpanel"
			aria-labelledby="nav-02-tab">...</div>
		<div class="tab-pane fade" id="nav-03" role="tabpanel"
			aria-labelledby="nav-03-tab">...</div>
		<div class="tab-pane fade" id="nav-04" role="tabpanel"
			aria-labelledby="nav-04-tab">...</div>
		<div class="tab-pane fade" id="nav-05" role="tabpanel"
			aria-labelledby="nav-05-tab">...</div>
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