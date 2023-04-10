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
	
//	회원탈퇴 시 좋아요 삭제
	public void deleteMemeber(int memberNumber) {
		sqlSession.delete("likes.deleteMember", memberNumber);
	}

}
