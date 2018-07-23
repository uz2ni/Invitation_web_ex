package com.test.Builder.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.PaymentDBBean;
import com.test.Builder.dto.Payment;
import com.test.Builder.dto.User;

public class ServiceInfoAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		if(request.getSession().getAttribute("user") == null) { // 로그인 세션 없을 경우
			return "loginForm.jsp";
		}else {
			
			User user = (User) request.getSession().getAttribute("user");
			int userId = user.getUserId();
			
			// DB 연동 - 받아온 url id 값을 select 함수로 넘겨서 레코드를 가져온다.
			PaymentDBBean paymentProcess = PaymentDBBean.getInstance();
			List<Payment> list = paymentProcess.selectList(userId);
			
			request.setAttribute("payments", list);
			
		return "serviceInfo.jsp";
		}
	}

}
