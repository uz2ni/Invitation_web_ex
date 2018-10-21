package com.test.Builder.command;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentAttendDBBean;
import com.test.Builder.dto.ContentAttend;
import com.test.Builder.dto.LookCmt;

public class StatisticAttendAction<K> implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		int urlId = Integer.parseInt(request.getParameter("urlId"));
		
		ContentAttendDBBean contentAttendProcess = ContentAttendDBBean.getInstance();
		
		/*
		 *  예상 참석, 불참석 그래프
		 */
		
		// 참석 수 구하기
		ContentAttend contentAttend = new ContentAttend();
		contentAttend.setUrlId(urlId);
		contentAttend.setUrlAttendChk(1); // 참석
		int attendYesCnt = contentAttendProcess.selectCount(contentAttend);
		
		// 불참 수 구하기
		ContentAttend contentAttend2 = new ContentAttend();
		contentAttend2.setUrlId(urlId);
		contentAttend2.setUrlAttendChk(0); // 불참
		int attendNoCnt = contentAttendProcess.selectCount(contentAttend2);
		
		// 예상 수 구하기
		// ...
		int attendExpectCnt = 10;
		
		HashMap<String, Integer> attendDataMap = new HashMap<String, Integer>();
		attendDataMap.put("attendYesCnt", attendYesCnt);	
		attendDataMap.put("attendNoCnt", attendNoCnt);
		attendDataMap.put("attendExpectCnt", attendExpectCnt);
		
		String attendData = new Gson().toJson(attendDataMap);
		
        request.setAttribute("attendData", attendData);
        System.out.println(attendData);
        
        /*
         * 날짜별 대비 참석 인원
         */
        
        int dayLength = 8; // 기준 날짜 8일 
        
        // 현재 날짜 구하기
        SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        Date date = new Date(); // 현재 날짜 Date 타입
        cal.setTime(date); // 캘린더 현재 날짜로 초기화
        String day; // 변하는 일자
        
        int timeYesCnt, timeNoCnt;
        HashMap<String, HashMap> attendTimeDataMap = new HashMap<String, HashMap>();
        
        // 현재 날짜 ~ 8일 전 까지의 참/불참석자 명 수 구하기 
        for (int i=0 ;i<dayLength; i++) {
        	day = fm.format(cal.getTime());
        	System.out.println("day:" + day);
        	cal.add(Calendar.DATE, -1);
        	
        	// db 조회
        	ContentAttend contentAttendTime = new ContentAttend();
        	contentAttendTime.setUrlId(urlId);
        	contentAttendTime.setUrlAttendAt(day); // 날짜

        	contentAttendTime.setUrlAttendChk(1); // 참석
        	contentAttendTime.setUrlAttendAt(day); // 날짜
        	timeYesCnt = contentAttendProcess.selectCountTime(contentAttendTime);
        	
        	contentAttendTime.setUrlAttendChk(0); // 불참
        	timeNoCnt = contentAttendProcess.selectCountTime(contentAttendTime);
        	
        	System.out.println("day: " + day + ", 참석: " + timeYesCnt + ", 불참석: " + timeNoCnt);
        	
        	// 단일 값 해시 생성 (참석 날짜, 참석 수, 불참 수) 
        	HashMap<String, String> attendTimeOneMap = new HashMap<String, String>();
        	attendTimeOneMap.put("attendTimeIdx", i+"");
        	attendTimeOneMap.put("attendTimeDate", day);
        	attendTimeOneMap.put("attendTimeYesCnt", timeYesCnt+"");
        	attendTimeOneMap.put("attendTimeNoCnt", timeNoCnt+"");
        	
        	// 단일 해시를 공동 해시에 넣기
        	attendTimeDataMap.put("attendTimeData" + i, attendTimeOneMap);
        }
        
        String attendTimeData = new Gson().toJson(attendTimeDataMap);
        
        request.setAttribute("attendTimeData", attendTimeData);
        System.out.println(attendTimeData);
        
       
        /*
         *  행사 참석자 명단 / 행사 불참석 이유
         */
        ContentAttend contentAttendYes = new ContentAttend();
        contentAttendYes.setUrlId(urlId);
        contentAttendYes.setUrlAttendChk(1);
        ContentAttend contentAttendNo = new ContentAttend();
        contentAttendNo.setUrlId(urlId);
        contentAttendNo.setUrlAttendChk(0);
        List<ContentAttend> attendYesList = contentAttendProcess.selectList(contentAttendYes); // 참석자 리스트
        List<ContentAttend> attendNoList = contentAttendProcess.selectList(contentAttendNo); // 불참석자 리스트
        
        HashMap<String, List<ContentAttend>> attendListDataMap = new HashMap<String, List<ContentAttend>>();
        attendListDataMap.put("attendYesList", attendYesList);
        attendListDataMap.put("attendNoList", attendNoList);
        
        String attendListData = new Gson().toJson(attendListDataMap);
        
        request.setAttribute("attendListData", attendListData);
        System.out.println(attendListData);
        
        request.setAttribute("urlId", urlId);
		return "statisticAttend.jsp";
	}

}
