package com.test.Builder.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.LookCmtDBBean;
import com.test.Builder.dao.LookDBBean;
import com.test.Builder.dto.Look;
import com.test.Builder.dto.LookCmt;

public class LookListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		// DB 연동
		LookDBBean lookProcess = LookDBBean.getInstance();
		
		// 전체
		List<Look> looks = lookProcess.selectList();
		// 모임
		List<Look> looksType1 = lookProcess.selectTypeList(1); 
		// 발표회
		List<Look> looksType2 = lookProcess.selectTypeList(2); 
		// 종교 행사
		List<Look> looksType3 = lookProcess.selectTypeList(3); 
		
		request.setAttribute("looks", looks);
		request.setAttribute("looksType1", looksType1);
		request.setAttribute("looksType2", looksType2);
		request.setAttribute("looksType3", looksType3);
		
		System.out.println("type1 :");
		System.out.println(looksType1);
		System.out.println("type2 :");
		System.out.println(looksType2);
		System.out.println("type3 :");
		System.out.println(looksType3);
		
		return "lookList.jsp";
	}

}
