package com.test.Builder.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dao.LookDBBean;
import com.test.Builder.dto.Content;
import com.test.Builder.dto.Look;
import com.test.Builder.dto.LookCmt;
import com.test.Builder.dto.User;

public class LookListCommentAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		// 한글 처리
		try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
       response.setContentType("text/html;charset=UTF-8");
       
        // 댓글다는 user의 id
        User user = (User) request.getSession().getAttribute("user");
		int userId = user.getUserId();

		// 게시글 id와 댓글 내용 가져옴
		int lookId = Integer.parseInt(request.getParameter("lookId"));
		String lookCmtComment = request.getParameter("look-cmt-comment");
		
		// lookCmt 객체 만들기
		LookCmt lookCmt = new LookCmt();
		lookCmt.setLookId(lookId);
		lookCmt.setLookCmtComment(lookCmtComment);
		
		// lookCmt DB 삽입
//		LookCmtDBBean lookCmtProcess = LookCmtDBBean.getInstance();
//		int cnt = lookCmtProcess.insert(lookCmt);
		
		System.out.println("lookCmt:"+lookCmt.toString());
		
		
		return "lookList.jsp";		
	}

}
