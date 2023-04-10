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
import com.newlight.app.dao.LikesDAO;
import com.newlight.app.dto.CreationsFileDTO;

public class CreationDeleteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CreationsDAO creationsDAO = new CreationsDAO();
		CreationsFileDAO creationsFileDAO = new CreationsFileDAO();
		LikesDAO likesDAO = new LikesDAO();
		
		int creationNumber = Integer.valueOf(req.getParameter("creationNumber"));
		
		creationsDAO.creationCommentDelete(creationNumber);
		likesDAO.likeDelete(creationNumber);
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		
		
		List<CreationsFileDTO> files = creationsFileDAO.select(creationNumber);
		
		for(CreationsFileDTO file : files) {
			File temp = new File(uploadPath, file.getFileSystemName());
			
			if(temp.exists()) {
				temp.delete();
			}
		}
		
		creationsFileDAO.delete(creationNumber);
		creationsDAO.creationDelete(creationNumber);
		
		resp.sendRedirect("/main/mainNewlightOk.mi");

	}

}
