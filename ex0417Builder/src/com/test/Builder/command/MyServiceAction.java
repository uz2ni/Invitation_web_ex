package com.test.Builder.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dto.Content;
import com.test.Builder.dto.User;

public class MyServiceAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		if(request.getSession().getAttribute("user") == null) { // 로그인 세션 없을 경우
			return "loginForm.jsp";
		}else {
			User user = (User) request.getSession().getAttribute("user");
			int userId = user.getUserId();

			ContentEditDBBean contentProcess = ContentEditDBBean.getInstance();
			int cnt = contentProcess.selectCount(user.getUserId());
			List<Content> list = contentProcess.selectList(userId);
			
			request.setAttribute("cnt", cnt);
			request.setAttribute("user", user);
			request.setAttribute("contents", list);
			
			return "myService.jsp";			
		}
	}
}
