package com.newlight.app.creations;

import java.io.File;	
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dao.CreationsFileDAO;
import com.newlight.app.dto.CreationsDTO;
import com.newlight.app.dto.CreationsFileDTO;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

public class CreationUploadOkController implements Execute{
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CreationsDTO creationDTO = new CreationsDTO();
		CreationsDAO creationDAO = new CreationsDAO();
		CreationsFileDTO creationfileDTO = new CreationsFileDTO();
		CreationsFileDAO creationfileDAO = new CreationsFileDAO();
		System.out.println("uploadOk컨트롤러 들어왔다!!");
		int creationNumber = 0;
//		creationDTO.setCreationCategory1("test");
//		creationDTO.setCreationCategory2("test");
		
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5;
		
		MultipartParser parser = new MultipartParser(req, fileSize);
		parser.setEncoding("UTF-8");
		
		while(true) {
			Part part = parser.readNextPart();
			
			if(part == null) {break;}
			String fileSystemName = null;
			String fileOriginalName = null;
			
			if(part.isFile()) {
				System.out.println("파일이다.");
				FilePart filePart = (FilePart)part;
				filePart.setRenamePolicy(new DefaultFileRenamePolicy());
				fileOriginalName = filePart.getFileName();
				
				if(fileOriginalName != null) {
					File file = new File(uploadPath, fileOriginalName);
					filePart.writeTo(file);
					fileSystemName = filePart.getFileName();
					
					creationfileDTO.setFileSystemName(fileSystemName);
					creationfileDTO.setFileOriginalName(fileOriginalName);
					creationfileDTO.setCreationNumber(creationNumber);
					System.out.println(creationfileDTO);
					creationfileDAO.insert(creationfileDTO);
					
				}
			}else {
				System.out.println("파일 아니다!!");
				ParamPart paramPart = (ParamPart)part;
				String param = paramPart.getName();
				String value = paramPart.getStringValue();
				
				if(param.equals("creationTitle")) {
					creationDTO.setCreationTitle(value);
				}else if(param.equals("creationContent")) {
					creationDTO.setCreationContent(value);
				}else if(param.equals("category1")) {
					creationDTO.setCreationCategory1(value);
				}else if(param.equals("category2")) {
					creationDTO.setCreationCategory2(value);
				}
				
				if(creationDTO.getCreationTitle() == null || creationDTO.getCreationContent() == null) {continue;}
				
//				creationDTO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
				creationDTO.setMemberNumber(1);
				System.out.println(creationDTO);
				creationDAO.insert(creationDTO);
				
				creationNumber = creationDAO.getSequence();
			}
			
		}
		
		resp.sendRedirect("/main/mainNewlightOk.mi");
		
	}
}






