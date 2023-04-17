package com.newlight.app.notification;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.NotificationDAO;
import com.newlight.app.dto.NotificationDTO;
import com.oreilly.servlet.MultipartRequest;

public class NotificationWriteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		NotificationDAO notificationDAO = new NotificationDAO();
		NotificationDTO notificationDTO = new NotificationDTO();
		req.setCharacterEncoding("utf-8");
		System.out.println("컨트롤러 탔다!!");
		System.out.println(req.getParameter("notificationTitle"));
		
		
		notificationDTO.setNotificationTitle(req.getParameter("notificationTitle"));
		notificationDTO.setNotificationContent(req.getParameter("notificationContent"));
		
		notificationDAO.insert(notificationDTO);
		
		resp.sendRedirect("/notification/notificationListOk.nc");
	}
}

	
	
	
	
	
	
	
	
	
	
