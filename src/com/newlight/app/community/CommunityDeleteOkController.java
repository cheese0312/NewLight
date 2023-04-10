package com.newlight.app.community;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CommunityCommentDAO;
import com.newlight.app.dao.CommunityDAO;
import com.newlight.app.dao.CommunityFileDAO;
import com.newlight.app.dto.CommunityCommentDTO;
import com.newlight.app.dto.CommunityFileDTO;

public class CommunityDeleteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CommunityDAO communityDAO = new CommunityDAO();
		CommunityFileDAO communityFileDAO = new CommunityFileDAO();
		CommunityCommentDAO communityCommentDAO = new CommunityCommentDAO();
		int communityNumber = Integer.valueOf(req.getParameter("communityNumber"));
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		// db에서 지운 파일들은 실제로도 삭제되어야 함.
		// file 객체에 넣고 delete를 하면 되는데 파일이 저장된 실제 이름이 필요하다.

		System.out.println(communityNumber);
		List<CommunityFileDTO> communityFiles = communityFileDAO.select(communityNumber);
		 communityCommentDAO.delete(communityNumber); 
		

		for (CommunityFileDTO communityFile : communityFiles) {
			File temp = new File(uploadPath, communityFile.getFileSystemName());

			if (temp.exists()) {
			temp.delete();
			}
		}
		
//		communityFiles.stream().map(communityFile -> getFileSystemName())
//		.map(name -> new File(uploadPath, name))
//		.filter(temp -> temp.exists())
//		.forEach(temp -> temp.delete());

		System.out.println(communityNumber);
		communityFileDAO.delete(communityNumber);
		communityDAO.delete1(communityNumber);

		resp.sendRedirect("/community/communityListOk.cm");

	}

}
