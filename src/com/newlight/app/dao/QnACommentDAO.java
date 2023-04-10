package com.newlight.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class QnACommentDAO {
	public SqlSession sqlSession;
	
	public QnACommentDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void deleteMember(int memberNumber) {
		sqlSession.delete("qnaComment.deleteMember", memberNumber);
	}
	
}





