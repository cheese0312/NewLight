package com.newlight.app.dao;

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
}
