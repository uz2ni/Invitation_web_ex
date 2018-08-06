// html 로드 완료 후 실행
$(document).ready(function(){
	commentInit();
});
  
// 체크된 urlid 받아와서 제목 value값 변경
function checkUrl(urlId, title, url) {
	// url 변경하면 미리보기 title 내용 변경
	var inputTitle = $("#content-title");
	inputTitle.val(title); // title 내용 변경
	// url 미리보기 내용 변경
	var inputUrl = $("#content-url");
	inputUrl.val("http://www.invitedu.com/"+url); // url 내용 변경
	
	// input에 urlId 삽입
	var inputUrlId = $("#url-id");
	inputUrlId.val(urlId);
}

// 작성일 : 18.07.23
// 작성자 : 송유진
// 함수 기능 : 기존 comment select
function commentInit() {
	let wraps = $(".look-comment-wrap"); // div list
	for(var i=0; i<wraps.length; i++) {
		let idStr = $(wraps[i]).attr("id");
		let lookId = idStr.split("-")[1];
		commentSelect(lookId);
	}
}

function commentSelect(lookId) {
	jQuery.ajax({
		url: "lookListCommentSelectAjax.ajax",
		type: 'POST',
		dataType: 'json',
		data: {
		    look_id : lookId
		}
	}).done(function(data) {
		console.log(data["cmts"]);
		$("#look-" + lookId).empty(); //select 전 초기화시키기
		// Select append
		for(var i=0; i<data["cmts"].length; i++) {
			$("#look-" + lookId).append(
					"<div id='look-" + lookId + "-comment-" + data["cmts"][i]["lookCmtId"] + "' class='d-flex py-1'>" +
						"<div class='col-2 p-0'>" +
							"<div class='profile'>" +
							"</div>" +
						"</div>" +
						"<div class='comment-bg col-10' style='border-radius:10px;'>" +
							"<span style='font-weight:bold; color:#2d62cd;'>" +
							data["cmts"][i]["lookCmtUserName"] +
							"</span>" +
							"<div>" +
							data["cmts"][i]["lookCmtComment"] +
							"</div>" +
						"</div>" +
					"</div>");
		}
	});
}

// 함수 기능 : comment insert
function commentInsert(lookId) {
	let lookCmtComment = $("#look-cmt-comment-"+lookId).val();
	console.log(lookCmtComment);
	console.log(lookId);
	$("#look-cmt-comment-"+lookId).val(""); // 값 초기화
	
	jQuery.ajax({
		url: "lookListCommentAjax.ajax",
		type: 'POST',
		dataType: 'json',
		data: {
		    look_id : lookId,
		    look_cmt_comment : lookCmtComment
		}
	}).done(function(data) {
		if(data["status"] == 'ok') {
			commentSelect(lookId);			
		}
	});
}