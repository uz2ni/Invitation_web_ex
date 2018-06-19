<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- meta tag -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- custom CSS -->
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/index.css">

<!-- bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
 
<jsp:include page="/template/header.jsp" flush="false" />

<div class="row"
	style="background-repeat: repeat; background-image: url(../Image/pattern.png); background-size: 500px; height: 10px;"></div>
<!-- section1 -->
<section class="row justify-content-center" style="height: auto;">

	<article
		class="col-12 d-flex flex-article mt-2 justify-content-center"
		style="">

		<!--FAQ-->
		<article class="col-8 text-center"
			style="height: 70vh; background: #f2f2f2;">
			<div class="col" style="height: 80vh">
				<div class="row justify-content-center my-5" style="height: 60vh">
					<div class="col m-4" style="height: 5vh" href="index.html">http://invite-u.com/${content.urlName}</div>
					<div class="col-11" style="height: 25vh" href="#">
						<img src="http://via.placeholder.com/800x180">
					</div>
					<div class="col-11" style="height: 15vh" href="#">
						<!--button-->
						<div class="mt-4">
							<a href="my_3.html"><button type="button"
									class="btn btn-lg" style="background-color: #F2CE82;">문자 보내기</button></a>
							<a id="kakao-link-btn" href="javascript:sendLink()">
							<img src="//developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png"/>
							</a>									
							<a href="my_4.html"><button type="button"
									class="btn btn-lg" style="background-color: #F2CE82;">통계 관리</button></a>
							<a href="produce.html"><button type="button"
									class="btn btn-lg"
									style="background-color: #B91D1E; color: white;">초대장추가수정</button></a>
							<a href="my_1.html"><button type="button"
									class="btn btn-lg" style="background-color: #F2CE82;">서비스신청내역</button></a>
							<a href="application.html"><button type="button"
									class="btn btn-lg" style="background-color: #F2CE82;">기간연장</button></a>
						</div>
						<!--button-->
					</div>
				</div>
			</div>
		</article>
		<!--FAQ-->
	</article>
</section>
<div class="row"
	style="background-repeat: repeat; background-image: url(../Image/pattern.png); background-size: 500px; height: 10px;"></div>


<jsp:include page="/template/footer.jsp" flush="false" />	


<!-- bootstrap javascript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- kakao link js -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<!-- custom js -->
<%-- <script type="text/javascript" src="js/editComplete.js?v=<%=System.currentTimeMillis() %>"></script> --%>

<!-- editComplete js -->
<script type="text/javascript">
$(document).ready(function(){
	
	// // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('678d7cc2488b65b4cbdae9d13dd41a89');
	
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