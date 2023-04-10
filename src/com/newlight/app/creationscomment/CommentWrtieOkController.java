package com.newlight.app.creationscomment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dto.CreationsVO;

public class CommentWrtieOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CreationsVO creationsVO = new CreationsVO();
		CreationsDAO creationsDAO = new CreationsDAO();
		
		req.setCharacterEncoding("utf-8");
		
		creationsVO.setCreationNumber(Integer.valueOf(req.getParameter("creationNumber")));
		creationsVO.setMemberNumber(Integer.valueOf(req.getParameter("memberNumber")));
		creationsVO.setCommentContent(req.getParameter("commentContent"));
		
		creationsDAO.commentInsert(creationsVO);

	}

}
