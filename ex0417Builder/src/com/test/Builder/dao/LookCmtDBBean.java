package com.test.Builder.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.Builder.config.SqlSessionManager;
import com.test.Builder.dto.LookCmt;

public class LookCmtDBBean {
	
	private static LookCmtDBBean instance = new LookCmtDBBean();
	
	//.jsp 페이지에서 DB 연동빈인 BoardBean 클래스의 메소드에 접근 시 필요
	public static LookCmtDBBean getInstance() {
		return instance;
	}
	
	// 세션 객체 생성
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession(); //mybatis session값 불러오기

    // insert
	public void insert(LookCmt lookCmt) {

		// mapper에 접근하기 위한 SQLsession
		SqlSession sqlSession = sqlSessionFactory.openSession();

		sqlSession.insert("com.test.Builder.sqlmap.LookCmtMap.lookCmtInsert", lookCmt);
		
		sqlSession.commit();
		sqlSession.close();

	}
	
	// select
	public List<LookCmt> selectList(int lookId) {
		
		// mapper에 접근하기 위한 SQLsession
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		List<LookCmt> list;
		try {
			list = sqlSession.selectList("com.test.Builder.sqlmap.LookCmtMap.lookCmtSelectList", lookId);
		} finally {
			sqlSession.close();
		}
		
		return list;
	}


}
