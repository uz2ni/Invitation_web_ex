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
	  
	  getContent();
	  

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
  var inputElement = $("input[name=" + input_name + "]");
  var chk = inputElement.is(":checked");
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


// 생성일 : 18.07.12
// 작성자 : 송유진
// 함수 기능 : ajax로 서버에 iframe에 삽입할 Content 데이터 요청
function getContent() {
	// url id 가져옴
	var urlId = $("input[name=url-id]").val();
	var jsonData;
	console.log("urlId:" + urlId);
	
	// ajax 접근
	jQuery.ajax({
		url: "contentEditFormAjax.ajax", // db에 저장하는 프로세스로 json 전달
		type: 'POST',
		dataType: 'json',
		data: {
			// paymentId빼고 입력
			"urlId" : urlId
		},
		success: function (json, aJaxstatus) // A function to be called if request succeeds
	    {
	        //var imageUploadJson = $.trim(json) ;
//	        var contentJson = JSON.parse(json);
	        console.log("aa:");
	        console.log(json);
	        jsonData = json;
	        contentToIframe(json);
	    }
	})
	return jsonData;
}

// 작성일 : 18.07.12
// 함수 기능 : content json값 iframe으로 넘기기
function contentToIframe(content){
	// iframe 찾기
	var contentStr = JSON.stringify(content);
	
	  for(key in content) {
		  console.log("form[" + key + "] : " + content[key]);
		  $('#preview_iframe').contents().find('.content').append("<p class='pre-" + key + "'>" + key + ":" + content[key] + "</p>");
	  }

}

// 작성일 : 18.07.16
// 함수 기능 : input 수정 시 iframe값 동적 수정(이벤트 함수)
$(".edit-block-content input, .edit-block-content select, .edit-block-content textarea").on('change keyup', function () {
	reData(this);
});

function reData(node) {
	if($(node).attr('type') == ('radio')) {
		radioVal($(node));
	}
	else if($(node).attr("name") == ('account-select')) {
		selectVal($(node));
	}
	
	let inputValue;
	if($(node).attr('type') == ('checkbox')){
		var nodeName = $(node).attr('name');
		var nodes = $(".edit-block-content input[name= " + nodeName + "]");
		if(nodes.length > 1){
			let values = new Array();
			for(var i=0; i<nodes.length; i++){
				if($(nodes[i]).is(":checked") == true){
					values.push($(nodes[i]).val());
				}
			}
			inputValue = values;
		}else {
			checkboxVal($(node));	
			inputValue = $(node).val(); 
		}
	}else {
		inputValue = $(node).val(); 
	}
	let inputName = $(node).attr('name');
	let newName = barToUpperStr(inputName);
	let findClassName = ".pre-" + newName;
	   
	//iframe의 요소 탐색
	let iframe = $('#preview_iframe');
	iframe.contents().find(findClassName).text(newName + ":" + inputValue);
}

//함수 기능 : 문자열에서 '-' 삭제, '-' 다음 문자 대문자로 변경하여 리턴 (top-title -> topTitle)
function barToUpperStr(str) {
	var position = new Array();
	var pos = str.indexOf("-");

	while(pos > -1){
	    position.push(pos);
	    pos =  str.indexOf("-", pos + 1);
	}
	// '-' 문자 다음 글자 대문자로 변환
	var upperIndex;
	var ch;
	var convertName = str;

	for (var i=0; i<position.length; i++) {
		upperIndex = position[i]+1;
		ch = str.charAt(upperIndex).toUpperCase();
		convertName = convertName.substring(0,upperIndex)+ ch +convertName.substring(upperIndex+1);
	}
	// '-' 제거
	convertName = convertName.replace(/-/g,'');	
	
	return convertName;
}

//함수 기능 : 수정된 input이 체크박스일 경우 checked 지정해줌
function checkboxVal(input) {
	  var chk = input.is(":checked");
	  if(chk == true) {
		  input.attr('checked', 'checked');
		  input.val("1");
	  }else {
		  input.removeAttr('checked');
		  input.val("0");
	  }
}
// 함수 기능 : 수정된 input이 라디오일 경우 
function radioVal(input) {
	var name = input.attr('name');
	var radios = $('input[name=' + name + ']');
	for(var i=0; i<radios.length; i++) {
		var chk = $(radios[i]).is(":checked");
		if(chk == true) {
			$(radios[i]).attr('checked', 'checked');
		}else {
			$(radios[i]).removeAttr('checked');
		}
	}
}
// 함수 기능 : 수정된 input이 select일 경우 
function selectVal(input) {
	var name = input.attr('name');
	var options = $('select[name=' + name + '] > option');
	for(var i=0; i<options.length; i++) {
		var chk = $(options[i]).is(":selected");
		if(chk == true) {
			$(options[i]).attr('selected', 'selected');
		}else {
			$(options[i]).removeAttr('selected');
		}
	}
}


