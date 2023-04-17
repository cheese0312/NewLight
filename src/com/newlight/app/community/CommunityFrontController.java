
package com.newlight.app.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//커뮤니티 프론트 컨트롤러 설정

public class CommunityFrontController extends HttpServlet {
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

		switch (target) {
//		case "/community/communityList.cm" :
//			System.out.println("커뮤니티 페이지 들어옴!");
//			req.getRequestDispatcher("/app/community/communityList.jsp").forward(req, resp);
//			break;
			
		case "/community/communityListOk.cm":
			System.out.println("communityListOk 들어간다!");
			// 임시로 이동 처리
//			req.getRequestDispatcher("/app/community/communityList.jsp").forward(req, resp);
			new CommunityListOkController().execute(req, resp);
			break;
		case "/community/communityWrite.cm":
//			req.getRequestDispatcher("/app/community/communityWrite.jsp").forward(req, resp);
			new CommunityWriteController().execute(req,resp);
		break;
		
		case "/community/communityWriteOk.cm":
			new CommunityWriteOkController().execute(req, resp);
			break;
		case "/community/communityReadOk.cm":
		new CommunityReadOkController().execute(req, resp);
		break;
		
		case "/community/communityDeleteOk.cm":
			new CommunityDeleteOkController().execute(req, resp);
			break;
			
		case "/community/communityUpdate.cm":
			new CommunityUpdateController().execute(req, resp);
			break;
			
		case "/community/communityUpdateOk.cm":
			new CommunityUpdateOkController().execute(req, resp);
			break;
		}

	}
}