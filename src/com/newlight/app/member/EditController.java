package com.newlight.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.MemberDAO;
import com.newlight.app.dto.MemberDTO;

public class EditController implements Execute{
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		System.out.println("111111");
		MemberDTO memberDTO = new MemberDTO();
		HttpSession session = req.getSession();
		
		Integer memberNumber = (Integer)session.getAttribute("memberNumber");
		System.out.println(memberNumber);
		
		memberDTO = memberDAO.selectOne(memberNumber);
		
		req.setAttribute("memberDTO", memberDTO);
		
		req.getRequestDispatcher("/app/mypage/mypage_edit.jsp").forward(req, resp);
		
	}
}





