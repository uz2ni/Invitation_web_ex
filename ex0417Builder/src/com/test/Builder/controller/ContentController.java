package com.test.Builder.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.dao.ContentDao;
import com.test.Builder.dto.Content;

/**
 * Servlet implementation class ContentController
 */
@WebServlet("/ContentController")
public class ContentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String topTitle = request.getParameter("top-title");
		System.out.println("topTitle : " + topTitle);
	
		//원하는 작업 실행
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//원하는 작업 실행
		doProcess(request, response);
	}
	
	// 원하는 작업 실행 함수
	public void doProcess (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// insert 액션
		Content content = new Content();
		content.setUserId(1);
		content.setContentNo(1);
		content.setType(request.getParameter("type"));
		content.setSkin(request.getParameter("skin"));
		content.setTopTitle(request.getParameter("top-title"));
		content.setTopImgFile(request.getParameter("top-img-file"));
		content.setTopImgAlign(request.getParameter("top-img-align"));
		content.setTopFontColor(request.getParameter("top-font-color"));
		content.setTopFontAlign(request.getParameter("top-font-align"));
		System.out.println("TopFontAlign:"+content.getTopFontAlign());
		
		ContentDao.getInstance().insertContent(content);
		request.setAttribute("content", content);
		RequestDispatcher rd = request.getRequestDispatcher("/result.jsp");
		rd.forward(request, response);
	}

}
