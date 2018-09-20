commonContext = $("input[name='commonContext']").val();
skinContext = $("input[name='skinContext']").val();

content = {};

$(document).ready(function(){
	ContentToObj();
	init();
});

//기능 : url에 맞는 Content 객체 데이터 값 string -> Object
function ContentToObj() {
	let str = $("input[name='contentStr']").val();
	let contentStr = str.split('Content [')[1];
	contentStr = contentStr.substring(0,contentStr.length-1);
	let lists =  contentStr.split(', ');
	for(var i=0; i<lists.length; i++) {
		// videoLink의 = 은 별도로 작업
		if(lists[i].indexOf('videoLink') != -1) { //videoLink 부분일 경우
			let [k, v, t] = lists[i].split('=');
			v = v + "=" + t; 
			content[k] = v;
		}else {
			let [k, v] = lists[i].split('=');
			content[k] = v;
		}
	}
	console.log(content);
}

function init() {
	Kakao.init('1386e037bba95269662e714f8357101f');
	topTitleUpdate(content["topTitle"], getSectionTopTitle());
	topFontColorUpdate(content["topFontColor"], getSectionTopTitle());
	topFontAlignUpdate(content["topFontAlign"], getSectionTopTitle());
	topImgUpdate(content["topImgFile"], getSectionTopImg());
	topImgAlignUpdate(content["topImgAlign"], getSectionTopImg());
	infoDateStartUpdate(content["infoDateStart"], getSectionInfoDateStart());
	infoDateEndUpdate(content["infoDateEnd"], getSectionInfoDateEnd());
//	checkboxVal($("input[name='info-dday-chk']"));
	infoDdayChkUpdate(content["infoDdayChk"], getSectionInfoDday());
	infoTimeUpdate(content["infoTime"], getSectionInfoTime());
	infoPlaceUpdate(content["infoPlace"], getSectionInfoPlace());
	addInfoWelcomeUpdate(content["addInfoWelcome"], getSectionAddInfoWelcome());
	addInfoImgNameUpdate(content["addInfoImgName"], getSectionAddInfoImgName());
	addInfoImgProfileUpdate(content["addInfoImgProfile"], getSectionAddInfoImgProfile());
	addInfoImgSitUpdate(content["addInfoImgSit"], getSectionAddInfoImgSit());
	addInfoCallNameUpdate(content["addInfoCallName"], getSectionAddInfoCallName());
	addInfoCallNumberUpdate(content["addInfoCallNumber"], getSectionAddInfoCallNumber());
	addInfoLogoHoldNameUpdate(content["addInfoLogoHoldName"], getSectionAddInfoLogoHoldName());
	addInfoHoldImgUpdate(content["addInfoHoldImg"], getSectionAddInfoHoldImg());
	addInfoLogoHelpNameUpdate(content["addInfoLogoHelpName"], getSectionAddInfoLogoHelpName());
	addInfoHelpImgUpdate(content["addInfoHelpImg"], getSectionAddInfoHelpImg());
	infoAddressUpdate(content["infoAddress"], getSectionInfoAddress());
//	checkboxVal($("input[name='info-navi']"));
	addrSpot(content["infoAddress"]); //Kakao navi
	infoNaviUpdate(content["infoNavi"], getSectionInfoNavi());
//	checkboxVal($("input[name='info-find']"));
	infoFindInit(content["infoAddress"]); // 길 찾기 링크 연결
	infoFindUpdate(content["infoFind"], getSectionInfoFind());
//	checkboxVal($("input[name='info-load-img-chk']"));
	infoLoadImgChkUpdate(content["infoLoadImgChk"], getSectionInfoLoadImg());
	infoLoadImgUpdate(content["infoLoadImg"], getSectionInfoLoadImg());
	infoBusUpdate(content["infoBus"], getSectionInfoBus());
	infoSubwayUpdate(content["infoSubway"], getSectionInfoSubway());
	infoParkingUpdate(content["infoParking"], getSectionInfoParking());
//	checkboxVal($("input[name='gallery-chk']"));
	galleryChkUpdate(content["galleryChk"], getSectionGallery());
	galleryUploadImgUpdate(content["galleryUploadImg"], getSectionGallery());
	galleryTypeUpdate(content["galleryType"], getSectionGallery());
//	checkboxVal($("input[name='video-chk']"));
	videoChkUpdate(content["videoChk"], getSectionVideo());
	videoLinkBtnUpdate(content["videoLink"], getSectionVideo());
//	checkboxVal($("input[name='account-chk']"));
	accountChkUpdate(content["ccountChk"], getSectionAccount());
//	selectVal($("select[name='account-select'"));
	accountSelectUpdate(content["accountSelect"], getSectionAccount());
//	checkboxVal($("input[name='attend-chk']"));
	attendChkUpdate(content["attendChk"], getSectionAttend());
//	checkboxVal($("input[name='comment-chk']"));
	commentChkUpdate(content["commentChk"], getSectionComment());
//	checkboxVal($("input[name='sns-share-chk']"));
	snsShareChkUpdate(content["snsShareChk"], getSectionSnsShare());
	selectSnsUpdate(content["selectSns"], getSectionSnsShare());
//	checkboxVal($("input[name='sns-msg-chk']"));
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

//제목 
function topTitleUpdate(val, section) {
	$(section).text(val);
}
//제목 색상
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
	var val = "http://placehold.it/200x200";
	console.log(val); 
	console.log($(section));
	$(section).append("<img src='" + val + "'>");
}
// 상단 이미지 정렬
function topImgAlignUpdate(val, section) {
	// 수정 필요
	if(val == 'row') {
//		imgPreview('row');
	}else if(val == 'col') {
//		imgPreview('col');
	}
}
function preview(img, selection) {
	var imgW;
	var imgH;
	var w;
	var h;
	
	var val = getTopImgAlign();
	if(val == 'row') {
		imgW = img.width;
		imgH = img.height;
		w = 300;
		h = 168.75;
	}else if(val == 'col') {
		imgW = img.width;
		imgH = img.height;
		w = 300;
		h = 400;
	}

	var scaleX = w / (selection.width || 1);
    var scaleY = h / (selection.height || 1);
  
    $('.skin-top-img img').css({
        width: Math.round(scaleX * imgW) + 'px',
        height: Math.round(scaleY * imgH) + 'px',
        marginLeft: '-' + Math.round(scaleX * selection.x1) + 'px',
        marginTop: '-' + Math.round(scaleY * selection.y1) + 'px'
    });
}
function imgPreview(direction){
	var w;
	var h;
	var ratio;
	if(direction == 'row') {
		w = '300px';
		h = '168.75px';
		ratio = '16:9';
	}else if(direction == 'col') {
		w = '300px';
		h = '400px';
		ratio = '3:4';
	}
	
	//기존 이미지 초기화
	$('.skin-top-img').empty();
	
    var img = $('<div><img src="data:image/jpeg;base64,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" style="position: relative;" /></div>')
        .css({
            /* float: 'left', */
            position: 'relative',
            overflow: 'hidden',
            width: w,
            height: h
        });
    $('.skin-top-img').append(img);

    $('#ferret').imgAreaSelect({ aspectRatio: ratio, onSelectChange: preview });
}
// 03 상세 정보
// 03-1 기본 정보
// 행사 일자
function infoDateStartUpdate(val, section) {
	$(section).text(val);
	console.log("start:");
	console.log(section);
	console.log(val);
	infoDdayChkUpdate(content["infoDdayChk"], getSectionInfoDday());
}
function infoDateEndUpdate(val, section) {
	$(section).text(val);
	infoDdayChkUpdate(content["infoDdayChk"], getSectionInfoDday());
}
// dday 사용 여부
function infoDdayChkUpdate(val, section) {
	// d-day 계산
	var start = new Date(content["infoDateStart"]);
	var end = new Date(content["infoDateEnd"]);
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
	var val = "http://placehold.it/200x200";
	$(section).append("<img src='" + val + "'>");
}
// 자리배치도
function addInfoImgSitUpdate(val, section) {
	var val = "http://placehold.it/200x200";
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
	var val = "http://placehold.it/200x200";
	$(section).append("<img src='" + val + "'>");
}
// 후원사 이름
function addInfoLogoHelpNameUpdate(val, section) {
	$(section).text(val);
}
// 후원사 로고
function addInfoHelpImgUpdate(val, section) {
	var val = "http://placehold.it/200x200";
	$(section).append("<img src='" + val + "'>");
}
// 03-3 위치 정보
// 행사 장소 주소
function infoAddressUpdate(val, section) {
	// 수정 필요
	console.log(val);
	$(section).text(val);
	// 지도 연결
	mapUpdate();
	// 길 찾기 아이콘 링크 연결
	infoFindLink(val);
}
function mapUpdate() {
	var section = $('.skin-info-map');
//	var mapNode = $('#skin-info-address-map');
//	section.append(mapNode);
}
// 네이버 지도 api
// map 전역 init
var map = new naver.maps.Map("info-address-map", {
    center: new naver.maps.LatLng(37.3595316, 127.1052133),
    zoom: 10,
    mapTypeControl: true
});

