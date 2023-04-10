package com.newlight.app.communityComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CommunityCommentDAO;
import com.newlight.app.dto.CommunityCommentDTO;

public class CommunityCommentUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CommunityCommentDTO communityCommentDTO = new CommunityCommentDTO();
		System.out.println("==========");
		communityCommentDTO.setCommentNumber(Integer.parseInt(req.getParameter("commentNumber")));
		communityCommentDTO.setCommentContent(req.getParameter("commentContent"));
		
		new CommunityCommentDAO().update(communityCommentDTO);
	}

}
