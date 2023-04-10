package com.newlight.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.QnADTO;
import com.newlight.app.vo.QnAVO;

public class QnADAO {

	public SqlSession sqlSession;

	public QnADAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public void delete(int memberNumber) {
		sqlSession.delete("qna.delete", memberNumber);
	}
	
//	문의사항 목록
	public List<QnAVO> selectAll(Map<String, Integer> pageMap) {
		return sqlSession.selectList("qna.selectAll", pageMap);
	}
	
	public int getTotal() {
		return sqlSession.selectOne("qna.getTotal");
	}
	public void insert(QnADTO qnaDTO) {
		sqlSession.insert("qna.insert", qnaDTO);
	}
	public int getSequence() {
		return sqlSession.selectOne("qna.getSequence");
	}
	
//	문의사항 읽기
	public QnAVO select(int qnaNumber) {
		return sqlSession.selectOne("qna.select", qnaNumber);
	}
	
	public void updateReadCount(int qnaNumber) {
		sqlSession.update("qna.updateReadCount", qnaNumber);
	}
// 문의사항 수정
	public void update (QnADTO qnaDTO) {
		sqlSession.update("qna.update", qnaDTO);
	}
	
}
