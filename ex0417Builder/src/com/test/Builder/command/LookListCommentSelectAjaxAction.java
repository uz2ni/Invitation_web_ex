package com.test.Builder.command;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;
import com.test.Builder.dao.LookCmtDBBean;
import com.test.Builder.dto.LookCmt;

public class LookListCommentSelectAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int lookId = Integer.parseInt(request.getParameter("look_id"));
		
		// DB 연동
		LookCmtDBBean lookCmtProcess = LookCmtDBBean.getInstance();
		List<LookCmt> lookCmts = lookCmtProcess.selectList(lookId);

		HashMap<String, List<LookCmt>> resultMap = new HashMap<String, List<LookCmt>>();
		resultMap.put("cmts", lookCmts);			
       
        String gson = new Gson().toJson(resultMap);

		return gson;
	}

}
