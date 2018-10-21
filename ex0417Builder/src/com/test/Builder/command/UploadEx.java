package com.test.Builder.command;

import java.util.HashMap;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.Builder.controller.AjaxCommandAction;

public class EmailCheckAjaxAction implements AjaxCommandAction {

	@Override
	public String ajaxRequestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		HashMap<String, String> resultMap = new HashMap<String, String>();

		System.out.println("이메일체크 진입");
		
		// 랜덤함수 생성 & 변수 설정
		Random random = new Random();
		int radomString = random.nextInt(10000);
		String authNum =  String.valueOf(radomString); // 인증번호
		String message = "인증번호 [" + authNum + "]";  // 인증번호 포함한 메세지
		
		// test
		
		String host = "smtp.gmail.com";
		
		final String username = "dbwlsdlqh12";       //네이버 아이디를 입력해주세요. @naver.com은 입력하지 마시구요.
		final String password = "dbwls418";   //네이버 이메일 비밀번호를 입력해주세요.
		int port = 465; //포트번호

		// 메일 내용
		String recipient = request.getParameter("input_email");    //받는 사람의 메일주소를 입력해주세요.
		System.out.println(recipient);
		String subject = "초대해U 인증 메일"; 					  //메일 제목 입력해주세요.
		String body = username+"님으로 부터 메일을 받았습니다. "+message; //메일 내용 입력해주세요.
		 
		Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성

		// SMTP 서버 정보 설정
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		//Session 생성
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			String un=username;
			String pw= "wodnr825";
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(un, pw);
			}
		});
		session.setDebug(true); //for debug

		Message mimeMessage = new MimeMessage(session); //MimeMessage 생성
		try {
			mimeMessage.setFrom(new InternetAddress(recipient));
			mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
			mimeMessage.setSubject(subject);  //제목셋팅
			mimeMessage.setText(body);        //내용셋팅
			Transport.send(mimeMessage); //javax.mail.Transport.send() 이용
			//수신자셋팅 //.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		resultMap.put("status", "fail");
		String gson = new Gson().toJson(resultMap);
		return gson;
	}
}
