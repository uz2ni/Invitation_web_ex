package com.test.Builder.command;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;
import com.test.Builder.dao.LookCmtDBBean;
import com.test.Builder.dao.PaymentDBBean;
import com.test.Builder.dto.LookCmt;
import com.test.Builder.dto.User;

public class LookListCommentAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		
		// login한 User 세션 가져옴
		User user = (User) request.getSession().getAttribute("user");
		System.out.println("user:" +user);
		int lookCmtUserId = user.getUserId();
		String lookCmtUserName = user.getUserName();
		
		System.out.println("userid:"+lookCmtUserId);

		// LookCmt 객체 생성
		LookCmt lookCmt = new LookCmt();
		
		lookCmt.setLookCmtUserId(lookCmtUserId);
		lookCmt.setLookCmtUserName(lookCmtUserName);
		lookCmt.setLookId(Integer.parseInt(request.getParameter("look_id")));
		lookCmt.setLookCmtComment(request.getParameter("look_cmt_comment"));
		
		// DB 연동
		LookCmtDBBean lookCmtProcess = LookCmtDBBean.getInstance();
		lookCmtProcess.insert(lookCmt);

		HashMap<String, String> resultMap = new HashMap<String, String>();
		resultMap.put("status", "ok");			
       
        String gson = new Gson().toJson(resultMap);

		return gson;
	}

}
