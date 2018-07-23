package com.test.Builder.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.Builder.config.SqlSessionManager;
import com.test.Builder.dto.Content;
import com.test.Builder.dto.Payment;
import com.test.Builder.dto.User;

//기능 : 결제 시 정보를 데이터에 삽입하기 위해 Payment db에 접근 할 수 있는 클래스.
//작성자 : 송유진
//날짜 : 18.06.11

public class PaymentDBBean {

	private static PaymentDBBean instance = new PaymentDBBean();
	
	//.jsp 페이지에서 DB 연동빈인 BoardBean 클래스의 메소드에 접근 시 필요
	public static PaymentDBBean getInstance() {
		return instance;
	}
	
	// 세션 객체 생성
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession(); //mybatis session값 불러오기
    
	// 결제 시 insert
	public int insert(Payment payment) {

		// mapper에 접근하기 위한 SQLsession
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		int cnt = 0; //insert 개수 카운트

		sqlSession.insert("com.test.Builder.sqlmap.PaymentMap.paymentInsert", payment);
		
		sqlSession.commit();
		sqlSession.close();

		return cnt++;

	}    
	
	// pg창 입력 후 업데이트
    public void update(Payment payment) {
    	int i = -1;
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	System.out.println("update: " + payment.toString());
    	try {
    		i = sqlSession.update("com.test.Builder.sqlmap.PaymentMap.paymentUpdate", payment);
    		System.out.println("i:"+i);
    	} finally {
    		sqlSession.commit();
    		sqlSession.close();
    	}
    }
    
    // 서비스 신청 내역 select
    public List<Payment> selectList(int userId) {
    	List<Payment> list;
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	try { 
    		list = sqlSession.selectList("com.test.Builder.sqlmap.PaymentMap.paymentSelectList", userId);
    	} finally {
    		sqlSession.close();
    	}
    	return list;
    }


}
