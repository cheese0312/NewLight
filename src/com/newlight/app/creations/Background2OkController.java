package com.newlight.app.creations;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newlight.app.Execute;
import com.newlight.app.dao.CreationsDAO;
import com.newlight.app.dto.CreationsDTO;
import com.newlight.app.dto.CreationsVO;

public class Background2OkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("2차 창작물 배경화면 진입!");
		req.setCharacterEncoding("utf-8");
		
		CreationsDTO creationsDTO = new CreationsDTO();
		CreationsVO creationsVO = new CreationsVO();
		CreationsDAO creationsDAO = new CreationsDAO();
		
		HttpSession session = req.getSession();
		
		List<CreationsVO> background2 = creationsDAO.category2Background(creationsVO);
		req.setAttribute("category2backgroundList", background2);
		System.out.println(background2);
		
		req.getRequestDispatcher("/app/creations/background/background2.jsp").forward(req, resp);

	}

}
