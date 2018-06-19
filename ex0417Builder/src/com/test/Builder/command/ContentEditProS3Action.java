package com.test.Builder.command;

import java.io.File;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.transfer.TransferManager;
import com.amazonaws.services.s3.transfer.Upload;

// 기능 : aws 계정 연결하고 s3 버킷에 파일 업로드할 수 있는 클래스
// 작성자 : 송유진
// 날짜 : 18.05.31
public class ContentEditProS3Action {

	private AmazonS3 s3;
    private String bucketName;
    private static TransferManager tx;
    
    @SuppressWarnings("deprecation")
	String Upload(String subDir, String fileName) { //업로드된 위치, 업로드할 로컬에 올라간 파일이름
        AWSCredentials credentials = new ProfileCredentialsProvider().getCredentials();

        s3 = AmazonS3ClientBuilder.standard()
                .withCredentials(new AWSStaticCredentialsProvider(credentials))
                .withRegion("ap-northeast-2")
                .build();
      
        bucketName = "invitecontent";
        System.out.println("완료");
         
        this.tx = new TransferManager(s3);
         
        String link = subDir + "/" + fileName;
        File file = new File(link);
        
        if(file.exists()){
            
            System.out.println("getName: " + file.getName());  // 파일 이름 출력
			System.out.println("getPath: " + file.getPath());    // 파일 경로 출력 
        }
        uploadFile(file);
        
        // 파일 key로 설정한 네임 값 반환
        return file.getName();
        }
    
    // aws s3 접근하여 직접적 파일 업로드 되는 함수
    public void uploadFile(File file) {
        if (s3 != null) {
            try {
                PutObjectRequest putObjectRequest =
                        new PutObjectRequest(bucketName, file.getName(), file);
                putObjectRequest.setCannedAcl(CannedAccessControlList.PublicRead); // file permission
                s3.putObject(putObjectRequest); // upload file
                
            } catch (AmazonServiceException ase) {
                ase.printStackTrace();
            } finally {
                s3 = null;
            }
        }
    }
}
