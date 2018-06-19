package com.test.Builder.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.LookDBBean;
import com.test.Builder.dto.Look;

public class LookListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		// DB 연동
		LookDBBean lookProcess = LookDBBean.getInstance();
		List<Look> list = lookProcess.selectList();
		//List<String[]> tagList = null;
		/*
		for(Object obj : list) {
			Look look = (Look)obj;
			String tags = look.getLookHashTag();
			// split
			String[] tag = tags.split(",");
			System.out.println("tags:"+tag);
			tagList.add(tag);

		}
		*/
		
		request.setAttribute("looks", list);
//		request.setAttribute("tags", tagList);
		
		return "lookList.jsp";
	}

}
