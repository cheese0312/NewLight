package com.newlight.app.mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.MypageDAO;
import com.newlight.app.dto.MemberDTO;
import com.newlight.app.dto.MypageVO;

public class MypageLikeOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		
		MemberDTO memberDTO = new MemberDTO();
		MypageDAO mypageDAO = new MypageDAO();
		MypageVO mypageVO = new MypageVO();
		
		HttpSession session = req.getSession();
		
		mypageVO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
		mypageVO.setMemberNickname(req.getParameter("memberNickname"));
		mypageVO.setCreationTitle(req.getParameter("creationTitle"));
		
		System.out.println((Integer)req.getSession().getAttribute("memberNumber"));
		System.out.println(req.getParameter("memberNickname"));
		System.out.println(req.getParameter("creationTitle"));
		
		mypageVO = mypageDAO.mypageinfo((Integer)req.getSession().getAttribute("memberNumber"));

		req.setAttribute("memberNickname", mypageVO.getMemberNickname());
		req.setAttribute("memberComment", mypageVO.getMemberComment());
		
		List<MypageVO> likeList = mypageDAO.LikeList(mypageVO);
		req.setAttribute("likeList", likeList);
		System.out.println(likeList);
		
		req.getRequestDispatcher("/app/mypage/mypage_like.jsp").forward(req, resp);

	}

}
