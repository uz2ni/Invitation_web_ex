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

<!-- font awesome -->
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
  
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
<article class="center col-8 text-center">
	<h4 class="title text-left my-2">매뉴얼</h4>
	<h6>초대해U 초대장 제작 플랫폼<br>지금바로 당신만의 초대장을 만들어 보세요. </h6>
	<p class="title manual-title">초대장 체험판 시작하기</p>
	<section class="design-process-section pb-4" id="process-tab">
  <div class="container">
    <div class="row">
      <div class="col-xs-12" style="width:100%"> 
        <!-- design process steps--> 
        <!-- Nav tabs -->
        <ul class="nav nav-tabs process-model more-icon-preocess justify-content-center" role="tablist">
          <li role="presentation" class="active"><a href="#discover" aria-controls="discover" role="tab" data-toggle="tab"><i class="fas fa-clipboard-check" aria-hidden="true"></i>
            <p>스킨선택</p>
            </a></li>
          <li role="presentation"><a href="#strategy" aria-controls="strategy" role="tab" data-toggle="tab"><i class="fas fa-window-maximize" aria-hidden="true"></i>
            <p>상단정보</p>
            </a></li>
          <li role="presentation"><a href="#optimization" aria-controls="optimization" role="tab" data-toggle="tab"><i class="fas fa-list" aria-hidden="true"></i>
            <p>상세정보</p>
            </a></li>
          <li role="presentation"><a href="#content" aria-controls="content" role="tab" data-toggle="tab"><i class="far fa-image" aria-hidden="true"></i>
            <p>멀티미디어</p>
            </a></li>
          <li role="presentation"><a href="#reporting" aria-controls="reporting" role="tab" data-toggle="tab"><i class="fas fa-hand-holding-usd" aria-hidden="true"></i>
            <p>계좌연동</p>
            </a></li>
          <li role="presentation"><a href="#add" aria-controls="add" role="tab" data-toggle="tab"><i class="fas fa-plus-circle" aria-hidden="true"></i>
            <p>추가기능</p>
            </a></li>
        </ul>
        <!-- end design process steps--> 
        <!-- Tab panes -->
        <div class="tab-content pb-3">
          <div role="tabpanel" class="tab-pane active" id="discover">
            <div class="design-process-content">
              <p class="step-number">1</p>
              <p class="semi-bold sub-text">모임, 발표회, 종교행사, 기타 등 다양한 스킨 중 하나를 선택합니다.</p>
             <div class="d-flex justify-content-center">
	             <div class="" style="position: relative;">
	             	<img src="./img/info/manual/step1.png" width="300" height="350">
	             	<i class="fas fa-hand-point-up hand-1 fa-3x"></i>
	             	<i class="fas fa-long-arrow-alt-right fa-4x" style="color:#4e4e4e;"></i>
	             </div>
	             <div class="" style="position: relative;">
	              <img src="./img/info/manual/step1_2.png" width="180" height="350">
	              <div class="step-box step1-box"></div>
	              </div>
              </div>
             </div>
          </div>
          <div role="tabpanel" class="tab-pane" id="strategy">
            <div class="design-process-content">
              <p class="step-number">2</p>
              <p class="semi-bold sub-text">초대장 제목, 색상, 정렬, 상단 이미지를<br> 삽입합니다.</p>
              <div class="d-flex justify-content-center">
	             <div class="" style="position: relative;">
	             	<img src="./img/info/manual/step2.png" width="300" height="400">
	             	<div class="step-box step2-1-box"></div>
	             	<i class="fas fa-long-arrow-alt-right fa-4x" style="color:#4e4e4e;"></i>
	             </div>
	             <div class="" style="position: relative;">
	              <img src="./img/info/manual/step2_2.png" width="180" height="350">
	              <div class="step-box step2-2-box"></div>
	              </div>
              </div>
              </div>
          </div>
          <div role="tabpanel" class="tab-pane" id="optimization">
            <div class="design-process-content">
              <p class="step-number">3</p>
              <p class="semi-bold sub-text">일자, 시간, 장소, 인사말, 주소 등 <br>상세 정보를 입력합니다.</p>
	             	<img src="./img/info/manual/step3.png" width="850" height="600">
               </div>
          </div>
          <div role="tabpanel" class="tab-pane" id="content">
            <div class="design-process-content">
              <p class="step-number">4</p>
              <p class="semi-bold sub-text">이미지, 동영상 삽입이 가능하며 <br>이미지는 최대 10개까지 삽입 가능합니다.</p>        
	          <div class="" style="position: relative;">
		      	<img src="./img/info/manual/step4.png" width="300" height="400">
		      </div>
          	</div>
          </div>
          <div role="tabpanel" class="tab-pane" id="reporting">
            <div class="design-process-content">
              <p class="step-number">5</p>
              <p class="semi-bold sub-text">계좌 선택 및 금액 입력을 입력하여<br>송금서비스가 가능합니다.</p>
              <img src="./img/info/manual/step5.png" width="300" height=300">
              <i class="fas fa-long-arrow-alt-right fa-4x" style="color:#4e4e4e;"></i>
              <img src="./img/info/manual/step5_2.PNG" width="180" height=150" style="border:solid 3px #2d62cd;">
              <i class="fas fa-hand-point-up hand-5 fa-3x"></i>
          </div>
        </div>
        <div role="tabpanel" class="tab-pane" id="add">
            <div class="design-process-content">
              <p class="step-number">6</p>
              <p class="semi-bold sub-text">참석여부, 설문조사, 방명록, sns공유 등 <br>추가 서비스를 이용할 수 있습니다.</p>
              <img src="./img/info/manual/step6.png" width="850" height="600">
          </div>
        </div>
      </div>
      
      <a href=""><button type="button" class="btn btn-lg manual-btn">초대장 체험판 시작하기</button></a>
    </div>
  </div>
</section>
	


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
<script type="text/javascript" src="js/manual.js?v=<%=System.currentTimeMillis()%>"></script>


</body>
</html>