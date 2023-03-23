package com.newlight.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;

public class LoginController implements Execute{
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Cookie[] cookies = req.getCookies();
		
		if(cookies != null){
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("memberId")) {
					req.setAttribute("memberId", cookie.getValue());
				}
			}
		}
		
		req.getRequestDispatcher("/app/member/login.jsp").forward(req, resp);
	}
}
