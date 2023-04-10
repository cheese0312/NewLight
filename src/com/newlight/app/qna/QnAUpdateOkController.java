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
import com.newlight.app.dto.QnADTO;
import com.newlight.app.dto.QnAFileDTO;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

public class QnAUpdateOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QnADAO qnaDAO = new QnADAO();
		QnADTO qnaDTO = new QnADTO();
		QnAFileDAO qnafileDAO = new QnAFileDAO();
		QnAFileDTO qnafileDTO = new QnAFileDTO();
		int qnaNumber = 0;
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";

		System.out.println("문의사항 수정이 되었다.");


		int fileSize = 1024 * 1024 * 20;


		MultipartParser parser = new MultipartParser(req, fileSize);
		parser.setEncoding("utf-8");

		while (true) {
//            MultipartParser객체는 여러 폼데이터를 part객체로 분리할 수 있다.

			Part part = parser.readNextPart();

			if (part == null) {
				break;
			}
			String fileSystemName = null;
			String fileOriginalName = null;

			if (part.isFile()) {
				FilePart filePart = (FilePart) part;
				filePart.setRenamePolicy(new DefaultFileRenamePolicy());
				fileOriginalName = filePart.getFileName();

				if (fileOriginalName != null) {
//                  파일을 저장하기 위한 정보를 가진 객체를 만든다.
					File file = new File(uploadPath, fileOriginalName);
                 
//                  파일을 저장한다.
					filePart.writeTo(file);
//                  저장 후 파일 이름을 다시 뽑으면 저장될 때의 이름이 나온다.
					fileSystemName = filePart.getFileName();

					qnafileDTO.setFileSystemName(fileSystemName);
					qnafileDTO.setFileOriginalName(fileOriginalName);
					qnafileDTO.setQnaNumber(qnaNumber);
					qnafileDAO.insert(qnafileDTO);
				}
			} else {
//               part객체가 파일이 아닌 일반 파라미터인 경우
				ParamPart paramPart = (ParamPart) part;
				String param = paramPart.getName(); // 파라미터 이름
				String value = paramPart.getStringValue(); // 값

				if (param.equals("qnaTitle")) {
					qnaDTO.setQnaTitle(value);
				} else if (param.equals("qnaContent")) {
					qnaDTO.setQnaContent(value);
				} else if (param.equals("qnaNumber")) {
					qnaNumber = Integer.valueOf(value);
					qnaDTO.setQnaNumber(qnaNumber);
				}
				

//               만약 둘 중 하나라도 null이면 다음 반복으로 돌린다.
//               이 처리를 하지않으면 게시글이 2번 생긴다.
				if (qnaDTO.getQnaTitle() == null || qnaDTO.getQnaContent() == null) {
					continue;
				}

				qnaDTO.setMemberNumber((Integer) req.getSession().getAttribute("memberNumber"));
				qnaDAO.update(qnaDTO);
				
				List<QnAFileDTO> qnaFiles = qnafileDAO.selectAll(qnaNumber);

				for (QnAFileDTO qnaFile : qnaFiles) {
					File temp = new File(uploadPath, qnaFile.getFileSystemName());

					if (temp.exists()) {
						temp.delete();
					}
				}

				System.out.println(qnaNumber);
				qnafileDAO.delete(qnaNumber);
			}

		}
		resp.sendRedirect("/qna/QnAListOk.qn");


	}
}
