package com.newlight.app.creations;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;

public class CreationUploadController implements Execute{
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("***");
		int creationNumber = Integer.valueOf(req.getParameter("creationNumber"));
		CreationsDAO creationDAO = new CreationsDAO();
		
		
		req.setAttribute("creation", creationDAO.select2(creationNumber));
		
		req.getRequestDispatcher("/app/main/upload.jsp").forward(req, resp);
	}

}
