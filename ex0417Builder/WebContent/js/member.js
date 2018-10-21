/***** join *****/

var timer;
// timer
function timerAction(time){
	var count = document.getElementById('timer-count');
	timer = setInterval(timeDec,1000);

	function timeDec(){
		if(time > 0){
			time--;
			count.style.color = "green";
			count.innerHTML = toHourMinSec(time);
		}
		else{
			// 타이머가 끝났을 때 원하는 동작
			clearInterval(timer);
			count.style.color = "red";
			count.innerHTML = "인증 시간이 만료되었습니다. 이메일 인증을 다시 받으세요."
			
			// 버튼, input 막힘
			$("input[name='certify-num']").attr('readonly', true);
			$("button[name='certify-num-btn']").html('인증 실패');
			$("button[name='certify-num-btn']").attr('disabled', true);

			return false;
		}
	}
	
	function toHourMinSec(t) { 
		var hour;
		var min;
		var sec;

		// 정수로부터 남은 시, 분, 초 단위 계산
		hour = Math.floor(t / 3600);
		min = Math.floor( (t-(hour*3600)) / 60 );
		sec = t - (hour*3600) - (min*60);

		// mm:ss 형태를 유지하기 위해 한자리 수일 때 0 추가
		if(min < 10)
			min = "0" + min;
		if(sec < 10)
			sec = "0" + sec;

		return(min + ":" + sec);
	}
}

// 이메일 인증 ajax
function emailCheck(){
	
	// 이메일 유효성
	var EmailTest = RegExp(/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/); // 이메일 정규식
	if ($('#user-email').val() == '') {
		alert("이메일 주소를 입력하세요");
		$('#user-email').focus();
	}else if (!EmailTest.test($('#user-email').val())) {
		alert("이메일 주소가 유효하지 않습니다");
		$('#user-email').focus();
	}else {
		 // email 정상 입력했을 경우
		 alert('email 정상 입력');
		 
		 // 버튼, 인풋 초기화
		 $("input[name='certify-num']").attr('readonly', false);
		$("button[name='certify-num-btn']").html('확인');
		$("button[name='certify-num-btn']").attr('disabled', false);

		 // 타이머 동작
		 timerAction(30);

		 var email = $('#user-email').val();
	 	jQuery.ajax({
			url: "emailCheckAjax.ajax",
			type: 'POST',
			dataType: 'json',
			data: {
			   input_email : email
			}
		}).done(function(data) {
			if(data["status"] == 'success') {
				// id값 받아서 버튼에 삽입
				var certifyId = data["certify_id"];
				$("button[name='certify-num-btn']").attr('onclick', 'certifyEmail(' + certifyId + ')');
			}else {
				alert('이메일 전송 실패');
			}
		});
	}

}	

// 인증번호 확인
function certifyEmail(certifyId) {
	var certifyNum = $("input[name='certify-num']").val();
	if(certifyNum == '') {
		alert('인증번호를 입력하세요.');
		certifyNum.focus();
	}else { // 인증번호 값이 있을 경우
	 	jQuery.ajax({
			url: "emailCheckCertifyAjax.ajax",
			type: 'POST',
			dataType: 'json',
			data: {
			   certify_id : certifyId,
			   input_num : certifyNum
			}
		}).done(function(data) {
			if(data["status"] == 'success') {
				alert("인증번호 확인 완료");
				// timer 멈춤
				clearInterval(timer);
				$("#timer-count").text('');
				// input, button 비활성화
				$("input[name='user-email']").attr('readonly', true);
				$("input[name='certify-num']").attr('readonly', true);
				$("button[name='certify-num-btn']").html('인증 완료');
				$("button[name='certify-num-btn']").attr('disabled', true);
				$("#overlap").attr('disabled', true);
			}else if(data["status"] == 'fail') {
				alert("인증번호 확인 실패");
				$("input[name='certify-num']").focus();
			}
		});
		
	}
}

//비밀번호 길이제한
function toChekpwLength() {
	
	var pw = document.getElementById("Pw").value;
	
	if (pw.length > 14) {
		document.getElementById('pwsame').style.color = "red";
		document.getElementById('pwsame').innerHTML = '비밀번호는 14자 이하로 설정해 주세요.';
		var tempt = pw.substring(0,14);
		$('#Pw').val(tempt);
		pw.focus();
		return false;
	}
	else if((pw.length >= 1) && (pw.length < 9)){
		document.getElementById('pwsame').style.color = "red";
		document.getElementById('pwsame').innerHTML = '비밀번호는 9자 이상으로 설정해야 합니다.';
		pw.focus();
		return false;
	}
	else{
		document.getElementById('pwsame').innerHTML = '';
		return true;
	}
}

