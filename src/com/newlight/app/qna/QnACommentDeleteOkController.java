package com.newlight.app.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.QnACommentDAO;


public class QnACommentDeleteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int commentNumber =Integer.parseInt(req.getParameter("commentNumber"));
		new QnACommentDAO().delete(commentNumber);
		System.out.println("댓글 삭제 완료.");
	}

}
