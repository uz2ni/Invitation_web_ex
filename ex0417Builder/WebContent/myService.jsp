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
      <h4 class="title text-left my-2">초대장 관리</h4>
	      <div class="service-container">
			<div class="profile">
				<div class="profile-image">
					<img src="https://images.unsplash.com/photo-1513721032312-6a18a42c8763?w=152&h=152&fit=crop&crop=faces" alt="">
				</div>
				<div class="profile-user-settings">
					<h1 class="profile-user-name">${user.userName} (${user.userEmail})</h1>
					<a href="/ex0417Builder/myInfo.do?urlId=${content.urlId}"><button class="btn profile-edit-btn">Edit Profile</button></a>
					<button class="btn profile-settings-btn" aria-label="profile settings"><i class="fas fa-cog" aria-hidden="true"></i></button>
				</div>
				<div class="profile-stats">
					<ul>
						<li>사용중인 초대장 <span class="profile-stat-count">${cnt}</span> 개</li>
						<li>총 초대장 <span class="profile-stat-count">${cnt}</span>개</li>
						<li>보유 우표 <span class="profile-stat-count">${user.userPoint}</span> 장</li>
					</ul>
				</div>
				<div class="profile-bio">
					<p><span class="profile-real-name">Jane Doe</span> 반가워요~ </p>
				</div>
			</div>
		</div>
      <hr>
      <!-- <div class="tab-pane fade show active col-12 pb-2" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">-->
        <div class="row" style="padding: 0 40px;">
          <!-- url list -->
		  <c:forEach var="content" items="${contents}">
	          <div class="ex1 flex-item col-sm-12 col-md-6 col-lg-4">
	            <div class="container px-0">
	              <img class="myservice-img mx-0" src="
	              	<c:if test="${content.topImgFile != ''}">https://s3.ap-northeast-2.amazonaws.com/invitecontent/edit/topImgFile/${content.topImgFile}</c:if>
	              	<c:if test="${content.topImgFile == ''}">https://via.placeholder.com/150x150</c:if>
	              "/>
	              <div class="overlay">
	                <div class="myservice-text">
	                  <h4 id="toptitle"><span class="text1">${content.topTitle}</span></h4>
	                  ( <span class="text3">
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
	                  </span> )<br>
	                  <span class="text2">http://www.invitedu.com/${content.urlName}</span><br>
	                  <span class="text4">${content.payDate} <br> ~ ${content.lastDate}</span>
	                </div>
	              </div>
	            </div>
	            <!--button-->
	            <div class="button-box">
	              <a href="/ex0417Builder/contentEditForm.do?urlId=${content.urlId}"><button type="button" class="myservice-btn btn btn-sm">편집</button></a>
	              <a href="/ex0417Builder/serviceExtend.jsp?urlId=${content.urlId}"><button type="button" class="myservice-btn btn btn-sm">연장</button></a>
	              <a href="extension.html"><button type="button" class="myservice-btn btn btn-sm">통계</button></a>
	              <a href="/ex0417Builder/contentEditComplete.do?urlId=${content.urlId}"><button type="button" class="myservice-btn btn btn-sm">공유</button></a>
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
      		<!-- ex2, ex3...추가 -->
        </div>
      
      
    <div>
</article>

<!-- /myService view -->


<jsp:include page="/template/footer.jsp" flush="false" />	


<!-- bootstrap js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>

<!-- top js -->
<script type="text/javascript" src="js/top.js?v=<%=System.currentTimeMillis()%>"></script>
<!-- side bar js -->
<script type="text/javascript" src="js/sidebar.js?v=<%=System.currentTimeMillis()%>"></script>

<!-- custom js -->

</body>
</html>