package com.newlight.app.dao;

import java.util.List;

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
	
	public List<QnAFileDTO> selectAll(int qnaNumber) {
		return sqlSession.selectList("qnaFile.selectAll", qnaNumber);
	}
	
//	회원탈퇴 시 QnAFile 삭제
	public void deleteMember(int memberNumber) {
		sqlSession.delete("qnaFile.deleteMember", memberNumber);
	}
	
	public List<QnAFileDTO> selectDelete(int memberNumber){
		return sqlSession.selectList("qnaFile.selectDelete", memberNumber);
	}
}
