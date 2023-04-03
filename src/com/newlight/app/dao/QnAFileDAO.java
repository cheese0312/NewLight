package com.newlight.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.QnAFileDTO;

public class QnAFileDAO {
	public SqlSession sqlSession;

	public QnAFileDAO() {
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	public void insert(QnAFileDTO qnaFileDTO) {
		sqlSession.insert("qnaFile.insert",qnaFileDTO);
	}
}
