package com.newlight.app.creations;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newlight.app.Execute;

public class HwOneInOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
			
		req.getRequestDispatcher("app/creations/handwrite/handwriteIn.jsp").forward(req, resp);

	}
}
