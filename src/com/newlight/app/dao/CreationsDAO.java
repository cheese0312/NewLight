package com.newlight.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.CreationsDTO;
import com.newlight.app.dto.CreationsVO;

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
	
	public CreationsVO select(int creationNumber) {
		return sqlSession.selectOne("creations.select", creationNumber);
	}
	
	public void insert(CreationsDTO creationDTO) {
		sqlSession.insert("creations.insert", creationDTO);
	}
	
	public int getSequence() {
		return sqlSession.selectOne("creations.getSequence");
	}
	
//	파일 조회해서 페이지에 뿌려주기
	public List<CreationsVO> selectAll(){
		return sqlSession.selectList("creations.selectAll");
	}
	
	public List<CreationsVO> category2Background(CreationsVO creationsVO){
		return sqlSession.selectList("creations.category2background", creationsVO);
	}
	
//	테마별 파일조회해서 페이지에 뿌려주기
	public List<CreationsVO> selectMenu(Map<String, String> categoryMap){
		return sqlSession.selectList("creations.selectMenu", categoryMap);
	}
	
}





