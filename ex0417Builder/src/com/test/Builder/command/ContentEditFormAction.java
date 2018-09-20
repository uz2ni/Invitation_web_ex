package com.test.Builder.command;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dto.Content;
import com.test.Builder.dto.User;



// 기능 : form jsp 페이지 출력 전 db에서 id에 맞는 데이터 select, 필요한 값들 attribute를 통해 뷰페이지로 보냄
// 작성자 : 송유진
// 날짜 : ~ 18.05.26
public class ContentEditFormAction implements CommandAction {	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		/*한글처리*/
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=utf-8");
		
		if(request.getSession().getAttribute("user") == null) { // 로그인 세션 없을 경우
			return "loginForm.jsp";
		}else {
			int urlId = Integer.parseInt(request.getParameter("urlId"));
			
			// DB 연동 - 받아온 url id 값을 selectOne 함수로 넘겨서 레코드를 가져온다.
			ContentEditDBBean ContentProcess = ContentEditDBBean.getInstance();
			Content content = ContentProcess.selectOne(urlId);
			
			// user
			// login한 User 세션 가져옴
			User user = (User) request.getSession().getAttribute("user");
			
			String uploadPath =	request.getSession().getServletContext().getRealPath("/img/content/content_img");
			request.setAttribute("uploadPath", uploadPath);
			
			// 만기 날짜 문자열 -> date타입 변환
			String last = content.getLastDate();
			int index = last.indexOf(" ");
			last = last.substring(0, index);
			// 만기일 시간 세팅
			content.setLastDate(last);
			Date lastDay;
			Date today;
			long diff;
			long diffDays;
			try {
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
				lastDay = (Date)df.parse(last);  
	
				today = new Date();
				
				// 남은 날짜 계산
				diff = lastDay.getTime() - today.getTime();
			    diffDays = diff / (24 * 60 * 60 * 1000);
				System.out.println("diffDays:"+diffDays);
				
				request.setAttribute("diffDays", diffDays);
	
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("user", user);
			request.setAttribute("content", content);
			request.setAttribute("selectSnsArr", strToArr(content.getSelectSns()));
			request.setAttribute("galleryUploadImgArr", strToArr(content.getGalleryUploadImg()));
			
			return "/contentEditForm.jsp";
		}
	}
	
	public String[] strToArr (String str) {
		System.out.println(str);
		String[] arr = str.split(",");
		for(int i=0; i<arr.length; i++) {
			System.out.println(i + "->" + arr[i]);
		}
		return arr;
	}

}
