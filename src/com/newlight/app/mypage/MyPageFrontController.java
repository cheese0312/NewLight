package com.newlight.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyPageFrontController extends HttpServlet {
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
		case "/mypage/creationsOk.mp":
			new MypageCreationsOkController().execute(req, resp);
			break;

		case "/mypage/followOk.mp":
			new MypageFollowOkController().execute(req, resp);
			break;

		case "/mypage/likeOk.mp":
			System.out.println(target);

			switch (target) {
			case "/mypage/creationsOk.mp":
				System.out.println("마이페이지 내 작품 들어갈 예정!");
//			req.getRequestDispatcher("/app/mypage/mypage_creations.jsp").forward(req, resp);
				new MypageCreationsOkController().execute(req, resp);
				break;

			case "/mypage/followOk.mp":
				System.out.println("follows 컨트롤러!!");
				new MypageFollowOkController().execute(req, resp);
				break;

			case "/mypage/likeOk.mp":
				System.out.println("like 컨트롤러!!");
				new MypageLikeOkController().execute(req, resp);
				break;

			}

		}
	}
}
