package com.newlight.app.creations;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dao.CreationsFileDAO;
import com.newlight.app.dao.LikesDAO;
import com.newlight.app.dto.CreationsFileDTO;
import com.newlight.app.dto.CreationsVO;
import com.newlight.app.dto.LikesDTO;

public class CreationReadOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		int creationNumber = Integer.valueOf(req.getParameter("creationNumber"));
		
		CreationsDAO creationsDAO = new CreationsDAO();
		CreationsVO creationsVO = creationsDAO.creationContent(creationNumber);
		CreationsFileDAO creationsFileDAO = new CreationsFileDAO();
		List<CreationsFileDTO> creationsFiles = creationsFileDAO.select(creationNumber);
		
		int creationComment = creationsDAO.creationComment(creationNumber);
		
		LikesDAO likesDAO = new LikesDAO();
		int likeCount = likesDAO.likeCount(creationNumber);
		
		List<CreationsVO> commentList = creationsDAO.commentList(creationNumber);
		
		creationsVO.setFiles(creationsFiles);
		creationsVO.setCreationNumber(creationNumber);
		
		System.out.println(commentList);
		req.setAttribute("creation", creationsVO);
		req.setAttribute("likeCount", likeCount);
		req.setAttribute("creationComment", creationComment);
		req.setAttribute("commentList", commentList);
		
		req.getRequestDispatcher("/app/creations/background/creation.jsp").forward(req, resp);

	}

}
