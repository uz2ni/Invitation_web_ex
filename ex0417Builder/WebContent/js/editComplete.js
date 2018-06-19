/*
$(document).ready(function(){
	
	// // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('678d7cc2488b65b4cbdae9d13dd41a89');
	
});

function sendLink() {
	// // 카카오링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
    Kakao.Link.createDefaultButton({
      container: '#kakao-link-btn',
      objectType: 'location',
      address: '경기 성남시 분당구 판교역로 235 에이치스퀘어 N동 8층',
      addressTitle: '카카오 판교오피스 카페톡',
      content: {
        title: '신메뉴 출시♥︎ 체리블라썸라떼',
        description: '이번 주는 체리블라썸라떼 1+1',
        imageUrl: 'http://mud-kage.kakao.co.kr/dn/bSbH9w/btqgegaEDfW/vD9KKV0hEintg6bZT4v4WK/kakaolink40_original.png',
        link: {
          mobileWebUrl: 'http://localhost:8080/ex0417Builder/skin/skin1/index.html',
          webUrl: 'http://localhost:8080/ex0417Builder/skin/skin1/index.html'
        }
      },
      social: {
        likeCount: 0,
        commentCount: 0,
        sharedCount: 0
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

*/
