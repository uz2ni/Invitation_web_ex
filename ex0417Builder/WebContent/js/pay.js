/* ui 기능적인 부분 js */
$(document).ready(function(){
	insertSelected(1); // 처음 페이지 켰을 때 기능탭1 선택되도록 함.
	
	// messagePay 경우
	if($("#type2").val() == "5") {
		$(document).ready(function(){
			$(pointTotalMoney(1000, 100));	
		});
	}
});
/*btn active*/
$(".selectBtn").click(function() {
	  $(".active").removeClass("active");
	  $(this).addClass("active");
	});

function btn(){
    document.getElementById('show_2').innerHTML = '';
}

/* application_2 javascript */
// 작성일:180503-180504 , 작성자:송유진
// 버튼 선택에 따라 selected 클래스 삽입 및 추가

function insertSelected(a){ 
    //selectBtn클래스인데 a값이랑 같은 노드의 네임 -> selected 클래스 추가
    //selectBtn클래스인데 a값과 다른 노드 -> selected 클래스 있으면 삭제
    var select = $("select[name='payment-month']").val();
    var btn1 = $(".btn1");
    var btn2 = $(".btn2");
    var btn3 = $(".btn3");
    
    switch (a){
        case 1:
            // name=1인 노드에 selected 클래스가 있으면 냅두고 없으면 클래스 추가
            if(btn1.hasClass("selected") === false) {
                btn1.addClass("selected");
                btn2.removeClass("selected");
                btn3.removeClass("selected");
                // input hidden에 정보 추가
                $('#type').val("1");
            }
            // name=2,3 노드에 selected 클래스가 있으면 삭제
            break;
        case 2:
            if(btn2.hasClass("selected") === false) {
                btn2.addClass("selected");
                btn1.removeClass("selected");
                btn3.removeClass("selected");
                // input hidden에 정보 추가
                $('#type').val("2");
            }            
            break;
        case 3:
            if(btn3.hasClass("selected") === false) {
                btn3.addClass("selected");
                btn1.removeClass("selected");
                btn2.removeClass("selected");
                // input hidden에 정보 추가
                $('#type').val("3");
            }            
            break;
        default:
            break;
    }
    //select와 button에 따라 내용 바꿀 함수로 보내기
    changeContent(a, select);
}

//select 선택 시 버튼값과 select값 changeContent 함수로 전달

function selectEvent(selectObj) {
    var selectOption = parseInt(selectObj.value);
    var selectBtn = 0;
    //selected 된 버튼 찾음
    if($(".btn1").hasClass("selected") === true){
        selectBtn = 1;
    }else if($(".btn2").hasClass("selected") === true){
        selectBtn = 2;
    }else if($(".btn3").hasClass("selected") === true){
        selectBtn = 3;
    }
    else if($(".btn4").hasClass("selected") === true){
        selectBtn = 4;
    }
    else if($(".btn5").hasClass("selected") === true){
        selectBtn = 5;
    }
    totalMoney(selectOption);
    changeContent(selectBtn, selectOption);
}

// select button 값 받아서 제공기능 내용 전환


function changeContent(btnId, selectId) {
    var display1 = null;
    var display2 = null;
    var display3 = null;
    if(btnId == 1){
        display1 = $('#show_1').removeClass('d-none');
        display2 = $('#show_2').addClass('d-none');
        display3 = $('#show_3').addClass('d-none');
    }else if(btnId == 2){
        display1 = $('#show_2').removeClass('d-none');
        display2 = $('#show_1').addClass('d-none');
        display3 = $('#show_3').addClass('d-none');
    }else if(btnId == 3){
        display1 = $('#show_3').removeClass('d-none');
        display2 = $('#show_1').addClass('d-none');
        display3 = $('#show_2').addClass('d-none');
    }
}

// 가격 전역 변수
var ServiceUsePrice = 0;
var totalPrice = 0;
var point = 0;

