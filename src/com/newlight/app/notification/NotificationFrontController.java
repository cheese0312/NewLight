package com.newlight.app.notification;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.community.CommunityListOkController;

public class NotificationFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
		System.out.println(target);

		switch (target) {
		case "/notification/notificationList.nc":
			System.out.println("공지사항 페이지 들어옴!");
			req.getRequestDispatcher("/app/notification/notificationList.jsp").forward(req, resp);
			break;
			
		case "/notification/notificationListOk.nc":
			System.out.println("communityListOk 들어간다!");
			// 임시로 이동 처리
//			req.getRequestDispatcher("/app/community/communityList.jsp").forward(req, resp);
			new NotificationListOkController().execute(req, resp);
			break;

		}
	}
}