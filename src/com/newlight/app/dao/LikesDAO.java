package com.newlight.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.LikesDTO;

public class LikesDAO {
	public SqlSession sqlSession;

	public LikesDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<LikesDTO> likeOk(Map<String, Integer> page) {
		return sqlSession.selectList("likes.like", page);
	}

	public void delete(int memberNumber) {
		sqlSession.delete("like.delete", memberNumber);
	}
	
	public int likeCount(int creationNumber) {
		return sqlSession.selectOne("likes.likecount" , creationNumber);
	}
	
	public void likeDelete(int creaitonNumber) {
		sqlSession.delete("likes.likeDelete" , creaitonNumber);
	}

}
