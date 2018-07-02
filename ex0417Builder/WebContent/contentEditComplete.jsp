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
<link rel="stylesheet" href="css/complete.css?ver=1">

<title>Insert title here</title>
</head>
<body>
 
<jsp:include page="/template/header.jsp" flush="false" />


<!-- finish -->
<section class="row justify-content-center">
			<article
				class="col-12 d-flex justify-content-center">
				<!--finish-box-->
				<article class="finish-box col-8 text-center">
					<div class="col">
						<div class="row justify-content-center my-5">
							<!--URL-->
							<div class="url-box col-11 p-4 bg-white d-flex justify-content-center align-items-center" style="border-radius:10px;" href="#"><span>http://i-invite-u.com/${content.urlName}</span></div>
							<!--이용순서-->
							<div class="procedure-box col-11 my-3" href="#">
  							<strong class="col-12 my-2">
  								<span> ${user.userName} </span>님께만 알려드리는
  								<a style="color:#f05228;"> 초대해U 이용 TIP!</a>
  							</strong>
  							<br><br>
								
								<div class="d-flex d-flex justify-content-center mt-3" style="height:35vh;">
									<div class="col-3 mx-3">
										<div class="procedure-box-inner">
											<a><img src="./img/content/complete/finish_1.JPG" height="100%;" width="100%"/></a>
										</div>
										<div class="procedure-box-text row px-2 pt-3">먼저 원하는 초대장 종류를 선택 후 제작 신청합니다.</div>
									</div>
									<div class="col-3 mx-3">
										<div class="procedure-box-inner">
											<a><img src="./img/content/complete/finish_2.JPG" height="100%;" width="100%"/></a>
										</div>
										<div class="row px-2 pt-3">신청 완료후 초대장을 만들기에 들어가 편집합니다.</div>
									</div>
									<div class="col-3 mx-3">
										<div class="procedure-box-inner">
											<a><img src="./img/content/complete/finish_3.JPG" height="100%;" width="100%"/></a>
										</div>
										<div class="row px-2 pt-3">연락처를 입력하여 문자및 카톡을를 전송합니다.</div>
									</div>
									<div class="col-3 mx-3">
										<div class="procedure-box-inner">
											<a><img src="./img/content/complete/finish_4.JPG" height="100%;" width="100%"/></a>
										</div>
										<div class="row px-2 pt-3">문자를 보낸 후 효율적인 행사 관리를 위해 통계페이지로 이동합니다.</div>
									</div>
								</div>
							</div>
							<!--이용순서_end-->
							<!--button-->
							<div class="button-box col-12" style="height: 10vh" href="#">
								<div class="mt-4">
									<a href="sendMessage.do"><button type="button"
											class="btn btn-side">
										<img src="./img/content/complete/icon_1_masage.png" height="20px" width="25px"/>
										문자 보내기</button></a>
									<a id="kakao-link-btn" href="javascript:sendLink()">
										<img src="//developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png"/>
									</a>
									<a href="lookWriting.do" class="tooltips"><button type="button"
											class="btn btn-side">
										<img src="./img/content/complete/icon_2_share.png" height="20px" width="25px"/>
										초대장공유하기</button><span>내가 만든 초대장을<br>공유할 수 있어요!</span></a>
									<a href="myService.do"><button type="button"
											class="btn btn-center">
										<img src="./img/content/complete/icon_3_edit.png" height="20px" width="25px"/>
										초대장추가수정</button></a>
									<a href="serviceInfo.do"><button type="button"
											class="btn btn-side">
										<img src="./img/content/complete/icon_4_list.png" height="20px" width="25px"/>
										서비스신청내역</button></a>
									<a href="extension.html"><button type="button"
											class="btn btn-side">
										<img src="./img/content/complete/icon_5_long.png" height="20px" width="25px"/>
										기간연장하기</button></a>
								</div>
							</div>
							<!--button_end-->
						</div>
					</div>
			</article>
			<!--finish-box_end-->
		</article>
	</section>

<!-- /finish -->


<jsp:include page="/template/footer.jsp" flush="false" />	


<!-- bootstrap js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- top js -->
<script type="text/javascript" src="js/top.js?v=<%=System.currentTimeMillis()%>"></script>
<!-- side bar js -->
<script type="text/javascript" src="js/sidebar.js?v=<%=System.currentTimeMillis()%>"></script>

<!-- kakao link js -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<!-- custom js -->
<%-- <script type="text/javascript" src="js/editComplete.js?v=<%=System.currentTimeMillis() %>"></script> --%>

<!-- editComplete js -->
<script type="text/javascript">
$(document).ready(function(){
	
	// // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('ac2fcafb9408ce09fb069e4bebe93535');
	
});

function sendLink() {
	// // 카카오링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
    Kakao.Link.createDefaultButton({
      container: '#kakao-link-btn',
      objectType: 'location',
      address: '${content.infoAddress}',
      addressTitle: '${content.infoPlace}',
      content: {
        title: '${content.topTitle}',
        description: '${content.addInfoWelcome}',
        imageUrl: '${content.topImgFile}',
        link: {
          mobileWebUrl: 'http://localhost:8080/ex0417Builder/skin/skin1/index.html',
          webUrl: 'http://localhost:8080/ex0417Builder/skin/skin1/index.html'
        }
      },
      social: {
        likeCount: 1,
        commentCount: 2,
        sharedCount: 3
      },
      buttons: [
        {
          title: '웹으로 보기',
          link: {
            mobileWebUrl: 'http://localhost:8080/ex0417Builder/skin/skin1/index.html',
            webUrl: 'http://localhost:8080/ex0417Builder/skin/skin1/index.html'
          }
        }
      ]

    });
}

//json으로 변경시키는 코드
jQuery.fn.serializeObject = function() {
  var obj = null;
  try {
    if ( this[0].tagName && this[0].tagName.toUpperCase() == "FORM" ) {
      var arr = this.serializeArray();
      if ( arr ) {
        obj = {};
        jQuery.each(arr, function() {
          obj[this.name] = this.value;
        });				
      }
 	}
  } catch(e) {
	  alert(e.message);
  } finally {
	  
  }
  
  return obj;
};

</script>
</body>
</html>