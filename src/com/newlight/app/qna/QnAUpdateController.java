package com.newlight.app.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.QnADAO;

public class QnAUpdateController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QnADAO qnaDAO = new QnADAO();
		String qnaNumberStr = req.getParameter("qnaNumber");
		int qnaNumber = 0;
		System.out.println(qnaNumberStr);

		try {
			qnaNumber = Integer.parseInt(qnaNumberStr);
		} catch (NumberFormatException e) {
			
		}
		System.out.println(qnaNumber);
		req.setAttribute("qna", qnaDAO.select(qnaNumber));

		req.getRequestDispatcher("/app/qna/qnaUpdate.jsp").forward(req, resp);
	}

}