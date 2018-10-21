package com.test.Builder.command;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.UserDBBean;
import com.test.Builder.dto.User;

public class LoginFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	    // 쿠키값 가져오기
	    Cookie[] cookies = request.getCookies() ;
	     
	    // 쿠키가 존재한다면 로그인 폼에 아이디, 비밀번호 출력
	    if(cookies != null){
	         
	        for(int i=0; i < cookies.length; i++){
	            Cookie c = cookies[i] ;
	             
	            // 저장된 쿠키 이름을 가져온다
	            String cName = c.getName();

	            if(cName.equals("userId")) {
		            // 쿠키값을 가져온다
		            String cValue = c.getValue();
	            	
		            int userId = Integer.parseInt(cValue);
	            	
		            // db 접근
	            	UserDBBean userProcess = UserDBBean.getInstance();
	            	User user = userProcess.getUserId(userId);
	            	System.out.println(user.toString());
	            	request.setAttribute("userEmail", user.getUserEmail());
	            	request.setAttribute("userPw", user.getUserPw());
	            	request.setAttribute("userSave", "yes");
	            }
	             
	             
	        }
	    }else {
		    request.setAttribute("userEmail", "");
	    	request.setAttribute("userPw", "");
	    	request.setAttribute("userSave", "no");
	    }
		return "loginForm.jsp";
	}

}
