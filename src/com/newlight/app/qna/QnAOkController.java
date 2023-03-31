package com.newlight.app.qna;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.QnADAO;
import com.newlight.app.vo.QnAVO;

public class QnAOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		QnADAO qnaDAO = new QnADAO();
		System.out.println(qnaDAO);

		String temp = req.getParameter("page");

		int page = temp == null ? 1 : Integer.valueOf(temp);

		int rowCount = 10;
		int pageCount = 5;

		int startRow = (page - 1) * rowCount;

		Map<String, Integer> pageMap = new HashMap<>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);

		int total = qnaDAO.getTotal();

		int endPage = (int) (Math.ceil(page / (double) pageCount) * pageCount);

		int startPage = endPage - (pageCount - 1);

		int realEndPage = (int) Math.ceil(total / (double) rowCount);

		boolean prev = startPage > 1;

		endPage = endPage > realEndPage ? realEndPage : endPage;

		boolean next = endPage != realEndPage;

		List<QnAVO> qnaList = qnaDAO.selectAll(pageMap);

//		System.out.println(qnaList.get(0).getMemberNickname());

		req.setAttribute("qnaList", qnaList);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);

		req.getRequestDispatcher("/app/qna/qnaBoardList.jsp").forward(req, resp);
	}
}
