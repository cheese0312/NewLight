package com.newlight.app.creationscomment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;

public class CommentDeleteOkController implements Execute {

   @Override
   public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
      CreationsDAO creationsDAO = new CreationsDAO();
      
      int memberNumber = Integer.valueOf(req.getParameter("memberNumber"));
      
      creationsDAO.commentDelete(memberNumber);

   }

}