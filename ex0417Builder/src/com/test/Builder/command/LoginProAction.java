package com.test.Builder.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.UserDBBean;
import com.test.Builder.dto.User;

public class LoginProAction implements CommandAction {

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
       
       String email = request.getParameter("user-email");
       String pw = request.getParameter("user-pw");
       // DB에서 아이디, 비밀번호 확인
       UserDBBean userProcess = UserDBBean.getInstance();
       int chk = userProcess.loginCheck(email, pw);
       
       // URL 및 로그인 관련 메세지
       String msg = "";
       String url = "";
       
       if(chk == 1) { // 로그인 성공
    	   User user = userProcess.getUser(email); // 로그인 성공 시 User 얻어옴
    	   HttpSession session = request.getSession();
    	   session.setAttribute("user",user);
    	   request.setAttribute("name", user.getUserName());
    	   msg = "로그인 성공, email:"+email;
    	   url = "index.jsp";
       }else if(chk == 0) { // 비밀번호가 틀릴 경우
    	   	request.setAttribute("email", email);
    	   	msg = "비밀번호를 다시 입력하세요.";
    	   	url = "loginForm.jsp";
       }else { // 아이디가 틀릴 경우
    	   msg = "아이디가 존재하지 않습니다.";
    	   url = "loginForm.jsp";
       }
       
       request.setAttribute("msg", msg);
       return url;
	}
}
