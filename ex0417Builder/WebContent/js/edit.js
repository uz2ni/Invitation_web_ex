// 작성일 : 18.07.27
// 작성자 : 송유진
// 기능 : ifrme 내용에 맞게 초기화



/******** checked, selected 변경 함수 *********/

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

/******** 공통 기능 함수 *********/
// 체크된 값 찾는 함수
function findChecked(inputName) {
	var nodes = $("input[name=" + inputName + "]");
	// radio
	if($("input[name=" + inputName + "]").attr('type') == 'radio') {
		var val;
		for(var i=0; i<nodes.length; i++) {
			if($(nodes[i]).is(":checked") == true) {
				val = $(nodes[i]).val(); 
			}
		}
	}else if ($("input[name=" + inputName + "]").attr('type') == 'checkbox') {
		var val = new Array();
		for(var i=0; i<nodes.length; i++) {
			if($(nodes[i]).is(":checked") == true) {
				val.push($(nodes[i]).attr("id")); 
				
			}
		}
	}
	return val;
}

//생성일 : 18.05.11
//작성자 : 송유진
//함수 기능 : 기능의 사용 여부를 확인하는 체크박스 상태에 따라 아래 요소들을 나타내거나 숨긴다.
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

/******** form 현재값 get *********/

function getSkin() {
	var val = findChecked('skin');
	return val;
}
function getTopTitle() {
	var val = $("input[name='top-title']").val();
	return val;
}
function getTopFontColor() {
	var val = findChecked('top-font-color');
	return val;
}
function getTopFontAlign() {
	var val = findChecked('top-font-align');
	return val;
}
function getTopImgFile() {
	var val = $('.top-img-preview-wrap > img').attr('src');
	return val;
}
function getTopImgAlign() {
	var val = findChecked('top-img-align');
	return val;
}
function getInfoDateStart() {
	var val = $("input[name='info-date-start']").val();
	return val;
}
function getInfoDateEnd() {
	var val = $("input[name='info-date-end']").val();
	return val;
}
function getInfoDdayChk() {
	var val = $("input[name='info-dday-chk']").val();
	return val;
}
function getInfoTime() {
	var val = $("input[name='info-time']").val();
	return val;
}
function getInfoPlace() {
	var val = $("input[name='info-place']").val();
	return val;
}
function getAddInfoWelcome() {
	var val = $("textarea[name='add-info-welcome']").val();
	return val;
}
function getAddInfoImgName() {
	var val = $("input[name='add-info-img-name']").val();
	return val;
}
function getAddInfoImgProfile() {
	var val = $('.add-info-img-profile-preview-wrap > img').attr('src');
	return val;
}
function getAddInfoImgSit() {
	var val = $('.add-info-img-sit-preview-wrap > img').attr('src');
	return val;
}
function getAddInfoCallName() {
	var val = $("input[name='add-info-call-name']").val();
	return val;
}
function getAddInfoCallNumber() {
	var val = $("input[name='add-info-call-number']").val();
	return val;
}
function getAddInfoLogoHoldName() {
	var val = $("input[name='add-info-logo-hold-name']").val();
	return val;
}
function getAddInfoHoldImg() {
	var val = $('.add-info-hold-img-preview-wrap > img').attr('src');
	return val;
}
function getAddInfoLogoHelpName() {
	var val = $("input[name='add-info-logo-help-name']").val();
	return val;
}
function getAddInfoHelpImg() {
	var val = $('.add-info-help-img-preview-wrap > img').attr('src');
	return val;
}
function getInfoAddress() {
	var val = $("input[name='info-address']").val();
	return val;
}
function getInfoNavi() {
	var val = $("input[name='info-navi']").val();
	return val;
}
function getInfoFind() {
	var val = $("input[name='info-find']").val();
	return val;
}
function getInfoLoadImgChk() {
	var val = $("input[name='info-load-img-chk']").val();
	return val;
}
function getInfoLoadImg() {
	var val = $('.info-load-img-preview-wrap > img').attr('src');
	return val;
}
function getInfoBus() {
	var val = $("textarea[name='info-bus']").val();
	return val;
}
function getInfoSubway() {
	var val = $("textarea[name='info-subway']").val();
	return val;
}
function getInfoParking() {
	var val = $("textarea[name='info-parking']").val();
	return val;
}
function getGalleryChk() {
	var val = $("input[name='gallery-chk']").val();
	return val;
}
function getGalleryUploadImg(num) {
//	var val = $('.gallery-upload-img-preview-wrap > img').attr('src');
	$('.gallery-upload-img')
	return val;
}
function getGalleryType() {
	var val = findChecked('gallery-type');
	return val;
}
function getVideoChk() {
	var val = $("input[name='video-chk']").val();
	return val;
}
function getVideoLink(index) {
	var val = $("input[name='video-link']:eq(" + index + ")").val();
	console.log(val);
	return val;
}
function getAccountChk() {
	var val = $("input[name='account-chk']").val();
	return val;
}
function getAccountSelect() {
	var options = $("select[name='account-select'] > option");
	var val;
	for(var i=0; i<options.length; i++) {
		if ($(options[i]).is(":selected")==true) {
			val = $(options[i]).text();
		}
	}
	return val;
}
function getAccountMoney() {
	var val = $("input[name='account-money']").val();
	return val;
}
function getAttendChk() {
	var val = $("input[name='attend-chk']").val();
	return val;
}
function getPollChk() {
	var val = $("input[name='poll-chk']").val();
	return val;
}
function getCommentChk() {
	var val = $("input[name='comment-chk']").val();
	return val;
}
function getSnsShareChk() {
	var val = $("input[name='sns-share-chk']").val();
	return val;
}
function getSelectSns() {
	var val = findChecked('select-sns');
	console.log("selectSns:" + val);
	return val;
}
function getSnsMsgChk() {
	var val = $("input[name='sns-msg-chk']").val();
	return val;
}
function getSnsMsgContent() {
	var val = $("textarea[name='sns-msg-content']").val();
	return val;
}

