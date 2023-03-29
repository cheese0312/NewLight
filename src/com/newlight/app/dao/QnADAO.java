package com.newlight.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.vo.QnAVO;

public class QnADAO {

	public SqlSession sqlSession;

	public QnADAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public List<QnAVO> selectAll() {
		return sqlSession.selectList("qna.selectAll");
	}

	public void delete(int memberNumber) {
		sqlSession.delete("qna.delete", memberNumber);

	}

}
