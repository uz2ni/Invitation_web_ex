package com.test.Builder.command;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dao.PaymentDBBean;
import com.test.Builder.dto.Content;

public class UrlInsertAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		Content content = new Content();
		
		content.setUserId(Integer.parseInt(request.getParameter("user_id")));
		content.setUrlName(request.getParameter("url_name"));
		content.setType(Integer.parseInt(request.getParameter("type")));
		content.setPayDate(request.getParameter("pay_date"));
		content.setLastDate(request.getParameter("last_date"));

		System.out.println(content.toString());
		
		// DB 연동
		ContentEditDBBean contentProcess = ContentEditDBBean.getInstance();
		int cnt = contentProcess.insert(content);
		System.out.println("cnt:"+cnt);
		
		HashMap<String, String> resultMap = new HashMap<String, String>();
		resultMap.put("status", "ok");		
		
        //DTO 타입의 어레이리스트를 json 형태로 바꿔주는 구문(라이브러리 필수, zip->jar 확장자명 꼭 확인)
        String gson = new Gson().toJson(resultMap);

		return gson;

	}

}
