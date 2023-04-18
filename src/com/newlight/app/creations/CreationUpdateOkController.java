package com.newlight.app.creations;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dao.CreationsFileDAO;
import com.newlight.app.dto.CreationsFileDTO;
import com.newlight.app.dto.CreationsVO;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

public class CreationUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CreationsVO creationsVO = new CreationsVO();
		CreationsDAO creationsDAO = new CreationsDAO();
		CreationsFileDTO creationsFileDTO = new CreationsFileDTO();
		CreationsFileDAO creationsFileDAO = new CreationsFileDAO();
		int creationNumber =0 ;
		
		System.out.println("수정 컨트롤러 들어옴!");
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024*1024*20;
		
		MultipartParser parser = new MultipartParser(req,fileSize);
		parser.setEncoding("utf-8");
		
		while(true) {
			Part part = parser.readNextPart();
			
			if(part == null) {break;}
			String fileSystemName = null;
			String fileOriginalName = null;
			
			if(part.isFile()) {
				FilePart filePart = (FilePart)part;
				filePart.setRenamePolicy(new DefaultFileRenamePolicy());
				fileOriginalName = filePart.getFileName();
				
				if(fileOriginalName != null) {
					File file = new File(uploadPath, fileOriginalName);
					filePart.writeTo(file);
					
					fileSystemName = filePart.getFileName();
					
					creationsFileDTO.setFileOriginalName(fileOriginalName);
					creationsFileDTO.setFileSystemName(fileSystemName);
					creationsFileDTO.setCreationNumber(creationNumber);
					creationsFileDAO.insert(creationsFileDTO);
					creationsDAO.update(creationsFileDTO);
				}
			} else {
				ParamPart paramPart = (ParamPart)part;
				String param = paramPart.getName();
				String value = paramPart.getStringValue();
				
				if(param.equals("creationTitle")) {
					creationsVO.setCreationTitle(value);
				} else if (param.equals("creationContent")) {
					creationsVO.setCreationContent(value);
				} else if(param.equals("category1")) {
					creationsVO.setCreationCode(value);
				} else if(param.equals("category2")) {
					creationsVO.setCreationName(value);
				} else if(param.equals("creationNumber")) {
					creationNumber = Integer.valueOf(value);
					creationsVO.setCreationNumber(creationNumber);
				}
				
				if(creationsVO.getCreationTitle() == null || creationsVO.getCreationContent() == null || creationsVO.getCreationCode() == null || creationsVO.getCreationName() == null) {
					continue;
				}
				
				System.out.println(req.getSession().getAttribute("memberNumber"));
				creationsVO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
				creationsDAO.creationUpdate(creationsVO);

				List<CreationsFileDTO> files = creationsFileDAO.select(creationNumber);
				
				for(CreationsFileDTO file : files) {
					File temp = new File(uploadPath, file.getFileSystemName());
					
					if(temp.exists()) {
						temp.delete();
					}
				}
				creationsFileDAO.delete(creationNumber);
			}
		}
		
		resp.sendRedirect("/main/mainNewlightOk.mi");

	}

}
