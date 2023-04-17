package com.newlight.app.notification;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.NotificationDAO;
import com.newlight.app.dto.NotificationDTO;

public class NotificationReadOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int notificationNumber = Integer.valueOf(req.getParameter("notificationNumber"));
        
		NotificationDAO notificationDAO = new NotificationDAO(); 
		NotificationDTO notificationDTO = notificationDAO.select(notificationNumber);
		System.out.println("readOk컨트롤러 들어왔다!!");
		
		
		
		
		req.setAttribute("notification", notificationDTO);
		
		req.getRequestDispatcher("/app/notification/notificationRead.jsp").forward(req, resp);
	}

}
