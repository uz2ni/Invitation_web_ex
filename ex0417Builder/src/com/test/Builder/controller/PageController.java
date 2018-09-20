package com.test.Builder.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dao.ContentGuestDBBean;
import com.test.Builder.dto.Content;
import com.test.Builder.dto.ContentGuest;

/**
 * Servlet implementation class PageController
 */
@WebServlet(
		urlPatterns = "*.page"
		)
		
public class PageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		requestPro(request, response); //요청 처리 메소드 호출
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		requestPro(request, response); //요청 처리 메소드 호출
	}
	
	//웹 브라우저의 요청을 분석하고, 해당 로직의 처리를 할 모델 실행 및 처리 결과를 뷰에 보냄
	private void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = null;
		String urlName = null;
		try {
			String command = request.getRequestURI();
			System.out.println("command:" + command);
			System.out.println("contextpath:" + request.getContextPath());
			System.out.println("length:" + request.getContextPath().length());
			if(command.indexOf(request.getContextPath()) == 0) {
				command = command.substring(request.getContextPath().length());
				command = command.split("\\.")[0];
				urlName = command.split("\\/")[1];
				System.out.println("urlName:" + urlName);
				
			}
			
		}catch (Throwable e) {
			e.printStackTrace();
		}
		
		// urlname으로 skin 이름 알아오기
		Content content = getContent(urlName);
		String skinName = content.getSkin();
		
		// urlId 로 content_guest 알아오기
		List<ContentGuest> contentGuests = getContentGuest(content.getUrlId());
		
		// content 보내기
		request.setAttribute("contentStr", content.toString());
		request.setAttribute("content", content);
		
		// content_guest 보내기
		request.setAttribute("contentGuests", contentGuests);
		
		// 경로 보내기
		request.setAttribute("commonContext", "");
		request.setAttribute("skinContext", "skin/" + skinName + "/");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("skin/" + skinName + "/index.jsp");
		dispatcher.forward(request, response);
	}
	
	// urlname으로 skin 이름 알아오기 (DB연동)	
	public Content getContent(String urlName) {
		
		// DB 연동 - 받아온 url Name 값을 selectOne2 함수로 넘겨서 레코드를 가져온다.
		ContentEditDBBean ContentProcess = ContentEditDBBean.getInstance();
		Content content = ContentProcess.selectOne2(urlName);
		
		return content;
	}
	// urlId 로 content_guest 알아오기 (DB연동)
	public List<ContentGuest> getContentGuest(int urlId) {
		
		// DB 연동 - 받아온 url Name 값을 selectOne2 함수로 넘겨서 레코드를 가져온다.
		ContentGuestDBBean contentGuestProcess = ContentGuestDBBean.getInstance();
		List<ContentGuest> list = contentGuestProcess.selectList(urlId);		
		
		return list;
	}
}
