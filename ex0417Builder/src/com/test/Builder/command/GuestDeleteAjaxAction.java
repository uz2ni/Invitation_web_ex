package com.test.Builder.command;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;
import com.test.Builder.dao.ContentGuestDBBean;

public class GuestDeleteAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int contentGuestId = Integer.parseInt(request.getParameter("url_guest_id"));
		String inputPw = request.getParameter("url_guest_pw");
		
		// pw 확인
		ContentGuestDBBean contentGuestProcess = ContentGuestDBBean.getInstance();
		String contentGuestPw = contentGuestProcess.selectPw(contentGuestId);
		
		// 검사
		HashMap<String, String> resultMap = new HashMap<String, String>();
		if(contentGuestPw.equals(inputPw)) {
			// pw 검사 완료, 삭제 실행
			contentGuestProcess.delete(contentGuestId);
			resultMap.put("status", "success");
		}else {
			resultMap.put("status", "fail");
		}
		
        //DTO 타입의 어레이리스트를 json 형태로 바꿔주는 구문(라이브러리 필수, zip->jar 확장자명 꼭 확인)
        String gson = new Gson().toJson(resultMap);

		return gson;
	}

}
