package com.test.Builder.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.Builder.config.SqlSessionManager;
import com.test.Builder.dto.Content;

public class ContentEditDBBean {
	
	private static ContentEditDBBean instance = new ContentEditDBBean();
	
	//.jsp 페이지에서 DB 연동빈인 BoardBean 클래스의 메소드에 접근 시 필요
	public static ContentEditDBBean getInstance() {
		return instance;
	}
	
	// 세션 객체 생성
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession(); //mybatis session값 불러오기
    
    // Content 테이블에 글 추가
    public int insertContent(Content content) {
    	
    	// mapper에 접근하기 위한 SQLsession
	    SqlSession sqlSession = sqlSessionFactory.openSession();
    	
    	//쿼리문 카운트
    	int cnt = 0;
		
	    System.out.println("sqlSession");
		sqlSession.insert("com.test.Builder.sqlmap.ContentMap.insertContent", content);
		sqlSession.commit();
		sqlSession.close(); 

		cnt++;
		
		return cnt;
    }

}
