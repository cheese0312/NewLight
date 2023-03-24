package com.newlight.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class LikesDAO {
	public SqlSession sqlSession;
	
	public LikesDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void delete(int memberNumber) {
		sqlSession.delete("like.delete", memberNumber);
	}

}
