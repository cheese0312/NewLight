package com.newlight.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String target = req.getRequestURI().substring(req.getContextPath().length());
		System.out.println(target); 
		
		switch(target) {
		
		case "/admin/adminOk.ad" :
			new MemberListOkController().execute(req, resp);
			break;
			
		case "/admin/statusUpdateOk.ad" :
			new StatusUpdateOkControlloer().execute(req, resp);
			break;
		
		}
		}
}
