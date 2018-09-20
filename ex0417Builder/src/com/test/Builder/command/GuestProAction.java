package com.test.Builder.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dao.ContentGuestDBBean;
import com.test.Builder.dto.Content;
import com.test.Builder.dto.ContentGuest;

public class GuestProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		/*한글처리*/
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=utf-8");

		
		int urlId = Integer.parseInt(request.getParameter("url-id"));
		String guestName = request.getParameter("guest-name");
		String guestPw = request.getParameter("guest-pw");
		String guestText = request.getParameter("guest-text");
		
		ContentGuest contentGuest = new ContentGuest(urlId, guestName, guestPw, guestText);
		
		System.out.println(contentGuest.toString());
		
		// DB 연동 - 넘어온 정보를 테이블의 레코드로 추가
		ContentGuestDBBean ContentGuestProcess = ContentGuestDBBean.getInstance();
		int cnt = ContentGuestProcess.insert(contentGuest);
		
		// urlId 에 맞는 domainName 찾아서 넘기기
		ContentEditDBBean ContentProcess = ContentEditDBBean.getInstance();
		Content content = ContentProcess.selectOne(urlId);
		String domainName = content.getUrlName();
		
		request.setAttribute("domainName", domainName);
		
		return "guestPro.jsp";
	}

}
