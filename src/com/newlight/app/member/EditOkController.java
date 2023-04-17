
package com.newlight.app.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.MemberDAO;
import com.newlight.app.dto.MemberDTO;
import com.newlight.app.dto.MemberFileDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class EditOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDTO memberDTO = new MemberDTO();
		MemberDAO memberDAO = new MemberDAO();
		MemberFileDTO memberfileDTO = new MemberFileDTO();

		req.setCharacterEncoding("utf-8");

		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "userProfile/";
		int fileSize = 1024 * 1024 * 5;

		MultipartRequest multipartReq = new MultipartRequest(req, uploadPath, fileSize, "utf-8",
				new DefaultFileRenamePolicy());

		memberDTO.setMemberPassword(multipartReq.getParameter("memberPassword"));
		memberDTO.setMemberNickname(multipartReq.getParameter("memberNickname"));
		memberDTO.setMemberWebsite(multipartReq.getParameter("memberWebsite"));
		memberDTO.setMemberPfp(multipartReq.getParameter("memberPfp"));
		memberDTO.setMemberComment(multipartReq.getParameter("memberComment"));
		memberDTO.setMemberEmail(multipartReq.getParameter("memberEmail"));
		memberDTO.setMemberAddress1(multipartReq.getParameter("memberAddress1"));
		memberDTO.setMemberAddress2(multipartReq.getParameter("memberAddress2"));

		Enumeration<String> memberFilepfp = multipartReq.getFileNames();

		while (memberFilepfp.hasMoreElements()) {
			String name = memberFilepfp.nextElement();

			String memberPfpFile = multipartReq.getOriginalFileName(name);

			if (memberPfpFile == null) {
				continue;
			}

			memberDTO.setMemberPfp(memberPfpFile);
		}

		memberDAO.edit(memberDTO);

		resp.sendRedirect("/mypage/mypageEditOk.mp");
	}

}
