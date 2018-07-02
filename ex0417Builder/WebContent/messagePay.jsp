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

<article class="center col-8 text-center" style="height:160vh;">
  <div class="col" style="height:160vh">
    <h4 class="title text-left my-2">포인트 충전하기</h3>
    <div class="row my-5" style="height:130vh">
      <!--공지-->
			<div class="col-11 text-left py-4 mx-auto"
					style="border-radius: 20px; background-color:#f5f5f5; color:#333333; font-size:15px; margin-bottom:20px;">
						<ul style="padding-left:40px;">
							<li>포인트는 기간에 상관없이 소진될 때까지 이용하실 수 있습니다.</li>
							<li>문자 전송 포인트 : MMS ( 220 p ), LMS ( 60 p ), SMS ( 22 p )</li>
							<li>포인트 충전후 문자보내기 페이지에서 초기 1회 본인인증후 문자 발송이 가능합니다.</li>
							<li>초대해U MMS(포토+장문)전송시 자동으로 초대장 사진과 문구가 생성됩니다.</li>
							<li>초대해U MMS 전송은 초대장에 올려주신 이미지가 같이 첨부되어 지인에게 전달시에 최근 문제가 되는 스미싱등의 불필요한 오해도 줄일 수 있습니다.</li>
						</ul>
					</div>
			<!--공지_end-->
      <div class="col-12">
             <div class="">
                 <h4 class="title text-left my-2">상품선택</h4>
             </div>
             <!--상품선택-->
             <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th scope="col"></th>
                        <th scope="col">상품</th>
                        <th scope="col">충전포인트</th>
                        <th scope="col">내용</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><input class="form-check-input" selected value="0" type="radio" name="exampleRadios" value="option1" checked></td>
                        <td scope="row">1,000원</th>
                        <td>100p</td>
                        <td>-</td>
                        </td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <td><input class="form-check-input" selected value="0" type="radio" name="exampleRadios" value="option2" checked></td>
                        <td scope="row">2,000원</th>
                        <td>200p</td>
                        <td>-</td>
                        </td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <td><input class="form-check-input" selected value="0" type="radio" name="exampleRadios" value="option3" checked></td>
                        <td scope="row">3,000원</th>
                        <td>300p</td>
                        <td>-</td>
                        </td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <td><input class="form-check-input" selected value="0" type="radio" name="exampleRadios" value="option4" checked></td>
                        <td scope="row">5,000원</th>
                        <td>500p</td>
                        <td>-</td>
                        </td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <td><input  class="form-check-input"selected value="0" type="radio" name="exampleRadios" value="option5" checked></td>
                        <td scope="row">10,000원</th>
                        <td>1,000p</td>
                        <td>-</td>
                        </td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <td><input class="form-check-input" selected value="0" type="radio" name="exampleRadios" value="option6" checked></td>
                        <td scope="row">15,000원</th>
                        <td>1,500p</td>
                        <td>-</td>
                        </td>
                      </tr>
                    </tbody>
                  </table>
             <!--상품선택_end-->
          </div>
      <!--내용제공-->
      <div class="col-12">
            <div class="container d-flex justify-content-center" style="border: 1px solid #dcd9d9;">
              <div class="col-7" style="border-right: 1px solid #dcd9d9;">
                  <div class="col-9" style="margin:20px;">
                    <div class="row">
                        <div class="col-8 text-left pb-1">설치 비용 :</div>
                        <div class="col-4 text-right"><span> - </span>원</div><br>
                    </div>
                    <div class="row">
                        <div class="col-8 text-left">서비스 사용 비용 :</div>
                        <div class="col-4 text-right"><span> - </span>원</div>
                    </div>
                  </div>
              </div>
              <div class="row col-5" style="margin-top:35px;">
                <div class="total col-6">총 결제 금액 :</div>
                <div class="col-6"><span class="total-money">0 </span>원</div>
            </div>
              </div>
          </div>
      <!--내용제공_end-->
      <!--결제정보-->
      <div class="col-12 mt-3">
            <div class="">
                 <h4 class="title text-left my-2">결제정보</h4>
             </div>
            <table class="table table-bordered">
              <thead>
                   <tr>
                       <th class="total" style="padding-bottom:20px;" scope="row">결제금액</th>
                       <td><h3 class="text-left m-1"><span class="total-money">0</span>원</h3></td>
                   </tr>
                </thead>
              <!--결제 수단 선택-->
              <tbody>
                    <tr>
                        <th class="total" style="padding-top:20px;" scope="row">결제방법</th>
                        <td>
                        <!--결제방법-->
                           <div class="row m-1">
                               <div class="form-check pr-2">
                                   <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" style="margin-top:9px;" checked>
                                   <label class="form-check-label m-1" for="chargeway">신용카드</label>
                               </div>
                               <div class="form-check pr-2">
                                   <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" style="margin-top:9px;" checked>
                                   <label class="form-check-label m-1" for="chargeway">계좌이체</label>
                               </div>
                               <div class="form-check">
                                   <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" style="margin-top:9px;" checked>
                                   <label class="form-check-label m-1" for="chargeway"><img src="./img/pay/kakaopay.JPG" width="90" height="30"></label>
                               </div>
                           </div>
                           <!--결제방법_end-->
                          </td>
                      </tr>
                  </tbody>
            </table>
            <!--결제정보_end-->
            <div class="mt-4">
              <a href="application.html"><button type="button" class="btn btn-lg" style="background-color:#959595; color:white;">이전으로</button></a>
              <button type="submit" class="btn btn-lg" style="background-color:#2d62cd; color:white;">결제하기</button>
            </div>
          </div>    
    </div>          
  </div>
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

<!-- custom js -->
<script type="text/javascript" src="js/message.js?v=<%=System.currentTimeMillis()%>"></script>

</body>
</html>