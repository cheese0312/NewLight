package com.newlight.app.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.MemberDAO;

public class QnAWriteController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		Integer memberNumber = (Integer) session.getAttribute("memberNumber");
		String path = null;
		System.out.println("글쓰기 페이지들어옴");
		if (memberNumber == null) {
			path = "/app/member/login.jsp";
		} else {
			path = "/app/qna/qnaWrite.jsp";
			req.setAttribute("memberId", memberDAO.getMemberId(memberNumber));
		}
		req.getRequestDispatcher(path).forward(req, resp);
	}
}
