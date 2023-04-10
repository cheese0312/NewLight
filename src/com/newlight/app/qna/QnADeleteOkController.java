package com.newlight.app.qna;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.QnADAO;
import com.newlight.app.dao.QnAFileDAO;
import com.newlight.app.dto.QnAFileDTO;

public class QnADeleteOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QnADAO qnaDAO = new QnADAO();
		QnAFileDAO qnaFileDAO = new QnAFileDAO();
		int qnaNumber = Integer.valueOf(req.getParameter("qnaNumber"));
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		List<QnAFileDTO> qnaFiles = qnaFileDAO.selectAll(qnaNumber);

		for (QnAFileDTO qnaFile : qnaFiles) {
			File temp = new File(uploadPath, qnaFile.getFileSystemName());

			if (temp.exists()) {
				temp.delete();
			}
		}

		System.out.println(qnaNumber);
		qnaFileDAO.delete(qnaNumber);
		qnaDAO.delete(qnaNumber);
		
		resp.sendRedirect("/qna/QnAListOk.qn");
	}
}
