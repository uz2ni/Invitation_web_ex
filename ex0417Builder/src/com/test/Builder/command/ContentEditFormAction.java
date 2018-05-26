package com.test.Builder.command;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dto.Content;

public class ContentEditFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		//DB 연동 - 받아온 url id 값을 selectOne 함수로 넘겨서 레코드를 가져온다.
		int urlId = 1; // 1이라고 가정
		ContentEditDBBean ContentProcess = ContentEditDBBean.getInstance();
		Content content = ContentProcess.selectOne(urlId);
		
		System.out.println("date:"+content.getInfoDateStart());
		System.out.println("topfontalign:"+content.getTopFontAlign());
		
		// type값에 따라 content_type 값 설정
		if (content.getType() == 1) {
			request.setAttribute("content_type", "모임");
		}else if (content.getType() == 2) {
			request.setAttribute("content_type", "발표회");
		}else if (content.getType() == 3) {
			request.setAttribute("content_type", "종교 행사");
		}
//		System.out.println(content.toString());
		
		// infoDateStart, infoDateEnd 날짜 문자열 잘라서 보내기
//		String infoDateStart = content.getInfoDateStart();
//		String infoDateEnd = content.getInfoDateEnd();
		
		String uploadPath =	request.getSession().getServletContext().getRealPath("/img/content/content_img");
		request.setAttribute("uploadPath", uploadPath);
		System.out.println("realPath:"+uploadPath);
		Set pathSet = request.getSession().getServletContext().getResourcePaths("/");
		System.out.println("contextPath:"+ pathSet);
		
		request.setAttribute("content", content);
		return "/contentEditForm.jsp";
	}

}
