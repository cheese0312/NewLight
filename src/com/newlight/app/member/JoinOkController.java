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
		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = new MemberDTO();
		
		req.setCharacterEncoding("UTF-8");
		
		memberDTO.setMemberName(req.getParameter("memberName"));
		memberDTO.setMemberId(req.getParameter("memberId"));
		memberDTO.setMemberPassword(req.getParameter("memberPassword"));
		memberDTO.setMemberNickname("memberNickname");
		memberDTO.setMemberWebsite("memberWebsite");
		memberDTO.setMemberPfp(req.getParameter("memberPfp"));
		memberDTO.setMemberEmail(req.getParameter("memberEmail"));
		memberDTO.setMemberBrith(req.getParameter("memberBrith"));
		memberDTO.setMemberAddress1(req.getParameter("memberAdress1"));
		memberDTO.setMemberAddress2(req.getParameter("memberAddress2"));
		System.out.println(memberDTO);
		
		memberDAO.join(memberDTO);
		
		resp.sendRedirect("/member/login.me");
	}
}
