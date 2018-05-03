package com.test.Builder.command;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dto.Content;

public class ContentEditProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		request.setAttribute("type", new Integer(0));
		System.out.println("ContentEditProAction()");
		
		System.out.println("ContentEditProAction 진입");
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
	    
	    System.out.println("확인");

        try{
	        // request,파일저장경로,용량,인코딩타입,중복파일명에 대한 기본 정책
	        multi = new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
	        
	        // 전송한 전체 파일이름들을 가져옴
	        Enumeration<?> files = multi.getFileNames();

	        while(files.hasMoreElements()){
	        	// form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
	            String fileName = (String)files.nextElement();
	            newFileName = multi.getFilesystemName(fileName);
	            System.out.println("try괜찮");
	        }
	    }catch(Exception e){
	        e.printStackTrace();
	    }
        
        //폼으로 넘어온 정보 중 파일이 아닌 정보를 얻어냄
        Content content = new Content();
        content.setUserId(1); //임시유저번호
		content.setType(multi.getParameter("type"));
		content.setSkin(multi.getParameter("skin"));
		content.setTopTitle(multi.getParameter("top-title"));
		content.setTopImgAlign(multi.getParameter("top-img-align"));
		content.setTopFontColor(multi.getParameter("top-font-color"));
		content.setTopFontAlign(multi.getParameter("top-font-align"));
		content.setTopImgFile(newFileName);
		System.out.println("content:"+content.getContentNo()+", "+content.getType()+", "+content.getSkin()+", "+content.getTopTitle()+", "+content.getTopImgFile());
		
		
//		// DB 연동 - 넘어온 정보를 테이블의 레코드로 추가
		ContentEditDBBean ContentProcess = ContentEditDBBean.getInstance();
		int cnt = ContentProcess.insertContent(content);
		request.setAttribute("cnt", cnt);
		System.out.println("cnt:"+cnt);
		
	    return "/index.jsp";
	}

}
