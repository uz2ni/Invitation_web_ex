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
<article class="center col-8 text-center" style="height: 120vh;">
	<div class="col" style="height: 120vh">
		<div class="nav-item d-flex justify-content-end">
			<a class="nav-link col-2 mt-2" href="FAQ.html"
				style="background-color: #2d62cd; color: white; border-radius: 5px;">1:1
				문의하기</a>
		</div>
		<div class="row my-3" style="height: 100vh;">
			<article class="part col"
				style="margin-right: 3px; height: 33vh; ">
					<img src="./img/info/faq/client_1.png" style="width:450px; height:250px;">
			</article>
			<article class="part col"
				style="margin-left: 3px; height: 33vh;">문의
				연락처</article>
			<article class="part FAQ col-12"
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
			</article>
		</div>
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