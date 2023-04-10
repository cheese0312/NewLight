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
	
	public void delete(int communityNumber) {
		sqlSession.delete("communityFile.delete", communityNumber);
	}
}
