package com.newlight.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.CommunityDTO;
import com.newlight.app.dto.CommunityFileDTO;
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
	
	public void insert(CommunityDTO communityDTO) {
		sqlSession.insert("community.insert", communityDTO);
	}
	
	public int getSequence() {
		return sqlSession.selectOne("community.getSequence");
	}
	
	public CommunityVO select(int communityNumber) {
		return sqlSession.selectOne("community.select", communityNumber);
	}
	
	public void updateReadCount(int communityNumber) {
		sqlSession.update("community.updateReadCount", communityNumber);
	}
	
//	회원탈퇴 시 커뮤니티 삭제
	public void deleteMember(int memberNumber) {
		sqlSession.delete("community.deleteMember", memberNumber);
	}
}
