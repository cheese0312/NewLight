package com.newlight.app.mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dao.CreationsFileDAO;
import com.newlight.app.dao.MypageDAO;
import com.newlight.app.dto.CreationsFileDTO;
import com.newlight.app.dto.CreationsVO;
import com.newlight.app.dto.MemberDTO;
import com.newlight.app.dto.MypageVO;

public class MypageCreationsOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {	
		System.out.println("mypage 진입!");
		req.setCharacterEncoding("utf-8");

		MypageDAO mypageDAO = new MypageDAO();
		MypageVO mypageVO = new MypageVO();
		int memberNumber = (Integer)req.getSession().getAttribute("memberNumber");

		
		HttpSession session = req.getSession();
		
		mypageVO.setMemberNumber(memberNumber);
		mypageVO.setMemberNickname(req.getParameter("memberNickname"));

		mypageVO = mypageDAO.mypageinfo(memberNumber);

		req.setAttribute("memberNickname", mypageVO.getMemberNickname());
		req.setAttribute("memberComment", mypageVO.getMemberComment());
		mypageVO.setMemberNumber(memberNumber);
		System.out.println(memberNumber);
		System.out.println(mypageVO);
		
		List<MypageVO> creationList = mypageDAO.creationList(mypageVO);
		req.setAttribute("creationList", creationList);
		System.out.println(creationList);

		req.getRequestDispatcher("/app/mypage/mypage_creations.jsp").forward(req, resp);
		
	}

}
