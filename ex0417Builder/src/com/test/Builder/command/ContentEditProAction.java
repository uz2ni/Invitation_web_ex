package com.test.Builder.command;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.ContentEditDBBean;
import com.test.Builder.dto.Content;

//기능 : 폼에서 전송된 값을 받아서 이미지는 톰캣경로에 업로드 시키고, 나머지 값들은 db에 업데이트 한다.
//      모든 값들은 null처리를 해서 모두 입력하지 않아도 에러가 안나도록 함.
//작성자 : 송유진
//날짜 : ~ 18.05.26

public class ContentEditProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		String uploadPath =	request.getSession().getServletContext().getRealPath("/img/content/content_img");

	    System.out.println("img_content 절대경로 : " + uploadPath + "<br/>");
	     
	    int maxSize = 1024 * 1024 * 10; // 한번에 올릴 수 있는 파일 용량 : 10M로 제한
	   
//	    top-img-file
	    String newFileName = ""; 	     
	    MultipartRequest multi = null;
	 // 객체에 파라미터로 받아온 내용 저장
	    
        Content content = new Content();
        
	    // 파일 저장할 때 쓰는 구간
        try{
	        // request,파일저장경로,용량,인코딩타입,중복파일명에 대한 기본 정책
	        multi = new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
	        
	        // 전송한 전체 파일이름들을 가져옴
	        Enumeration<?> files = multi.getFileNames();

	        // 이미지 변수 초기화
	        content.setTopImgFile("");
	        content.setAddInfoImgProfile("");
	        content.setAddInfoImgSit("");
	        content.setAddInfoHoldImg("");
	        content.setAddInfoHelpImg("");
	        content.setInfoLoadImg("");
	        content.setGalleryUploadImg("");
	        
	        while(files.hasMoreElements()){
	        	// form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
	            String fileName = (String)files.nextElement();
	            newFileName = multi.getFilesystemName(fileName);
	            
	            String key = "";
	            String imgLink = "";
	            
	            // input Name 검사해서 맞게 삽입
	            if((fileName.equals("top-img-file"))) {
	            	content.setTopImgFile(newFileName==null ? "" : newFileName);
		            key = ImgUpload(content.getTopImgFile(), newFileName, uploadPath);
		            imgLink = "https://s3.ap-northeast-2.amazonaws.com/invitecontent/" + key;
		            content.setTopImgFile(newFileName==null ? "" : imgLink);

	            }else if(fileName.equals("add-info-img-profile")) {
	            	content.setAddInfoImgProfile(newFileName==null ? "" : newFileName);
		            ImgUpload(content.getAddInfoImgProfile(), newFileName, uploadPath);
	            }else if(fileName.equals("add-info-img-sit")) {
	            	content.setAddInfoImgSit(newFileName==null ? "" : newFileName);
		            ImgUpload(content.getAddInfoImgSit(), newFileName, uploadPath);
	            }else if(fileName.equals("add-info-hold-img")) {
	            	content.setAddInfoHoldImg(newFileName==null ? "" : newFileName);
		            ImgUpload(content.getAddInfoHoldImg(), newFileName, uploadPath);
	            }else if(fileName.equals("add-info-help-img")) {
	            	content.setAddInfoHelpImg(newFileName==null ? "" : newFileName);
		            ImgUpload(content.getAddInfoHelpImg(), newFileName, uploadPath);
	            }else if(fileName.equals("info-load-img")) {
	            	content.setInfoLoadImg(newFileName==null ? "" : newFileName);
		            ImgUpload(content.getInfoLoadImg(), newFileName, uploadPath);
	            }else if(fileName.equals("gallery-upload-img")) {
	            	content.setGalleryUploadImg(newFileName==null ? "" : newFileName);
		            ImgUpload(content.getGalleryUploadImg(), newFileName, uploadPath);
	            }
	            
	            System.out.println(fileName + " : " + newFileName);

	        }
	        
	        
	    }catch(Exception e){
	        e.printStackTrace();
	    }
        
        // 나머지 내용 저장
        // 사용자 정보
        content.setUrlId(Integer.parseInt(multi.getParameter("url-id")));
        content.setUserId(Integer.parseInt(multi.getParameter("user-id")));
        content.setUrlName(multi.getParameter("url-name"));
        content.setType(Integer.parseInt(multi.getParameter("type")));
        content.setPayDate(multi.getParameter("pay-date"));
        content.setLastDate(multi.getParameter("last-date"));
        System.out.println("url-id:"+content.getUrlId()+", user-id:"+content.getUserId()+", url-name:"+content.getUrlName()+", type:"+content.getType()+", pay-date:"+content.getPayDate()+", last-date:"+content.getLastDate());
        // edit form
        // 스킨 선택
        content.setSkin(multi.getParameter("skin")==null ? "" : multi.getParameter("skin"));
        // 상단 정보
        content.setTopTitle(multi.getParameter("top-title").trim());
        content.setTopImgAlign(multi.getParameter("top-img-align")==null ? "" : multi.getParameter("top-img-align"));
        System.out.println("content.getTopFontAlign():"+content.getTopFontAlign());
        content.setTopFontColor(multi.getParameter("top-font-color")==null ? "" : multi.getParameter("top-font-color"));
        content.setTopFontAlign(multi.getParameter("top-font-align")==null ? "" : multi.getParameter("top-font-align"));
        
        System.out.println("top-img-align:"+content.getTopImgAlign());
        
        // 상세 정보 - 기본 정보
