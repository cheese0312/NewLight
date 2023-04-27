package com.newlight.app.member;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.CommunityCommentDAO;
import com.newlight.app.dao.CommunityDAO;
import com.newlight.app.dao.CommunityFileDAO;
import com.newlight.app.dao.CreationCommentDAO;
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dao.CreationsFileDAO;
import com.newlight.app.dao.FollowsDAO;
import com.newlight.app.dao.LikesDAO;
import com.newlight.app.dao.MemberDAO;
import com.newlight.app.dao.MemberFileDAO;
import com.newlight.app.dao.QnACommentDAO;
import com.newlight.app.dao.QnADAO;
import com.newlight.app.dao.QnAFileDAO;
import com.newlight.app.dto.CommunityFileDTO;
import com.newlight.app.dto.CreationsFileDTO;
import com.newlight.app.dto.QnAFileDTO;

public class DeleteOkController implements Execute{
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QnACommentDAO qcDAO = new QnACommentDAO();
		QnAFileDAO qnaFileDAO = new QnAFileDAO();
		MemberDAO memberDAO = new MemberDAO();
		LikesDAO likeDAO = new LikesDAO();
		CommunityCommentDAO ccDAO = new CommunityCommentDAO();
		CommunityFileDAO cfDAO = new CommunityFileDAO();
		CommunityDAO communityDAO = new CommunityDAO();
		FollowsDAO followsDAO = new FollowsDAO();
		CreationCommentDAO creationCommentDAO = new CreationCommentDAO();
		CreationsFileDAO creationFileDAO = new CreationsFileDAO();
		CreationsDAO creationDAO = new CreationsDAO();
		QnADAO qnaDAO = new QnADAO();
		MemberFileDAO memberFileDAO = new MemberFileDAO();
		
		
		HttpSession session = req.getSession();
		System.out.println(session.getAttribute("memberNumber"));
		int memberNumber = (Integer)session.getAttribute("memberNumber");
				
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		String profilePath = req.getSession().getServletContext().getRealPath("/") + "userProfile/";
		
		List<QnAFileDTO> qnaFiles = qnaFileDAO.selectDelete(memberNumber);
		List<CommunityFileDTO> communityFiles = cfDAO.selectDelete(memberNumber);
		List<CreationsFileDTO> creationFiles = creationFileDAO.selectDelete(memberNumber);
		
		for(QnAFileDTO file : qnaFiles) {
			File temp = new File(uploadPath, file.getFileSystemName());
			
			if(temp.exists()) {
				temp.delete();
			}
		}
		
		for(CommunityFileDTO file : communityFiles) {
			File temp = new File(uploadPath, file.getFileSystemName());
			
			if(temp.exists()) {
				temp.delete();
			}
		}
		
		for(CreationsFileDTO file : creationFiles) {
			File temp = new File(uploadPath, file.getFileSystemName());
			
			if(temp.exists()) {
				temp.delete();
			}
		}
		
//		실제 프로필 이미지 파일 삭제 처리
		String pfpName = memberDAO.selectProfile(memberNumber);
		
		if(pfpName != null) {
			File file = new File(profilePath, pfpName);
			
			if(file.exists()) {
				file.delete();
			}
		}
		
		qcDAO.deleteMember(memberNumber);
		qnaFileDAO.deleteMember(memberNumber);
		qnaDAO.deleteMember(memberNumber);
		likeDAO.deleteMemeber(memberNumber);
		ccDAO.deleteMember(memberNumber);
		ccDAO.commenteAllDelete(memberNumber);
		cfDAO.deleteMember(memberNumber);
		communityDAO.deleteMember(memberNumber);
		followsDAO.deleteMember(memberNumber);
		creationCommentDAO.deleteMember(memberNumber);
		creationCommentDAO.commenteAllDelete(memberNumber);
		creationFileDAO.deleteMember(memberNumber);
		creationDAO.deleteMember(memberNumber);
		memberDAO.deleteMember(memberNumber);
		
		session.invalidate();
		
		resp.sendRedirect("/main/mainpageListOk.mi");
		
	}
}





