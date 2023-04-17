package com.newlight.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.newlight.app.dto.CommunityDTO;
import com.newlight.app.dto.NotificationDTO;

public class NotificationDAO {
	public SqlSession sqlSession;
	
	public NotificationDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<NotificationDTO> selectAll(Map<String, Integer> pageMap) {
		return sqlSession.selectList("notification.selectAll", pageMap);
	}
	
	public int getTotal() {
		return sqlSession.selectOne("notification.getTotal");
	}

	public NotificationDTO select(int notificationNumber) {
		return sqlSession.selectOne("notification.select", notificationNumber);
	}
	
	public void insert(NotificationDTO notificationDTO) {
		sqlSession.insert("notification.insert", notificationDTO);
	}
	
	public void delete(int notificationNumber) {
		sqlSession.delete("notification.delete", notificationNumber);
	}
	
	public void update(NotificationDTO notificationDTO) {
		sqlSession.update("notification.update", notificationDTO);
	}
	

}
