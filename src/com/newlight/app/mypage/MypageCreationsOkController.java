package com.newlight.app.mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dao.LikesDAO;
import com.newlight.app.dao.MypageDAO;
import com.newlight.app.dto.MypageVO;

public class MypageCreationsOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {	
		req.setCharacterEncoding("utf-8");

		MypageDAO mypageDAO = new MypageDAO();
		MypageVO mypageVO = new MypageVO();

		
		int memberNumber = (Integer)req.getSession().getAttribute("memberNumber");

		mypageVO.setMemberNumber(memberNumber);
		mypageVO.setMemberNickname(req.getParameter("memberNickname"));

		mypageVO = mypageDAO.mypageinfo(memberNumber);

		req.setAttribute("memberPfp", mypageVO.getMemberPfp());
		req.setAttribute("memberNickname", mypageVO.getMemberNickname());
		req.setAttribute("memberComment", mypageVO.getMemberComment());
		
		mypageVO.setMemberNumber(memberNumber);
		
//		---------------------------------------------------------------------------------------------------------------------------

		System.out.println(mypageVO);
		
		List<MypageVO> creationList = mypageDAO.mypageCreations(mypageVO);
		req.setAttribute("creationList", creationList);
		
		List<MypageVO> mypageLikeCount = mypageDAO.mypageLikeCount(mypageVO);
		req.setAttribute("mypageLikeCount", mypageLikeCount);
		System.out.println();

		req.getRequestDispatcher("/app/mypage/mypage_creations.jsp").forward(req, resp);
		
	}

}
