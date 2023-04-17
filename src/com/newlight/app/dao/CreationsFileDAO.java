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
	
	public void insert(CreationsFileDTO creationDTO) {
		sqlSession.insert("creationsfile.insert", creationDTO);
	}
	
	public List<CreationsFileDTO> select(int creationNumber){
		return sqlSession.selectList("creationsfile.select", creationNumber);
	}
	
	public void deleteMember(int memberNumber) {
		sqlSession.delete("creationsfile.deleteMember", memberNumber);
	}
	
	public List<CreationsFileDTO> selectDelete(int memberNumber){
		return sqlSession.selectList("creationsfile.selectDelete", memberNumber);
	}
	
	public void delete(int creationNumber) {
		sqlSession.delete("creationsfile.delete" , creationNumber);
	}
}
