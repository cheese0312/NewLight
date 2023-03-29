package com.newlight.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.CommunityVO;

public class CommunityDAO {
	public SqlSession sqlSession;

	public CommunityDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void delete(int memberNumber) {
		sqlSession.delete("community.delete", memberNumber);
	}
	
	public List<CommunityVO> selectAll(Map<String, Integer> pageMap) {
		return sqlSession.selectList("community.selectAll", pageMap);
	}

	public int getTotal() {
		return sqlSession.selectOne("community.getTotal");
	}
	
	
}
