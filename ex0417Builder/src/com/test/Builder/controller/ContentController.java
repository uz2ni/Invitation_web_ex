package com.test.Builder.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
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

		//원하는 작업 실행
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//원하는 작업 실행
		doProcess(request, response);
	}
	
	// 원하는 작업 실행 함수
	public void doProcess (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// insert
		Content content = Upload(request, response, new Content());
		ContentDao.getInstance().insertContent(content);
		request.setAttribute("content", content);
		RequestDispatcher rd = request.getRequestDispatcher("/result.jsp");
		rd.forward(request, response);
	}
	
	// 작성일 : 18.04.03
	// 출처: http://rongscodinghistory.tistory.com/77 [악덕고용주의 개발 일기]
	// upload file 처리
	public Content Upload (HttpServletRequest request, HttpServletResponse response, Content content) throws ServletException, IOException {
	    // request.getSession().getServletContext().getRealPath("상대경로"); 를 통해 파일을 저장할 절대 경로를 구해온다.
	    // 운영체제 및 프로젝트가 위치할 환경에 따라 경로가 다르기 때문에 아래처럼 구해오는게 좋음
	    String uploadPath =	request.getSession().getServletContext().getRealPath("/img_content");

	    System.out.println("img_content 절대경로 : " + uploadPath + "<br/>");
	     
	    int maxSize = 1024 * 1024 * 10; // 한번에 올릴 수 있는 파일 용량 : 10M로 제한
	   
//	    top-img-file
	    String newFileName = ""; 
	    // 중복처리된 이름
//	    String originalFileName = ""; 
	    // 중복 처리 전 실제 원본 이름
//	    long fileSize = 0; 
	    // 파일 사이즈
//	    String fileType = "";
	    // 파일 타입
	     
	    MultipartRequest multi = null;

        try{
	        // request,파일저장경로,용량,인코딩타입,중복파일명에 대한 기본 정책
	        multi = new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
	        
	        // 전송한 전체 파일이름들을 가져옴
	        Enumeration files = multi.getFileNames();

	        while(files.hasMoreElements()){
	        	// form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
	            String fileName = (String)files.nextElement();
	            newFileName = multi.getFilesystemName(fileName);
	        }
	        
	        content.setUserId(1);
			content.setType(multi.getParameter("type"));
			content.setSkin(multi.getParameter("skin"));
			content.setTopTitle(multi.getParameter("top-title"));
			content.setTopImgAlign(multi.getParameter("top-img-align"));
			content.setTopFontColor(multi.getParameter("top-font-color"));
			content.setTopFontAlign(multi.getParameter("top-font-align"));
			content.setTopImgFile(newFileName);

	        
	    }catch(Exception e){
	        e.printStackTrace();
	    }

	    return content;
	}
}
