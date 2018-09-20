package com.test.Builder.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.Builder.config.SqlSessionManager;
import com.test.Builder.dto.Content;
import com.test.Builder.dto.ContentGuest;

//기능 : contentGuest 에 접근 할 수 있는 클래스. 초대장의 댓글 db 연결
//작성자 : 송유진
//날짜 : 18.08.29

public class ContentGuestDBBean {
	
	private static ContentGuestDBBean instance = new ContentGuestDBBean();
	
	//.jsp 페이지에서 DB 연동빈인 BoardBean 클래스의 메소드에 접근 시 필요
	public static ContentGuestDBBean getInstance() {
		return instance;
	}
	
	// 세션 객체 생성
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession(); //mybatis session값 불러오기
    
    // insert
  	public int insert(ContentGuest contentGuest) {

  		// mapper에 접근하기 위한 SQLsession
  		SqlSession sqlSession = sqlSessionFactory.openSession();
  		
  		int cnt = 0; //insert 개수 카운트

  		sqlSession.insert("com.test.Builder.sqlmap.ContentGuestMap.contentGuestInsert", contentGuest);
  		
  		sqlSession.commit();
  		sqlSession.close();

  		return cnt++;
  	}    
  	
    // update
    public void update(ContentGuest contentGuest) {
    	int i = -1;
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	System.out.println("update: " + contentGuest.toString());
    	try {
    		i = sqlSession.update("com.test.Builder.sqlmap.ContentGuestMap.contentGuestUpdate", contentGuest);
    		System.out.println("i:"+i);
    	} finally {
    		sqlSession.commit();
    		sqlSession.close();
    	}
    }    
    
    // delete
    public void delete(int contentGuestId) {
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	try {
    		sqlSession.delete("com.test.Builder.sqlmap.ContentGuestMap.contentGuestDelete", contentGuestId);
    	} finally {
    		sqlSession.commit();
    		sqlSession.close(); 
    	}
    }
    
    // select list
    public List<ContentGuest> selectList(int urlId) {
    	List<ContentGuest> list;
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	try {
    		list = sqlSession.selectList("com.test.Builder.sqlmap.ContentGuestMap.contentGuestSelectList", urlId);
    	} finally {
    		sqlSession.close();
    	}
    	return list;
    }
    
    // select pw
    public String selectPw(int contentGuestId) {
    	// mapper에 접근하기 위한 SQLsession
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	String pw;
    	try {
    		pw = (String)sqlSession.selectOne("com.test.Builder.sqlmap.ContentGuestMap.contentGuestSelectPw", contentGuestId);
    	} finally {
    		sqlSession.close();
    	}
    	return pw;
    }
}
