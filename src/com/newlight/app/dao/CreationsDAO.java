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
	
	public void update(CreationsFileDTO creationsFileDTO) {
		sqlSession.update("creations.update", creationsFileDTO);
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
		sqlSession.insert("creationsComment.commentInsert", creationsVO);
	}
	
//	댓글 수정하기
	public void commentUpdate(CreationsVO creationsVO) {
		sqlSession.update("creationsComment.commentUpdate" , creationsVO);
	}
	
//	댓글 삭제하기
	public void commentDelete(int commentNumber) {
		sqlSession.delete("creationsComment.commentDelete" , commentNumber);
	}
	
//	댓글 전체 삭제
	public void creationCommentDelete(int creationNumber) {
		sqlSession.delete("creationsComment.creationDelete" , creationNumber);
	}
	
//	창작물 수정하기
	public void creationUpdate (CreationsVO creationsVO) {
		sqlSession.update("creations.creationUpdate" , creationsVO);
	}
	
//	 창작물 삭제하기
	public void creationDelete(int creationNumber) {
		sqlSession.delete("creations.creationDelete" , creationNumber);
	}
}





