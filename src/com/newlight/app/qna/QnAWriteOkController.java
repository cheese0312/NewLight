package com.newlight.app.qna;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.QnADAO;
import com.newlight.app.dao.QnAFileDAO;
import com.newlight.app.dto.QnADTO;
import com.newlight.app.dto.QnAFileDTO;
import com.newlight.app.vo.QnAVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class QnAWriteOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QnADAO qnaDAO = new QnADAO();
		QnADTO qnaDTO = new QnADTO();
		QnAFileDAO qnafileDAO = new QnAFileDAO();
		QnAFileDTO qnafileDTO = new QnAFileDTO();
		
		System.out.println("qnawriteok들어옴");
		System.out.println(req.getParameter("qnaTitle"));

		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5;

		System.out.println(uploadPath);
		MultipartRequest multipartReq = new MultipartRequest(req, uploadPath, fileSize, "utf-8",
				new DefaultFileRenamePolicy());
		qnaDTO.setQnaTitle(multipartReq.getParameter("qnaTitle"));
		qnaDTO.setQnaContent(multipartReq.getParameter("qnaContent"));
		qnaDTO.setMemberNumber((Integer) req.getSession().getAttribute("memberNumber"));
		qnaDAO.insert(qnaDTO);
		int qnaNumber = qnaDAO.getSequence();

		Enumeration<String> fileNames = multipartReq.getFileNames();

		while (fileNames.hasMoreElements()) {
			String name = fileNames.nextElement();
			
			String fileSystemName = multipartReq.getFilesystemName(name);
			String fileOriginalName = multipartReq.getOriginalFileName(name);

			if(fileSystemName == null) {continue;}
			
			qnafileDTO.setFileSystemName(fileSystemName);
			qnafileDTO.setFileOriginalName(fileOriginalName);
			qnafileDTO.setQnaNumber(qnaNumber);

			System.out.println(qnafileDTO);
			qnafileDAO.insert(qnafileDTO);
		}
		resp.sendRedirect("/qna/QnAListOk.qn");
	}
}
