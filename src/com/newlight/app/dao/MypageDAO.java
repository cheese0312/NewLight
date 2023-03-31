package com.newlight.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.MemberDTO;
import com.newlight.app.dto.MypageVO;

public class MypageDAO {
	public SqlSession sqlSession;
	
	public MypageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<MypageVO> Followee(MypageVO mypageVO) {
		return sqlSession.selectList("mypage.mypagefollowee", mypageVO);
	}
	
	public MypageVO mypageinfo(int memberNumber) {
		return sqlSession.selectOne("mypage.mypageinfo", memberNumber);
	}
	
	public List<MypageVO> LikeList(MypageVO mypageVO){
		return sqlSession.selectList("mypage.mypageLikeList", mypageVO);
	}
	
	public List<MypageVO> creationList(MypageVO mypageVO){
		return sqlSession.selectList("mypage.mypagecreation" , mypageVO);
	}


}
