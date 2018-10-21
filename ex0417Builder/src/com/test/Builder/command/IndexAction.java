package com.test.Builder.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dao.LookDBBean;
import com.test.Builder.dto.Content;
import com.test.Builder.dto.Look;
import com.test.Builder.dto.User;

public class IndexAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		if(request.getSession().getAttribute("user") != null) {
			User user = (User) request.getSession().getAttribute("user");
			ContentEditDBBean contentEditProcess = ContentEditDBBean.getInstance();
			List<Content> contents = contentEditProcess.selectList(user.getUserId());
			request.setAttribute("contents", contents);
		}else {
			request.setAttribute("contents", "no");
		}
		
		// DB 연동
		LookDBBean lookProcess = LookDBBean.getInstance();
		List<Look> list = lookProcess.selectList();
		
		request.setAttribute("looks", list);
		
		return "index.jsp";
	}

}
