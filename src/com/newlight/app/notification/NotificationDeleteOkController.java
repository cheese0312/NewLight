package com.newlight.app.notification;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.NotificationDAO;

public class NotificationDeleteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	      int notificationNumber = Integer.parseInt(req.getParameter("notificationNumber"));
	      
	      new NotificationDAO().delete(notificationNumber);
		resp.sendRedirect("/notification/notificationListOk.nc");
	}

}
