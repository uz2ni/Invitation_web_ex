package com.test.Builder.command;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dao.LookDBBean;
import com.test.Builder.dto.Content;
import com.test.Builder.dto.Look;

public class LookWritingProAction implements CommandAction {

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

		
		int userId = Integer.parseInt(request.getParameter("user-id"));
		int urlId = Integer.parseInt(request.getParameter("url-id"));
		String title = request.getParameter("title");
		String tags = request.getParameter("hidden-tags");
		
		ContentEditDBBean contentProcess = ContentEditDBBean.getInstance();
		Content content = contentProcess.selectOne(urlId);
		
		// look 객체 만들기
		Look look = new Look();
		look.setUserId(userId);
		look.setUrlId(urlId);
		look.setLookTitle(title);
		look.setLookHashTag(tags);
		look.setLookUrlName(content.getUrlName());
		look.setLookImg(content.getTopImgFile());
		
		System.out.println("look"+look.toString());
		
		// DB 연동
		LookDBBean lookProcess = LookDBBean.getInstance();
		int cnt = lookProcess.insert(look);

		
		return "lookList.jsp";
	}

}
