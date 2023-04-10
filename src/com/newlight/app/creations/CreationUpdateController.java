package com.newlight.app.creations;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;

public class CreationUpdateController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		int creationNumber = Integer.valueOf(req.getParameter("creationNumber"));
		
		CreationsDAO creationsDAO = new CreationsDAO();
		
		req.setAttribute("creations", creationsDAO.select2(creationNumber));
		
		System.out.println(creationNumber);
		System.out.println("============================");
		
		req.getRequestDispatcher("/app/main/uploadUpdate.jsp").forward(req, resp);
//		resp.sendRedirect("/creations/creationUpdate.ct");

	}

}
