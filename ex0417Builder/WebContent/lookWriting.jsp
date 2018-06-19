<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- meta tag -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- custom CSS -->
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/lookWriting.css">

<!--tagManager CSS - 180612 sdw--> 
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/tagmanager/3.0.2/tagmanager.min.css">

</head>
<body>
<jsp:include page="/template/header.jsp" flush="false" />

<article class="side-back col-12 d-flex flex-article" style="auto;">
        <div class="side-back-left col-sm-2 text-center">
            <div class="nav-item-side">
		       <a class="nav-link" href="service_1.html">기능소개</a>
		    </div>
		    <div class="nav-item-side">
		       <a class="nav-link" href="service_2.html">구경하기</a>
		    </div>
		    <div class="nav-item-side">
		       <a class="nav-link" href="service_3.html">매뉴얼</a>
		    </div>
		    <div class="nav-item-side">
		       <a class="nav-link" href="service_4.html">고객센터</a>
		    </div>
		    <div class="nav-item-side">
		       <a class="nav-link" href="service_5.html">회사소개</a>
		    </div>
		</div>
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
                              <!--선택-->
                        <div class="row col-12">
                        	<c:forEach var="content" items="${contents}">
	                            <div class="ex1 col-md-4" style="height:320px;">
                        		
	                                <div class="container" style="border: 1px solid #dcd9d9; border-radius: 5% 5% 0% 0%;">
	                                	<input class="select-content" type="radio" name="url-id-radio" id="${content.urlId}" value="${content.urlId}">
	                                	<label for="${content.urlId}" class="m-0" onclick="checkUrl('${content.urlId}','${content.topTitle}');">
	                                    <img class="card-img-top" data-toggle="modal" data-target="#exampleModalCenter" src="${content.topImgFile}"/>
	                                    <div class="overlay">
		                                       <div style="padding:100px;"><img src="img/common/check-mark.png" width="55" height="55"/></div>
										</div>  
										</label>
	                                </div>
	                            
	                                <div class="tag" style="border: 1px solid #dcd9d9; height:50px; background:#f2f2f2; border-radius: 0% 0% 5% 5%;">
	                                     <div style="font-weight:bold; border-bottom:1px solid #b0afaf;">${content.topTitle}</div>
	                                     <div>
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
                              </td>
                            </tr>
                          </tbody>
                          <thead>
                            <tr>
                              <th scope="col"><div style="padding-bottom:19px;">제목</div></th>
                              <td>
                                  <div class="form-group col-sm-12 mx-auto" style="margin-top:10px;">
                                  	<input type="text" name="title" id="content-title" class="form-control">
							    	<!-- <div style="border: 1px solid #dcd9d9; height:39px; border-radius: 4px 4px 4px 4px;"></div> -->
							  	</div>
                              </td>
                            </tr>
                          </thead>
                          
                          <tbody>
                            <tr>
                              <th scope="row"><div style="padding-top:20px;">태그입력</div></th>
                              <td>
                              	<!--송다원 , 목적: 단어별 태그 분리 및 입력-->
                              	<!-- 단어별 태그 분리 180612 sdw-->
									<div class="form-group">
										 <input type="text" name="tags"
													placeholder="관련 해시태그를 넣어주세요. " class="tm-input form-control tm-input-info" />
													<!--<label class="text-left" style="width:500px; height:100px;">추가된 태그: </label>-->
									</div>
                                  </div>
                              </td>
                            </tr>
                          </tbody>
                        </table>
		      
		      <div class="m-4">
                <a href="service_2.html"><button type="button" class="btn btn-lg btn-secondary">이전으로</button></a>
                <button type="submit" class="btn btn-lg" style="background-color:#369ea2; color:white;">글올리기</button></a>
              </div>
          </form>
		  </article>
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