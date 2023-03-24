package com.newlight.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.CreationsDTO;

public class CreationsDAO {
	public SqlSession sqlSession;
	
	public CreationsDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public int select(CreationsDTO creationDTO) {
		return sqlSession.selectOne("creations.select");
	}
	
	public void delete(int memberNumber) {
		sqlSession.delete("creations.delete", memberNumber);
	}


}
