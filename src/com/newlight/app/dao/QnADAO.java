package com.newlight.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class QnADAO {
	
	public SqlSession sqlSession;
	
	public QnADAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void delete(int memberNumber) {
		sqlSession.delete("qna.delete", memberNumber);
	}
}
