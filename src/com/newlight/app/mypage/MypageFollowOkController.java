package com.newlight.app.mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.MypageDAO;
import com.newlight.app.dto.MypageVO;

public class MypageFollowOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		
		MypageDAO mypageDAO = new MypageDAO();
		MypageVO mypageVO = mypageDAO.mypageinfo((Integer)req.getSession().getAttribute("memberNumber"));
		
		HttpSession session = req.getSession();
		
		System.out.println((Integer)req.getSession().getAttribute("memberNumber"));
		mypageVO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
		
		
//		mypageVO = mypageDAO.mypageinfo((Integer)req.getSession().getAttribute("memberNumber"));

		req.setAttribute("memberNickname", mypageVO.getMemberNickname());
		req.setAttribute("memberComment", mypageVO.getMemberComment());

//		session.setAttribute("memberNumber", session);
		
		List<MypageVO> followerList = mypageDAO.Followee(mypageVO);
		req.setAttribute("followerList", followerList);
		System.out.println(followerList);
		
		req.getRequestDispatcher("/app/mypage/mypage_follow.jsp").forward(req, resp);

	}

}
