package com.test.Builder.command;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;
import com.test.Builder.dao.ContentAttendDBBean;
import com.test.Builder.dto.ContentAttend;

public class UrlAttendAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		int urlId = Integer.parseInt(request.getParameter("url_id"));
		String urlAttendName = request.getParameter("url_attend_name");
		String urlAttendPassword = request.getParameter("url_attend_password");
		int urlAttendChk = Integer.parseInt(request.getParameter("url_attend_chk"));
		String urlAttendContent = request.getParameter("url_attend_content");
		
		ContentAttend contentAttend = new ContentAttend(urlId, urlAttendName, urlAttendPassword, urlAttendChk, urlAttendContent);
		
		// DB 연동
		ContentAttendDBBean contentAttendProcess = ContentAttendDBBean.getInstance();
		contentAttendProcess.insert(contentAttend);
		
		HashMap<String, String> resultMap = new HashMap<String, String>();
		resultMap.put("status", "success");		
		
        //DTO 타입의 어레이리스트를 json 형태로 바꿔주는 구문(라이브러리 필수, zip->jar 확장자명 꼭 확인)
        String gson = new Gson().toJson(resultMap);
        
        System.out.println(contentAttend.toString());

		return gson;
	}

}
