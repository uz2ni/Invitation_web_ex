package com.test.Builder.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.Builder.config.SqlSessionManager;
import com.test.Builder.dto.ContentAttend;

//기능 : contentAttend 에 접근 할 수 있는 클래스. 초대장의 참석여부 db 연결
//작성자 : 송유진
//날짜 : 18.10.03

public class ContentAttendDBBean {
	
	private static ContentAttendDBBean instance = new ContentAttendDBBean();
	
	//.jsp 페이지에서 DB 연동빈인 BoardBean 클래스의 메소드에 접근 시 필요
	public static ContentAttendDBBean getInstance() {
		return instance;
	}
	
	// 세션 객체 생성
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession(); //mybatis session값 불러오기

    // insert
  	public int insert(ContentAttend contentAttend) {

  		// mapper에 접근하기 위한 SQLsession
  		SqlSession sqlSession = sqlSessionFactory.openSession();
  		
  		int cnt = 0; //insert 개수 카운트

  		sqlSession.insert("com.test.Builder.sqlmap.ContentAttendMap.contentAttendInsert", contentAttend);
  		
  		sqlSession.commit();
  		sqlSession.close();

  		return cnt++;
  	}    
  	
  	// select Count (num : 1 참석, num : 2 불참석)
  	public int selectCount(ContentAttend contentAttend) {
  		int cnt;
  		// mapper에 접근하기 위한 SQLsession
  		SqlSession sqlSession = sqlSessionFactory.openSession();
  		try { 
    		cnt = sqlSession.selectOne("com.test.Builder.sqlmap.ContentAttendMap.contentAttendCnt", contentAttend);
    	} finally {
    		sqlSession.close();
    	}
    	return cnt;
  	}
  	
  	// select Count By Time
  	public int selectCountTime(ContentAttend contentAttend) {
  		int cnt;
  		// mapper에 접근하기 위한 SQLsession
  		SqlSession sqlSession = sqlSessionFactory.openSession();
  		try { 
    		cnt = sqlSession.selectOne("com.test.Builder.sqlmap.ContentAttendMap.contentAttendCntTime", contentAttend);
    	} finally {
    		sqlSession.close();
    	}
    	return cnt;
  	}

  	// select 참석자 / 불참석자
  	public List<ContentAttend> selectList(ContentAttend contentAttend) {
  		List<ContentAttend> list;
  		// mapper에 접근하기 위한 SQLsession
  		SqlSession sqlSession = sqlSessionFactory.openSession();
  		try { 
    		list = sqlSession.selectList("com.test.Builder.sqlmap.ContentAttendMap.contentAttendSelect", contentAttend);
    	} finally {
    		sqlSession.close();
    	}
    	return list;
  	}
  	
  	// urlId에 해당하는 row delete
  	public void delete(int urlId) {
  		// mapper에 접근하기 위한 SQLsession
  		SqlSession sqlSession = sqlSessionFactory.openSession();
  		try { 
  			sqlSession.delete("com.test.Builder.sqlmap.ContentAttendMap.contentAttendDelete", urlId);
  		} finally {
    		sqlSession.commit();
    		sqlSession.close(); 
    	}
  	}
}
