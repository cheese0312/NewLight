package com.newlight.app.notification;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;
import com.newlight.app.dao.NotificationDAO;
import com.newlight.app.dto.NotificationDTO;

public class NotificationListOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("List controller 들어왔음돠.");
		NotificationDAO notificationDAO = new NotificationDAO();
		System.out.println("1111");
		
		String temp = req.getParameter("page");
	//	System.out.println(temp);
		
		int page = temp == null?1:Integer.valueOf(temp);
		
		int rowCount = 6;
		int pageCount = 5;
		
		int startRow = (page-1)*rowCount;
		
		Map<String, Integer> pageMap = new HashMap<>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		
		int total = notificationDAO.getTotal();
		
		int endPage = (int)(Math.ceil(page/(double)pageCount)*pageCount);
		
		int startPage = endPage - (pageCount-1);
		 
		int realEndPage = (int)Math.ceil(total/(double)rowCount);
		
		boolean prev = startPage > 1;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		boolean next = endPage != realEndPage;
		
	
		 
		List<NotificationDTO> notificationList = notificationDAO.selectAll(pageMap);
		
		//System.out.println(communityList.get(0).getMemberNickName());
		
		req.setAttribute("notificationList", notificationList);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		
		req.getRequestDispatcher("/app/notification/notificationList.jsp").forward(req, resp);

	}

}
