package com.test.Builder.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.Builder.config.SqlSessionManager;
import com.test.Builder.dto.Content;

public class ContentDao implements ContentMapper {
	
	private static ContentDao instance;
	
	private ContentDao() {}
	// 싱글톤 패턴
	public static ContentDao getInstance() {
		if(instance == null)
			instance = new ContentDao();
		System.out.println("getInstance()");

		return instance;
	}
	
	// 세션 객체 생성
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession(); //mybatis session값 불러오기

	@Override
	// Content 내용을 DB에 저장하는 메서드
	public void insertContent(Content content) {
		
		content.setUserId(1);
		
	    SqlSession sqlSession = sqlSessionFactory.openSession(); // mapper에 접근하기 위한 SQLsession
	    System.out.println("sqlSession");
		sqlSession.insert("com.test.Builder.sqlmap.ContentMap.insertContent", content);
		sqlSession.commit();
		sqlSession.close(); 
	}

}
