package com.newlight.app.qna;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.QnADAO;
import com.newlight.app.vo.QnAVO;

public class QnAOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QnADAO qnaDAO = new QnADAO();
		List<QnAVO> QnaList = qnaDAO.selectAll();
		
		req.setAttribute("QnaList", QnaList);
		
		req.getRequestDispatcher("app/qna/qnaBoardList.jsp").forward(req, resp);
	}
}
