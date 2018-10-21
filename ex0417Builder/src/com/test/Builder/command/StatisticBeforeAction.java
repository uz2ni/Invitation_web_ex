package com.test.Builder.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentAttendDBBean;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dto.Content;
import com.test.Builder.dto.ContentAttend;

public class StatisticBeforeAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int urlId = Integer.parseInt(request.getParameter("urlId"));
		
		// 사전 설문조사 양식 data
		ContentEditDBBean contentEditProcess = ContentEditDBBean.getInstance();
		Content content = contentEditProcess.selectOne(urlId);
		String beforeFormData = content.getPollContent(); // 사전 설문조사 form
		System.out.println("beforeFormData:" + beforeFormData);
		
		// 사전 설문조사 내용 data
		ContentAttendDBBean contentAttendProcess = ContentAttendDBBean.getInstance();
		ContentAttend contentAttend = new ContentAttend();
		contentAttend.setUrlId(urlId);
		contentAttend.setUrlAttendChk(1); // 참석일 경우
		List<ContentAttend> contentAttendList = contentAttendProcess.selectList(contentAttend);

		System.out.println("참석 설문조사 내용:");
		List<String> beforeDataList = new ArrayList<String>();
		Iterator<ContentAttend> iterator = contentAttendList.iterator();
		while (iterator.hasNext()) {
			ContentAttend element = (ContentAttend) iterator.next();
			System.out.println(element.getUrlAttendContent());
			beforeDataList.add(element.getUrlAttendContent());
		}
		System.out.println(beforeDataList);
		
		// 질문 개수 구하기
		HashMap<String, Object> cntMap;
		ArrayList list;
		try {
			// json -> map
			cntMap = new ObjectMapper().readValue(beforeFormData.toString(), HashMap.class);
			list = (ArrayList)cntMap.get("content");
			request.setAttribute("formCnt", list.size());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
		request.setAttribute("beforeFormData", beforeFormData);
		request.setAttribute("beforeAnswerData", beforeDataList);
		request.setAttribute("urlId", urlId);
		return "statisticBefore.jsp";
	}

}
