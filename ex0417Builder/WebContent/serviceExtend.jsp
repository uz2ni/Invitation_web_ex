<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- font awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">

<!-- custom CSS -->
<link rel="stylesheet" href="css/font.css?ver=1">
<link rel="stylesheet" href="css/sidebar.css?ver=1">
<link rel="stylesheet" href="css/common.css?ver=1">
<link rel="stylesheet" href="css/message.css?ver=1">
<link rel="stylesheet" href="css/serviceExtend.css?ver=1">

<title>Insert title here</title>
</head>
<body>
<form method="POST" id="service-extend-form">
<input type="hidden" id="type2" name="paymentType" value="4"> <!-- 0 : 연장 -->

<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="우표(포인트) 충전하기"/>
	<jsp:param name="bg" value="top_3.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />


<!-- serviceExtend.jsp view -->

<article class="center col-8 text-center">
  <div class="col">
    <h4 class="title text-left py-2">서비스 연장하기</h3>
    <div class="row py-4">
      <!--공지-->
			<div class="col-11 text-left py-4 mx-auto"
					style="border-radius: 20px; background-color:#f5f5f5; color:#333333; font-size:15px; margin-bottom:20px;">
						<ul style="padding-left:40px; margin:0;">
							<li>남은기간(사용기간)이 만료되면 초대장에 접속/수정 하실 수 없습니다.</li>
							<li>이미 남은기간(사용기간)이 만료된 경우 기간연장을 하시면 바로 접속/수정 가능합니다.</li>
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
                        <th scope="col">초대장</th>
                        <th scope="col">서비스명</th>
                        <th scope="col">상태</th>
                        <th scope="col">연장기간</th>
                        <th scope="col">결제금액</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td> 
                        	<!--option-->
                              <div class="input-group">
								<select class="custom-select" name="paymentUrlName">
									<c:forEach var="content" items="${contents}">
										<option value="${content.urlName}">${content.urlName}</option>
									</c:forEach>
								</select>                              
                              </div>
                        </td>
                        <td style="padding-top: 20px;"> 행사 </td>
                        <td style="padding-top: 20px;"> 기간만료 </td>
                        <td>
                        	 <!--option-->
                              <div class="input-group">
								<select class="custom-select" name="paymentMonth" onchange="selectExtend(this)">
								  <option selected value="0">선택하세요.</option>
								  <option value="1">1개월</option>
								  <option value="2">3개월</option>
								  <option value="3">6개월</option>
								  <option value="4">1년</option>
								</select>
                              </div>
                        </td>
                        <td style="padding-top: 20px;"><div class="col-6 mx-auto"><span class="total-money">0</span>원</div></td>
                      </tr>
                    </tbody>
                  </table>
             <!--상품선택_end-->
          </div>
      <!--내용제공-->
      <div class="col-12 pt-3">
            <div class="d-flex justify-content-center service-list">
              <div class="col" style="border-right: 1px solid #dcd9d9;">
                  <div class="col-9" style="margin:20px;">
                    <div class="row">
                        <div class="col-8 text-left">서비스 사용 비용 :</div>
                        <div class="col-4 text-right"><span class="total-money">0</span>원</div>
                    </div>
                  </div>
              </div>
              <div class="row col" style="align-items: center;">
                <div class="total col-6">총 결제 금액 :</div>
                <div class="col-6"><span class="total-money">0 </span>원</div>
            </div>
              </div>
          </div>
      <!--내용제공_end-->
      <!--결제정보-->
      <div class="col-12 pt-4">
            <div class="">
                 <h5 class="title text-left my-2">결제정보</h5>
             </div>
            <table class="table table-bordered">
              <thead>
                   <tr>
                       <th class="total" style="padding-bottom:20px;" scope="row">결제금액</th>
                       <td style="border:none;"><h3 class="text-left m-1"><span class="total-money">0</span>원</h3></td>
                   </tr>
                </thead>
              <!--결제 수단 선택-->
              <tbody>
                    <tr>
                        <th class="total" style="padding-top:20px;" scope="row">결제방법</th>
                        <td>
                        <!--결제방법-->
                           <div class="row pl-3" style="align-items: center;">
                               <label class="payment-type">
                               	   <input class="radiobtn" type="radio" name="payment-selector" id="1-payment" checked>
                                   <div class="check m-1" for="1-payment"></div><div class="payment-type-name">신용카드</div>
                               </label>
                               <label class="payment-type">
                                   <input class="radiobtn" type="radio" name="payment-selector" id="2-payment">
                                   <div class="check m-1" for="2-payment"></div><div class="payment-type-name">계좌이체</div>
                               </label>
                               <label class="payment-type" for="3-payment" style="padding-top:5px;">
                                   <input class="radiobtn" type="radio" name="payment-selector" id="3-payment">
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
              <a href="#"><button type="button" class="btn btn-lg" style="background-color:#959595; color:white;">이전으로</button></a>
		  	  <button type="button" class="btn btn-lg" style="background-color:#2d62cd; color:white;" onclick="requestPay('${sessionScope.user.userId}', '연장')" style="background-color:#2d62cd; color:white;">연장하기</button>
            </div>
          </div>    
    </div>          
  </div>
</article>

</form>
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
<script type="text/javascript" src="js/pay.js?v=<%=System.currentTimeMillis() %>"></script>

<!-- fontawesome -->
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
</body>
</html>