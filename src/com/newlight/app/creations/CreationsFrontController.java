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
		case "/creations/pageListOk.ct" :
			new ThemeListOkController().execute(req, resp);
			break;
		case "/crations/aniListOk.ct" :
			new ThemeListOkController().execute(req, resp);
			break;
		case "/board/aniViewBoard.nc" :
//			임시 이동처리
			req.getRequestDispatcher("/app/creations/ani/aniView.jsp").forward(req, resp);
			break;
			
///////////////////////////////////////////////////////////////
		case "/creations/background1.ct" :
			new BgOneListOkController().execute(req, resp);
			break;
		case "/creations/background1in.ct" :
			new BgOneInOkController().execute(req, resp);
			break;
		case "/creations/handwrite.ct" :
			new HwOneListOkController().execute(req, resp);
			break;
		case "/creations/handwritein.ct" :
			new HwOneInOkController().execute(req, resp);
			break;
			
		case "/creations/background2.ct":
			new Background2OkController().execute(req,resp);
			break;
			
		case "/creations/tracing.ct" :
			new TracingOkController().execute(req,resp);
			break;
		
		case "/creations/theme2.ct" :
			new Theme2OkController().execute(req,resp);
			break;
			
		}
	
		
	}
	
}
