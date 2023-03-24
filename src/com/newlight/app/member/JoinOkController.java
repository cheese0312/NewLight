package com.newlight.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.MemberDAO;
import com.newlight.app.dto.MemberDTO;

public class JoinOkController implements Execute{
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		System.out.println("joinController!! 들어옴!!");
		
		MemberDTO memberDTO = new MemberDTO();
		MemberDAO memberDAO = new MemberDAO();
		
		req.setCharacterEncoding("utf-8");
		
		memberDTO.setMemberName(req.getParameter("memberName"));
		memberDTO.setMemberId(req.getParameter("memberId"));
		memberDTO.setMemberPassword(req.getParameter("memberPassword"));
		memberDTO.setMemberNickname(req.getParameter("memberNickname"));
		memberDTO.setMemberEmail(req.getParameter("memberEmail"));
		memberDTO.setMemberBirth(req.getParameter("memberBirth"));
		memberDTO.setMemberPfp(req.getParameter("memberPfp"));
		memberDTO.setMemberAddress1(req.getParameter("memberAddress1"));
		memberDTO.setMemberAddress2(req.getParameter("memberAddress2"));
		memberDTO.setMemberWebsite(req.getParameter("memberWebsite"));
		
		memberDAO.join(memberDTO);
		
		resp.sendRedirect("/member/login.me");
	}
}
