package com.newlight.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.MemberDAO;
import com.newlight.app.dto.MemberDTO;

public class FindPwOkController implements Execute{
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDTO memberDTO = new MemberDTO();
		MemberDAO memberDAO = new MemberDAO();
		String path = null;
		
		String[] phoneArr = req.getParameterValues("memberPhoneNumber");
		String phoneNumber = "";
		for(int i=0; i<phoneArr.length; i++) {
			phoneNumber += phoneArr[i];
		}
		
		memberDTO.setMemberName(req.getParameter("memberName"));
		memberDTO.setMemberId(req.getParameter("memberId"));
		memberDTO.setMemberPhoneNumber(phoneNumber);
		
		String memberPw = memberDAO.findPw(memberDTO);
		
		if(memberPw == null) {
			path = "/app/member/findPw.jsp";
			req.setAttribute("success", "fail");
		}else {
			path = "/app/member/findPw2.jsp";
			req.setAttribute("memberPw", memberPw);
		}
		
		req.getRequestDispatcher(path).forward(req, resp);
	}

}





