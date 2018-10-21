<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="side-back-left col-sm-2 text-center">
   <div id="accordian" class="text-left" style="margin-top:5px; position:-webkit-sticky; position:sticky; top:0; padding-top:30px;">
     <ul>
		<!-- 열어 두려면 li class="active" -->
		<li>
			<h3 id="accordian-menu1"><span class="icon-dashboard"></span>서비스 소개
				<img src="./img/menu/storage_icon.png" style="width:15px; height:15px; margin-left:85px;"></h3>
			<ul>
				<li><a href="brand.do">브랜드 소개</a></li>
				<li><a href="function.do">기능 소개</a></li>
				<li><a href="manual.do">메뉴얼</a></li>
				<li><a href="lookList.do">구경하기</a></li>
				<li><a href="faq.do">고객 센터</a></li>
			</ul>
		</li>
		<li>
			<h3 id="accordian-menu2"><span class="icon-tasks"></span>신청하기
			<img src="./img/menu/border_icon.png" style="width:15px; height:15px; margin-left:100px;"></h3>
			<ul>
				<li><a href="servicePay.do">제작신청하기</a></li>
			</ul>
		</li>
		<li>
			<h3 id="accordian-menu3"><span class="icon-calendar"></span>초대장 관리
			<img src="./img/menu/settings_icon.png" style="width:15px; height:15px; margin-left:82px;"></h3>
			<ul>
				<li><a href="myService.do">나의 서비스</a></li>
				<li><a href="sendMessage.do">문자 보내기</a></li>
			</ul>
		</li>
		<li>
			<h3 id="accordian-menu4">
				<span class="icon-heart"></span>마이 페이지
				<img src="./img/menu/contact_icon.png" style="width:15px; height:15px; margin-left:80px;">
			</h3>
   			<ul>
   				<li><a href="serviceInfo.do">서비스 충전내역</a></li>
				<li><a href="pointInfo.do">포인트 충전내역</a></li>
   				<li><a href="statisticAttend.do">통계관리</a></li>
   			</ul>
	    </li>
     </ul>
   </div>
</div>