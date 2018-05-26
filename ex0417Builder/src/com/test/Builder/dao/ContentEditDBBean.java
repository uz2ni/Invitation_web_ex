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
    
    // URL 테이블에 글 추가
//    public int insertContent(Content content) {
//    	
//    	// mapper에 접근하기 위한 SQLsession
//	    SqlSession sqlSession = sqlSessionFactory.openSession();
//    	
//    	//쿼리문 카운트
//    	int cnt = 0;
//		
//	    System.out.println("sqlSession");
//		sqlSession.insert("com.test.Builder.sqlmap.ContentMap.insertContent", content);
//		sqlSession.commit();
//		sqlSession.close(); 
//
//		cnt++;
//		
//		return cnt;
//    }
    
    // memberId에 해당하는 URL 레코드 불러오기
    public Content selectOne(int urlId) {
    	Content content;
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	try { 
    		content = sqlSession.selectOne("com.test.Builder.sqlmap.ContentMap.contentSelectOne", urlId);
    	} finally {
    		sqlSession.close();
    	}
    	return content;
    }
    
    // 편집 내용 업데이트
    public void update(Content content) {
    	int i = -1;
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	System.out.println("update: " + content.toString());
    	try {
    		i = sqlSession.update("com.test.Builder.sqlmap.ContentMap.contentUpdate", content);
    		System.out.println("i:"+i);
    	} finally {
    		sqlSession.commit();
    		sqlSession.close();
    	}
    }
    

}
