package com.test.Builder.command;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.LookDBBean;
import com.test.Builder.dto.Look;

public class LookListSearchAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		// 한글 처리
		try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
       response.setContentType("text/html;charset=UTF-8");
       
       String query = request.getParameter("query");
       System.out.println("query:"+query);
		// DB 연동
		LookDBBean lookProcess = LookDBBean.getInstance();
		List<Look> list = lookProcess.search(query);
		
		if(list.get(0).getLookId() == -1) { // 검색 결과 없으면
			request.setAttribute("select", -1);
		}
		
		request.setAttribute("looks", list);
		
		return "lookList.jsp";
	}

}
