package com.newlight.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.MemberFileDTO;

public class MemberFileDAO {
	public SqlSession sqlSession;
	
	public MemberFileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert (MemberFileDTO memberFileDTO) {
		sqlSession.insert("memberFile.insert", memberFileDTO);
	}
	
	
	public List<MemberFileDTO> selectDelete(int memberNumber){
		return sqlSession.selectList("memberFile.selectDelete", memberNumber);
	}
}
