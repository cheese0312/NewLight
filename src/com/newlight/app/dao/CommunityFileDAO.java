package com.newlight.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.CommunityFileDTO;

public class CommunityFileDAO {
	public SqlSession sqlSession;

	public CommunityFileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(CommunityFileDTO communityFileDTO) {
		sqlSession.insert("communityFile.insert", communityFileDTO);
	}
	
	public List<CommunityFileDTO> select(int communityNumber) {
		return sqlSession.selectList("communityFile.select", communityNumber);
	}
	
//	회원탈퇴 시 커뮤니티파일 삭제
	public void deleteMember(int memberNumber) {
		sqlSession.delete("communityFile.deleteMember", memberNumber);
	}
	
	public List<CommunityFileDTO> selectDelete(int memberNumber) {
		return sqlSession.selectList("communityFile.selectDelete", memberNumber);
	}
	
	public void delete(int communityNumber) {
		sqlSession.delete("communityFile.delete", communityNumber);
	}
	
}