//비밀번호 확인 
function toCheckPw() {
	var pw = document.getElementById("Pw").value;
	var pwck = document.getElementById("PwCheck").value;
	
	if (pw != pwck) {
		document.getElementById('pwsame').innerHTML = '비밀번호가 다릅니다.';
		document.getElementById('pwsame').style.color = "red";
		pwck.focus();
		return false;
	}
	else {
		if(pw.length == 0){
			document.getElementById('pwsame').innerHTML = '';
			return false;
		}
		document.getElementById('pwsame').innerHTML = '비밀번호가 일치합니다.';
		document.getElementById('pwsame').style.color = "blue";
		pwck.focus();
		return true;
	}
}

// 유효성 검사 후 제출
function send(){
	
	// 이메일 유효성
	var EmailTest = RegExp(/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/);  // 이메일 정규식
	if ($('#user-email').val() == '') {
		alert("이메일 주소를 입력하세요");
		$('#user-email').focus();
		return false;
	}
	if (!EmailTest.test($('#user-email').val())) {
		alert("이메일 주소가 유효하지 않습니다");
		$('#user-email').focus();
		return false;
	}

	// 비번 유효성
	if($('#Pw').val() == ''){
		alert("비밀번호를 입력하세요");
		$('#Pw').focus();
		return false;
	}
	else if($('#Pw').val().length < 9){
		alert("비밀번호는 9자 이상으로 설정해주세요");
		$('#Pw').focus();
		return false;
	}
	
	// 비번확인 유효성
	if($('#PwCheck').val() == ''){
		alert("비빌번호 확인을 입력해주세요");
		$('#PwCheck').focus();
		return false;
	}
	else if($('#PwCheck').val() != $('#Pw').val()){
		alert("비밀번호가 일치하지 않습니다");
		$('#PwCheck').focus();
		return false;
	}
	
	// 이름 유효성
	var NameTest = RegExp(/^[가-힣]+$/);
	if($('#inputname').val() == ''){
		alert("이름을 입력해주세요");
		$('#inputname').focus();
		return false;
	}
	else if(!NameTest.test($('#inputname').val())){
		alert("이름이 올바르지 않습니다");
		$('#inputname').focus();
		return false;
	}
	
	// 핸드폰번호 유효성
	if($('#inputtel').val() == ''){
		alert("핸드폰번호를 입력하세요");
		$('#inputtel').focus();
		return false;
	}
	else if($('#inputtel').val().length < 10){
		alert("핸드폰번호가 올바르지 않습니다 ");
		$('#inputtel').focus();
		return false;
	}
		
	// 약관 동의 유효성
	var req1 = $('#req1');
	var req2 = $('#req2');
	
	var num = 0;
	
	if((req1).is(":checked") == true) {
		if((req2).is(":checked") == true) {
			$('#user-form').attr('action','joinPro.do').submit();
		} else {
			$('#checkok').text('개인정보처리방침에 동의하셔야 합니다.');
			req2.focus();
		}
	} else {
		$('#checkok').text('서비스 이용약관에 동의하셔야 합니다.');
		req1.focus();
	}
	
}

function tocheckpw() {
	//비밀번호 중복확인 2018-05-27 작성자 : 박민정
	var pw = document.getElementById("Pw").value;
	var pwck = document.getElementById("PwCheck").value;
	if (pw != pwck) {
		document.getElementById('pwsame').innerHTML = '비밀번호가 틀렸습니다. 다시 입력해 주세요';
		return false;
	}
	//비밀번호 길이제한
	if (pw.length >= 14 && pw.length <= 7) {
		document.getElementById('pwsame').innerHTML = '숫자 7자 이상 ~ 14자 이내로 다시 입력해 주세요';
		return true;
	}
}

//이용약관동의 2018-05-27 작성자 : 박민정
function chk() {
	var req1 = $('#req1');
	var req2 = $('#req2');
	
	var num = 0;
	
	if((req1).is(":checked") == true) {
		if((req2).is(":checked") == true) {
			$('#user-form').attr('action','joinPro.do').submit();
		} else {
			$('#checkok').text('개인정보처리방침에 동의하셔야 합니다.');
			req2.focus();
		}
	} else {
		$('#checkok').text('서비스 이용약관에 동의하셔야 합니다.');
		req1.focus();
	}
}		



/***** login *****/