// 가격 콤마 단위 찍기
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function totalMoney(selectId) {
	
	let serviceUsePriceNode = $('.service-use-price');
	let totalPriceNode = $('.total-money');
	const installPrice = 9900; // 설치 비용 가격
    if(selectId == 0){
        serviceUsePrice = 0;
        // 서비스 사용 비용
        serviceUsePriceNode.text(numberWithCommas(serviceUsePrice));
        // 총 합계
        totalPrice = installPrice + serviceUsePrice;
        totalPriceNode.text(numberWithCommas(totalPrice));
    }
    else if(selectId == 1){
        serviceUsePrice = 3900;
        // 서비스 사용 비용
        serviceUsePriceNode.text(numberWithCommas(serviceUsePrice));
        // 총 합계
        totalPrice = installPrice + serviceUsePrice;
        totalPriceNode.text(numberWithCommas(totalPrice));
    }
    else if(selectId == 2){
        serviceUsePrice = 5900;
        // 서비스 사용 비용
        serviceUsePriceNode.text(numberWithCommas(serviceUsePrice));
        // 총 합계
        totalPrice = installPrice + serviceUsePrice;
        totalPriceNode.text(numberWithCommas(totalPrice));
    }
    else if(selectId == 3) {
        serviceUsePrice = 9900;
        // 서비스 사용 비용
        serviceUsePriceNode.text(numberWithCommas(serviceUsePrice));
        // 총 합계
        totalPrice = installPrice + serviceUsePrice;
        totalPriceNode.text(numberWithCommas(totalPrice));
    }
    else if(selectId == 4) {
        serviceUsePrice = 18900;
        // 서비스 사용 비용
        serviceUsePriceNode.text(numberWithCommas(serviceUsePrice));
        // 총 합계
        totalPrice = installPrice + serviceUsePrice;
        totalPriceNode.text(numberWithCommas(totalPrice));
    }
    
}

// 작성자 : 송유진
// 작성일 : 18.09.05
// 기능 : 연장 페이지(serviceExtend)에서 개월 수 선택 시 가격 출력
function selectExtend(selectObj) {
    var selectOption = parseInt(selectObj.value);
    extendTotalMoney(selectOption);
}

function extendTotalMoney(selectId) {
	let totalPriceNode = $('.total-money');
	if(selectId == 0){
        serviceUsePrice = 0;
    }
    else if(selectId == 1){
        //serviceUsePrice = 3900;
    	serviceUsePrice = 100;
    }
    else if(selectId == 2){
        serviceUsePrice = 5900;
    }
    else if(selectId == 3) {
        serviceUsePrice = 9900;
    }
    else if(selectId == 4) {
        serviceUsePrice = 18900;
    }
    // 서비스 사용 비용
//    serviceUsePriceNode.text(numberWithCommas(serviceUsePrice));
    // 총 합계
    totalPrice = serviceUsePrice;
    totalPriceNode.text(numberWithCommas(totalPrice));
}

//작성자 : 송유진
//작성일 : 18.09.06
//기능 : 포인트 충전 페이지(messagePay)에서 포인트 가격 선택 시 총 금액 변경
function pointTotalMoney(price, addPoint) {
	let totalPriceNode = $('.total-money');
	point = parseInt(addPoint);
	totalPrice = parseInt(price);
	totalPriceNode.text(numberWithCommas(totalPrice));
}




/* 결제 관련 기능 js */
//작성일 : 18068-180612 , 작성자:송유진
//기능 : 결제 버튼 눌렀을 때 ajax로 db에 접근하거나 결제창 띄워서 결제 수행
//동작 방법 : 결제페이지의 결제 완료 버튼 클릭 -> requestPay() : ajax를 통해 db에 결제정보 insert
//        -> 성공 시 openPay() : 아임포트 서버로 접근, 결제 정보 저장, ajax통해 db에 아임포트 결제정보 update
//			-> 성공 시 createUrl() : 최종적으로 결제 성공 하면 url db에 url 정보 생성 
//기타 기능 : 날짜 포맷 변경 함수, 개월 수 늘리는 함수


//페이지 로딩 후 가맹점 식별코드(아임포트에서 지정해준 코드) 로딩 시킴
$(document).ready(function(){
	
	IMP.init('imp28625615'); // 가맹점 식별코드
	
});

//결제 정보 db에 저장 후 ajax로 보냄
function requestPay(userId, pdName) { //유저아이디, 상품명
	// 넣을 값 정리
	var result = insertList(userId, pdName);
	for(key in result) {
		console.log("form[" + key + "] : " + result[key]);
	}
	
	// db에 저장
	jQuery.ajax({
		url: "servicePayInsertAjax.ajax", // db에 저장하는 프로세스로 json 전달
		type: 'POST',
		dataType: 'json',
		data: {
			// paymentId빼고 입력
			userId : result.userId,
			merchantUid : result.merchantUid,
			paymentStyle : result.paymentStyle,
			paymentName : result.paymentName,
			paymentMonth : result.paymentMonth,
			paymentType : result.paymentType,
			paymentAmount : result.paymentAmount,
			paymentUrlName : result.paymentUrlName,
			paymentDate : result.paymentDate
		}
	}).done(function(data) {
		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
		if ( data["status"] == "ok" ) {
			var msg = '성공';
			alert(msg);
			openPay(result); // 결제창 띄움, iamport에 정보 입력하는 단계
		} else {
			//[3] 아직 제대로 결제가 되지 않았습니다.
			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
			var msg = '아직 제대로 결제가 되지 않았습니다.';
		}
	});
}

