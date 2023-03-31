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
import com.newlight.app.dto.CreationsVO;

public class CreationListOkController implements Execute{
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CreationsVO creationsVO = new CreationsVO();
		CreationsDAO creationsDAO = new CreationsDAO();
		
		
		List<CreationsVO> creations = creationsDAO.selectAll();
		System.out.println(creations);

		req.setAttribute("creations", creations);
		
		req.getRequestDispatcher("/app/creations/theme/kakaoBoard.jsp").forward(req, resp);
		
	}

}
