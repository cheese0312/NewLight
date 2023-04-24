package com.newlight.app.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.AdminDAO;
import com.newlight.app.dto.AdminVO;

public class StatusUpdateOkControlloer implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AdminVO adminVO = new AdminVO();
		AdminDAO adminDAO = new AdminDAO();
		
		adminVO.setMemberStatus(req.getParameter("memberStatus"));
		adminVO.setMemberNumber(Integer.valueOf(req.getParameter("memberNumber")));
		
		adminDAO.statusUpdate(adminVO);

		String status = req.getParameter("memberStatus").equals("Y") ? "활동 가능" : "활동 불가능";
		
		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		out.print(status);
		out.close();
	}

}
