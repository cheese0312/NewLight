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
		MypageVO mypageVO = new MypageVO();
		
		HttpSession session = req.getSession();
		
		System.out.println((Integer)req.getSession().getAttribute("memberNumber"));
		
		mypageVO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
		
		String memberNickname = mypageDAO.mypageinfo((Integer)req.getSession().getAttribute("memberNumber"));
		System.out.println(memberNickname);
		
		req.setAttribute("memberNickname", memberNickname);
		
//		session.setAttribute("memberNumber", session);
		
		List<String> followerList = mypageDAO.Followee(mypageVO);
		req.setAttribute("followerList", followerList);
		System.out.println(followerList);
//		resp.sendRedirect("/mypage/followOk.mp");
		
		req.getRequestDispatcher("/app/mypage/mypage_follow.jsp").forward(req, resp);

	}

}