// json값, db에 넣을 값 정리
function insertList(userId, pdName) {
	var formToJson = null;
	var result = new Object();
	var typeStr = "";
	
	if(pdName == '초대장') {
		formToJson = $('#service-pay-form').serializeObject();
		if(formToJson.paymentType == "1") {
			typeStr = "모임";
		}else if(formToJson.paymentType == "2") {
			typeStr = "발표회";
		}else if (formToJson.paymentType == "3") {
			typeStr = "종교행사";
		}
		result.paymentStyle = "신규";
		result.paymentName = "[" + typeStr + "]" + pdName + ":" + formToJson.paymentMonth + "개월"; // (종류+상품이름:개월수) 형식
		result.paymentMonth = formToJson.paymentMonth;
		result.paymentUrlName = formToJson.paymentUrlName; // url name
		
	}else if(pdName == '연장') {
		formToJson = $('#service-extend-form').serializeObject();
		if(formToJson.paymentType == '4') {
			typeStr = "연장";
		}
		result.paymentStyle = "연장";
		result.paymentName = "[" + typeStr + "]" + formToJson.paymentMonth + "개월"; // (종류+상품이름:개월수) 형식
		result.paymentMonth = formToJson.paymentMonth;
		result.paymentUrlName = formToJson.paymentUrlName; // url name
	}else if(pdName == '포인트') {
		formToJson = $('#message-pay-form').serializeObject();
		if(formToJson.paymentType == '5') {
			typeStr = '충전';
		}
		result.paymentStyle = "포인트";
		var pointStr = point + "";
		result.paymentName = "[" + typeStr + "]" + pdName + " : " + numberWithCommas(pointStr) + "p"; // (종류+상품이름:개월수) 형식
		result.paymentMonth = 0;
		result.paymentUrlName = "";

	}
	result.userId = userId; // user-id
	result.paymentType = formToJson.paymentType;
	result.paymentAmount = totalPrice; // price 전역변수 값
	result.paymentDate = getTimeStamp(new Date()); // 현재 날짜, 시간
	result.merchantUid = 'merchant_' + new Date().getTime(); // 상품 번호
	
	return result;
}

// pay 결제 창 함수
function openPay(result) {
	//IMP.request_pay 호출 전 상점의 데이터베이스에 주문 정보를 저장
	console.log("openPay()");
	IMP.request_pay({
//	    pg : 'html5_inicis', //ActiveX 결제창은 inicis를 사용
//	    pg : 'kakaopay',
	    pay_method : 'card', //card(신용카드), trans(실시간계좌이체), vbank(가상계좌), phone(휴대폰소액결제)
	    merchant_uid :result.merchantUid, //상점에서 관리하시는 고유 주문번호를 전달
	    name : result.paymentName,
	    amount : result.paymentAmount,
//	    buyer_email : 'uzini_@naver.com',
//	    buyer_name : '송유진',
	    buyer_tel : '010-2494-0759' //누락되면 이니시스 결제창에서 오류
//	    kakaoOpenApp : true //kakaopay
	}, function(rsp) {
	    if ( rsp.success ) {
	    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	    	jQuery.ajax({
//	    		url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
	    		url: "servicePayCompleteAjax.ajax",
	    		type: 'POST',
	    		dataType: 'json',
	    		data: {
	    		    pay_method : 'card', //card(신용카드), trans(실시간계좌이체), vbank(가상계좌), phone(휴대폰소액결제)
	    		    merchant_uid : rsp.merchant_uid, //상점에서 관리하시는 고유 주문번호를 전달
	    		    name : rsp.name,
	    		    amount : rsp.paid_amount,
	    		    paid_at : getTimeStamp(rsp.paid_at*1000),
//	    		    buyer_email : 'uzini_@naver.com',
//	    		    buyer_name : '송유진',
	    		    buyer_tel : '010-2494-0759', //누락되면 이니시스 결제창에서 오류
		    		imp_uid : rsp.imp_uid,
		    		status : rsp.status,
		    		pg_provider : rsp.pg_provider,
		    		recept_url : rsp.recept_url
		    		//기타 필요한 데이터가 있으면 추가 전달
	    		}
	    	}).done(function(data) {
	    		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
	    		if ( data["status"] == "ok" ) {
	    			
	    			// DB 접근해서 url 생성
	    			if(result.paymentStyle == "신규") {
	    				createUrl(result, rsp);
	    			}else if(result.paymentStyle == "연장") {
	    				// urlName의 기간 늘리기
	    				extendUrl(result);
	    				console.log("연장 완료");
	    			}else if(result.paymentStyle == "포인트") {
	    				// user의 포인트 늘리기
	    				addPoint(result);
	    				console.log("포인트 충전 완료");
	    			}
	    			var msg = '결제가 완료되었습니다.';
	    			console.log(msg);
	    			
	    			window.location.href = "/ex0417Builder"; 
	    			
	    			
	    		} else {
	    			//[3] 아직 제대로 결제가 되지 않았습니다.
	    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
	    			var msg = '아직 제대로 결제가 되지 않았습니다.';
	    		}
	    	});
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	        
	        alert(msg);
	    }
	});
}

