package com.newlight.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.AdminVO;

public class AdminDAO {
	public SqlSession sqlSession;
	
	public AdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<AdminVO> memberList(AdminVO adminVO){
		return sqlSession.selectList("admin.memberList" , adminVO);
	}
	
	public void statusUpdate(AdminVO adminVO) {
		sqlSession.update("admin.statusUpdate" ,adminVO);
	}
	

}
