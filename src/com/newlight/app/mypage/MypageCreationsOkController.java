package com.newlight.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.MypageDAO;
import com.newlight.app.dto.MemberDTO;
import com.newlight.app.dto.MypageVO;

public class MypageCreationsOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {	
		System.out.println("mypage 진입!");
		req.setCharacterEncoding("utf-8");
		
		MemberDTO memberDTO = new MemberDTO();
		MypageDAO mypageDAO = new MypageDAO();
		MypageVO mypageVO = new MypageVO();
		
		HttpSession session = req.getSession();
		
		mypageVO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
		mypageVO.setMemberNickname(req.getParameter("memberNickname"));
		
		System.out.println((Integer)req.getSession().getAttribute("memberNumber"));
		System.out.println(req.getParameter("memberNickname"));
		
		String memberNickname = mypageDAO.mypageinfo((Integer)req.getSession().getAttribute("memberNumber"));
		System.out.println(memberNickname);
		
		req.setAttribute("memberNickname", memberNickname);
//		MemberDTO memberDTO = new MemberDTO();
//		MemberDAO memberDAO = new MemberDAO();
//		MemberFileVO memberfileVO = new MemberFileVO();
//		
//		HttpSession session = req.getSession();
//		
//		memberDTO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
//		
//		String memberNickname = memberDAO.info(memberfileVO);
//		req.setAttribute("member", memberNickname);
//		System.out.println(req.getSession().getAttribute("memberNickname"));
//		System.out.println(memberNickname);

		req.getRequestDispatcher("/app/mypage/mypage_creations.jsp").forward(req, resp);
		
	}

}
