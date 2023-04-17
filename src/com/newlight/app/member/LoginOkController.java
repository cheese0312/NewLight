package com.newlight.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.MemberDAO;
import com.newlight.app.dto.MemberDTO;

public class LoginOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDTO memberDTO = new MemberDTO();
		MemberDAO memberDAO = new MemberDAO();

		String memberId = req.getParameter("memberId");
		String memberPassword = req.getParameter("memberPassword");

		int memberNumber = 0;
		String memberStatus = "";

		String path = null;
		String remember = req.getParameter("remember");

		req.setCharacterEncoding("utf-8");

		memberDTO.setMemberId(req.getParameter("memberId"));
		memberDTO.setMemberPassword(req.getParameter("memberPassword"));

		memberNumber = memberDAO.login(memberDTO);
		System.out.println(memberNumber);
		
		memberStatus = memberDAO.login2(memberDTO);

		HttpSession session = req.getSession();

		if (memberNumber == -1) {
			path = "/member/login.me?result=false";
		} else if(memberStatus == "N") {
			path = "/member/login.me?result2=false";
		} else if(memberStatus == null) {
			path = "/member/login.me?result=false";
		}
		else {
			path = "/main/mainpageListOk.mi";
			session.setAttribute("memberNumber", memberNumber);
			System.out.println(path);
		}
		
		System.out.println(memberStatus);

		session.setAttribute("memberId", memberId);
		
		resp.sendRedirect(path);

	}
}
