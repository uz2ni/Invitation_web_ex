package com.test.Builder.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.PaymentDBBean;
import com.test.Builder.dto.Payment;
import com.test.Builder.dto.User;

public class MyPayUseInfoAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 결제/사용 내역 페이지
		if(request.getSession().getAttribute("user") == null) { // 로그인 세션 없을 경우
			return "loginForm.jsp";
		}else {
			
			User user = (User) request.getSession().getAttribute("user");
			int userId = user.getUserId();
			
			
			PaymentDBBean paymentProcess = PaymentDBBean.getInstance();
			
			// 서비스 충전 내역
			List<Payment> services = paymentProcess.selectList(userId);
			request.setAttribute("services", services);
			
			// 포인트 충전 내역
			List<Payment> points = paymentProcess.selectPointList(userId);
			request.setAttribute("points", points);
			

			// 문자 발송 내역
			
			return "myPayUseInfo.jsp";
		}
	}
}
