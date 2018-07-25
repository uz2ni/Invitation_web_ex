package com.test.Builder.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.Builder.config.SqlSessionManager;
import com.test.Builder.dto.User;

public class UserDBBean {
	
private static UserDBBean instance = new UserDBBean();
	
	//.jsp 페이지에서 DB 연동빈인 BoardBean 클래스의 메소드에 접근 시 필요
	public static UserDBBean getInstance() {
		return instance;
	}
	
	// 세션 객체 생성
    SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession(); //mybatis session값 불러오기
    
	// User insert
	public int insert(User user) {

		// mapper에 접근하기 위한 SQLsession
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		int cnt = 0; //insert 개수 카운트

		sqlSession.insert("com.test.Builder.sqlmap.UserMap.userInsert", user);
		
		sqlSession.commit();
		sqlSession.close();

		return cnt++;

	}
	
	// 로그인 시 아이디, 비밀번호 체크 메서드
	public int loginCheck(String email, String pw) {
		// mapper에 접근하기 위한 SQLsession
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int chk = -1; // 로그인 잘 했는지 여부 체크할 변수
		String dbPw = ""; // db에서 꺼낸 비밀번호 담을 변수
		
		// id로 비밀번호 조회해서 가져온다.	
		try { 
    		dbPw = (String) ((sqlSession.selectOne("com.test.Builder.sqlmap.UserMap.userSelectPw", email)) == null ? "null" : (sqlSession.selectOne("com.test.Builder.sqlmap.UserMap.userSelectPw", email)));
    		if(dbPw.equals("null")) { // id가 존재하지 않는 경우
    			chk = -1;
    		}else if(dbPw.equals(pw)) { // dbPw와 입력한 pw가 같은 경우
    			chk = 1;
    		}else { // dbPw와 입력한 pw가 다른 경우
    			chk = 0;
    		}
    	} finally {
    		sqlSession.close();
    	}
		return chk;
	}
	
	// User Select
	public User getUser(String email) {
		// mapper에 접근하기 위한 SQLsession
		SqlSession sqlSession = sqlSessionFactory.openSession();
		User user;
		try {
			user = sqlSession.selectOne("com.test.Builder.sqlmap.UserMap.userSelectOne", email);
		} finally {
			sqlSession.close();
		}
		return user;
	}
	
    // 포인트 업데이트
    public void updatePoint(User user) {
    	int i = -1;
    	SqlSession sqlSession = sqlSessionFactory.openSession();
    	try {
    		i = sqlSession.update("com.test.Builder.sqlmap.UserMap.userUpdatePoint", user);
    		System.out.println("i:"+i);
    	} finally {
    		sqlSession.commit();
    		sqlSession.close();
    	}
    }
    
}
