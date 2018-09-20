<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST" id="service-extend-form">
<input type="hidden" id="type2" name="paymentType" value="4"> <!-- 0 : 연장 -->

<h1>초대장 연장 페이지</h1>

<h3>초대장 선택</h3>
<select name="paymentUrlName">
	<c:forEach var="content" items="${contents}">
		<option value="${content.urlName}">${content.urlName}</option>
	</c:forEach>
</select>

<h3>연장 개월 수 선택</h3>
<select name="paymentMonth" onchange="selectExtend(this)">
  <option selected value="0">선택하세요.</option>
  <option value="1">1개월</option>
  <option value="2">3개월</option>
  <option value="3">6개월</option>
  <option value="4">1년</option>
</select>

<h3>총 가격</h3>
<p><span class="total-money">0</span>원</p>

<div class="mt-4">
  <a href="#"><button type="button" class="btn btn-lg" style="background-color:#959595; color:white;">이전으로</button></a>
  <button type="button" class="btn btn-lg" onclick="requestPay('${sessionScope.user.userId}', '연장')" style="background-color:#2d62cd; color:white;">연장하기</button>
</div>

</form>


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
</body>
</html>