var infoWindow = new naver.maps.InfoWindow({
    anchorSkew: true
});

map.setCursor('pointer');

naver.maps.onJSContentLoaded = initGeocoder;

// search by tm128 coordinate [클릭으로 주소 출력하는 함수]
function searchCoordinateToAddress(latlng) {
    var tm128 = naver.maps.TransCoord.fromLatLngToTM128(latlng);

    infoWindow.close();

    naver.maps.Service.reverseGeocode({
        location: tm128,
        coordType: naver.maps.Service.CoordType.TM128
    }, function(status, response) {
        if (status === naver.maps.Service.Status.ERROR) {
            return alert('Something Wrong!');
        }

        var items = response.result.items,
            htmlAddresses = [];

        for (var i=0, ii=items.length, item, addrType; i<ii-1; i++) {
            item = items[i];
            addrType = item.isRoadAddress ? '[도로명 주소]' : '[지번 주소]';

            htmlAddresses.push((i+1) +'. '+ addrType +' '+ item.address);
        }

        infoWindow.setContent([
                '<div style="padding:7px;min-width:200px;line-height:150%; font-size:8pt; color:black;">',
                '<h6 style="margin-top:2px; font-weight:bold">검색 좌표</h6>',
                htmlAddresses.join('<br />'),
                '</div>'
            ].join('\n'));

        infoWindow.open(map, latlng);
    });
}

