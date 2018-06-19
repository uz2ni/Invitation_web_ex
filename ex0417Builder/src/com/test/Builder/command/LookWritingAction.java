package com.test.Builder.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dto.Content;
import com.test.Builder.dto.User;

public class LookWritingAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		// login한 User 세션 가져옴
		User user = (User) request.getSession().getAttribute("user");
		int userId = user.getUserId();
		
		// DB 연동
		ContentEditDBBean contentProcess = ContentEditDBBean.getInstance();
		List<Content> list = contentProcess.selectList(userId);
		
		request.setAttribute("contents", list);
		request.setAttribute("userId", userId);

		
		return "lookWriting.jsp";
	}

}
