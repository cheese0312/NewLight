package com.newlight.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.CreationsVO;
import com.newlight.app.dto.LikesDTO;

public class LikesDAO {
	public SqlSession sqlSession;

	public LikesDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<LikesDTO> likeOk(Map<String, Integer> page) {
		return sqlSession.selectList("likes.like", page);
	}

	public void delete(int memberNumber) {
		sqlSession.delete("like.delete", memberNumber);
	}
	
	public int likeCount(int creationNumber) {
		return sqlSession.selectOne("likes.likecount" , creationNumber);
	}
	
	public void likeDelete(int creaitonNumber) {
		sqlSession.delete("likes.likeDelete" , creaitonNumber);
	}
	
//	좋아요 생성
	public void insert(LikesDTO likesDTO) {
		sqlSession.insert("likes.insert" , likesDTO);
	}
	
//	좋아요 삭제
	public void likedelete(LikesDTO likesDTO) {
		sqlSession.delete("likes.likedelete" , likesDTO);
	}
	
//	좋아요 리스트
	public int getLikeCount(LikesDTO likesDTO) {
		return sqlSession.selectOne("likes.getLikeCount" , likesDTO);
	}
	
//	좋아요 게시물 리스트
	public List<CreationsVO> getLikeList(CreationsVO creationsVO) {
		return sqlSession.selectList("likes.getLikeList" , creationsVO);
	}
	
//	회원탈퇴 시 좋아요 삭제
	public void deleteMemeber(int memberNumber) {
		sqlSession.delete("likes.deleteMember", memberNumber);
	}
	


}
