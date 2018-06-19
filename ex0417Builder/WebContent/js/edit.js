// html 로드 완료 후 실행
  $(document).ready(function(){
	  // Form 내용 Json 형태로 담기
	  var formJson = $("#editForm").serializeObject();
	  
	  //previewImg(); // 이미지 업로드 시 미리보기 제공 

	  // iframe 접근해서 텍스트 변경하기
//	  $('#preview_iframe').contents().find('.text-box').text('안녕하세요');
	  
//	  var labels = JSON.parse(formJson);
	  
	// 기능 : Form Json 값들 iframe 에서 출력하기
	  
	  /*
	  for(key in formJson) {
		  console.log("form[" + key + "] : " + formJson[key]);
		  $('#preview_iframe').contents().find('.text-box').append("<h3>" + key + ":" + formJson[key] + "</h3>");
		  if(key == 'top-img-file-str'){
			  var s3Url = "https://s3.ap-northeast-2.amazonaws.com/invitecontent";
			  var url = s3Url + '/' + formJson[key];
			  formJson[key]
			  $('#preview_iframe').contents().find('.text-box').append("<img src=' " + url + "' height='200'>");
		  }
			
	  }
	  */

  });
  
  
// 날짜 : 18.05.26
// 작성자 : 송유진
// 기능 : form 값 받아와서 json형태로 출력
// 코드 참조 : http://cofs.tistory.com/184
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
  
function selectSkin(groupName, skinType) {
  // input name값 같은 요소들 배열에 가져오기
  var input_list = [];
  $("input[name="+groupName+"]").each(function(i){
    input_list[i] = $(this).val();
  });

  // value 값 비교해서 선택한 input에 checked 속성 추가
  for(var i=0; i<input_list.length; i++) {
    if(input_list[i] == skinType){
      var selectNode = $("input[value="+skinType+"]").attr("checked", "true");
      console.log(selectNode.val());
      // 버튼 색, 글씨 바꾸기
      // $(".hovereffect a.info").css("background-color", "#ec8088");
    }else {
      $("input[value="+input_list[i]+"]").removeAttr("checked");
      // 버튼색, 글씨 원래대로 바꾸기
      // $(".hovereffect a.info").css("background-color", "transparent");

    }
  }
}

// 생성일 : 18.05.11
// 작성자 : 송유진
// 함수 기능 : 기능의 사용 여부를 확인하는 체크박스 상태에 따라 아래 요소들을 나타내거나 숨긴다.
function chkFuc(input_name, class_name) { // input_name:checkbox name, class_name:나타내거나 숨길 요소의 클래스명
  var chk = $("input[name=" + input_name + "]").is(":checked");
  var element = $('.'+class_name);

  if(chk == true) {
    element.show();
  }else {
    element.hide();
  }
}

// 생성일 : 18.05.26
// 작성자 : 송유진
// 함수 기능 : 이미지 파일 선택 시 미리보기 제공
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function (e) {
			$('.top-img-preview').attr('src', e.target.result);
		}
		reader.readAsDataURL(input.files[0]);
	}
}

//생성일 : 18.05.26
//작성자 : 송유진
// 함수 기능 : 이미지 미리보기 (최초 이미지 불러올 때)
/*
function previewImg(){
	var uploadPath = "https://s3.ap-northeast-2.amazonaws.com/invitecontent"; //이미지 경로 주소 위치(aws s3)	
	var str = $('#top-img-file-str').val(); // 이미지 이름
	var src = uploadPath + "/" + str;
	console.log(src);
	
	$('.top-img-preview-wrap').append("<img src='" + src + "' height='150'>"); //이미지 미리보기 추가
}
*/