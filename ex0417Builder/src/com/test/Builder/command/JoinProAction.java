package com.test.Builder.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dao.UserDBBean;
import com.test.Builder.dto.User;

public class JoinProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		/*한글처리*/
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=utf-8");

		User user = new User(); // 회원가입 하기 위해 User 객체 생성
		// email, pw, name, phone 저장
		user.setUserEmail(request.getParameter("user-email"));
		user.setUserPw(request.getParameter("user-pw"));
		user.setUserName(request.getParameter("user-name"));
		user.setUserPhone(request.getParameter("user-phone"));
		
		// birth 파라미터들 묶어서 넣기
		String year = request.getParameter("user-year");
		String month = request.getParameter("user-month");
		String day = request.getParameter("user-day");
		if(Integer.parseInt(month) < 10) {
			month = "0" + month;
		}else if (Integer.parseInt(day) < 10) {
			day = "0" + day;
		}
		String birth = year + "-" + month + "-" + day;
		user.setUserBirth(birth);
		
		
		// DB 연동 - 넘어온 정보를 테이블의 레코드로 추가
		UserDBBean userProcess = UserDBBean.getInstance();
		int cnt = userProcess.insert(user);
		
		System.out.println("cnt:" + cnt);
		
		return "index.jsp";
	}

}
