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

<!-- custom CSS -->
<link rel="stylesheet" href="css/font.css?ver=1">
<link rel="stylesheet" href="css/sidebar.css?ver=1">
<link rel="stylesheet" href="css/common.css?ver=1">
<link rel="stylesheet" href="css/message.css?ver=1">

<title>Insert title here</title>
</head>
<body>

<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="문자 보내기"/>
	<jsp:param name="bg" value="top_3.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />

<!-- sendMessage view -->

<article class="center col-8 text-center">
<form action="messageSubmit.do" method="post">
  <div class="col">
    <h4 class="title text-left my-2">문자 보내기</h4>
    <div class="row my-5">
      <!--공지-->
			<div class="col-11 text-left py-4 mx-auto"
					style="border-radius: 20px; background-color:#f5f5f5; color:#333333; font-size:15px; margin-bottom:20px;">
					<ul class="msg-info-ul" style="padding-left:40px;">
						<li>문자 보내기는 포인트가 필요합니다. 전송 포인트 : SMS ( 22 p ), LMS ( 60 p ), MMS ( 220 p )</li>
						<li>최근에 문제가 되는 스미싱 문제도 이미지를 포함한 MMS 전송으로 불필요한 오해를 줄일 수 있습니다.</li>
						<li>초대장 선택 부분에서 생성하신 주소를 선택하시면 자동으로 상단이미지와 문구가 생성되며 수정 후 발송할 수 있습니다.</li>
						<li>초대해U 문자보내기는 본인인증된 회원이 등록한 발신번호(핸드폰 번호)로만 발송이 가능합니다.
							<br>
							<span id="btnViewLawDesc" class="btn btn-sm btn_popup" style="cursor: pointer; font-weight:bold; background:#f05228; color:white;"  data-toggle="modal" data-target="#viewlaw" data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail" alt="Thumbnail [100%x225]">관련 법령 보기 - 전기통신사업법 제84조의 2</span>
						</li>
						<li>이용 순서 : <br>1.포인트 충전(포인트가 없는경우) => 2.문자보내기 페이지에서 휴대폰 본인인증 => 3.발신번호 선택하여 문자보내기</li>
						<li>본인인증의 경우 포인트 충전후 초기 1회만 진행하시면 됩니다.(타인의 명의를 도용한 부정가입 방지 근거
							<br>
							<a href="http://www.law.go.kr/lsInfoP.do?lsiSeq=195207&amp;efYd=20170726" class="btn btn_popup btn-sm ui-link" target="blank" style="cursor: pointer; font-weight:bold; background:#f05228; color:white;">중앙전파관리소에서 관련법령 보기</a>
						</li>
					</ul>
				</div>
			<!--공지_end-->
      <!--1-->
      <div class="col-6" style="">
         	<!--잔여포인트-->
          <div class="row" style="border-bottom:1.5px solid #f2f2f2; margin-bottom:10px; padding-bottom:10px;">
            <div class="col-sm-4 text-left">우표(포인트)</div>
            <span class="col-sm-2 px-0" style="font-size:1.5em;">${user.userPoint}</span>
            <span class="text-center" style="font-size:1.5em;">장</span>
            <div class="col text-right">
              <a href="messagePay.do"><button type="button" class="btn btn-sm" style="background:#333333; color:white;">충전하기</button></a>
            </div>
          </div>
        <!--잔여포인트_end-->
        <!-- 초대장 선택 -->
       	<div class="row py-3">
         <div class="col-sm-4 text-left">보내는 초대장 선택</div>
         <div class="col-sm-8">
	         <select class="custom-select" name="sms-url">
	            <c:forEach var="content" items="${contents}">
		            <option value="${content.urlName}">${content.urlName}</option>
		        </c:forEach>
	         </select>
		 </div>
         <span class="col-sm-3">
         	
         </span>
        </div>
        <!-- /초대장 선택 -->
        <!--제목-->
       	<div class="row" style="padding-bottom:10px;">
         <div class="col-sm-4 text-left">보내는 내용</div>
         <div class="col-sm-8">
         	<textarea class="form-control text required" placeholder="보내실 내용을 입력하세요." name="sms-content" id="contact_body" 
       					style="height: 132px;"></textarea>
         </div>
        </div>
        <!--제목_end-->
        <!-- 보내는 사람 -->
       	<div class="row py-3">
         <div class="col-sm-4 text-left">보내는 분</div>
         <div class="col-sm-8">
         	<input type="text" name="sms-sender-name" class="form-control"
					 value="${user.userName}" required>
		 </div>
         <span class="col-sm-3">
         	
         </span>
        </div>
        <!-- /보내는 사람 -->
        <!-- 보내는 번호 -->
       	<div class="row py-3">
         <div class="col-sm-4 text-left">보내는 번호</div>
         <div class="col-sm-8">
         	<input type="text" name="sms-sender-number" class="form-control"
					 value="${user.userPhone}" required>
		 </div>
         <span class="col-sm-3">
         	
         </span>
        </div>
        <!-- /보내는 번호 -->
		<!-- 받는 번호 -->        
       	<div class="row">
         <div class="col-sm-4 text-left">받는 번호</div>
         <span class="col-sm-3"></span>
         <div class="col text-right">
             <a href="#"><button type="button" class="btn btn-sm" style="background:#333333; color:white;">연락처 가져오기</button></a>
         </div>
        </div>
        <!--받는 번호_end-->
        <!--table-->
        <table class="table table-bordered mt-4">
                <thead>
                  <tr>
                    <th scope="col">NO</th>
                    <th scope="col">핸드폰 번호</th>
                    <th scope="col">이름</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">01</th>
                    <!-- 받는 사람 번호 -->
                    <td>
                    	<input type="text" name="sms-receiver-number" class="form-control"
					 		    required>
                    </td>
                    <!-- 받는 사람 이름 -->
                    <td>
                        <input type="text" name="sms-receiver-name" class="form-control"
					 		    required>
                    </td>
                  </tr>
                </tbody>
                <tbody>
                  <tr>
                    <th scope="row">01</th>
                    <!-- 받는 사람 번호 -->
                    <td>
                    	<input type="text" name="sms-receiver-number2" class="form-control"
					 		    >
                    </td>
                    <!-- 받는 사람 이름 -->
                    <td>
                        <input type="text" name="sms-receiver-name2" class="form-control"
					 		    >
                    </td>                  </tr>
                </tbody>
                <tbody>
                  <tr>
                    <th scope="row">01</th>
                    <!-- 받는 사람 번호 -->
                    <td>
                    	<input type="text" name="sms-receiver-number2" class="form-control"
					 		    >
                    </td>
                    <!-- 받는 사람 이름 -->
                    <td>
                        <input type="text" name="sms-receiver-name2" class="form-control"
					 		    >
                    </td>                  </tr>
                </tbody>
                <tbody>
                  <tr>
                    <th scope="row">01</th>
                    <!-- 받는 사람 번호 -->
                    <td>
                    	<input type="text" name="sms-receiver-number2" class="form-control"
					 		    >
                    </td>
                    <!-- 받는 사람 이름 -->
                    <td>
                        <input type="text" name="sms-receiver-name2" class="form-control"
					 		    >
                    </td>
                   </tr>                  
                </tbody>
              </table>
        <!--table-->
        <div class="row justify-content-end">
						<div class="col-1">총</div>
						<span class="col-2">1</span>
						<div class="col-1">명</div>
				</div>
				<div class="row" style="border-top:1.5px solid #f5f5f5; margin-top:10px; padding-top:10px;">
						<strong class="col-4">사용될 우표</strong>
						<span class="col-2">20</span>
						<div class="col-1">장</div>
				</div>
      </div>
      <!--2-->
      <div class="col-6">
        <div class="row justify-content-center">
	        	<img src="./img/common/preview_mobile.png" style="width:70%; height:70%; position:relative;"/> 
    	    	<img src="./img/common/ex.png" style="position:absolute; width: 55%; top: 10vh;"/>
        </div>
      </div>  
		</div>
		<div class="mt-5 pt-5 mx-auto">
			<button type="button" class="btn btn-lg" style="background-color:#959595; color:white; width:250px;">초기화</button></a>
			<button type="submit" class="btn btn-lg" style="background-color:#2d62cd; color:white; width:250px;">전송하기</button></a>
		</div>
  </div>
</form>			
</article>

<!-- /sendMessage view -->
<!-- 관령 법령 보기 팝업창 -->
							<div class="modal modal-center fade" id="viewlaw"
								tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
								<div class="modal-dialog modal-center modal-fullsize"
									role="document">
									<div class="modal-content modal-fullsize">
										<div class="modal-header" style="color:#555555;">
											<h5 class="modal-title" id="myModalLabel" style="font-weight:bold;">전화번호의 거짓표시 금지 및 이용자 보호</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span style="color: #f05228;" aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body" style="font-size:14px; background:#f5f5f5;">
				<strong>전기통신사업법 제84조의 2(전화번호의 거짓표시 금지 및 이용자 보호)</strong>
				<br>
				<br>
				① 누구든지 다른 사람을 속여 재산상 이익을 취하거나 폭언·협박·희롱 등의 위해를 입힐 목적으로 전화(문자메시지를 포함한다. 이하 이 조에서 같다)를 하면서 송신인의 전화번호를 변작하는 등 거짓으로 표시하여서는 아니 된다.<br>
				<br>
				② 누구든지 영리를 목적으로 송신인의 전화번호를 변작하는 등 거짓으로 표시할 수 있는 서비스를 제공하여서는 아니 된다.<br>
				다만, 공익을 목적으로 하거나 수신인에게 편의를 제공하는 등 정당한 사유가 있는 경우에는 그러하지 아니하다.<br>
				<br>
				③ 전기통신사업자는 거짓으로 표시된 전화번호로 인한 이용자의 피해를 예방하기 위하여 다음 각 호의 조치를 하여야 한다. <br>
				다만, 제2항 단서에 따른 정당한 사유가 있는 경우는 제외한다.<br>
				1. 변작 등 거짓으로 표시된 전화번호의 전화 발신을 차단하거나 송신인의 정상적인 전화번호로 정정하여 수신인에게 송출하기 위한 조치<br>
				2. 국외에서 국내로 발신된 전화에 대한 국외발신 안내를 위한 조치<br>
				3. 변작 등 거짓으로 표시한 전화번호를 송신한 자의 해당 회선에 대한 전기통신역무 제공의 중지를 위한 조치<br>
				4. 그 밖에 이용자 보호를 위하여 미래창조과학부장관이 정하는 사항
										</div>
										<div class="modal-footer" style="background:white;">
											<button type="button" class="btn btn-default"
												data-dismiss="modal" style="background:#f05228; color:white;">Close</button>
										</div>
									</div>
								</div>
							</div>
<!-- /관령 법령 보기 팝업창 -->


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