package com.newlight.app.notification;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CommunityCommentDAO;
import com.newlight.app.dao.NotificationDAO;
import com.newlight.app.dto.CommunityCommentDTO;
import com.newlight.app.dto.NotificationDTO;

public class NotificationUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		NotificationDTO notificationDTO = new NotificationDTO();
		NotificationDAO notificationDAO = new NotificationDAO();
		req.setCharacterEncoding("utf-8");
		int notificationNumber = 0;
		System.out.println("==========");
		
		notificationDTO.setNotificationTitle(req.getParameter("notificationTitle"));
		notificationDTO.setNotificationNumber(Integer.parseInt(req.getParameter("notificationNumber")));
		notificationDTO.setNotificationContent(req.getParameter("notificationContent"));
		
		new NotificationDAO().update(notificationDTO);
		notificationDAO.delete(notificationNumber);
	   
		
		 resp.sendRedirect("/notification/notificationListOk.nc");
	}

}
