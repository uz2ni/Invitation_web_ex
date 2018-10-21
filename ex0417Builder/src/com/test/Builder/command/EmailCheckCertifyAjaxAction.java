package com.test.Builder.command;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;
import com.test.Builder.dao.UserCertifyDBBean;
import com.test.Builder.dto.UserCertify;

public class EmailCheckCertifyAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HashMap<String, String> resultMap = new HashMap<String, String>();
		
		// 받아온 파라미터
		int certifyId = Integer.parseInt(request.getParameter("certify_id"));
		String inputNum = request.getParameter("input_num");
		
        // DB의 number 가져오기
		UserCertifyDBBean userCertifyProcess = UserCertifyDBBean.getInstance();
		UserCertify userCertify = userCertifyProcess.getUserCertify(certifyId);
		String certifyNum = userCertify.getUserCertifyNum(); // 실제 인증 번호
		
		// 비교
		if(certifyNum.equals(inputNum)) {
			userCertify.setUserCertifyStatus(1);
			userCertifyProcess.updateUserCertify(userCertify);
			System.out.println("userCertifyStatus 변경 완료");
			resultMap.put("status", "success");
			String gson = new Gson().toJson(resultMap);
	   		return gson;
		}else {
			resultMap.put("status", "fail");
			String gson = new Gson().toJson(resultMap);
	   		return gson;
		}
	}
}