// 함수 기능 : 스킨 선택 시 변경
function changeSkin(value) {
	updateIframe(value);
	setTimeout(function() {
		getContent();
		}, 100);
	setTimeout(function() {
		updateData();
	}, 200);
}

function updateIframe(value) {
	let skinName = value;
	let link = "skin/" + skinName + "/index.html";
	$('#preview_iframe').attr('src', link);
}

// 함수 기능 : 스킨 변경 후 input에 있는 데이터로 업데이트
function updateData() {
	let inputs = $('.edit-block-content input');
	let iframe = $('#preview_iframe');
	for(var i=0; i<inputs.length; i++) {
		// input type='text 일 경우
		if($(inputs[i]).attr('type')=='text') {
			var name = $(inputs[i]).attr('name');
			var newName = barToUpperStr(name);
			iframe.contents().find('.pre-' + newName).text(newName + " : " + $(inputs[i]).val());
		}else if(($(inputs[i]).attr('type')=='radio') && ($(inputs[i]).is(":checked")==true)) { // radio가 checked 일 경우
			var name = $(inputs[i]).attr('name');
			var newName = barToUpperStr(name);
			iframe.contents().find('.pre-' + newName).text(newName + " : " + $(inputs[i]).val());
		}else if($(inputs[i]).attr('type')=='date'){
			var name = $(inputs[i]).attr('name');
			var newName = barToUpperStr(name);
			iframe.contents().find('.pre-' + newName).text(newName + " : " + $(inputs[i]).val());
		}else if($(inputs[i]).attr('type')=='file'){
			var name = $(inputs[i]).attr('name');
			var newName = barToUpperStr(name);
			iframe.contents().find('.pre-' + newName).text(newName + " : " + $(inputs[i]).val());
		}else if($(inputs[i]).attr('type')=='checkbox'){
//			var values;
//			if($(inputs[i]).attr('name')=='select-sns'){
//				var nodes = $("input[name=select-sns]");
//				var checked = new Array();
//				for(var i=0; i<nodes.length; i++){
//					if($(nodes[i]).is(":checked") == true){
//						checked.push($(nodes[i]).val());
//					}
//				}
//				values = checked;
//			}else {
//				values = $(inputs[i]).val();
//			}
			var name = $(inputs[i]).attr('name');
			var newName = barToUpperStr(name);
			iframe.contents().find('.pre-' + newName).text(newName + " : " + $(inputs[i]).val());
		}
	}
	// select
	let selects = $('.edit-block-content select');
	for(var i=0; i<selects.length; i++) {
		var name = $(selects[i]).attr('name');
		var options = $(".edit-block-content select > option");
		var selectedVal;
		for(var i=0; i<options.length; i++) {
			if ($(options[i]).is(":selected")==true) {
				selectedVal = $(options[i]).val();
			}
		}
		var newName = barToUpperStr(name);
		iframe.contents().find('.pre-' + newName).text(newName + " : " + selectedVal);
	}
	// textarea
	let textareas = $('.edit-block-content textarea');
	for(var i=0; i<textareas.length; i++) {
		var name = $(textareas[i]).attr('name');
		var newName = barToUpperStr(name);
		iframe.contents().find('.pre-' + newName).text(newName + " : " + $(textareas[i]).val());
	}	
		
}



// toss 연습
function tossButton() {
	var request = new XMLHttpRequest();

	request.open('POST', 'https://toss.im/transfer-web/linkgen-api/link');

	request.setRequestHeader('Content-Type', 'application/json');

	request.onreadystatechange = function () {
	  if (this.readyState === 4) {
	    console.log('Status:', this.status);
	    console.log('Headers:', this.getAllResponseHeaders());
	    console.log('Body:', this.responseText);
	    
	    console.log(typeof(this.responseText));
	    
	    var json = JSON.parse(this.responseText);
	    console.log(json);
	    var link = json["success"]["link"];
	    console.log(link);
	    
	    //Button 만듦
	    $("#tossLink").append("<a href='" + link + "' class='btn btn-warning' target='_blank'>입금</a>");
	  }
	};

	var body = {
	  'apiKey': '4604cfd8429d4f6cbeec1e741dde0aa8',
	  'bankName': '기업',
	  'bankAccountNo': '01024940759',
	  'amount': 1000,
	  'message': '토스입금버튼'
	};

	request.send(JSON.stringify(body));
}
