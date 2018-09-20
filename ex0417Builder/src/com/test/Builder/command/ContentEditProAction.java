package com.test.Builder.command;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

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
// 프로젝트 절대 경로 : /Users/uzini/files/develop/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/ex0417Builder/img/content/content_img

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
	    
	    // aws reset
	    String awsUrl = "https://s3.ap-northeast-2.amazonaws.com/invitecontent";
	    String folderName = "";
	    
		ContentEditDBBean ContentProcess = ContentEditDBBean.getInstance();
		Content content = new Content(); // id의 기존 content
	    
        
	    // 파일 저장할 때 쓰는 구간
        try{
	        // request,파일저장경로,용량,인코딩타입,중복파일명에 대한 기본 정책
	        multi = new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
	        
	        int urlId = Integer.parseInt(multi.getParameter("url-id"));
	        
			content = ContentProcess.selectOne(urlId); // id의 기존 content
			System.out.println("content:" + content.toString());
			
	        // 전송한 전체 파일이름들을 가져옴
	        Enumeration<?> files = multi.getFileNames();
	        System.out.println("multi:" + multi.toString());

	        while(files.hasMoreElements()){
	        	// form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
	            String fileName = (String)files.nextElement();
	            newFileName = multi.getFilesystemName(fileName); // 최종 업로드될 파일 이름 생성
	            
	            // 미리보기 이미지 문자열, db 이미지 문자열
	            String[] preImgArr = null;
	            String[] dbImgArr = null;
	            String[] uploadImgArr = null;
	            
	            String contentFile = "";
            	String fileList = null;
	            
	            // input Name 검사해서 맞게 삽입
	            if(fileName.equals("top-img-file") && (newFileName != null)) {
	            	folderName = "edit/topImgFile";
	            	contentFile = content.getTopImgFile();
	            	fileList = multi.getParameter("top-img-file-list");
	            	
	            	contentFile = fileProcess(fileList, preImgArr, uploadImgArr, dbImgArr, newFileName, uploadPath, folderName, contentFile);
	            	content.setTopImgFile(contentFile);

	            }else if(fileName.equals("add-info-img-profile") && (newFileName != null)) {
	            	folderName = "edit/addInfoImgProfile";
	            	contentFile = content.getAddInfoImgProfile();
	            	fileList = multi.getParameter("add-info-img-profile-list");
	            	contentFile = fileProcess(fileList, preImgArr, uploadImgArr, dbImgArr, newFileName, uploadPath, folderName, contentFile);
	            	content.setAddInfoImgProfile(contentFile);

	            }else if(fileName.equals("add-info-img-sit") && (newFileName != null)) {
	            	folderName = "edit/addInfoImgSit";
	            	contentFile = content.getAddInfoImgSit();
	            	fileList = multi.getParameter("add-info-img-sit-list");
	            	contentFile = fileProcess(fileList, preImgArr, uploadImgArr, dbImgArr, newFileName, uploadPath, folderName, contentFile);
	            	content.setAddInfoImgSit(contentFile);
	            	
	            }else if(fileName.equals("add-info-hold-img") && (newFileName != null)) {
	            	folderName = "edit/addInfoHoldImg";
	            	contentFile = content.getAddInfoHoldImg();
	            	fileList = multi.getParameter("add-info-hold-img-list");
	            	contentFile = fileProcess(fileList, preImgArr, uploadImgArr, dbImgArr, newFileName, uploadPath, folderName, contentFile);
	            	content.setAddInfoHoldImg(contentFile);

	            }else if(fileName.equals("add-info-help-img") && (newFileName != null)) {
	            	folderName = "edit/addInfoHelpImg";
	            	contentFile = content.getAddInfoHelpImg();
	            	fileList = multi.getParameter("add-info-help-img-list");
	            	contentFile = fileProcess(fileList, preImgArr, uploadImgArr, dbImgArr, newFileName, uploadPath, folderName, contentFile);
	            	content.setAddInfoHelpImg(contentFile);

	            }else if(fileName.equals("info-load-img") && (newFileName != null)) {
	            	folderName = "edit/infoLoadImg";
	            	contentFile = content.getInfoLoadImg();
	            	fileList = multi.getParameter("info-load-img-list");
	            	contentFile = fileProcess(fileList, preImgArr, uploadImgArr, dbImgArr, newFileName, uploadPath, folderName, contentFile);
	            	content.setInfoLoadImg(contentFile);
	            	
	            }else if(fileName.contains("gallery-upload-img")) {
	            	folderName = "edit/galleryUploadImg";
	            	contentFile = content.getGalleryUploadImg();
	            	fileList = multi.getParameter("gallery-upload-img-list");
	            	contentFile = fileProcess(fileList, preImgArr, uploadImgArr, dbImgArr, newFileName, uploadPath, folderName, contentFile);
	            	content.setGalleryUploadImg(contentFile);
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
        System.out.println("video-link:" + content.getVideoLink());
       
        // 계좌 연동
        content.setAccountChk(chkbox(multi, "account-chk"));
        content.setAccountSelect(multi.getParameter("account-select"));
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
            	System.out.println("snsList[" + i + "] : " + snsStr);
            }
        }
        content.setSelectSns(snsStr);	
        
        content.setSnsMsgChk(chkbox(multi, "sns-msg-chk"));
        content.setSnsMsgContent(multi.getParameter("sns-msg-content").trim());

        
        // to string
        System.out.println(content.toString());
		
		// DB 연동 - 넘어온 정보를 테이블의 레코드로 추가
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
    String ImgUpload(String newFileName, String uploadPath, String folderName) {
    	if(newFileName != null) {
    		ContentEditProS3Action proS3 = ContentEditProS3Action.getInstance();
	        String key = proS3.Upload(uploadPath, newFileName, folderName);
	        return key;
    	}else {
    		return "null";
    	}
    }
    
    // 파일 이름 재설정
    public String reName(String fileName) {
		long now = System.currentTimeMillis();
		String newName = fileName + "_" + now;
		return newName;
    }
	
	// ,기준으로 문자 분리해서 문자열배열 형태로 반환
	public String[] StringToArray(String str) {
		String[] arr = str.split(",");
		System.out.println("strToArr:");
		for (String a : arr) {
			System.out.println(a);
		}
		return arr;
	}
	
  // 배열 내용 합치기
  public String arrayJoin(String glue, String array[]) {
   
	String result = "";

    for (int i = 0; i < array.length; i++) {
      result += array[i];
      if (i < array.length - 1) result += glue;
    }
    
    return result;
  }
  
  public String fileProcess(String fileList, String[] preImgArr, String[] uploadImgArr, String[] dbImgArr, String newFileName, String uploadPath, String folderName, String contentFile) {
	// ImgProcess
	ImgProcess imgPro = ImgProcess.getInstance();
	
	// pre list에 값 있을 경우
	System.out.println("contentFile : " + contentFile);
	System.out.println(fileList);
	if(fileList != null) { 
		System.out.println("두더지1");
		preImgArr = StringToArray(fileList);
		// 업로드 된 내용 있나 확인
		if(newFileName != null) { // 업로드된 파일이 존재할 경우
			// s3 이미지 업로드 수행
			String key = ImgUpload(newFileName, uploadPath, folderName);
			System.out.println("두더지2");
      	
			uploadImgArr = StringToArray(newFileName); // 업로드 파일 -> 리스트
			preImgArr = imgPro.preImgReset(preImgArr, uploadImgArr); // 파일 이름 매칭
			System.out.println("두더지3");
		}
		// 삭제된 내용 있나 확인
		if(contentFile != "") { // db 내용 들어있었으면 -> 삭제 확인, db 삽입
			System.out.println("두더지4");
			dbImgArr = StringToArray(contentFile);
			imgPro.removeDBImg(preImgArr, dbImgArr, uploadPath, folderName);
			System.out.println("두더지5");
		}
		return arrayJoin(",", preImgArr);

	// pre list에 값 없을 경우
	}else { 
		if(contentFile != "") { // db에 내용 비어있지 않을 경우
			System.out.println("두더지6");
			// db에 있는 이미지들 로컬, s3에서 삭제
			dbImgArr = StringToArray(contentFile); // db 리스트 화
			// db 리스트의 이미지들 삭제
			imgPro.removeDBImg(dbImgArr, uploadPath, folderName);
			System.out.println("두더지7");
		}
		return "";
	}
  }


}
