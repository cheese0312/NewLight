package com.newlight.app.creationscomment;

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
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dto.CreationsVO;

public class CommentListOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	      int creationNumber = Integer.valueOf(req.getParameter("creationNumber"));
	      CreationsVO creationVO = new CreationsVO();
	      CreationsDAO creationsDAO = new CreationsDAO();
	      Gson gson = new Gson();
	      JsonArray creationCommentList = new JsonArray();
	      
	      req.setAttribute("creationCommentList", creationsDAO.commentList(creationNumber));
	      
	      List<CreationsVO> creationsList = creationsDAO.commentList(creationNumber);
	      
	      for(CreationsVO creationComment : creationsList) {
	         String creationCommentJson = gson.toJson(creationComment);
	         System.out.println(creationCommentJson); 
	         creationCommentList.add(JsonParser.parseString(creationCommentJson));
	      }
	      resp.setContentType("application/json;charset=utf-8");
	      
	      System.out.println(creationNumber);

	      PrintWriter out = resp.getWriter();
	      out.print(creationCommentList.toString());
	      out.close();
	   }


	}

