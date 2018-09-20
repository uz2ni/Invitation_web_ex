package com.test.Builder.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.UserDBBean;
import com.test.Builder.dto.User;

public class MyInfoUpdateAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=utf-8");

		UserDBBean userProcess = UserDBBean.getInstance();
		int userId = Integer.parseInt(request.getParameter("userId"));
		User user = userProcess.getUserId(userId);
		
		String inputPw = request.getParameter("now-pw");
		System.out.println("userPw:" + user.getUserPw());
		System.out.println("inputPw:" + inputPw);
		
		// 현재 비밀번호 맞은 경우
		if(user.getUserPw().equals(inputPw)) {
			String userPw = (request.getParameter("new-pw")=="" ? user.getUserPw() : request.getParameter("new-pw"));
			String userPhone = request.getParameter("phone");
			String bankName = request.getParameter("bank-name");
			String accountName = request.getParameter("account-name");
			String accountNum = request.getParameter("account-num");
			String bankReset = bankPro(bankName, accountName, accountNum);
			
			user.setUserPw(userPw);
			user.setUserPhone(userPhone);
			user.setUserAccount(bankReset);
			
			// user update
			userProcess.updateUser(user);
			
			// user session 수정
			User userSession = (User) request.getSession().getAttribute("user");
			userSession.setUserPw(userPw);
			userSession.setUserPhone(userPhone);
			userSession.setUserAccount(bankReset);
			
			request.setAttribute("flag", "true");
		}else {
			request.setAttribute("flag", "false");
		}
		return "myInfoUpdate.jsp";
	}
	
	// [은행]계좌번호 문자열 만들기
	public String bankPro(String bankName, String accountName, String accountNum) {
		String str = "";
		if(!bankName.equals("none")) { // 은행 선택을 했을 경우
			str = "[" + bankName + "]" + accountName + "(" + accountNum + ")";
			return str;
		}
		return str;
	}

}
