package com.newlight.app.creations;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//창작물 프론트 컨트롤러 설정!

public class CreationsFrontController extends HttpServlet{
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
		case "/creations/CreationWrite.ct" :
//			임시 이동처리
			req.getRequestDispatcher("/app/main/upload.jsp").forward(req, resp);
			break;
		case "/creations/CreationUploadOk.ct" :
			new CreationUploadOkController().execute(req, resp);
			break;
		case "/creations/CreationListOk.ct" :
			new CreationListOkController().execute(req, resp);
			break;
			
		case "/board/aniBoard.nc" :
//			임시 이동처리
			req.getRequestDispatcher("/app/creations/ani/aniBoard.jsp").forward(req, resp);
			break;
		case "/board/aniViewBoard.nc" :
//			임시 이동처리
			req.getRequestDispatcher("/app/creations/ani/aniViewBoard.jsp").forward(req, resp);
			break;
		}
		
	}
	
}
