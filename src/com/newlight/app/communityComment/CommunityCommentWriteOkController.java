package com.newlight.app.communityComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CommunityCommentDAO;
import com.newlight.app.dto.CommunityCommentDTO;

public class CommunityCommentWriteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CommunityCommentDTO communityCommentDTO = new CommunityCommentDTO();
		System.out.println("댓글 작성 된다!!!");
		
		req.setCharacterEncoding("utf-8");
		
		communityCommentDTO.setCommunityNumber(Integer.valueOf(req.getParameter("communityNumber")));
		communityCommentDTO.setMemberNumber(Integer.valueOf(req.getParameter("memberNumber")));
		communityCommentDTO.setCommentContent(req.getParameter("commentContent"));
		
		new CommunityCommentDAO().insert(communityCommentDTO); 
		
	}

}