// db 접근 ajax 함수
function createUrl(result, rsp) {
	jQuery.ajax({
		url: "urlInsertAjax.ajax",
		type: 'POST',
		dataType: 'json',
		data: {
		    user_id : result.userId,
		    url_name : result.paymentUrlName,
		    type : result.paymentType,
		    pay_date :  getTimeStamp(rsp.paid_at*1000),
		    last_date : dateAddDel(getTimeStamp(rsp.paid_at*1000), parseInt(result.paymentMonth), 'm')
		}
	}).done(function(data) {
		if(data["status"] == "ok"){
			alert("URL db삽입완료");
		}
	});
}

// url 기간 늘리는 함수
function extendUrl(result) {
	jQuery.ajax({
		url: "urlExtendAjax.ajax",
		type: "POST",
		dataType: 'json',
		data: {
			url_name : result.paymentUrlName,
			payment_month : result.paymentMonth
		}
	}).done(function(data) {
		if(data["status"] == "ok"){
			alert("URL 연장완료");
		}
	});
}

// user의 point 늘리는 함수
function addPoint(result) {
	jQuery.ajax({
		url: "addPointAjax.ajax",
		type: "POST",
		dataType: 'json',
		data: {
			user_id : result.userId,
			add_point : point
		}
	}).done(function(data) {
		if(data["status"] == "ok"){
			alert("URL 연장완료");
		}
	});
}

// json으로 변경시키는 코드
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
	
	
// 현재시간 YYYY-MM-DD hh:mm:ss 포맷으로 뽑는 함수
function getTimeStamp(date) {
	  var d = new Date(date);
	  var s =
	    leadingZeros(d.getFullYear(), 4) + '-' +
	    leadingZeros(d.getMonth() + 1, 2) + '-' +
	    leadingZeros(d.getDate(), 2) + ' ' +

	    leadingZeros(d.getHours(), 2) + ':' +
	    leadingZeros(d.getMinutes(), 2) + ':' +
	    leadingZeros(d.getSeconds(), 2);

	  return s;
	}

	function leadingZeros(n, digits) {
	  var zero = '';
	  n = n.toString();

	  if (n.length < digits) {
	    for (i = 0; i < digits - n.length; i++)
	      zero += '0';
	  }
	  return zero + n;
	}
	//[출처] [Javascript] 현재 시간 YYYY-MM-DD hh:mm:ss 포맷으로 뽑기 (Date 객체)|작성자 원더리


// 날짜의 년, 월, 일을 더하고 빼는 함수
function dateAddDel(sDate, nNum, type) {
    var yy = parseInt(sDate.substr(0, 4), 10);
    var mm = parseInt(sDate.substr(5, 2), 10);
    var dd = parseInt(sDate.substr(8, 2), 10);
    var time = sDate.substr(11); // String
    
    
    if (type == "d") {
        d = new Date(yy, mm - 1, dd + nNum);
    }
    else if (type == "m") {
        d = new Date(yy, mm - 1 + nNum, dd);
    }
    else if (type == "y") {
        d = new Date(yy + nNum, mm - 1, dd);
    }
 
    yy = d.getFullYear();
    mm = d.getMonth() + 1; mm = (mm < 10) ? '0' + mm : mm;
    dd = d.getDate(); dd = (dd < 10) ? '0' + dd : dd;
 
    return '' + yy + '-' +  mm  + '-' + dd + " " + time;
}
