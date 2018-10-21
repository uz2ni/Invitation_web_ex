package com.test.Builder.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.Builder.config.SqlSessionManager;
import com.test.Builder.dto.UserCertify;

public class UserCertifyDBBean {

	private static UserCertifyDBBean instance = new UserCertifyDBBean();
	
	public static UserCertifyDBBean getInstance() {
		return instance;
	}
	
	// 세션 객체 생성
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession(); //mybatis session값 불러오기

	// UserCertify insert
	public int insert(UserCertify userCertify) {

		// mapper에 접근하기 위한 SQLsession
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		int cnt = sqlSession.insert("com.test.Builder.sqlmap.UserCertifyMap.userCertifyInsert", userCertify);
		int id = userCertify.getUserCertifyId();
		System.out.println("certify id:" + id);

		sqlSession.commit();
		sqlSession.close();

		return id;
	}

	// UserCertify Select
	public UserCertify getUserCertify(int id) {
		// mapper에 접근하기 위한 SQLsession
		SqlSession sqlSession = sqlSessionFactory.openSession();
		UserCertify userCertify;
		try {
			userCertify = sqlSession.selectOne("com.test.Builder.sqlmap.UserCertifyMap.userCertifySelectOne", id);
		
		} finally {
			sqlSession.close();
		}
		return userCertify;
	}

	
	
	// UserCertify Update
    public void updateUserCertify(UserCertify userCertify) {
    	int i = -1;
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	try {
    		i = sqlSession.update("com.test.Builder.sqlmap.UserCertifyMap.userCertifyUpdate", userCertify);
    		System.out.println("i:"+i);
    	} finally {
    		sqlSession.commit();
    		sqlSession.close();
    	}
    }
    
}
