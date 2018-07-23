package com.test.Builder.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dto.Content;

public class ContentEditFormAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		int urlId = Integer.parseInt(request.getParameter("urlId"));
		
		ContentEditDBBean ContentProcess = ContentEditDBBean.getInstance();
		Content content = ContentProcess.selectOne(urlId);
		
//		HashMap<String, String> resultMap = new HashMap<String, String>();
		String gson = new Gson().toJson(content);
		
		System.out.println("gson:"+gson);
		
		return gson;
	}

}
