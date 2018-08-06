
/**
 * 작성일 : 18.07.27
 * 작성자 : 송유진
 * 기능 : edit내용에 따라 skin 동작 변경에 대한 기능 정의 
 */

// html 로드 완료 후 실행
$(document).ready(function(){
	editInit();

});

// 초기값 맞게 설정
function editInit() {
	topTitleUpdate(getTopTitle(), getSectionTopTitle());
	topFontColorUpdate(getTopFontColor(), getSectionTopTitle());
	topFontAlignUpdate(getTopFontAlign(), getSectionTopTitle());
	topImgUpdate(getTopImgFile(), getSectionTopImg());
	topImgAlignUpdate(getTopImgAlign(), getSectionTopImg());
	infoDateStartUpdate(getInfoDateStart(), getSectionInfoDateStart());
	infoDateEndUpdate(getInfoDateEnd(), getSectionInfoDateEnd());
	checkboxVal($("input[name='info-dday-chk']"));
	infoDdayChkUpdate(getInfoDdayChk(), getSectionInfoDday());
	infoTimeUpdate(getInfoTime(), getSectionInfoTime());
	infoPlaceUpdate(getInfoPlace(), getSectionInfoPlace());
	addInfoWelcomeUpdate(getAddInfoWelcome(), getSectionAddInfoWelcome());
	addInfoImgNameUpdate(getAddInfoImgName(), getSectionAddInfoImgName());
	addInfoImgProfileUpdate(getAddInfoImgProfile(), getSectionAddInfoImgProfile());
	addInfoImgSitUpdate(getAddInfoImgSit(), getSectionAddInfoImgSit());
	addInfoCallNameUpdate(getAddInfoCallName(), getSectionAddInfoCallName());
	addInfoCallNumberUpdate(getAddInfoCallNumber(), getSectionAddInfoCallNumber());
	addInfoLogoHoldNameUpdate(getAddInfoLogoHoldName(), getSectionAddInfoLogoHoldName());
	addInfoHoldImgUpdate(getAddInfoHoldImg(), getSectionAddInfoHoldImg());
	addInfoLogoHelpNameUpdate(getAddInfoLogoHelpName(), getSectionAddInfoLogoHelpName());
	addInfoHelpImgUpdate(getAddInfoHelpImg(), getSectionAddInfoHelpImg());
	infoAddressUpdate(getInfoAddress(), getSectionInfoAddress());
	checkboxVal($("input[name='info-navi']"));
	infoNaviUpdate(getInfoNavi(), getSectionInfoNavi());
	checkboxVal($("input[name='info-find']"));
	infoFindUpdate(getInfoFind(), getSectionInfoFind());
	checkboxVal($("input[name='info-load-chk']"));
	infoLoadImgChkUpdate(getInfoLoadImgChk(), getSectionInfoLoadImg());
	infoLoadImgUpdate(getInfoLoadImg(), getSectionInfoLoadImg());
	infoBusUpdate(getInfoBus(), getSectionInfoBus());
	infoSubwayUpdate(getInfoSubway(), getSectionInfoSubway());
	infoParkingUpdate(getInfoParking(), getSectionInfoParking());
	checkboxVal($("input[name='gallery-chk']"));
	galleryChkUpdate(getGalleryChk(), getSectionGallery());
	galleryUploadImgUpdate(getGalleryUploadImg(), getSectionGallery());
	galleryTypeUpdate(getGalleryType(), getSectionGallery());
	checkboxVal($("input[name='video-chk']"));
	videoChkUpdate(getVideoChk(), getSectionVideo());
	videoLinkBtnUpdate(getVideoLink(0), getSectionVideo(), 0);
	checkboxVal($("input[name='account-chk']"));
	accountChkUpdate(getAccountChk(), getSectionAccount());
	selectVal($("select[name='account-select'"));
	accountSelectUpdate(getAccountSelect(), getSectionAccount());
	checkboxVal($("input[name='attend-chk']"));
	attendChkUpdate(getAttendChk(), getSectionAttend());
	checkboxVal($("input[name='comment-chk']"));
	commentChkUpdate(getCommentChk(), getSectionComment());
	checkboxVal($("input[name='sns-share-chk']"));
	snsShareChkUpdate(getSnsShareChk(), getSectionSnsShare());
	checkboxVal($("input[name='select-sns']"));
	selectSnsUpdate(getSelectSns(), getSectionSnsShare());
}

