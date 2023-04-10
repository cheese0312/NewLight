package com.newlight.app.qna;

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
import com.newlight.app.dao.QnACommentDAO;
import com.newlight.app.vo.QnACommentVO;

public class QnACommentOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		int qnanumber = Integer.valueOf(req.getParameter("qnaNumber"));
		
		QnACommentDAO qnaCommentDAO = new QnACommentDAO();
		Gson gson = new Gson();
		JsonArray replies = new JsonArray();

		List<QnACommentVO> commentList = qnaCommentDAO.selectAll(qnanumber);

		for (QnACommentVO comment : commentList) {
			String commentJson = gson.toJson(comment);
			System.out.println(commentJson);
			replies.add(JsonParser.parseString(commentJson));
		}

		resp.setContentType("application/json;charset=utf8");

		PrintWriter out = resp.getWriter();
		out.print(replies.toString());
		out.close();

	}
}
