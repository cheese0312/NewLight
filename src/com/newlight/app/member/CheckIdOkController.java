package com.newlight.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.MemberDAO;
import com.newlight.app.dto.MemberDTO;

public class CheckIdOkController implements Execute{
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDTO memberDTO = new MemberDTO();
		MemberDAO memberDAO = new MemberDAO();
		
		req.setCharacterEncoding("utf-8");
		
		boolean result = memberDAO.checkId(req.getParameter("memberId"));
		
		System.out.println(req.getParameter("memberId"));
		
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = resp.getWriter();
				
		out.print(result?"사용 가능한 아이디입니다." : "중복된 아이디입니다.");
		out.close();
	}
}
