package com.test.Builder.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.Builder.config.SqlSessionManager;
import com.test.Builder.dto.Look;
import com.test.Builder.dto.Payment;

public class LookDBBean {
	
	private static LookDBBean instance = new LookDBBean();
	
	//.jsp 페이지에서 DB 연동빈인 BoardBean 클래스의 메소드에 접근 시 필요
	public static LookDBBean getInstance() {
		return instance;
	}
	
	// 세션 객체 생성
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession(); //mybatis session값 불러오기

    // selectList
    public List<Look> selectList() {
    	List<Look> list;
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	try { 
    		list = sqlSession.selectList("com.test.Builder.sqlmap.LookMap.lookSelectList1");
    		
    	} finally {
    		sqlSession.close();
    	}
    	return list;
    }
    
    // selectList
    public List<Look> selectTypeList(int type) {
    	List<Look> list;
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	try { 
    		list = sqlSession.selectList("com.test.Builder.sqlmap.LookMap.lookSelectTypeList1", type);
    		
    	} finally {
    		sqlSession.close();
    	}
    	return list;
    }    
    
    // insert
	public int insert(Look look) {

		// mapper에 접근하기 위한 SQLsession
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		int cnt = 0; //insert 개수 카운트

		sqlSession.insert("com.test.Builder.sqlmap.LookMap.lookInsert", look);
		
		sqlSession.commit();
		sqlSession.close();

		return cnt++;

	}
	
	// search
	public List<Look> search(String query) {
		
		// mapper에 접근하기 위한 SQLsession
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		List<Look> list = new ArrayList<Look>(); 
		Look look = new Look();
		int cnt = -1;
    	try { 
    		// db에 쿼리에 맞는 row가 존재하나 확인
    		cnt = sqlSession.selectOne("com.test.Builder.sqlmap.LookMap.lookSelectCnt", query);
    		
    		if(cnt > 0) { // 존재 한다면
        		list = sqlSession.selectList("com.test.Builder.sqlmap.LookMap.lookSelectSearch1", query);
    		}else { // 존재하지 않는다면 (cnt=0)
    			look.setLookId(-1);
    			System.out.println("look:"+look.toString());
    			list.add(look);
    		}
        	
    	} finally {
    		sqlSession.close();
    	}
    		
    		return list;
		
		
	}
    

}
