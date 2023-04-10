package com.newlight.app.creationscomment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dto.CreationsVO;

public class CommentUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CreationsVO creationsVO = new CreationsVO();
		
		creationsVO.setCommentNumber(Integer.valueOf(req.getParameter("commentNumber")));
		creationsVO.setCommentContent(req.getParameter("commentContent"));
		
		new CreationsDAO().commentUpdate(creationsVO);
		
		System.out.println("수정!");
		

	}

}
