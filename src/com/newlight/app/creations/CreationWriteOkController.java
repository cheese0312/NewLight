package com.newlight.app.creations;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.MemberDAO;

public class CreationWriteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		
		HttpSession session = req.getSession();
		
		Integer memberNumber = (Integer)session.getAttribute("memberNumber");
		
		String path = null;
		
		if(memberNumber == null) {
			path ="/member/login.me";
		} else {
			path = "/app/main/upload.jsp";
			req.setAttribute("memberNickname", memberDAO.getMemberNickname(memberNumber));
		}
		
		req.getRequestDispatcher(path).forward(req, resp);

	}

}
