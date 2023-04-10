package com.newlight.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.MainVO;

public class MainDAO {
	
	public SqlSession sqlSession;
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	메인페이지 리스트 띄어주기
	public List<MainVO> selectList() {
		return sqlSession.selectList("main.selectList");
	}
	
}
