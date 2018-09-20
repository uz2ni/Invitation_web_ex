package com.test.Builder.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dao.UserDBBean;
import com.test.Builder.dto.User;

public class MyInfoAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		if(request.getSession().getAttribute("user") == null) { // 로그인 세션 없을 경우
			return "loginForm.jsp";
		}else {
			// login한 User 세션 가져옴
			User user = (User) request.getSession().getAttribute("user");
			
			ContentEditDBBean contentProcess = ContentEditDBBean.getInstance();
			int cnt = contentProcess.selectCount(user.getUserId());
			
			// bank
			String userAccount = user.getUserAccount();
			String bankName = "";
			String accountName = "";
			String account = "";
			if(userAccount == "") {
				bankName = "none";
				account = "";
			}else {
				// bankName
				bankName = userAccount.split("\\[")[1];
				bankName = bankName.split("\\]")[0];
				// accountName
				accountName = userAccount.split("\\]")[1];
				accountName = accountName.split("\\(")[0];
				// account
				account = userAccount.split("\\(")[1];
				account = account.split("\\)")[0];
			}
			
			request.setAttribute("user", user);
			request.setAttribute("invCnt", cnt);
			request.setAttribute("bankName", bankName);
			request.setAttribute("accountName", accountName);
			request.setAttribute("account", account);
			
			
			return "myInfo.jsp";
		}
		
	}

}
