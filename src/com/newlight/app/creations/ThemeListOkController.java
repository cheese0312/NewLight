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
		System.out.println(creations);
		
		Map<String, String> cateMap = new HashMap<String, String>();
		cateMap.put("categoryCode", code);
		cateMap.put("categoryName", name);
		
		String title = code.equals("101") ? "1차 창작물" : "2차 창작물";
		title += " - "+name;
		
		creations = creationsDAO.selectMenu(cateMap);

		req.setAttribute("creations", creations);
		req.setAttribute("title", title);
		
		System.out.println(creations);
		
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
		
		
//		if(code.equals("101") && name.equals("손그림") || name.equals("만화") || name.equals("폰트")) {
//			path = "/app/creations/pageList/pageList.jsp";
//		}else if() {}
		
//		손글씨+폰트+만화 / 1차 창작물 배경화면 + 2차 창작물 배경화면 + 트레이싱 / 카톡테마
		
		req.getRequestDispatcher("/app/creations/theme/kakaoThemeOne.jsp").forward(req, resp);
		
	}

}
