package com.test.Builder.command;

import java.util.HashMap;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;
import com.test.Builder.dao.UserCertifyDBBean;
import com.test.Builder.dto.UserCertify;

public class EmailCheckAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		HashMap<String, String> resultMap = new HashMap<String, String>();

		System.out.println("이메일체크 진입");
		
		// 랜덤함수 생성 & 변수 설정
		Random random = new Random();
		int radomString = random.nextInt(1000000);
		String authNum =  String.valueOf(radomString); // 인증번호
		String msg = "인증번호 [" + authNum + "]";  // 인증번호 포함한 메세지

		final String username = "uzini_";       //네이버 아이디를 입력해주세요. @naver.com은 입력하지 마시구요.
		final String password = "wodnr825";   //네이버 이메일 비밀번호를 입력해주세요.
		final String sendEmail = "uzini_@naver.com";

		// 메일 내용
		String recipient = request.getParameter("input_email");    //받는 사람의 메일주소를 입력해주세요.
		System.out.println(recipient);
		String subject = "초대해U 이메일 인증번호"; 					  //메일 제목 입력해주세요.
		String body = "초대해U 이메일 인증번호 입니다. \n" + msg; //메일 내용 입력해주세요.
		 

		// SMTP 서버 정보 설정
	     Properties props = new Properties(); 
        props.put("mail.smtp.user",username); 
        props.put("mail.smtp.password", password);
        props.put("mail.smtp.host", "smtp.naver.com"); 
        props.put("mail.smtp.port", "25"); 
        props.put("mail.debug", "true"); 
        props.put("mail.smtp.auth", "true"); 
        props.put("mail.smtp.starttls.enable","true"); 
        props.put("mail.smtp.EnableSSL.enable","true");
        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");   
        props.setProperty("mail.smtp.socketFactory.fallback", "false");   
        props.setProperty("mail.smtp.port", "465");   
        props.setProperty("mail.smtp.socketFactory.port", "465"); 

        Session session = Session.getInstance(props, 
        new javax.mail.Authenticator() { 
       protected PasswordAuthentication getPasswordAuthentication() { 
       return new PasswordAuthentication(username, password); 
       }});
       try{
           Message message = new MimeMessage(session); 
           message.setFrom(new InternetAddress(sendEmail)); // 보내는 사람 email
           message.setRecipients(Message.RecipientType.TO,
        		   					InternetAddress.parse(recipient)); // 받는 사람 email
           message.setSubject(subject); // 제목
           message.setText(body); //내용 
           //message.setContent("내용","text/html; charset=utf-8");//글내용을 html타입 charset설정
           Transport.send(message); 
           System.out.println("send 완료");
           
           // DB 작업
           UserCertify userCertify = new UserCertify();
           userCertify.setUserCertifyEmail(recipient);
           userCertify.setUserCertifyNum(authNum);
           // userCertify status default 0
           UserCertifyDBBean userCertifyProcess = UserCertifyDBBean.getInstance();
           String id = userCertifyProcess.insert(userCertify) + "";
           System.out.println("userCertify db 입력 완료");
           
	   		resultMap.put("status", "success");
	   		if(id != null) {
	   			resultMap.put("certify_id", id);
	   		}
	   		String gson = new Gson().toJson(resultMap);
	   		return gson;

       } catch(Exception e){
           e.printStackTrace();
       }
       resultMap.put("status", "fail");
       String gson = new Gson().toJson(resultMap);
  		return gson;
	}
}
