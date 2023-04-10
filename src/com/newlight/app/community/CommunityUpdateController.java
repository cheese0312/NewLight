package com.newlight.app.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CommunityDAO;

public class CommunityUpdateController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		int communityNumber = Integer.valueOf(req.getParameter("communityNumber"));
		CommunityDAO communityDAO = new CommunityDAO();
		System.out.println(communityNumber);
		req.setAttribute("community", communityDAO.select(communityNumber));
		
		req.getRequestDispatcher("/app/community/communityUpdate.jsp").forward(req, resp);
	}

}
