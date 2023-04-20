package com.newlight.app.member;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.MemberDAO;
import com.newlight.app.dto.MemberDTO;

public class FindIdOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = new MemberDTO();
		String path = null;

//		Arrays.stream(req.getParameterValues("memberPhoneNumber")).forEach(System.out::println); 

		String[] phoneArr = req.getParameterValues("memberPhoneNumber");
		String phoneNumber = "";
		for (int i = 0; i < phoneArr.length; i++) {
			phoneNumber += phoneArr[i];
		}

		System.out.println(phoneNumber);
		System.out.println(req.getParameter("memberName"));
		memberDTO.setMemberName(req.getParameter("memberName"));
		memberDTO.setMemberPhoneNumber(phoneNumber);

		String memberId = memberDAO.findId(memberDTO);

		System.out.println(memberId);

		if (memberId == null) {
			path = "/app/member/findId.jsp";
			req.setAttribute("success", "fail");
		} else {
			path = "/app/member/findId2.jsp";
			req.setAttribute("memberId", memberId);
		}

		req.getRequestDispatcher(path).forward(req, resp);

	}

}
