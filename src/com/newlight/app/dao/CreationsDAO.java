package com.newlight.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.CreationsDTO;
import com.newlight.app.dto.CreationsFileDTO;
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
	
	public CreationsVO select2(int creationNumber) {
		return sqlSession.selectOne("creations.select", creationNumber);
	}
	
	public int followCount (Map<String, Integer> followMap){
		return sqlSession.selectOne("creations.followCount" , followMap);
	}
	
	public void insert(CreationsDTO creationDTO) {
		sqlSession.insert("creations.insert", creationDTO);
	}
	
	public int getSequence() {
		return sqlSession.selectOne("creations.getSequence");
	}
	
	
	public List<CreationsVO> category2Background(CreationsVO creationsVO){
		return sqlSession.selectList("creations.category2background", creationsVO);
	}
	
//	테마별 파일조회해서 페이지에 뿌려주기
	public List<CreationsVO> selectMenu(Map<String, String> categoryMap){
		return sqlSession.selectList("creations.selectMenu", categoryMap);
	}
	
	public void update(CreationsFileDTO creationsFileDTO) {
		sqlSession.update("creations.update", creationsFileDTO);
	}
	
//	회원탈퇴 시 창작물 삭제
	public void deleteMember(int memberNumber) {
		sqlSession.delete("creations.delete", memberNumber);
	}
	
//	각 창작물 페이지 뿌려주기
	public CreationsVO creationContent(int creationNumber){
		return sqlSession.selectOne("creations.creationContent" , creationNumber);
	}
	
//	댓글 갯수 뿌려주기
	public int creationComment(int creationNumber) {
		return sqlSession.selectOne("creations.creationComment" , creationNumber);
	}
	
//	댓글 리스트 뿌려주기
	public List<CreationsVO> commentList(int creationNumber){
		return sqlSession.selectList("creations.commentList" , creationNumber);
	}
	
//	댓글 작성하기
	public void commentInsert(CreationsVO creationsVO) {
		sqlSession.insert("creationComment.commentInsert", creationsVO);
	}
	
//	댓글 수정하기
	public void commentUpdate(CreationsVO creationsVO) {
		sqlSession.update("creationComment.commentUpdate" , creationsVO);
	}
	
//	댓글 삭제하기
	public void commentDelete(int commentNumber) {
		sqlSession.delete("creationComment.commentDelete" , commentNumber);
	}
	
//	댓글 전체 삭제
	public void creationCommentDelete(int creationNumber) {
		sqlSession.delete("creationComment.creationDelete" , creationNumber);
	}
	
//	창작물 수정하기
	public void creationUpdate (CreationsVO creationsVO) {
		sqlSession.update("creations.creationUpdate" , creationsVO);
	}
	
//	 창작물 삭제하기
	public void creationDelete(int creationNumber) {
		sqlSession.delete("creations.creationDelete" , creationNumber);
	}
	
//	creationRead페이징 처리
	public CreationsVO creationRead(int creationNumber) {
		return sqlSession.selectOne("creations.creationRead", creationNumber);
	}
	
	
//	창작물 카테고리별로 뿌려주기
	public List<CreationsVO> selectMenu2 (Map<String, String> categoryMap){
		return sqlSession.selectList("creations.selectMenu2" , categoryMap);
	}
	
}





