package com.newlight.app.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.QnACommentDTO;
import com.newlight.app.vo.QnACommentVO;

public class QnACommentDAO {
	public SqlSession sqlSession;

	public QnACommentDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	회원탈퇴 시 QnA댓글 삭제
	public void deleteMember(int memberNumber) {
		sqlSession.delete("comment.deleteMember", memberNumber);
	}

	public List<QnACommentVO> selectAll(int qnaNumber) {
		return sqlSession.selectList("comment.selectAll", qnaNumber);
	}

	public void insert(QnACommentDTO qnaCommentDTO) {
		sqlSession.insert("comment.insert", qnaCommentDTO);
	}

	public void delete(int commentNumber) {
		sqlSession.delete("comment.delete", commentNumber);
	}

	public void update(QnACommentDTO qnaCommentDTO) {
		sqlSession.update("comment.update", qnaCommentDTO);

	}
	
}
