package com.test.Builder.config;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// DB 연결 정보를 불러오는 클래스
public class SqlSessionManager {
	
	public static SqlSessionFactory sqlSession;
	 
	 
    static {
        String resource = "com/test/Builder/config/builder-config.xml"; // DB 정보를 담고있는 xml파일
         
        Reader reader;
         
 
        try {
            reader = Resources.getResourceAsReader( resource );
            sqlSession = new SqlSessionFactoryBuilder().build( reader );
             
        } catch (IOException e) {
            e.printStackTrace();
        }
         
         
    }
     
     
    public static SqlSessionFactory getSqlSession() {
        return sqlSession;
    }


}
