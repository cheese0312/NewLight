package com.newlight.app.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.member.LoginOkController;

public class MainFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String target = req.getRequestURI().substring(req.getContextPath().length());
		System.out.println(target); 
		
		switch(target) {
		case "/main/mainNewlightOk.mi" :
//			임시 이동처리
			req.getRequestDispatcher("/app/main/mainpage_newlight.jsp").forward(req, resp);
			break;
		case "2" :
			break;
		}
		
	}
}
