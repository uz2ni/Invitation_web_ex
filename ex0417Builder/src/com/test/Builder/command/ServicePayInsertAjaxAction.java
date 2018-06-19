package com.test.Builder.command;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;
import com.test.Builder.dao.PaymentDBBean;
import com.test.Builder.dto.Payment;

public class ServicePayInsertAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		// Payment 객체 생성
		Payment payment = new Payment();


		payment.setUserId(Integer.parseInt(request.getParameter("userId")));
		payment.setMerchantUid(request.getParameter("merchantUid"));
		payment.setPaymentStyle(request.getParameter("paymentStyle"));
		payment.setPaymentName(request.getParameter("paymentName"));
		payment.setPaymentMonth(Integer.parseInt(request.getParameter("paymentMonth")));
		payment.setPaymentType(Integer.parseInt(request.getParameter("paymentType")));
		payment.setPaymentAmount(Integer.parseInt(request.getParameter("paymentAmount")));
		payment.setPaymentUrlName(request.getParameter("paymentUrlName"));
		payment.setPaymentDate(request.getParameter("paymentDate"));
		
		System.out.println(payment.toString());
		
		// DB 연동
		PaymentDBBean paymentProcess = PaymentDBBean.getInstance();
		int cnt = paymentProcess.insert(payment);
		System.out.println("cnt:"+cnt);
		
		HashMap<String, String> resultMap = new HashMap<String, String>();
		resultMap.put("status", "ok");		
		
        //DTO 타입의 어레이리스트를 json 형태로 바꿔주는 구문(라이브러리 필수, zip->jar 확장자명 꼭 확인)
        String gson = new Gson().toJson(resultMap);

		return gson;
	}

}
