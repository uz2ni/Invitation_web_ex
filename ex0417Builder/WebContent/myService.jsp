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
<link rel="stylesheet" href="css/service.css?ver=1">

<title>Insert title here</title>
</head>
<body>

<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="나의 서비스"/>
	<jsp:param name="bg" value="top_3.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />


<!-- myService view -->

<!--Main-->
<article class="center col-8 text-center">

	<!--part1-->
	<div class="col">
      <h4 class="title text-left my-2">나의 서비스</h4>
      <div class="row" style="height:30vh; margin-top:30px;">
                <div class="form-group offset-sm-3 col-sm-3">
      		         <div class="col" style="border:1px solid #888888; width:80%; height:80%; border-radius: 100%;"></div>
      			    </div>
                <div class="col-sm-6" style="margin-top:50px;">
                   <div class="row">
            	     <div style="font-size:1.5em;" class="form-group col-12 text-left" style="padding-left:20px;">${user.userName} (${user.userEmail})</div>
            	   </div>
          		   <div class="row">
				     <div style="font-size:1.3em;" class="form-group col-12 text-left">사용중인 초대장 : x개<br>총 초대장 : x개</div>
				   </div>
                   <a href="myInfo.do"><button type="button" class="btn12 btn btn-sm">수정하기</button></a>
                   <a href=""><button type="button" class="btn btn-sm" style="background:#f2f2f2;">탈퇴하기</button></a>
                </div>
      </div>
      <hr>
      <br>
      <div class="tab-pane fade show active col-12" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
        <div class="row">
          <!-- url list -->
		  <c:forEach var="content" items="${contents}">
	          <div class="ex1 col-md-4 py-3">
	            <div class="container px-0">
	              <img class="card-img-top mx-0" src="https://s3.ap-northeast-2.amazonaws.com/invitecontent/edit/topImgFile/${content.topImgFile}" width="280" height="300"/>
	              <div class="overlay">
	                <div class="text">
	                  <div style="width:60%; margin:15px auto; border:1px solid white;"></div>
	                  <strong><span class="text1">${content.topTitle}</span></strong><br>
	                  <span class="text2">http://www.invitedu.com/${content.urlName}</span><br>
	                  <span class="text3">
		                  <c:choose>
						    <c:when test="${content.type eq 1}">
						        모임
						    </c:when>
						    <c:when test="${content.type eq 2}">
						        발표회
						    </c:when>
						    <c:otherwise>
						        종교 행사
						    </c:otherwise>
						  </c:choose>
	                  </span><br>
	                  <span class="text4">${content.payDate}<br> ~ <br>${content.lastDate}</span>
	                  <div style="width:60%; margin:15px auto; border:1px solid white;"></div>
	                </div>
	              </div>
	            </div>
	            <!--button-->
	            <div class="button-box">
	              <a href="/ex0417Builder/contentEditForm.do?urlId=${content.urlId}"><button type="button" class="btn12 btn btn-sm">편집</button></a>
	              <a href="extension.html"><button type="button" class="btn12 btn btn-sm">연장</button></a>
	              <!--delete-->
	              <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	                <div class="modal-dialog modal-dialog-centered" role="document">
	                  <div class="modal-content">
	                    <div class="modal-header">
	                      <h5 class="modal-title" id="exampleModalLongTitle">초대장(URL) 삭제하기</h5>
	                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                        <span aria-hidden="true">&times;</span>
	                      </button>
	                    </div>
	                    <div class="modal-body text-left">
	                     초대장을 삭제하시겠습니까?<br>
	                     -삭제하신 초대장 주소는 재사용이 불가능 합니다.<br>
	                     -무료 이벤트 초대장을 삭제하시면 이후 추가 신청 초대장은 유료 결제 하셔야 합니다.
	                    </div>
	                    <div class="modal-footer">
	                      <button type="button" class="btn" data-dismiss="modal" style="background:#4C4C4C; color:white;">확인</button>
	                      <button type="button" class="btn" data-dismiss="modal" style="background:#B91D1E; color:white;">취소</button>
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <!--button_end-->
	            </div>
	          </div>
	       </c:forEach>
        </div>
      </div>
    <div>
</article>

<!-- /myService view -->


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