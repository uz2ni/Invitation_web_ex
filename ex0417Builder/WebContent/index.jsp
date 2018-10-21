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
<link rel="stylesheet" href="css/common.css?ver=1">
<link rel="stylesheet" href="css/index.css?ver=1">

<title>초대해U</title>
</head>
<body style="overflow-x: hidden; overflow-y: auto">

<jsp:include page="/template/indexHeader.jsp" flush="false" />
<jsp:include page="/template/sections.jsp" flush="false" />
<jsp:include page="/template/indexFooter.jsp" flush="false" />


<!-- bootstrap js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- fullpage js -->
<script src="https://cdn.jsdelivr.net/jquery.fullpage/2.9.4/jquery.fullpage.min.js"></script>
<!-- custom js -->
<script type="text/javascript">

/* 송다원, INDEX 섹션별 스크롤 */
$("#bt01").click(function() {
	var position = $("#section1").offset();
	$("html, body").stop().animate({
		'scrollTop' : position.top
	}, 800);
}); //offset 해당 객체의 위치값을 받아오는 것
$("#bt02").click(function() {
	var position = $("#section2").offset();
	$("html, body").stop().animate({
		'scrollTop' : position.top
	}, 800);
}); // scrollTop 선택한 요소의 상하 스크롤 위치를 얻거나 설정하는 메소드
$("#bt03").click(function() {
	var position = $("#section3").offset();
	$("html, body").stop().animate({
		'scrollTop' : position.top
	}, 800);
});
$("#bt04").click(function() {
	var position = $("#section4").offset();
	$("html, body").stop().animate({
		'scrollTop' : position.top
	}, 800);
});

/* 순차적으로 나오는 애니메이션 / 날짜:2018-06-19 작성자:박민정 */
$(document).ready(function(){ 
	$(window).scroll(function() { 
		if ($(document).scrollTop()>1200) { 
			$("#scrollAni img").each(function(eq){
				var icons=$(this);
				setTimeout(function(){
					icons.addClass("ani"); 
				}, eq*200);					
			});
		}
	}); 
});

</script>

<!-- 블러 처리 -->
<svg version="1.1" xmlns="http://www.w3.org/2000/svg">
    <filter id="blur">
    <feGaussianBlur stdDeviation="2" />
    </filter>
</svg>

</body>
</html>