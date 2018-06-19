package com.test.Builder.command;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;
import com.test.Builder.dao.PaymentDBBean;
import com.test.Builder.dto.Payment;

public class ServicePayCompleteAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		// Payment 객체 생성
		Payment payment = new Payment();
		
		payment.setPaymentPayMethod(request.getParameter("pay_method"));
		payment.setMerchantUid(request.getParameter("merchant_uid"));
		payment.setPaymentName(request.getParameter("name"));
		payment.setPaymentAmount(Integer.parseInt(request.getParameter("amount")));
		payment.setPaymentAt(request.getParameter("paid_at"));
		payment.setPaymentBuyerTel(request.getParameter("buyer_tel"));
		payment.setPaymentImpUid(request.getParameter("imp_uid"));
		payment.setPaymentStatus(request.getParameter("status"));
		payment.setPaymentPg(request.getParameter("pg_provider"));
		payment.setPaymentReceiptUrl(request.getParameter("receipt_url"));
		
		System.out.println(payment.toString());
		
		// DB 연동
		PaymentDBBean paymentProcess = PaymentDBBean.getInstance();
		paymentProcess.update(payment);
		
		HashMap<String, String> resultMap = new HashMap<String, String>();
		resultMap.put("status", "ok");		
		
        //DTO 타입의 어레이리스트를 json 형태로 바꿔주는 구문(라이브러리 필수, zip->jar 확장자명 꼭 확인)
        String gson = new Gson().toJson(resultMap);

		return gson;
	}

}
