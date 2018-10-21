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
<link rel="stylesheet" href="css/message.css?ver=1">

<title>Insert title here</title>
</head>
<body>

<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="우표(포인트) 충전하기"/>
	<jsp:param name="bg" value="top_3.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />



<!-- messagePay view -->

<article class="center col-8 text-center">
<form method="POST" id="message-pay-form">
<input type="hidden" id="type2" name="paymentType" value="5">

	<div class="col">
    	<h4 class="title text-left py-2">우표 충전하기</h4>
		<div class="row my-4">
      <!--공지-->
			<div class="col-11 text-left py-4 mx-auto"
					style="border-radius: 20px; background-color:#f5f5f5; color:#333333; font-size:15px; margin-bottom:20px;">
						<ul style="padding-left:40px; margin: 0;">
							<li>포인트는 기간에 상관없이 소진될 때까지 이용하실 수 있습니다.</li>
							<li>문자 전송 포인트 : SMS ( 우표 1장 ), LMS ( 우표 3장 ), MMS ( 우표 6장 )</li>
							<li>포인트 충전후 문자보내기 페이지에서 초기 1회 본인인증후 문자 발송이 가능합니다.</li>
							<li>초대해U MMS(포토+장문)전송시 자동으로 초대장 사진과 문구가 생성됩니다.</li>
							<li>초대해U MMS 전송은 초대장에 올려주신 이미지가 같이 첨부되어 지인에게 전달시에 최근 문제가 되는 스미싱등의 불필요한 오해도 줄일 수 있습니다.</li>
						</ul>
					</div>
			<!--공지_end-->
      <div class="col-12">
             <div class="">
                 <h5 class="title text-left my-2">상품선택</h5>
             </div>
             <!--상품선택-->
             <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th scope="col"></th>
                        <th scope="col">상품</th>
                        <th scope="col">우표</th>
                        <th scope="col" style="width:220px;">단문 (SMS)</th>
                        <th scope="col" style="width:220px;">장문 (LMS)</th>
                        <th scope="col" style="width:220px;">포토 + 장문 (MMS)</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><input class="radiobtn" type="radio" id="1-option" name="selectPoint" onclick="pointTotalMoney(1000, 100)" checked><label for="1-option" class="check option"></label></td>
                        <td scope="row">1,000 원</td>
                        <td>50 장</td>
                        <td>50 건</td>
                        <td>16 건</td>
                        <td>8 건</td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <td><input class="radiobtn" type="radio" id="2-option" name="selectPoint" onclick="pointTotalMoney(2000, 200)"><label for="2-option" class="check option"><div class="inside"></div></label></td>
                        <td scope="row">2,000 원</td>
                        <td>100 장</td>
                        <td>100 건</td>
                        <td>33 건</td>
                        <td>16 건</td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <td><input class="radiobtn" type="radio" id="3-option" name="selectPoint" onclick="pointTotalMoney(3000, 300)"><label for="3-option" class="check option"><div class="inside"></div></label></td>
                        <td scope="row">3,000 원</td>
                        <td>150 장</td>
                        <td>150 건</td>
                        <td>50 건</td>
                        <td>25 건</td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <td><input class="radiobtn" type="radio" id="4-option" name="selectPoint" onclick="pointTotalMoney(4000, 400)"><label for="4-option" class="check option"><div class="inside"></div></label></td>
                        <td scope="row">5,000 원</td>
                        <td>250 장</td>
                        <td>250 건</td>
                        <td>83 건</td>
                        <td>41 건</td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <td><input class="radiobtn" type="radio" id="5-option" name="selectPoint" onclick="pointTotalMoney(5000, 500)"><label for="5-option" class="check option"><div class="inside"></div></label></td>
                        <td scope="row">10,000 원</td>
                        <td>500 장</td>
                        <td>500 건</td>
                        <td>166 건</td>
                        <td>83 건</td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <td><input class="radiobtn" type="radio" id="6-option" name="selectPoint" onclick="pointTotalMoney(6000, 600)"><label for="6-option" class="check option"><div class="inside"></div></label></td>
                        <td scope="row">15,000 원</td>
                        <td>750 장</td>
                        <td>750 건</td>
                        <td>250 건</td>
                        <td>125 건</td>
                      </tr>
                    </tbody>
                  </table>
             <!--상품선택_end-->
          </div>
      <!--결제정보-->
      <div class="col-12 pt-4">
            <div class="">
                 <h5 class="title text-left my-2">결제정보</h5>
             </div>
            <table class="table table-bordered">
              <thead>
                   <tr>
                       <th class="total" scope="row">결제금액</th>
                       <td style="border:none;"><h3 class="text-left m-1"><span class="total-money">1,000</span>원</h3></td>
                   </tr>
                </thead>
              <!--결제 수단 선택-->
              <tbody>
                    <tr>
                        <th class="total" scope="row">결제방법</th>
                        <td>
                        <!--결제방법-->
                           <div class="row pl-3" style="align-items: center;">
                               <label class="payment-type">
                               	   <input class="radiobtn" type="radio" name="exampleRadios" id="1-payment" value="option1" checked>
                                   <div class="check" for="1-payment"></div><div class="payment-type-name">신용카드</div>
                               </label>
                               <label class="payment-type">
                                   <input class="radiobtn" type="radio" name="exampleRadios" id="2-payment" value="option1">
                                   <div class="check" for="2-payment"></div><div class="payment-type-name">계좌이체</div>
                               </label>
                               <label class="payment-type" for="3-payment" style="padding-top:5px;">
                                   <input class="radiobtn" type="radio" name="exampleRadios" id="3-payment" value="option1">
                                   <div class="check" for="3-payment" style="margin-top: 5px;"></div><div class="payment-type-name"><img src="./img/pay/kakaopay.JPG" width="90" height="30"></div>
                               </label>
                           </div>
                           <!--결제방법_end-->
                          </td>
                      </tr>
                  </tbody>
            </table>
            <!--결제정보_end-->
            <div class="mt-4">
              <a href="application.html"><button type="button" class="btn btn-lg" style="background-color:#959595; color:white;">이전으로</button></a>
              <button type="button" class="btn btn-lg" style="background-color:#2d62cd; color:white;" onclick="requestPay('${sessionScope.user.userId}', '포인트')">결제하기</button>
            </div>
          </div>    
    </div>          
  </div>
  
  </form>
</article>

<!-- /messagePay view -->


<jsp:include page="/template/footer.jsp" flush="false" />

<!-- bootstrap js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- top js -->
<script type="text/javascript" src="js/top.js?v=<%=System.currentTimeMillis()%>"></script>
<!-- side bar js -->
<script type="text/javascript" src="js/sidebar.js?v=<%=System.currentTimeMillis()%>"></script>

<!-- iamport(결제) js -->
<script src="https://service.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
<!-- custom js -->
<script type="text/javascript" src="js/message.js?v=<%=System.currentTimeMillis()%>"></script>
<script type="text/javascript" src="js/pay.js?v=<%=System.currentTimeMillis() %>"></script>

</body>
</html>