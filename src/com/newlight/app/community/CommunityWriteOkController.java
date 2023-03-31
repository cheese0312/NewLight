package com.newlight.app.community;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CommunityDAO;
import com.newlight.app.dao.CommunityFileDAO;
import com.newlight.app.dto.CommunityDTO;
import com.newlight.app.dto.CommunityFileDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CommunityWriteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CommunityDAO communityDAO = new CommunityDAO();
		CommunityDTO communityDTO = new CommunityDTO();
		CommunityFileDAO communityFileDAO = new CommunityFileDAO();
		CommunityFileDTO communityFileDTO = new CommunityFileDTO();
		
		System.out.println("ok컨트롤러 들어옴");
		System.out.println(req.getParameter("communityTitle"));
		
	
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024*1024*5;
		
		System.out.println(uploadPath);
		MultipartRequest multipartReq = new MultipartRequest(req, uploadPath, fileSize, "utf-8", new DefaultFileRenamePolicy());
		
//		System.out.println(multipartReq.getParameter("communityTitle"));
		
		communityDTO.setCommunityTitle(multipartReq.getParameter("communityTitle"));
		communityDTO.setCommunityContent(multipartReq.getParameter("communityContent"));
		communityDTO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
		
		
		communityDAO.insert(communityDTO);
		int communityNumber = communityDAO.getSequence();
		
		
		Enumeration<String> fileNames = multipartReq.getFileNames();
		
		while(fileNames.hasMoreElements()) {
			String name = fileNames.nextElement();
			
			String fileSystemName = multipartReq.getFilesystemName(name);
			String fileOriginalName = multipartReq.getOriginalFileName(name);
			
			if(fileSystemName == null) {continue;}
			
			communityFileDTO.setFileSystemName(fileSystemName);
			communityFileDTO.setFileOriginalName(fileOriginalName);
			communityFileDTO.setCommunityNumber(communityNumber);
			
			System.out.println(communityFileDTO);
			communityFileDAO.insert(communityFileDTO);
		}
		 resp.sendRedirect("/community/communityListOk.cm");
	}

}
