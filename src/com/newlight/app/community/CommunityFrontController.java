package com.newlight.app.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//커뮤니티 프론트 컨트롤러 설정

public class CommunityFrontController extends HttpServlet{
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
		case "/community/communityListOk.co":
		//임시로 이동 처리
//			req.getRequestDispatcher("/app/community/communityList.jsp").forward(req, resp);
			new CommunityListOkController().execute(req, resp);
		break;

	}

}
