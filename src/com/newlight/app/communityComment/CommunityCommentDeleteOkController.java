package com.newlight.app.communityComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CommunityCommentDAO;

public class CommunityCommentDeleteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		int commentNumber = Integer.parseInt(req.getParameter("commentNumber"));
		new CommunityCommentDAO().deleteComment(commentNumber);
	}

}
