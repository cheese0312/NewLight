package com.newlight.app.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QnAFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("문의사항 게시판 들어왔다.");
		String target = req.getRequestURI().substring(req.getContextPath().length());
		System.out.println(target); 
		switch(target) {
		case "qna/QnAListOk.qn" :
			req.getRequestDispatcher("/app/qna/qnaBoardList.jsp").forward(req, resp);
			break;
		case "qna/QnAReadOk.qn" :
			req.getRequestDispatcher("/app/qna/qnaRead.jsp").forward(req, resp);
			break;
		case "qna/QnAWriteOk.qn" :
			req.getRequestDispatcher("/app/qna/qnaWrite.jsp").forward(req, resp);
			break;
		}
	}

}
