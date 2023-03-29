package com.newlight.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.MemberDTO;
import com.newlight.app.dto.MemberFileDTO;
import com.newlight.app.dto.MemberFileVO;

public class MemberDAO {
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void join(MemberDTO memberDTO) {
		System.out.println("MemberDAO join 들어옴!");
		sqlSession.insert("member.join", memberDTO);
	}
	
	public void insert(MemberFileDTO memberfileDTO) {
		sqlSession.insert("pfpinsert", memberfileDTO);
	}
	
	public String info(MemberFileVO memberfileVO) {
		return sqlSession.selectOne("member.info", memberfileVO);
	}
	
	public String select(MemberFileDTO memberfileDTO) {
		return sqlSession.selectOne("member.memberpfp", memberfileDTO);
	}
	
	public int login(MemberDTO memberDTO) {
		Integer memberNumber = sqlSession.selectOne("member.login", memberDTO);
		return memberNumber == null ? -1 : memberNumber;	
	}
	
	public boolean checkId(String memberId) {
		return (Integer)sqlSession.selectOne("member.checkId", memberId) < 1;
	}
	
	public void delete(int memberNumber) {
		sqlSession.delete("member.delete", memberNumber);
	}
	
	public String getMemberId(int memberNumber) {
		return sqlSession.selectOne("member.getMemberId", memberNumber);
	}
	
}