/******** 공통 기능 함수 *********/
function hideShowFunc(val, section) {
	// 값에 따라 섹션 보이기,안보이기 설정
	if(val == '1') {
		$(section).show();
	}else if(val == '0') {
		$(section).hide();
	}
}


// 01 스킨 수정
function skinUpdate(skinNode) {
} 

// 02 상단 정보
// 제목 
function topTitleUpdate(val, section) {
	$(section).text(val);
}
// 제목 색상
function topFontColorUpdate(val, section) {
	$(section).css('color', val);
}
// 제목 정렬
function topFontAlignUpdate(val, section) {
	if(val == 'left') {
		$(section).addClass("text-left");
		$(section).removeClass("text-center");
		$(section).removeClass("text-right");
	}else if(val == 'center') {
		$(section).addClass("text-center");
		$(section).removeClass("text-left");
		$(section).removeClass("text-right");
	}else if(val == 'right') {
		$(section).addClass("text-right");
		$(section).removeClass("text-left");
		$(section).removeClass("text-center");
	}
}
// 상단 이미지
function topImgUpdate(val, section) {
	console.log(val);
	console.log($(section));
	$(section).append("<img src='" + val + "'>");
}
// 상단 이미지 정렬
function topImgAlignUpdate(val, section) {
	// 수정 필요
	if(val == 'row') {
		console.log('row');
	}else if(val == 'col') {
		console.log('col');		
	}
}
// 03 상세 정보
// 03-1 기본 정보
// 행사 일자
function infoDateStartUpdate(val, section) {
	$(section).text(val);
	infoDdayChkUpdate(getInfoDdayChk(), getSectionInfoDday());
}
function infoDateEndUpdate(val, section) {
	$(section).text(val);
	infoDdayChkUpdate(getInfoDdayChk(), getSectionInfoDday());
}
// dday 사용 여부
function infoDdayChkUpdate(val, section) {
	// d-day 계산
	var start = new Date(getInfoDateStart());
	var end = new Date(getInfoDateEnd());
	var dday = start.getTime() - end.getTime();
	dday = Math.floor(dday / (1000 * 60 * 60 * 24));
	$(section).text(dday);
	// 보이기,안보이기 설정
	hideShowFunc(val, section);
}
// 행사 시간
function infoTimeUpdate(val, section) {
	$(section).text(val);
}
// 행사 장소
function infoPlaceUpdate(val, section) {
	$(section).text(val);
}
// 03-1 부가 정보
// 인사말
function addInfoWelcomeUpdate(val, section) {
	$(section).text(val);
}
// 발표자 이름
function addInfoImgNameUpdate(val, section) {
	$(section).text(val);
}
// 발표자 프로필
function addInfoImgProfileUpdate(val, section) {
	$(section).append("<img src='" + val + "'>");
}
// 자리배치도
function addInfoImgSitUpdate(val, section) {
	$(section).append("<img src='" + val + "'>");
}
// 주최자 이름
function addInfoCallNameUpdate(val, section) {
	$(section).text(val);
}
// 주최자 번호
function addInfoCallNumberUpdate(val, section) {
	$(section).text(val);
}
// 주최사 이름
function addInfoLogoHoldNameUpdate(val, section) {
	$(section).text(val);
}
// 주최사 로고
function addInfoHoldImgUpdate(val, section) {
	$(section).append("<img src='" + val + "'>");
}
// 후원사 이름
function addInfoLogoHelpNameUpdate(val, section) {
	$(section).text(val);
}
// 후원사 로고
function addInfoHelpImgUpdate(val, section) {
	$(section).append("<img src='" + val + "'>");
}
// 03-3 위치 정보
// 행사 장소 주소 (지도)
function infoAddressUpdate(val, section) {
	// 수정 필요
	console.log(val);
	console.log(section);
	$(section).text(val);
}
// 네비 사용 여부
function infoNaviUpdate(val, section) {
	$(section).text('네비 아이콘 띠용');
	// 보이기,안보이기 설정
	hideShowFunc(val, section);
}
// 길 찾기 사용 여부
function infoFindUpdate(val, section) {
	$(section).text('길찾기 아이콘 띠용');
	// 보이기,안보이기 설정
	hideShowFunc(val, section);
}
// 약도 이미지 사용 여부
function infoLoadImgChkUpdate(val, section) {
	// 보이기,안보이기 설정
	hideShowFunc(val, section);
}
// 약도 이미지
function infoLoadImgUpdate(val, section) {
	$(section).append("<img src='" + val + "'>");
}
// 버스 교통 안내
function infoBusUpdate(val, section) {
	$(section).text(val);
}
// 지하철 교통 안내
function infoSubwayUpdate(val, section) {
	$(section).text(val);
}
// 주차 안내
function infoParkingUpdate(val, section) {
	$(section).text(val);
}
// 04 멀티미디어
// 04-1 갤러리
function galleryChkUpdate(val, section) {
	console.log(val);
	console.log(section);
	// 보이기,안보이기 설정
	hideShowFunc(val, section);
}
// 갤러리 타입
function galleryTypeUpdate(val, section) {
	// 수정 필요
	if(val == 'gallery-type-basic') {
		console.log('gallery-type-basic');
	}else if(val == 'gallery-type-circle') {
		console.log('gallery-type-circle');		
	}else if(val == 'gallery-type-slide') {
		console.log('gallery-type-slide');
	}
}
// 갤러리 업로드
function galleryUploadImgUpdate(val, section) {
	$(section).append("<img src='" + val + "'>");
}
// 04-2 비디오
function videoChkUpdate(val, section) {
	// 보이기,안보이기 설정
	hideShowFunc(val, section);
}
// 비디오 링크 입력완료 버튼
function videoLinkBtnUpdate(val, section, index) {
		let youtubeUrl = 'https://www.youtube.com/embed/';
		let key = val.split('v=')[1];
		$(section).find("iframe[name='skin-video']:eq(" + index + ")").attr('src', youtubeUrl + key);
}
// 05 계좌 연동
// 계좌 사용 여부
function accountChkUpdate(val, section) {
	// 보이기,안보이기 설정
	hideShowFunc(val, section);
}
// 계좌 선택
function accountSelectUpdate(val, section) {
	// 은행명 추출
	let bankName = val.split("[")[1];
	bankName = bankName.split("]")[0];
	// 예금주명 추출
	let accountName = val.split("]")[1];
	accountName = accountName.split("(")[0];
	// 계좌 추출
	let accountNumber = val.split("(")[1];
	let accountNumberDash = accountNumber.split(")")[0];
	accountNumber = accountNumberDash.replace(/-/g,'');
	console.log(bankName);
	console.log(accountName);
	console.log(accountNumber);
	// 송금료
	let accountMoney = getAccountMoney();
	console.log(accountMoney);
	
	// toss API (버튼에 링크 연결)
	createTossUrl(bankName, accountNumber, accountMoney);
	// 내용 변경
	$(section).find(".skin-account-name").text(accountName);
	$(section).find(".skin-account-bank").text(bankName);
	$(section).find(".skin-account-number").text(accountNumber);
	$(section).find(".skin-account-money").text(accountMoney);
}
// toss API (버튼에 링크 연결)
function createTossUrl(bankName, bankAccountNo, amount) {
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
	    
	    $('#preview_iframe').contents().find('.skin-account-url').attr('href', link);
	  }
	};

	var body = {
	  'apiKey': '4604cfd8429d4f6cbeec1e741dde0aa8',
	  'bankName': bankName,
	  'bankAccountNo': bankAccountNo,
	  'amount': amount,
	  'message': '회비'
	};

	request.send(JSON.stringify(body));
}
function accountMoneyUpdate(val, section) {
	$(section).text(val);
}
// 06 추가 기능
// 06-1 참석 여부
function attendChkUpdate(val, section) {
	hideShowFunc(val, section);
}
// 06-2 방명록
function commentChkUpdate(val, section) {
	hideShowFunc(val, section);
}
// 06-3 sns 공유
function snsShareChkUpdate(val, section) {
	hideShowFunc(val, section);
}
// sns 복수 선택
function selectSnsUpdate(val, section) {
	$(section).empty();
	for(var i=0; i<val.length; i++) {
		$(section).append("<a href=''><img src='../../img/content/edit_img/page_img/shard_icon/" + val[i] + ".png' width='50' height='50' class='mx-1'></a>");
	}
}
