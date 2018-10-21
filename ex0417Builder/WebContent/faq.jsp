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
<link rel="stylesheet" href="css/faq.css?ver=1">

<title>Insert title here</title>
</head>
<body>

<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="고객 센터"/>
	<jsp:param name="bg" value="top_1.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />

<!-- FAQ view -->
<article class="center col-8 text-center">
	<div class="row">
		<h4 class="title text-left col my-2">고객 센터</h4>
		<a class="nav-link col-2 mt-2" href="FAQ.html" style="background-color: #2d62cd; color: white; border-radius: 5px;">
			1:1문의하기</a>
	</div>
	<div class="col">
		<div class="row my-3" style="height: 300px;">
			<div class="part col"
				style="margin-right: 3px;">
					<img src="./img/info/faq/client_1.png" style="width:100%; height:100%">
			</div>
			<div class="part col">
				<img src="./img/info/faq/faq_kakaoplus.png" style="width:100%; height:100%">
			</div>
		</div>
		
		<div class="row mb-3">
			<div class="part col" style="margin-right: 3px;">
				<h4 class="title d-flex p-2">오시는 길</h4>
				<div class="pb-2" style="font-size:18px;">방문시. 고객님의 본인 명의 계정에 한하여 상담이 가능하며<br> <strong>본인 확인을 위한 신분증을 반드시 지참</strong>하시기 바랍니다.</div>
				<div class="d-flex col" style="font-size:15px;">- 지하철 : <a style="color:#36387a"> [1호선]명학역</a></div>
				<div style="height:300px;">
					<img src="./img/info/faq/subway_map.PNG" style="width:95%; height:100%; border:1px solid #f2f2f2">
				</div>
				<div class="py-2 text-left" style="font-size:15px;">
					<div class="col">- 도보 : <a style="color:#36387a">[1호선]명학역</a> 1번 출구에서 성결대까지 걸어서 15분</div>
					<div class="col">- 버스 : <a style="color:#36387a">[1호선]명학역</a> 1번 출구 앞 마을버스 <strong>10-1</strong> 또는 <strong>10-2</strong>번 승차 후 성결대 정류장 하차</div>
				</div>
			</div>
			<div class="part col">
				<div class="pt-2" style="height:400px;">
					<img src="./img/info/faq/sungkyul_map.JPG" style="width:95%; height:100%; border:1px solid #f2f2f2">
				</div>
				<div class="py-2 text-left" style="font-size:15px;">
					<div class="col">- 지번 주소 : 경기도 안양시 만안구 안양동 400-10 성결관 3층 303호</div>
					<div class="col">- 도로명 주소 : 경기도 안양시 만안구 성결대학로 53 성결관 3층 303호</div>
					<div class="col">- 운영시간 : 월-금 09:00 ~ 18:00</div>
					<div class="col">(공휴일 휴무 / 점심시간 12:00 ~ 13:00)</div>
				</div>
			</div>
		</div>
			<!-- <article class="part FAQ col-12"
				style="margin-top: 2px; height: 65vh;">
				<h4 class="title text-left my-2">자주하는 질문</h4>
				<table class="col text-left" id="report" style=" border: 2px solid #dcd9d9;">
					<tr>
					</tr>
					<tr class="FAQ_Q Q_1">
						<td>Q</td>
						<td class="">[사용법] 스마트폰에서 카카오톡으로 초대장을 보내고 싶어요.</td>
						<td><div class="arrow"></div></td>
					</tr>
					<tr class="FAQ_A">
						<td class="A">A</td>
						<td colspan="2">초대해U 초대장을 스마트폰에서 카카오톡으로 지인분들께 전달하고 싶으시다면,<br>
									2가지 방법 중 선택해서 발송하실 수 있습니다.<br>
									1. 초대해U에서 제공해드리고 있는 '카카오톡 보내기' 기능으로 보내기<br>
									2. 초대장 주소를 대화창에 입력해 보내기<br><br>
									<strong>※ 잠시만요! ※</strong><br>
									카카오톡 대화창에 초대장 주소를 입력해 초대장을 공유해주시는 방식은<br>
									카카오가 제공하는 썸네일 이미지 노출 방식으로 노출되며,<br>
									초대해U에서 제공해드리는 '카카오톡 보내기' 기능을 이용해 <br>
									[sns공유] 탭에 입력한 메시지나 갤러리 이미지 노출 등 설정해주신 내용들이 노출되지 않습니다.</td>
					</tr>
					<tr class="FAQ_Q Q_2">
						<td>Q</td>
						<td class="">다른 초대장으로 수정하고 싶어요.</td>
						<td><div class="arrow"></div></td>
					</tr>
					<tr class="FAQ_A">
						<td class="A">A</td>
						<td colspan="2">수정하세요.</td>
					</tr>
				</table>
			</article>-->
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
<script type="text/javascript">
/*자주하는 질문 2018-05-16 작성자:박민정*/
         $(document).ready(function(){
            $("#report tr:odd").addClass("odd");
            $("#report tr:not(.odd)").hide();
            $("#report tr:first-child").show();
            
            $("#report tr.odd").click(function(){
                $(this).next("tr").toggle();
                $(this).find(".arrow").toggleClass("up");
                $(".FAQ_A").css("border-bottom", "3px solid #f0771f");
            });
        });
        
</script>


</body>
</html>