package com.newlight.app.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.community.CommunityWriteController;
import com.newlight.app.community.CommunityWriteOkController;

public class QnAFrontController extends HttpServlet {
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
//		case" " :
//			System.out.println("문의사항 게시판입니다");
//			req.getRequestDispatcher("/app/qna/qnaBoardList.jsp").forward(req, resp);
//			break;
			
		case "/qna/QnAListOk.qn":
			System.out.println("qnaListOk 들어간다!");
//			req.getRequestDispatcher("/app/qna/qnaBoardList.jsp").forward(req, resp);
			new QnAOkController().execute(req, resp);
			break;
			
		case "/qna/QnAReadOk.qn":
//			req.getRequestDispatcher("/app/qna/qnaRead.jsp").forward(req, resp);
			new QnAReadOkController().execute(req, resp);
			break;
			
		case "/qna/QnAWrite.qn":
//			req.getRequestDispatcher("/app/qna/qnaWrite.jsp").forward(req, resp);
			new QnAWriteController().execute(req, resp);
			break;
			
		case "/qna/QnAWriteOk.qn":
			new QnAWriteOkController().execute(req, resp);
			break;
			
		}
	}

}
