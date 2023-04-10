package com.newlight.app.communityComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommunityCommentFrontController extends HttpServlet {
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
		case "/communityComment/communityCommentListOk.cc":
			System.out.println("커뮤니티 페이지 들어옴!");
			new CommunityCommentListOkController().execute(req, resp);
			break;
		case "/communityComment/communityCommentWriteOk.cc":
			new CommunityCommentWriteOkController().execute(req, resp);
			break;
		
		case "/communityComment/communityCommentDeleteOk.cc":
			new CommunityCommentDeleteOkController().execute(req, resp);
			break;
			
		case "/communityComment/communityCommentUpdateOk.cc":
			new CommunityCommentUpdateOkController().execute(req, resp);
			break;
		}
	}

}
