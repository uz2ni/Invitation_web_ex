package com.test.Builder.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.LookCmtDBBean;
import com.test.Builder.dao.LookDBBean;
import com.test.Builder.dto.Look;
import com.test.Builder.dto.LookCmt;

public class LookListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		// DB 연동
		LookDBBean lookProcess = LookDBBean.getInstance();
		List<Look> looks = lookProcess.selectList();
		
		request.setAttribute("looks", looks);
		
		return "lookList.jsp";
	}

}
