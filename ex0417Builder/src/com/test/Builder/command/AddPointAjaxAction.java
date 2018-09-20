package com.test.Builder.command;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;
import com.test.Builder.dao.UserDBBean;
import com.test.Builder.dto.User;

public class AddPointAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		int userId = Integer.parseInt(request.getParameter("user_id"));
		int point = Integer.parseInt(request.getParameter("add_point"));
		
		// DB 연동
		UserDBBean userProcess = UserDBBean.getInstance();
		User user = userProcess.getUserId(userId);
		
		// add point
		int newPoint = addPoint(user.getUserPoint(), point);
		user.setUserPoint(newPoint);
		System.out.println("newPoint:" + newPoint);
		
		userProcess.updatePoint(user);
		
		HashMap<String, String> resultMap = new HashMap<String, String>();
		resultMap.put("status", "ok");		
		
        //DTO 타입의 어레이리스트를 json 형태로 바꿔주는 구문(라이브러리 필수, zip->jar 확장자명 꼭 확인)
        String gson = new Gson().toJson(resultMap);

		return gson;
	}
	
	// 포인트 더하는 함수
	public int addPoint(int beforePoint, int point) {
		return beforePoint + point;
	}

}