// result by latlng coordinate [주소로 검색하는 함수]
function searchAddressToCoordinate(address) {
	console.log("address:" + address);
    naver.maps.Service.geocode({
        address: address
    }, function(status, response) {
        if (status === naver.maps.Service.Status.ERROR) {
            return alert('주소를 정확하게 입력하세요^^^^^^');
        }
        var item = response.result.items[0],
            addrType = item.isRoadAddress ? '[도로명 주소]' : '[지번 주소]',
            point = new naver.maps.Point(item.point.x, item.point.y);

        infoWindow.setContent([
                '<div style="padding:7px;min-width:200px;line-height:150%; font-size:8pt; color:black;">',
                '<h6 style="margin-top:2px; font-weight:bold">검색 주소 : '+ response.result.userquery +'</h6><br />',
                addrType +' '+ item.address +'<br />',
                '</div>'
            ].join('\n'));

        map.setCenter(point);
        infoWindow.open(map, point);
    });
}

function initGeocoder() {
    map.addListener('click', function(e) {
        searchCoordinateToAddress(e.coord);
    });

    $('#info-address-text').on('keydown', function(e) {
        var keyCode = e.which;

        if (keyCode === 13) { // Enter Key
            searchAddressToCoordinate($('#info-address-text').val());
        }
    });

    $('#info-address-search').on('click', function(e) {
        e.preventDefault();

        searchAddressToCoordinate($('#info-address-text').val());
        
    });
//    searchAddressToCoordinate($('#info-address-text').val());
    searchAddressToCoordinate(content["infoAddress"]);
}

// 길 찾기 아이콘 링크 연결
function infoFindLink(val) {
	var a = $('#info-find-link');
	var url = 'http://map.daum.net/?sName=&eName=' + val;
	a.attr("href", url);
}

