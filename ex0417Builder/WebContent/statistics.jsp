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
<link rel="stylesheet" href="css/statistics.css?ver=1">

<title>Insert title here</title>
</head>
<body>

<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="통계 관리"/>
	<jsp:param name="bg" value="top_4.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />

<!-- statistics view -->
<article class="center col-8 text-center" style="height:80vh;">
  <div class="col" style="height:80vh">
    <h4 class="title text-left my-2">통계 관리</h4>
    <div class="row my-5" style="height:60vh">
      <!--공지-->
			<div class="col-8 text-left pt-4 mx-auto"
				style="height: 15vh; border-radius: 20px; background-color:#f5f5f5; color:#333333;">
				<ul class="statistics-ul" style="padding-left:40px;">
					<li>원하는 통계 리스트를 선택해 통계 내역을 관리 할 수 있습니다.</li>
					<li>장기 서비스 이용 시 그 내역을 그래프로 확인 할 수 있습니다.</li>
				</ul>
			</div>
		  <!--공지_end-->
      <!--main-->
      <div class="col-12 d-flex justify-content-center text-center">
        <div class="list1 col-6" style="height:30vh;">
          <div class="address-list mt-3">
        	   <h4>참가자 정보 내역</h4>
        	   <a href="my_2_1.html"><img src="./img/mypage/statistics/adresslisk.png" width="180" height="160"></a>
        	</div>
       </div>  
    	  <div class="list2 col-6" style="height:30vh;">
    	 	<div class="message-list mt-3">
    	 		<h4>문자 보낸 내역</h4>
    	 		<a href="my_2_2.html"><img src="./img/mypage/statistics/messagelist.png" width="180" height="160"></a>
    	  </div>
      </div>
      </div>
    </div>
    <!--main_end-->
  </div>
</article>
<!-- /statistics view -->

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