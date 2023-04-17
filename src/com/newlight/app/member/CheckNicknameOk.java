package com.newlight.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.MemberDAO;

public class CheckNicknameOk implements Execute{
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		boolean result = memberDAO.checkNickName(req.getParameter("memberNickname"));
		
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		
		System.out.println(result);
		
		out.print(result? "* 사용 가능한 닉네임입니다." : "* 중복된 닉네임입니다.");
		out.close();
	}

}
