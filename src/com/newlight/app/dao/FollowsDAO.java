package com.newlight.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class FollowsDAO {
	public SqlSession sqlSession;
	
	public FollowsDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void delete(int memberNumber) {
		 sqlSession.delete("follows.delete", memberNumber);
	}
	
//	회원탈퇴 시 팔로우 삭제
	public void deleteMember(int memberNumber) {
		sqlSession.delete("follows.deleteMember", memberNumber);
	}
	
}
