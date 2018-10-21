<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<link rel="stylesheet" href="css/lookWriting.css?ver=1">

<!--tagManager CSS - 180612 sdw--> 
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/tagmanager/3.0.2/tagmanager.min.css">

<title>Insert title here</title>
<style>
*{
	border: 0px solid black;
}
</style>
</head>
<body>
<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="구경하기 - 글 올리기"/>
	<jsp:param name="bg" value="top_1.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />


<article class="center col-8 text-center" >
<form action="lookWritingPro.do" method="post">
  <input type="hidden" name="user-id" value="${userId}">
  <input type="hidden" name="url-id" id="url-id" value=""> <!-- 선택된 url-id 삽입 -->
  <h4 class="title text-left my-2">글 올리기</h4>
  <!--table-->
  <table class="table table-bordered">
  	<thead>
      <tr>
        <th scope="col" colspan="2">URL선택</th>
      </tr>
    </thead>
            
    <tbody>
      <tr>
        <td scope="row" colspan="2">
        	<!--view-->
			<div class="tab-content" id="myTabContent" style="">
				<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
					<div id="carouselExampleIndicators" class="carousel slide"
							data-ride="carousel">
						<div class="carousel-inner" style="">
							<!--1-->
							<div class="carousel-item active" style="">
								<div class="row justify-content-center">
									  <!--선택-->
				                      <div class="row col-12">
										<c:forEach var="content" items="${contents}">
				                          <div class="ex1 col-md-4">
				                              <div class="container">
				                              <input class="select-content" type="radio" name="url-id-radio" id="${content.urlId}" value="${content.urlId}">
			                                  <label for="${content.urlId}" class="m-0" onclick="checkUrl('${content.urlId}','${content.topTitle}', '${content.urlName}');">
				                                  <img class="card-img-top" data-toggle="modal" data-target="#exampleModalCenter"
				                                  	src="
				                                  		<c:if test="${content.topImgFile != ''}">https://s3.ap-northeast-2.amazonaws.com/invitecontent/edit/topImgFile/${content.topImgFile}</c:if>
				                                  		<c:if test="${content.topImgFile == ''}">https://via.placeholder.com/150x150</c:if>
				                                  "/>
				                                  <div class="overlay">
				                                      <div class="" style="padding:100px;"><img src="./img/info/look/check-mark.png" width="55" height="55"/></div>
											  </div>
												  </label>  
                              				  </div>
			                          		  <div class="card-name text-left">
				                                  <div class="col" style="font-weight:bold; font-size:14px;">${content.topTitle}</div>
				                                  <div class="col" style="font-size:14px; color:#888888;">www.i-invite-u.com/${content.urlName}</div>
				                                  <div class="col" style="font-size:12px; color:#888888;">
				                                  	<!-- type(1,2,3)에 따라 한글화(모임, 발표회, 종교행사) -->
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
				                                  </div>
			                                  </div>
                          				  </div>
                          				</c:forEach>
                      				  </div>
                            		  <!--선택_end-->
								</div>
							</div>
							<!--1_end-->
						</div>
						<!-- /carousel-innser -->
						<!-- left, right button -->
						<a class="carousel-control-prev" style="width:5%;" href="#carouselExampleIndicators" role="button" data-slide="prev"> 
						    <img src="./img/info/look/left_black_icon.png" width="50" height="50"/><span class="sr-only">Previous</span>
						</a> 
						<a class="carousel-control-next" style="width:5%;" href="#carouselExampleIndicators" role="button" data-slide="next">
							<img src="./img/info/look/right_black_icon.png" width="50" height="50"/><span class="sr-only">Next</span>
						</a>
						<!-- /left, right button -->
					</div>
				</div>
				<div class="tab-pane fade" id="profile" role="tabpanel"
					aria-labelledby="profile-tab">...</div>
				<div class="tab-pane fade" id="contact" role="tabpanel"
					aria-labelledby="contact-tab">...</div>
			</div>
          	<!--선택_end-->
        </td>
      </tr>
    </tbody>
  </table>  
  <!-- /캐러셀 끝 -->
  <!--table_end-->
  <div class="d-flex">
  	<label class="control-label col-sm-2 ml-3 text-left align-self-center"><abbr>*</abbr> 제목</label>
  	<div class="form-group col-sm-8 px-0 mx-auto" style="margin-top:10px;">
    	<input type="text" name="title" id="content-title" class="form-control">
	</div>
  </div>
  <div class="d-flex">
  	<label class="control-label col-sm-2 ml-3 text-left align-self-center"><abbr>*</abbr> URL</label>
   	<div class="form-group col-sm-8 px-0 mx-auto" style="margin-top:10px;">
		<input type="text" name="url" id="content-url" class="form-control" readonly>
	</div>
  </div>
  <div class="d-flex">
  	<label class="control-label col-sm-2 ml-3 text-left align-self-center"> 내용</label>
    <div class="col-sm-8 mx-auto" style="height:20vh;">
       	<textarea class="form-control text required" placeholder="내가 만든 초대장을 소개해주세요." name="contact[body]" id="contact_body" 
       	style="height: 132px;"></textarea>
    </div>
  </div>
  <div class="d-flex">
  	<label class="control-label col-sm-2 ml-3 text-left align-self-center"> 태그입력</label>
    <!--송다원 , 목적: 단어별 태그 분리 및 입력-->
    <!-- 단어별 태그 분리 180612 sdw-->
	<div class="col-sm-8 px-0 mx-auto" style="margin-top:10px;">
		<input type="text" name="tags" placeholder="관련 해시태그를 넣어주세요." class="tm-input form-control tm-input-info"/>
		<!--<label class="text-left" style="width:500px; height:100px;">추가된 태그: </label>-->
	</div>
	<!--end-->
  </div>
  <div class="m-4">
	  <a href="#"><button type="button" class="btn btn-lg btn-secondary">이전으로</button></a>
	  <button type="submit" class="btn btn-lg" style="background-color:#3244ca; color:white;">글올리기</button></a>
  </div>
</form>
</article>






<jsp:include page="/template/footer.jsp" flush="false" />

<!-- bootstrap javascript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- tagmanager js -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tagmanager/3.0.2/tagmanager.min.js"></script>

<!-- custom js -->
<script type="text/javascript">
	$(".tm-input").tagsManager();

</script>
<script type="text/javascript" src="js/look.js?v=<%=System.currentTimeMillis() %>"></script>

</body>
</html>