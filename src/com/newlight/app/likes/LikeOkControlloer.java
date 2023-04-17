package com.newlight.app.likes;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.LikesDAO;
import com.newlight.app.dto.LikesDTO;

public class LikeOkControlloer implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		HttpSession session = req.getSession();
		LikesDAO likesDAO = new LikesDAO();
		LikesDTO likesDTO = new LikesDTO();
		
		int creaetionNumber = Integer.valueOf(req.getParameter("creationNumber"));
		int memberNumber = (Integer)session.getAttribute("memberNumber");
		
		likesDTO.setCreationNumber(creaetionNumber);
		likesDTO.setMemberNumber(memberNumber);
		
		int result1 = likesDAO.getLikeCount(likesDTO);
		
		if(result1 == 0) {
			likesDAO.insert(likesDTO);
		} else {
			likesDAO.likedelete(likesDTO);
		}
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		out.print(result1);
		out.close();
	}

}
