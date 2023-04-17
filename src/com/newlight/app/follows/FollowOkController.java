package com.newlight.app.follows;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.FollowsDAO;
import com.newlight.app.dto.FollowsDTO;

public class FollowOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		HttpSession session = req.getSession();
		FollowsDAO followsDAO = new FollowsDAO();
		FollowsDTO followsDTO = new FollowsDTO();
		
		System.out.println(req.getParameter("memberNumber"));
		
		int myNumber = (Integer)session.getAttribute("memberNumber");
		int memberNumber = Integer.parseInt(req.getParameter("memberNumber"));

		followsDTO.setFollowerNumber(memberNumber);
		followsDTO.setFolloweeNumber(myNumber);
		
		int result = followsDAO.getFollowCount(followsDTO);
		
		if(result == 0) {
			followsDAO.insert(followsDTO);
		}else {
			followsDAO.delete(followsDTO);
		}
		
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		out.print(result);
		out.close();
	}

}
