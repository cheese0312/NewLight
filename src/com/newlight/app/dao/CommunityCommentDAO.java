package com.newlight.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class CommunityCommentDAO {
	public SqlSession sqlSession;
	
	public CommunityCommentDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void deleteMember(int memberNumber) {
		sqlSession.delete("communityComment.deleteMember", memberNumber);
	}

}
