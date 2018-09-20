package com.test.Builder.command;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dto.Content;

public class UrlExtendAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String urlName = request.getParameter("url_name");
		int paymentMonth = Integer.parseInt(request.getParameter("payment_month"));
		
		// DB 연동
		ContentEditDBBean contentProcess = ContentEditDBBean.getInstance();
		Content content = contentProcess.selectOne2(urlName);
		
		// 연장 함수
		String newLastDate = extendDay(content.getLastDate(), paymentMonth);
		
		content.setLastDate(newLastDate);
		
		// DB Update
		contentProcess.extendUpdate(content);
		
		HashMap<String, String> resultMap = new HashMap<String, String>();
		resultMap.put("status", "ok");		
		
        //DTO 타입의 어레이리스트를 json 형태로 바꿔주는 구문(라이브러리 필수, zip->jar 확장자명 꼭 확인)
        String gson = new Gson().toJson(resultMap);

		return gson;

	}
	
	
	// 연장 함수
    // 출처: http://nota.tistory.com/50
	//      http://bbuljj.tistory.com/68 [bbuljj]
	
	public String extendDay(String lastDate, int addMonth) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date;
		String strDate = "";
		System.out.println("addMonth:" + addMonth);
		try {
			date = format.parse(lastDate);
	        // 날짜 더하기
	        Calendar cal = Calendar.getInstance();
	        cal.setTime(date);
//	        cal.add(Calendar.DATE, 1);		//날짜 더하기
	        cal.add(Calendar.MONTH, addMonth);		//월 더하기
	        
	        strDate = format.format(cal.getTime());
	        System.out.println("날짜 확인 :" + strDate);
	        
	        return strDate;
	        
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return strDate;
	}
}
