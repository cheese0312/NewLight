package com.newlight.app.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.QnACommentDAO;
import com.newlight.app.dto.QnACommentDTO;

public class QnACommentWriteOkController implements Execute{
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QnACommentDTO qnaCommentDTO = new QnACommentDTO();
		
		req.setCharacterEncoding("utf-8");
		
		qnaCommentDTO.setQnaNumber(Integer.valueOf(req.getParameter("qnaNumber")));
		qnaCommentDTO.setMemberNumber(Integer.valueOf(req.getParameter("memberNumber")));
		qnaCommentDTO.setCommentContent(req.getParameter("commentContent"));
		qnaCommentDTO.setQna_comment_Writeday(req.getParameter("qna_comment_Writeday"));
		new QnACommentDAO().insert(qnaCommentDTO);
	}
	
}
