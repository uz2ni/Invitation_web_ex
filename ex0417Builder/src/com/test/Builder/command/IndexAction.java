package com.test.Builder.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.LookDBBean;
import com.test.Builder.dto.Look;

public class IndexAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		// DB 연동
		LookDBBean lookProcess = LookDBBean.getInstance();
		List<Look> list = lookProcess.selectList();
		
		request.setAttribute("looks", list);
		
		return "index.jsp";
	}

}
