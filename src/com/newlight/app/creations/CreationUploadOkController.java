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
		boolean isFirst = true;
		String path = null;
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 20;
		
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
					
					System.out.println(fileSystemName);
					if(isFirst) {
						creationDAO.update(creationfileDTO);
						isFirst = false;
					}
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
					creationDTO.setCreationCode(value);
				}else if(param.equals("category2")) {
					creationDTO.setCreationName(value);
				}
				
				
				if(creationDTO.getCreationTitle() == null || creationDTO.getCreationContent() == null) {continue;}
				
				creationDTO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
				System.out.println(creationDTO);
				creationDAO.insert(creationDTO);
				
				creationNumber = creationDAO.getSequence();
			}
			
		}
		
		if(creationDTO.getCreationCode().equals("101") && creationDTO.getCreationName().equals("만화")) {
			path = "/crations/aniListOk.ct";
		}else if(creationDTO.getCreationCode().equals("101") && creationDTO.getCreationName().equals("카카오톡 테마")) {
			path = "/creations/themeOneListOk.ct";
		}else if(creationDTO.getCreationCode().equals("101") && creationDTO.getCreationName().equals("배경화면")) {
//			path = "";
		}else if(creationDTO.getCreationCode().equals("101") && creationDTO.getCreationName().equals("손그림")) {
//			path = "";
		}else if(creationDTO.getCreationCode().equals("101") && creationDTO.getCreationName().equals("폰트")) {
//			path = "";
		}else if(creationDTO.getCreationCode().equals("201") && creationDTO.getCreationName().equals("배경화면")) {
//			path = "";
		}else if(creationDTO.getCreationCode().equals("201") && creationDTO.getCreationName().equals("카카오톡 테마")) {
//			path = "";
		}else if(creationDTO.getCreationCode().equals("201") && creationDTO.getCreationName().equals("트레이싱")) {
//			path = "";
		}
		
		resp.sendRedirect("/main/mainpageListOk.mi");
	}
}






