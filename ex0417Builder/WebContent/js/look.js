// 체크된 urlid 받아와서 제목 value값 변경
function checkUrl(urlId, title) {
	// url 변경하면 미리보기 title 내용 변경
	var inputTitle = $("#content-title");
	inputTitle.val(title); // title 내용 변경
	
	// input에 urlId 삽입
	var inputUrlId = $("#url-id");
	inputUrlId.val(urlId);
}
