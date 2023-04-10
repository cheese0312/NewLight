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
			new CreationWriteOkController().execute(req,resp);
			break;
			
		case "/creations/CreationUploadOk.ct" :
			new CreationUploadOkController().execute(req, resp);
			break;
			
		case "/creations/pageListOk.ct" :
			new ThemeListOkController().execute(req, resp);
			break;
			
		//창작물 보기 처리	
		case "/creations/creationRead.ct" :
			new CreationReadOkController().execute(req, resp);
			break;
			
		//창작물 수정 처리
		case "/creations/creationUpdate.ct" :
			new CreationUpdateController().execute(req, resp);
			break;
			
		case "/creations/creationUpdateOk.ct" :
			new CreationUpdateOkController().execute(req, resp);
			break;
			
//		창작물 삭제 처리
		case "/creations/creationDeleteOk.ct" :
			new CreationDeleteOkController().execute(req,resp);
			break;

		}
	
		
	}
	
}
