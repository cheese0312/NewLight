package com.newlight.app.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.AdminDAO;
import com.newlight.app.dto.AdminVO;

public class MemberListOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AdminVO adminVO = new AdminVO();
		AdminDAO adminDAO = new AdminDAO();
		
		req.setCharacterEncoding("utf-8");
		
		List<AdminVO> memberList = adminDAO.memberList(adminVO);
		req.setAttribute("memberList", memberList);
		
		req.getRequestDispatcher("/app/admin/admin.jsp").forward(req, resp);

	}

}
