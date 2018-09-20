package com.test.Builder.command;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

public class ImgProcess {
	private static ImgProcess instance = new ImgProcess();
	public static ImgProcess getInstance() {
		return instance;
	}
	
	// 미리보기 img와 업로드된 img 중복 검사
	public String[] preImgReset(String[] preArr, String[] uploadArr) {
		
		String preTemp = "";
		String uploadTemp = "";
		
		System.out.println("preArr0:" + preArr[0]);
		System.out.println("uploadArr0:" + uploadArr[0]);
	
		
		for(int i=0; i<preArr.length; i++) {
			for(int j=0; j<uploadArr.length; j++) {
				// 미리보기 str != 업로드 str
				System.out.println("preArr[" + i + "] : " + preArr[i]);
				System.out.println("uploadArr[" + j + "] : " + uploadArr[j]);
				
				preTemp = preArr[i].split("\\.")[0]; // 확장자 제거
				uploadTemp = uploadArr[j].split("\\.")[0]; // 확장자 제거
				System.out.println("preTemp:" + preTemp);
				System.out.println("uploadTemp:" + uploadTemp);
				
 				if(!(preArr[i].equals(uploadArr[j]))) {
					// 업로드 str에 미리보기 str 포함된 경우(이름만 다르고 같은 이미지일 경우)
					if(uploadTemp.contains(preTemp)) {
						preArr[i] = uploadArr[j];
						System.out.println("수정 preArr[" + i + "] : " + preArr[i]);
						break;
					}
				}
			}
		}
		return preArr;
	}
	
	public void removeDBImg(String[] preArr, String[] dbArr, String localPath, String folderName) {
		int bool;
		for(int i=0; i<dbArr.length; i++) {
			bool = 0; // 0이면 같은 이름 없음,1이면 있음 
			for(int j=0; j<preArr.length; j++) {
				if(dbArr[i].equals(preArr[j]))
					bool = 1;
			}
			// 삭제 유무
			if(bool == 1) {
				System.out.println("이미지 존재 O : " + dbArr[i]);
			}else {
				System.out.println("이미지 존재 X : " + dbArr[i]);
				// 삭제 작업 수행
				// 로컬 삭제
				System.out.println("로컬 삭제");
				removeLocal(localPath, dbArr[i]);
				// s3 삭제
				System.out.println("s3 삭제");
				removeAws(folderName, dbArr[i]);
			}
		}
	}
	
	public void removeDBImg(String[] dbArr, String localPath, String folderName) {
		for(int i=0; i<dbArr.length; i++) {
				// 로컬 삭제
				System.out.println("로컬 삭제");
				removeLocal(localPath, dbArr[i]);
				// s3 삭제
				System.out.println("s3 삭제");
				removeAws(folderName, dbArr[i]);
		}
	}
	
	public void removeLocal(String path, String imgName) {
		String filePath = path + "/" + imgName;
        File file = new File(filePath);
        
        if( file.exists() ){
            if(file.delete()){
                System.out.println("파일삭제 성공");
            }else{
                System.out.println("파일삭제 실패");
            }
        }else{
            System.out.println("파일이 존재하지 않습니다.");
        }
	}
	
	public void removeAws(String folderName, String imgName) {
		ContentEditProS3Action s3 = ContentEditProS3Action.getInstance();
		s3.deleteFile(folderName, imgName);
		System.out.println("s3 삭제 완료");
	}
}
