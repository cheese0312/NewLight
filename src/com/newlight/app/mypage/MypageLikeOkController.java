package com.newlight.app.mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dao.LikesDAO;
import com.newlight.app.dao.MypageDAO;
import com.newlight.app.dto.CreationsVO;
import com.newlight.app.dto.LikesDTO;
import com.newlight.app.dto.MemberDTO;
import com.newlight.app.dto.MypageVO;

public class MypageLikeOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		int memberNumber = (Integer)req.getSession().getAttribute("memberNumber");
		
		req.setCharacterEncoding("utf-8");

		MypageDAO mypageDAO = new MypageDAO();
		MypageVO mypageVO = new MypageVO();
		
		CreationsVO creationsVO = new CreationsVO();
		CreationsDAO creationsDAO = new CreationsDAO();
		
		LikesDAO likesDAO = new LikesDAO();
		
		mypageVO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
		mypageVO.setMemberNickname(req.getParameter("memberNickname"));
		
		mypageVO.setCreationTitle(req.getParameter("creationTitle"));
		mypageVO.setCreationSumnail(req.getParameter("creationSumnail"));
		
		
		mypageVO = mypageDAO.mypageinfo((Integer)req.getSession().getAttribute("memberNumber"));
		
		req.setAttribute("memberPfp", mypageVO.getMemberPfp());
		req.setAttribute("memberNickname", mypageVO.getMemberNickname());
		req.setAttribute("memberComment", mypageVO.getMemberComment());
		
//		--------------------------------------------------------------------------------------------------------------------------
		
		creationsVO.setMemberNumber(memberNumber);
		
		mypageVO.setMemberNumber(memberNumber);

		List<MypageVO> likeList = mypageDAO.LikeList(mypageVO);
		req.setAttribute("likeList", likeList);

		req.getRequestDispatcher("/app/mypage/mypage_like.jsp").forward(req, resp);

	}

}
