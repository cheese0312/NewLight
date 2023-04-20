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

public class ThemeListOkController implements Execute{
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CreationsVO creationsVO = new CreationsVO();
		CreationsDAO creationsDAO = new CreationsDAO();
		String path = "/app/creations/pageList/";
		String code = req.getParameter("categoryCode");
		String name = req.getParameter("categoryName");
		
		List<CreationsVO> creations = null;
		
		Map<String, String> cateMap = new HashMap<String, String>();
		cateMap.put("categoryCode", code);
		cateMap.put("categoryName", name);
		
		String title = code.equals("101") ? "별구름" : "별숲";
		title += " - "+name;
		
		creations = creationsDAO.selectMenu(cateMap);

		req.setAttribute("creations", creations);
		req.setAttribute("title", title);
		
		
		
		if(code.equals("101")) {
			switch(name) {
			case "손그림" : case "만화": case "폰트" :
				path += "pageList.jsp" ;
				break;
			case "배경화면" :
				path += "pageList2.jsp";
				break;
			case "카톡테마" :
				path += "pageList3.jsp";
				break;
			}
		}else {
			switch(name) {
			case "배경화면": case "트레이싱":
				path += "pageList2.jsp";
				break;
			case "카톡테마" :
				path += "pageList3.jsp";
				break;
			}
			
		}
		
		List<CreationsVO> creationsList = creationsDAO.selectMenu2(cateMap);
		System.out.println(creationsList);
		req.setAttribute("creationsList", creationsList);
		

		
		req.getRequestDispatcher(path).forward(req, resp);
		
	}

}
