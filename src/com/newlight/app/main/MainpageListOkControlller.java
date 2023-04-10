package com.newlight.app.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.MainDAO;
import com.newlight.app.dto.MainVO;

public class MainpageListOkControlller implements Execute{
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MainVO mainVO = new MainVO();
		MainDAO mainDAO = new MainDAO();
		
		List<MainVO> main = null;
		
		main = mainDAO.selectList();
		System.out.println(main);
		
		req.setAttribute("main", main);
		
		req.getRequestDispatcher("/app/main/mainpage_newlight.jsp").forward(req, resp);
	}
}





