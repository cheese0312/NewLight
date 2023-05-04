package com.newlight.app.creations;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dao.CreationsFileDAO;
import com.newlight.app.dao.LikesDAO;
import com.newlight.app.dto.CreationsDTO;
import com.newlight.app.dto.CreationsFileDTO;
import com.newlight.app.dto.CreationsVO;
import com.newlight.app.dto.LikesDTO;

public class CreationReadOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		int creationNumber = Integer.valueOf(req.getParameter("creationNumber"));
		int memberNumber = (Integer)req.getSession().getAttribute("memberNumber");
		
		CreationsDAO creationsDAO = new CreationsDAO();
		CreationsVO creationsVO = creationsDAO.creationContent(creationNumber);
		System.out.println(creationNumber);
		
		Map<String, Integer> followMap = new HashMap<String, Integer>();
		followMap.put("followerNumber",  creationsVO.getMemberNumber());
		followMap.put("followeeNumber", memberNumber);
		
		System.out.println(creationsVO);
		
		int isFollow = creationsDAO.followCount(followMap);
		
		CreationsFileDAO creationsFileDAO = new CreationsFileDAO();
		List<CreationsFileDTO> creationsFiles = creationsFileDAO.select(creationNumber);
		
		LikesDTO likesDTO = new LikesDTO();
		
		likesDTO.setCreationNumber(creationNumber);
		likesDTO.setMemberNumber(memberNumber);
		
		int creationComment = creationsDAO.creationComment(creationNumber);
		
		LikesDAO likesDAO = new LikesDAO();
		int likeCount = likesDAO.likeCount(creationNumber);
		int isLike = likesDAO.getLikeCount(likesDTO);
		List<CreationsVO> commentList = creationsDAO.commentList(creationNumber);
		
		creationsVO.setFiles(creationsFiles);
		creationsVO.setCreationNumber(creationNumber);
		
		req.setAttribute("creation", creationsVO);
		req.setAttribute("likeCount", likeCount);
		req.setAttribute("creationComment", creationComment);
		req.setAttribute("commentList", commentList);
		
		req.setAttribute("isFollow", isFollow);
		
		List<CreationsFileDTO> files = creationsFileDAO.aniList(creationNumber);
		
		req.setAttribute("files", files);
		
		CreationsVO checkPath = creationsDAO.creationRead(creationNumber);
		String path = null;
		
		if(checkPath.getCategoryName().equals("만화")) {
			path = "/app/creations/creation/aniView.jsp";
		}else {
			path = "/app/creations/creation/creation.jsp";
		}
			
		req.getRequestDispatcher(path).forward(req, resp);
		req.setAttribute("isLike", isLike);
		
//		req.getRequestDispatcher("/app/creations/creation/creation.jsp").forward(req, resp);

	}

}
