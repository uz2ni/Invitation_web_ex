package com.test.Builder.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.Builder.controller.CommandAction;
import com.test.Builder.dao.UserDBBean;
import com.test.Builder.dto.User;
import com.test.Builder.message.Config;
import com.test.Builder.message.SendSNS;

public class MessageSubmitAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		User user = (User) request.getSession().getAttribute("user");
		
		// 값 받아옴
		int point = user.getUserPoint(); // user의 포인트 수
		String content = request.getParameter("sms-content"); // 보내는 내용
		String smsSenderName = request.getParameter("sms-sender-name"); // 보내는 분
		String smsSenderNumber = request.getParameter("sms-sender-number"); // 보내는 번호
		String smsReceiverNumber = request.getParameter("sms-receiver-number"); // 받는 번호
		String smsReceiverName = request.getParameter("sms-receiver-name"); // 받는 분
		String smsUrl = request.getParameter("sms-url"); // url 이름
		// 보낼 내용
		String basic = smsSenderName + "님이 " + smsReceiverName + "님을 초대합니다 ! ";
		String addContent = basic + content + "(http://i-invite-u.com/" + smsUrl + ")";
		
		System.out.println("sms-sender-name:"+smsSenderName+", sms-sender-number:"+smsSenderNumber);
		System.out.println("sms-receiver-name:"+smsReceiverName+", sms-receiver-number:"+smsReceiverNumber);
		System.out.println("contnet:"+addContent);
		
		// send message
		SendSNS sns = new SendSNS();
		Config config = sns.setting(addContent, smsSenderNumber, smsReceiverNumber);
		sns.send(config);
		
		// 포인트 삭제 (-20)
		// 기존 포인트에서 -20 하락
		int newPoint = pointSub(point, 20); //20 포인트 차감
		user.setUserPoint(newPoint);
		UserDBBean userProcess = UserDBBean.getInstance();
		userProcess.updatePoint(user);
		System.out.println("포인트 차감!");
		
		
		return "index.jsp";
	}
	
	// 포인트 차감 함수
	public int pointSub(int point, int value) {
		if((point-value) < 0) { // 포인트 차감 했을 때 0미만인 경우
			return -1;
		}else { // 포인트가 있을 경우
			return point - value;
		}
	}

}
