package com.newlight.app.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.jni.File;

import com.newlight.app.Execute;
import com.newlight.app.dao.CommunityDAO;
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dao.CreationsFileDAO;
import com.newlight.app.dao.FollowsDAO;
import com.newlight.app.dao.LikesDAO;
import com.newlight.app.dao.MemberDAO;
import com.newlight.app.dao.QnADAO;
import com.newlight.app.dto.CreationsFileDTO;

public class DeleteOkController implements Execute{
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		CreationsDAO creationsDAO = new CreationsDAO();
		QnADAO qnaDAO = new QnADAO();
		LikesDAO likesDAO = new LikesDAO();
		FollowsDAO followsDAO = new FollowsDAO();
		CreationsFileDAO creationsfileDAO = new CreationsFileDAO();
		CommunityDAO communityDAO = new CommunityDAO();
		
		HttpSession session = req.getSession();
				
//		int memberNumber = (Integer)session.getAttribute("memberNumber");
		int memberNumber = 1;
//		int creationNumber = Integer.valueOf(req.getParameter("memberNumber"));
//		int qnaNumber = Integer.valueOf(req.getParameter("memberNumber"));
//		int likeNumber = Integer.valueOf(req.getParameter("memberNumber"));
//		int followNumber = Integer.valueOf(req.getParameter("memberNumber"));
//		int communityNumber = Integer.valueOf(req.getParameter("memberNumber"));
//		List<CreationsFileDTO> files = creationsfileDAO.select(creationNumber);
		
		System.out.println("ddddd");
		
		memberDAO.delete(memberNumber);
		creationsDAO.delete(memberNumber);
		qnaDAO.delete(memberNumber);
		likesDAO.delete(memberNumber);
		followsDAO.delete(memberNumber);
		communityDAO.delete(memberNumber);
		
		resp.sendRedirect("/");
		
	}
}
