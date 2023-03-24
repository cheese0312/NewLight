package com.newlight.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.CreationsFileDTO;

public class CreationsFileDAO {

	public SqlSession sqlSession;
	
	public CreationsFileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<CreationsFileDTO> select(int creationNumber){
		return sqlSession.selectList("creationsfile.select", creationNumber);
	}
	
	public void delete(int creationNumber) {
		sqlSession.delete("creationsfile.delete", creationNumber);
	}
}