/******** iframe 변경 section get *********/

function getSectionTopTitle() {
	// iframe 접근해서 변경될 부분 가져옴
	var section = $('#preview_iframe').contents().find('.skin-top-title');
	return section;
}
function getSectionTopImg() {
	var section = $('#preview_iframe').contents().find('.skin-top-img');
	return section;
}
function getSectionInfoDateStart() {
	var section = $('#preview_iframe').contents().find('.skin-info-date-start');
	return section;
}
function getSectionInfoDateEnd() {
	var section = $('#preview_iframe').contents().find('.skin-info-date-end');
	return section;
}
function getSectionInfoDday() {
	var section = $('#preview_iframe').contents().find('.skin-info-dday');
	return section;
}
function getSectionInfoTime() {
	var section = $('#preview_iframe').contents().find('.skin-info-time');
	return section;
}
function getSectionInfoPlace() {
	var section = $('#preview_iframe').contents().find('.skin-info-place');
	return section;
}
function getSectionAddInfoWelcome() {
	var section = $('#preview_iframe').contents().find('.skin-add-info-welcome');
	return section;
}
function getSectionAddInfoImgName() {
	var section = $('#preview_iframe').contents().find('.skin-add-info-img-name');
	return section;
}
function getSectionAddInfoImgProfile() {
	var section = $('#preview_iframe').contents().find('.skin-add-info-img-profile');
	return section;
}
function getSectionAddInfoImgSit() {
	var section = $('#preview_iframe').contents().find('.skin-add-info-img-sit');
	return section;
}
function getSectionAddInfoCallName() {
	var section = $('#preview_iframe').contents().find('.skin-add-info-call-name');
	return section;
}
function getSectionAddInfoCallNumber() {
	var section = $('#preview_iframe').contents().find('.skin-add-info-call-number');
	return section;
}
function getSectionAddInfoLogoHoldName() {
	var section = $('#preview_iframe').contents().find('.skin-add-info-logo-hold-name');
	return section;
}
function getSectionAddInfoHoldImg() {
	var section = $('#preview_iframe').contents().find('.skin-add-info-hold-img');
	return section;
}
function getSectionAddInfoLogoHelpName() {
	var section = $('#preview_iframe').contents().find('.skin-add-info-logo-help-name');
	return section;
}
function getSectionAddInfoHelpImg() {
	var section = $('#preview_iframe').contents().find('.skin-add-info-help-img');
	return section;
}
function getSectionInfoAddress() {
	var section = $('#preview_iframe').contents().find('.skin-info-address');
	return section;
}
function getSectionInfoNavi() {
	var section = $('#preview_iframe').contents().find('.skin-info-navi');
	return section;
}
function getSectionInfoFind() {
	var section = $('#preview_iframe').contents().find('.skin-info-find');
	return section;
}
function getSectionInfoLoadImg() {
	var section = $('#preview_iframe').contents().find('.skin-info-load-img');
	return section;
}
function getSectionInfoBus() {
	var section = $('#preview_iframe').contents().find('.skin-info-bus');
	return section;
}
function getSectionInfoSubway() {
	var section = $('#preview_iframe').contents().find('.skin-info-subway');
	return section;
}
function getSectionInfoParking() {
	var section = $('#preview_iframe').contents().find('.skin-info-parking');
	return section;
}
function getSectionGallery(num) {
	var section = $('#preview_iframe').contents().find('.skin-gallery-' + num);
	console.log('num:' + num);
	console.log(section);
	return section;
}
function getSectionVideo() {
	var section = $('#preview_iframe').contents().find('.skin-video');
	return section;
}
function getSectionAccount() {
	var section = $('#preview_iframe').contents().find('.skin-account');
	return section;
}
function getSectionAccountMoney() {
	var section = $('#preview_iframe').contents().find('.skin-account-money');
	return section;
}
function getSectionAttend() {
	var section = $('#preview_iframe').contents().find('.skin-attend');
	return section;
}
function getSectionPoll() {
	var section = $('#preview_iframe').contents().find('.skin-poll'); // 수정 필요
	return section;
}
function getSectionComment() {
	var section = $('#preview_iframe').contents().find('.skin-comment');
	return section;
}
function getSectionSnsShare() {
	var section = $('#preview_iframe').contents().find('.skin-sns-share');
	return section;
}


