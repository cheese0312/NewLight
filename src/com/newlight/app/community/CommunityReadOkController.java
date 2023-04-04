package com.newlight.app.community;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CommunityDAO;
import com.newlight.app.dao.CommunityFileDAO;
import com.newlight.app.dto.CommunityFileDTO;
import com.newlight.app.dto.CommunityVO;

public class CommunityReadOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		int communityNumber = Integer.valueOf(req.getParameter("communityNumber"));
		
		CommunityDAO communityDAO = new CommunityDAO(); 
		CommunityVO communityVO = communityDAO.select(communityNumber);
		CommunityFileDAO communityFileDAO = new CommunityFileDAO();
		List<CommunityFileDTO> communityFiles = communityFileDAO.select(communityNumber);
		
		communityVO.setCommunityFiles(communityFiles);
		
		communityDAO.updateReadCount(communityNumber);
		req.setAttribute("community", communityVO);
		
		req.getRequestDispatcher("/app/community/communityRead.jsp").forward(req, resp);
	}

}
