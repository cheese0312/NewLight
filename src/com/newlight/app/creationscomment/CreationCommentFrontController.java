package com.newlight.app.creationscomment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreationCommentFrontController extends HttpServlet{
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
//		댓글 추가 처리	
		case "/creations/commentWriteOk.cc1" :
			new CommentWrtieOkController().execute(req, resp);
			break;
			
//		댓글 리스트 처리	
		case "/creations/commentListOK.cc1" :
			new CommentListOkController().execute(req,resp);
			break;
			
		case "/creations/commentUpdateOk.cc1":
			new CommentUpdateOkController().execute(req,resp);
			break;
			
//		댓글 삭제
		case "/creations/commentDeleteOk.cc1" :
			new CommentDeleteOkController().execute(req,resp);
			break;
		
		}

	}
}
