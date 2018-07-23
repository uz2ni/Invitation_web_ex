
  $(document).ready(function(){

	  var app = new Vue({
			
	      el: '.edit-block-content',
 	      data: {
	    	  topTitle: "타이틀",
	    	  infoTime: "시간",
	    	  topFontColorWhite: "화이트",
	    	  topFontColorPink: "분홍",
    		  topFontColorYellow: "노랑",
    		  topFontColorGreen: "초록",
    		  topFontColorBlue: "파랑",
    		  topFontColorBlack: "검정"
	      },
	      
	  	  methods: {
		     typing(event) {
		  			const iframe = $('#preview_iframe');
		  			/* iframe.contents().find('.pre-topTitle').text("{{ message }}"); */
		  			var inputName = event.target.attributes.name.value;
		  			/* event.target.className */

		  			/* inputName 변환 */
		  			var position = new Array();
		  			var pos = inputName.indexOf("-");

		  			while(pos > -1){
		  			    position.push(pos);
		  			    pos =  inputName.indexOf("-", pos + 1);
		  			}
		  			// '-' 문자 다음 글자 대문자로 변환
		  			var upperIndex;
		  			var ch;
		  			var convertName = inputName;
 
 		  			for (var i=0; i<position.length; i++) {
		  				upperIndex = position[i]+1;
		  				ch = inputName.charAt(upperIndex).toUpperCase();
		  				convertName = convertName.substring(0,upperIndex)+ ch +convertName.substring(upperIndex+1);
		  			}
		  			// '-' 제거
		  			convertName = convertName.replace(/-/g,'');
		  			/* 끝 */
 		  			this.convertName = event.target.value;
		  			 var findClass = ".pre-" + convertName;
		  			
		  			iframe.contents().find(findClass).text(this.convertName);
 
		  			
		  	  }
	  	  }
 	  })
  });