/******** 이벤트 함수 *********/

// input 수정 시 이벤트 함수 동작
$("input[name='skin']").on('click', function () {
	radioVal($(this));
	skinUpdate(getSkin());
});
$("input[name='top-title']").on('keyup', function () {
	topTitleUpdate(getTopTitle(), getSectionTopTitle());
});
$("input[name='top-font-color']").on('change', function () {
	radioVal($(this));
	topFontColorUpdate(getTopFontColor(), getSectionTopTitle());
});
$("input[name='top-font-align']").on('change', function () {
	radioVal($(this));
	topFontAlignUpdate(getTopFontAlign(), getSectionTopTitle());
});
$("input[name='top-img-file']").on('change', function () {
	readURL(this, '.top-img-preview-wrap', 1);
	imgList(this, '.top-img-preview-wrap', 1);
	setTimeout(function() {
		topImgUpdate(getTopImgFile(), getSectionTopImg());
		}, 300);
});
$("input[name='top-img-align']").on('change', function () {
	radioVal($(this));
	topImgAlignUpdate(getTopImgAlign(), getSectionTopImg());
});
$("input[name='info-date-start']").on('change', function () {
	infoDateStartUpdate(getInfoDateStart(), getSectionInfoDateStart());
});
$("input[name='info-date-end']").on('change', function () {
	infoDateEndUpdate(getInfoDateEnd(), getSectionInfoDateEnd());
});
$("input[name='info-dday-chk']").on('change', function () {
	checkboxVal($(this));
	infoDdayChkUpdate(getInfoDdayChk(), getSectionInfoDday());
});
$("input[name='info-time']").on('keyup', function () {
	infoTimeUpdate(getInfoTime(), getSectionInfoTime());
});
$("input[name='info-place']").on('keyup', function () {
	infoPlaceUpdate(getInfoPlace(), getSectionInfoPlace());
});
$("textarea[name='add-info-welcome']").on('keyup', function () {
	addInfoWelcomeUpdate(getAddInfoWelcome(), getSectionAddInfoWelcome());
});
$("input[name='add-info-img-name']").on('keyup', function () {
	addInfoImgNameUpdate(getAddInfoImgName(), getSectionAddInfoImgName());
});
$("input[name='add-info-img-profile']").on('change', function () {
	readURL(this, '.add-info-img-profile-preview-wrap', 1);
	imgList(this, '.add-info-img-profile-preview-wrap', 1);
	setTimeout(function() {
		addInfoImgNameUpdate(getAddInfoImgName(), getSectionAddInfoImgName());
	}, 300);
});
$("input[name='add-info-img-sit']").on('change', function () {
	readURL(this, '.add-info-img-sit-preview-wrap', 1);
	imgList(this, '.add-info-img-sit-preview-wrap', 1);
	setTimeout(function() {
		addInfoImgSitUpdate(getAddInfoImgSit(), getSectionAddInfoImgSit());
	}, 300);
});
$("input[name='add-info-call-name']").on('keyup', function () {
	addInfoCallNameUpdate(getAddInfoCallName(), getSectionAddInfoCallName());
});
$("input[name='add-info-call-number']").on('keyup', function () {
	addInfoCallNumberUpdate(getAddInfoCallNumber(), getSectionAddInfoCallNumber());
});
$("input[name='add-info-logo-hold-name']").on('keyup', function () {
	addInfoLogoHoldNameUpdate(getAddInfoLogoHoldName(), getSectionAddInfoLogoHoldName());
});
$("input[name='add-info-hold-img']").on('change', function () {
	readURL(this, '.add-info-hold-img-preview-wrap', 1);
	imgList(this, '.add-info-hold-img-preview-wrap', 1);
	setTimeout(function() {
		addInfoHoldImgUpdate(getAddInfoHoldImg(), getSectionAddInfoHoldImg());
	}, 300);
});
$("input[name='add-info-logo-help-name']").on('keyup', function () {
	addInfoLogoHelpNameUpdate(getAddInfoLogoHelpName(), getSectionAddInfoLogoHelpName());
});
$("input[name='add-info-help-img']").on('change', function () {
	readURL(this, '.add-info-help-img-preview-wrap', 1);
	imgList(this, '.add-info-help-img-preview-wrap', 1);
	setTimeout(function() {
		addInfoHelpImgUpdate(getAddInfoHelpImg(), getSectionAddInfoHelpImg());
	}, 300);
});
$("button[name='info-address-btn']").on('click', function () {
	infoAddressUpdate(getInfoAddress(), getSectionInfoAddress());
});
$("input[name='info-navi']").on('change', function () {
	checkboxVal($(this));
	infoNaviUpdate(getInfoNavi(), getSectionInfoNavi());
});
$("input[name='info-find']").on('change', function () {
	checkboxVal($(this));
	infoFindUpdate(getInfoFind(), getSectionInfoFind());
});
$("input[name='info-load-img-chk']").on('change', function () {
	checkboxVal($(this));
	infoLoadImgChkUpdate(getInfoLoadImgChk(), getSectionInfoLoadImg());
});
$("input[name='info-load-img']").on('change', function () {
	readURL(this, '.info-load-img-preview-wrap', 1);
	imgList(this, '.info-load-img-preview-wrap', 1);
	setTimeout(function() {
		infoLoadImgUpdate(getInfoLoadImg(), getSectionInfoLoadImg());
	}, 300);	
});
$("textarea[name='info-bus']").on('keyup', function () {
	infoBusUpdate(getInfoBus(), getSectionInfoBus());
});
$("textarea[name='info-subway']").on('keyup', function () {
	infoSubwayUpdate(getInfoSubway(), getSectionInfoSubway());
});
$("textarea[name='info-parking']").on('keyup', function () {
	infoParkingUpdate(getInfoParking(), getSectionInfoParking());
});
$("input[name='gallery-chk']").on('change', function () {
	checkboxVal($(this));
	galleryChkUpdate(getGalleryChk(), getSectionGallery());
});
$(".galleryUploadImg").on('change', function () {
	var id = $(this).attr('id');
	var num = id.charAt(id.length-1);
	readURL(this, '.gallery-upload-img-preview-wrap', 6);
	var src;
	setTimeout(function() {
		imgList2('.gallery-upload-img-preview-wrap');
	}, 100);
	setTimeout(function() {
		var src = $("." + id).attr('src');
		galleryUploadImgUpdate(src, getSectionGallery(num));
	}, 300);	
});
$("input[name='gallery-type']").on('change', function () {
	radioVal($(this));
	galleryTypeUpdate(getGalleryType(), getSectionGallery());
});
$("input[name='video-chk']").on('change', function () {
	checkboxVal($(this));
	videoChkUpdate(getVideoChk(), getSectionVideo());
});
$("button[name='video-link-btn']").on('click', function () {
	var index = $("button[name='video-link-btn']").index(this);
	videoLinkBtnUpdate(getVideoLink(index), getSectionVideo(), index);
});
$("input[name='account-chk']").on('change', function () {
	checkboxVal($(this));
	accountChkUpdate(getAccountChk(), getSectionAccount());
});
$("select[name='account-select']").on('change', function () {
	selectVal($(this));
	accountSelectUpdate(getAccountSelect(), getSectionAccount());
});
$("input[name='account-money']").on('keyup', function () {
	accountMoneyUpdate(getAccountMoney(), getSectionAccountMoney());
});
$("input[name='attend-chk']").on('change', function () {
	checkboxVal($(this));
	attendChkUpdate(getAttendChk(), getSectionAttend());
});
$("input[name='poll-chk']").on('change', function () {
	checkboxVal($(this));
	pollChkUpdate(getPollChk(), getSectionPoll());
});
$("input[name='comment-chk']").on('change', function () {
	checkboxVal($(this));
	commentChkUpdate(getCommentChk(), getSectionComment());
});
$("input[name='sns-share-chk']").on('change', function () {
	checkboxVal($(this));
	snsShareChkUpdate(getSnsShareChk(), getSectionSnsShare());
});
$("input[name='select-sns']").on('change', function () {
	selectSnsUpdate(getSelectSns(), getSectionSnsShare());
});
$("input[name='sns-msg-chk']").on('change', function () {
	checkboxVal($(this));
});

// scroll 기능
function fnMove(section){
    var offset = $('#preview_iframe').contents().find(section).offset();
    $('#preview_iframe').contents().find('html, body').animate({scrollTop : offset.top+200}, 400);
}

$("li[aria-controls='tabs-2'").on('click', function () {
	fnMove('.skin-top-title');
});
// 기본 정보
$("li[aria-controls='tabs-9'").on('click', function () {
	fnMove('.skin-info-date');
});
