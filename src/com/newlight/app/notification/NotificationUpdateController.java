package com.newlight.app.notification;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.NotificationDAO;

public class NotificationUpdateController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		int notificationNumber = Integer.valueOf(req.getParameter("notificationNumber"));
		NotificationDAO notificationDAO = new NotificationDAO();
		System.out.println(notificationNumber);
		req.setAttribute("notification", notificationDAO.select(notificationNumber));
		
		req.getRequestDispatcher("/app/notification/notificationUpdate.jsp").forward(req, resp);
	}

}
