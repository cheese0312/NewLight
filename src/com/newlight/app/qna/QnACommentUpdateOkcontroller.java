package com.newlight.app.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.QnACommentDAO;
import com.newlight.app.dto.QnACommentDTO;

public class QnACommentUpdateOkcontroller implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QnACommentDTO qnaCommentDTO = new QnACommentDTO();
		
		qnaCommentDTO.setCommentNumber(Integer.parseInt(req.getParameter("commentNumber")));
		qnaCommentDTO.setCommentContent(req.getParameter("commentContent"));
		
		new QnACommentDAO().update(qnaCommentDTO);
		System.out.println("댓글 수정 완료!");
	}
}
