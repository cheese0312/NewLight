package com.newlight.app.communityComment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonParser;
import com.newlight.app.Execute;
import com.newlight.app.dao.CommunityCommentDAO;
import com.newlight.app.dto.CommunityCommentVO;

public class CommunityCommentListOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		int communityNumber = Integer.valueOf(req.getParameter("communityNumber"));
		CommunityCommentDAO communityCommentDAO = new CommunityCommentDAO();
		Gson gson = new Gson();
		JsonArray communityComments = new JsonArray();
		
		
		List<CommunityCommentVO> communityCommentList = communityCommentDAO.selectAll(communityNumber);
		
		for(CommunityCommentVO communityComment : communityCommentList) {
			String communityCommentJson = gson.toJson(communityComment);
			System.out.println(communityCommentJson); 
			communityComments.add(JsonParser.parseString(communityCommentJson));
		}
		
	
		
		resp.setContentType("application/json;charset=utf-8");
		
		
		
		PrintWriter out = resp.getWriter();
		out.print(communityComments.toString());
		out.close();
	}

}
