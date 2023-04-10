package com.newlight.app.qna;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.QnADAO;
import com.newlight.app.dao.QnAFileDAO;
import com.newlight.app.dto.QnAFileDTO;
import com.newlight.app.vo.QnAVO;

public class QnAReadOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		int qnaNumber = Integer.valueOf(req.getParameter("qnaNumber"));
		QnADAO qnaDAO = new QnADAO();
		QnAVO qnaVO = qnaDAO.select(qnaNumber);
		QnAFileDAO qnaFileDAO = new QnAFileDAO();
		List<QnAFileDTO> qnaFileDTO = qnaFileDAO.selectAll(qnaNumber);
		
		
		qnaVO.setFiles(qnaFileDTO);
		qnaDAO.updateReadCount(qnaNumber);
		req.setAttribute("qna", qnaVO);
		
		req.getRequestDispatcher("/app/qna/qnaRead.jsp").forward(req, resp);
	}
}
