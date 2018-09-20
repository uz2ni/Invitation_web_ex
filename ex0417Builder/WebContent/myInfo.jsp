<%@page import="java.net.URLEncoder"%>
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
<link rel="stylesheet" href="css/myInfo.css?ver=1">

<title>Insert title here</title>
</head>
<body>
<%
	String headerTitle = "내 정보";
	headerTitle = URLEncoder.encode(headerTitle, "utf-8");
%>
<jsp:include page="/template/header.jsp" flush="false" >
	<jsp:param name="title" value="<%= headerTitle %>"/>
	<jsp:param name="bg" value="top_3.jpg"/>
</jsp:include>
<jsp:include page="/template/sidebar.jsp" flush="false" />


<!--myInfo.jsp view -->

<article class="center col-8 text-center">
  <div class="col">
    <h4 class="title text-left py-2">내 정보</h3>
    <div class="row py-5">
      <div class="col-12">
             <!--상품선택-->
             <form action="myInfoUpdate.do" method="post">
             <input type="hidden" name="userId" value="${user.userId}">
             <table class="table table-bordered">
                    <thead>
                    	<tr>
                           	<td colspan="6" style="border:none;">
								<div class="service-container">
									<div class="profile">
										<div class="profile-image">
											<img src="https://images.unsplash.com/photo-1513721032312-6a18a42c8763?w=152&h=152&fit=crop&crop=faces" alt="">
											<div style="float: right; display:flex;"><input type="file" class="form-control-file mt-2"></div>
										</div>
										<div class="profile-user-settings">
											<h1 class="profile-user-name">${user.userEmail}</h1>
										</div>
										<div class="profile-stats">
											<ul>
												<li><a href="myService.do">사용중인 초대장 <span class="profile-stat-count">${invCnt}</span> 개</a></li>
												<li><a href="myService.do">총 초대장 <span class="profile-stat-count">${invCnt}</span>개</a></li>
												<li>보유 우표 <span class="profile-stat-count">${user.userPoint}</span> 장</li>
											</ul>
										</div>
									</div>
								</div>
								
                    		</td>
                    	</tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">ID(Email)</th>
                        <td>
                            <div class="form-group col-sm-6 mx-auto my-3">
							    <input readonly type="email" class="form-control" value="${user.userEmail}"required>
							</div>
                        </td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <th scope="row">비밀번호</th>
                        <td>
                        	<div id="password-change" class="form-group col-6 mx-auto my-3">
							    <input type="password" class="form-control mb-1" name="now-pw" placeholder="현재 비밀번호" required>
							    <input type="Password" class="form-control mb-1" name="new-pw" title="숫자 7자 이상 ~ 14자 이내" placeholder="새 비밀번호(숫자 7자~14자)">
							    <input type="Password" class="form-control" name="re-new-pw" title="비밀번호를 한번 더 동일하게 입력해주세요" placeholder="새 비밀번호 확인">
							</div>
                       	</td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <th scope="row">이름</th>
                        <td>
                            <div class="form-group col-sm-6 mx-auto my-3">
							    	<input readonly type="text" class="form-control" placeholder="" value="${user.userName}" required>
							</div>
                        </td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <th scope="row">연락처</th>
                        <td>
                            <div class="form-group col-sm-6 mx-auto my-3">
							    	<input type="tel" class="form-control" name="phone" placeholder="" value="${user.userPhone}" required>
							</div>
                        </td>
                      </tr>
                    </tbody>
                    <tbody>
                      <tr>
                        <th scope="row">계좌등록</th>
                        <td>
                        	<div class="form-group col-sm-6 mx-auto my-3">
                        		<input type="text" class="form-control" name="account-name" placeholder="예금주명" value="${accountName}">
                        	</div>
                            <div class="form-group col-sm-6 mx-auto my-3">
	                                <select class="custom-select" name="bank-name">
	                                  <option selected value="none" <c:if test="${bankName eq 'none'}>selected="selected"</c:if>>은행/증권사 선택</option>
	                                  <option value="국민" ${bankName == 'KB국민' ? 'selected' : ""}>KB국민</option>
	                                  <option value="우리" ${bankName == '우리' ? 'selected' : ""}>우리</option>
	                                  <option value="NH농협" ${bankName == 'NH농협' ? 'selected' : ""}>NH농협</option>
	                                  <option value="기업" ${bankName == 'IBK기업' ? 'selected' : ""}>IBK기업</option>
	                                  <option value="새마을" ${bankName == '새마을' ? 'selected' : ""}>새마을</option>
	                                  <option value="카카오뱅크" ${bankName == '카카오뱅크' ? 'selected' : ""}>카카오뱅크</option>
	                                  <option value="신한" ${bankName == '신한' ? 'selected' : ""}>신한</option>
	                                  <option value="하나" ${bankName == '하나' ? 'selected' : ""}>하나</option>
	                                </select>
							  	</div>	
							  	<div class="form-group col-sm-6 mx-auto my-3">
							    	<input type="text" class="form-control" name="account-num" placeholder="(-) 포함 계좌번호 입력" value="${account}">
							  	</div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
             <!--상품선택_end-->
             <div class="col justify-content-end">
 				<div class="col text-center"><button type="submit" class="btn-lg btn" style="background-color:#2d62cd; color:white; width:250px;">수정하기</button></div>
 			</div>
 			</form>
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

</body>
</html>