package com.test.Builder.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.Builder.config.SqlSessionManager;
import com.test.Builder.dto.Content;
import com.test.Builder.dto.Payment;

//기능 : content tb 에 접근 할 수 있는 클래스.
//작성자 : 송유진
//날짜 : ~ 18.05.20
//     18.06.20 (insert함수 생성)

public class ContentEditDBBean {
	
	private static ContentEditDBBean instance = new ContentEditDBBean();
	
	//.jsp 페이지에서 DB 연동빈인 BoardBean 클래스의 메소드에 접근 시 필요
	public static ContentEditDBBean getInstance() {
		return instance;
	}
	
	// 세션 객체 생성
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession(); //mybatis session값 불러오기
    
 // 결제 시 insert
 	public int insert(Content content) {

 		// mapper에 접근하기 위한 SQLsession
 		SqlSession sqlSession = sqlSessionFactory.openSession();
 		
 		int cnt = 0; //insert 개수 카운트

 		sqlSession.insert("com.test.Builder.sqlmap.ContentMap.contentInsert", content);
 		
 		sqlSession.commit();
 		sqlSession.close();

 		return cnt++;

 	}    
    
    // urlId에 해당하는 URL 레코드 불러오기
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

    // userId에 해당하는 URL 리스트 불러오기
    // 작성일 : 18.06.14
    public List<Content> selectList(int userId) {
    	List<Content> list;
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	try { 
    		list = sqlSession.selectList("com.test.Builder.sqlmap.ContentMap.contentSelectList", userId);
    	} finally {
    		sqlSession.close();
    	}
    	return list;
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
