package com.newlight.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
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

}
