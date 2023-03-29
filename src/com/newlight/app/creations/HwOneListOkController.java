package com.newlight.app.creations;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;

public class HwOneListOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("손글씨 메인페이지");
			
		req.getRequestDispatcher("app/creations/handwrite/handwriteList.jsp").forward(req, resp);
	}
}
