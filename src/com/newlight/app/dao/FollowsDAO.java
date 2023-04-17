package com.newlight.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.FollowsDTO;

public class FollowsDAO {
	public SqlSession sqlSession;
	
	public FollowsDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void delete(FollowsDTO followsDTO) {
		 sqlSession.delete("follows.delete", followsDTO);
	}
	
	public void insert(FollowsDTO followsDTO) {
		 sqlSession.insert("follows.insert", followsDTO);
	}
	
//	회원탈퇴 시 팔로우 삭제
	public void deleteMember(int memberNumber) {
		sqlSession.delete("follows.deleteMember", memberNumber);
	}
	
	public int getFollowCount(FollowsDTO followsDTO) {
		return sqlSession.selectOne("follows.getFollowCount", followsDTO);
	}
	
}
