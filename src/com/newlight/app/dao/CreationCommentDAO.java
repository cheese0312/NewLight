package com.newlight.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class CreationCommentDAO {
	public SqlSession sqlSession;
	
	public CreationCommentDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	회원탈퇴 시 창작물 댓글 삭제
	public void deleteMember(int memberNumber) {
		sqlSession.delete("creationComment.deleteMember", memberNumber);
	}
}
