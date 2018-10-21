                  <!-- 하위 탭 6-2 방명록 -->
                  <div id="tabs-6-2">
                    <div class="d-flex justify-content-end align-items-center mb-3">
                      <a class="tooltips">
	                    <input class="onoff-box commentChk ml-2" type="checkbox" id="toggle13" checked="checked" name="comment-chk" value="${content.commentChk}"
							onclick="chkFuc('comment-chk', 'comment-chk-div')" ${content.commentChk == 1 ? 'checked' : ""}>
						  <label class="onoff-button" for="toggle13">
						  	  <div class="onoff"></div>
							  <span class="onoff-tooltip">방명록 사용 ON/OFF</span>
						  </label>
					  </a>
                    </div>
                  </div>
                  
                  
                  
                  
                  
                  
                  
<div id="tabs-6-2">
 <div class="d-flex justify-content-end align-items-center mb-3">
   <a class="tooltips">
      <input class="onoff-box commentChk ml-2" type="checkbox" id="toggle13" checked="checked" name="comment-chk" value="${content.commentChk}"
          onclick="chkFuc('comment-chk', 'comment-chk-div')" ${content.commentChk == 1 ? 'checked' : ""}>
        <label class="onoff-button" for="toggle13">
              <div class="onoff"></div>
            <span class="onoff-tooltip">방명록 사용 ON/OFF</span>
        </label>
    </a>
 </div>
 <div class="comment-chk-div">
        <!-- 도움말 -->
        <p class="sub_txt tip mt-2" style="font-size:14px; color:#656565;">
            <i class="fas fa-info-circle fa-lg mx-1" style="color: #f0771f;"></i>
            방명록을 쓸 수 있는 버튼과 방명록 내용이 추가 됩니다. <br>
            <i class="fas fa-info-circle fa-lg mx-1" style="opacity:0;"></i>
            ( 성함 / 비밀번호 4자리 / 내용 )<br>
            <i class="fas fa-info-circle fa-lg mx-1" style="color: #f0771f;"></i>
            방명록은 초대장에서 가입 없이 축하 글을 남길 수 있습니다.
        </p>
        <img src="img/content/edit_img/page_img/skin_comment_ex.png" width="200px;" height="320px;" style="border:1px solid rgb(217,217,217);">
       
   </div>
</div>