// 초대장 index 에서 필요한 부분
// 좌표 얻고 네비 연결
function addrSpot(addr) {
    var addrX, addrY;
    // 좌표 얻기
    jQuery.ajax({
        url: "https://dapi.kakao.com/v2/local/search/address.json?query=" + addr,
        headers: { 'Authorization': 'KakaoAK 845b3ea291eaa03671ae354870efc44b'},
        type: 'GET'
    }).done(function(data) {
        addrX = parseFloat(data["documents"][0]["x"]);
        addrY = parseFloat(data["documents"][0]["y"]);
        navi(addr, addrX, addrY);
    });
}
// 카카오 네비 공유 api
function navi(addr, addrX, addrY){
    Kakao.Navi.share({
        name: addr,
        x: addrX,
        y: addrY,
        coordType: 'wgs84'
    });
    console.log("navi api complete");
    console.log(addr + ", " + addrX + ", " + addrY);
}

// 네비 사용 여부
function infoNaviUpdate(val, section) {
	// 보이기,안보이기 설정
	hideShowFunc(val, section);
}
// 길 찾기 바로가기 초기화 (웹만 됨)
function infoFindInit(addr) {
	let url = "http://map.daum.net/?sName=&eName=" + addr;
	$("#info-find-link").attr("href", url);
}
// 길 찾기 사용 여부
function infoFindUpdate(val, section) {
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
	var val = "http://placehold.it/200x200";
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
	if(val == 'gallery-type-slide') {
		$('.skin-gallery-type-slide').show();
		$('.skin-gallery-type-row').hide();
		$('.skin-gallery-type-col').hide();
	}else if(val == 'gallery-type-row') {
		$('.skin-gallery-type-slide').hide();
		$('.skin-gallery-type-row').show();
		$('.skin-gallery-type-col').hide();
	}else if(val == 'gallery-type-col') {
		$('.skin-gallery-type-slide').hide();
		$('.skin-gallery-type-row').hide();
		$('.skin-gallery-type-col').show();
	}
}
// 갤러리 업로드
function galleryUploadImgUpdate(val, section) {
	var val = "http://placehold.it/200x200";
	$(section).append("<img src='" + val + "'>");
}
// 04-2 비디오
function videoChkUpdate(val, section) {
	// 보이기,안보이기 설정
	hideShowFunc(val, section);
}
// 비디오 링크 입력완료 버튼
function videoLinkBtnUpdate(val, section) {
		console.log("video:" + val);
		let index = 0;
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
	// 임시
	//var val = "[기업]송유진(562-010407-01-012)";
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
	let accountMoney = content["accountMoney"];
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
	    
	    $('.skin-account-url').attr('href', link);
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
	
	// sns 분리
	let sns = val.split(',');
	console.log("sns:");
	console.log(sns);
	if(val != "") {
		for(var i=0; i<sns.length; i++) {
			$(section).append("<a href=''><img src='" + commonContext + "img/content/edit_img/page_img/shard_icon/" + sns[i] + ".png' width='50' height='50' class='mx-1'></a>");
		}
	}
}

/* 작성자 : 송유진
 * 수정일 : 18.09.25
 * 기능 : 방명록 삭제 팝업 및 기능 이벤트 함수
 */

// 취소 클릭 이벤트
$(".modal-btn-si").on("click", function(){
  var btnName = $(this).attr('name');
  var urlGuestId = btnName.split('si-')[1];
  // 창 닫기
  $("#guest-confirm-"+urlGuestId).modal('hide');
});
// 삭제 클릭 이벤트
$(".modal-btn-no").on("click", function(){
	     var btnName = $(this).attr('name');
	     var urlGuestId = btnName.split('no-')[1];
	     // 비밀번호 input 값 가져오기
	     var urlGuestPw = $("#guest-password-"+urlGuestId).val();
	     console.log("pwd:" + urlGuestPw);
	     
	     // ajax 비밀번호 delete
	 	jQuery.ajax({
			url: "guestDeleteAjax.ajax",
			type: 'POST',
			dataType: 'json',
			data: {
			   url_guest_id : urlGuestId,
			   url_guest_pw : urlGuestPw
			}
		}).done(function(data) {
			if(data["status"] == 'success') {
				// 팝업 닫기
				$("#guest-confirm-"+urlGuestId).modal('hide');
				window.location.reload();			
				
			}else if(data["status"] == 'fail') {
				alert("비밀번호를 확인하세요.");
				$("#guest-password-"+urlGuestId).val("");
				$("#guest-password-"+urlGuestId).focus();
				console.log("삭제 실패");
			}
		});
});