//     	start = request.getParameter("info-date-start")=="" ? "aa" : request.getParameter("info-date-start"); 

        content.setInfoDateStart(multi.getParameter("info-date-start").equals("") ? "2000-01-01" : multi.getParameter("info-date-start"));
        System.out.println("info-date-start:"+content.getInfoDateStart());
        content.setInfoDateEnd(multi.getParameter("info-date-end").equals("") ? "2000-01-01" : multi.getParameter("info-date-end"));
        System.out.println("info-date-end:"+content.getInfoDateEnd());
        
        content.setInfoDdayChk(chkbox(multi, "info-dday-chk"));
        content.setInfoTime(multi.getParameter("info-time").trim());
        content.setInfoPlace(multi.getParameter("info-place").trim());
        System.out.println("되나요?3");

        // 상세 정보 - 부가 정보
        content.setAddInfoWelcome(multi.getParameter("add-info-welcome").trim());
        content.setAddInfoImgName(multi.getParameter("add-info-img-name").trim());
        content.setAddInfoCallName(multi.getParameter("add-info-call-name").trim());
        content.setAddInfoCallNumber(multi.getParameter("add-info-call-number").trim());
        content.setAddInfoLogoHoldName(multi.getParameter("add-info-logo-hold-name").trim());
        content.setAddInfoLogoHelpName(multi.getParameter("add-info-logo-help-name").trim());
        
        System.out.println("되나요?4");

        // 상세 정보 - 위치 정보
        content.setInfoAddress(multi.getParameter("info-address").trim());
        content.setInfoNavi(chkbox(multi, "info-navi"));
        content.setInfoFind(chkbox(multi, "info-find"));
        content.setInfoLoadImgChk(chkbox(multi, "info-load-img-chk"));
        content.setInfoBus(multi.getParameter("info-bus").trim());
        content.setInfoSubway(multi.getParameter("info-subway").trim());
        content.setInfoParking(multi.getParameter("info-parking").trim());
        System.out.println("되나요?5");

        // 멀티미디어 - 갤러리
        content.setGalleryChk(chkbox(multi, "gallery-chk"));
        content.setGalleryType(multi.getParameter("gallery-type")==null ? "" : multi.getParameter("gallery-type"));
        // 멀티미디어 - 동영상
        content.setVideoChk(chkbox(multi, "video-chk"));
        content.setVideoLink(multi.getParameter("video-link").trim());
        System.out.println("되나요?6");

        // 계좌 연동
        content.setAccountChk(chkbox(multi, "account-chk"));
        content.setAccountSelect(Integer.parseInt(multi.getParameter("account-select")==null ? "0" : multi.getParameter("account-select")));
        content.setAccountMoney(Integer.parseInt(multi.getParameter("account-money").trim().equals("") ? "0" : multi.getParameter("account-money")));
        // 추가 기능 - 참석 여부
        content.setAttendChk(chkbox(multi, "attend-chk"));
        // 추가 기능 - 방명록
        content.setCommentChk(chkbox(multi, "comment-chk"));
        // 추가 기능 - SNS 사용여부
        content.setSnsShareChk(chkbox(multi, "sns-share-chk"));
        // sns List 문자열로 합치기
        String snsStr = "";
        if(multi.getParameterValues("select-sns")==null) {
        	snsStr = "";
        }else {
        	String[] snsList = multi.getParameterValues("select-sns");
            for(int i=0; i<snsList.length; i++) {
            	if(i == snsList.length-1)
            		snsStr = snsStr + snsList[i];
            	else
            		snsStr = snsStr + snsList[i] + ",";
            }
        }
        content.setSelectSns(snsStr);	
        
        content.setSnsMsgChk(chkbox(multi, "sns-msg-chk"));
        content.setSnsMsgContent(multi.getParameter("sns-msg-content").trim());
        System.out.println("되나요?7");

        
        // to string
        System.out.println(content.toString());
		
		// DB 연동 - 넘어온 정보를 테이블의 레코드로 추가
		ContentEditDBBean ContentProcess = ContentEditDBBean.getInstance();
		ContentProcess.update(content);
		request.setAttribute("content", content);
		
		
	    return "contentEditComplete.jsp";
	}
	
	// checkbox 0, 1 처리	 함수
	public int chkbox (MultipartRequest multi, String name) {
		System.out.println(name +"=>" + multi.getParameter(name));
		if(multi.getParameter(name) == null ) {
			return 0;
		}else if (multi.getParameter(name).equals("1")) {
			return 1;
		}else {
			return -1;	
		}
	}
	
    // 파일이 null이 아닐 경우 aws s3에 업로드 수행
    String ImgUpload(String contentImgName, String newFileName, String uploadPath) {
    	if(newFileName != null) {
	        ContentEditProS3Action proS3 = new ContentEditProS3Action();
	        String key = proS3.Upload(uploadPath, contentImgName);
	        return key;
    	}else {
    		return "null";
    	}
    }
	

}
