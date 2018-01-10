package cn.oppotm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.oppotm.dao.userDao;
import cn.oppotm.entity.User;

public class testServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setAttribute("user", "ni");
		req.getRequestDispatcher("2.jsp").forward(req, resp);
	}

}
