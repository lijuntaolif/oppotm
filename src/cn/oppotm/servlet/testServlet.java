package cn.oppotm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.oppotm.dao.userDao;
import cn.oppotm.entity.User;

public class testServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		userDao userDao=new userDao();
		User user=userDao.selectUser(1);
		req.setAttribute("user", user);
		req.getRequestDispatcher("test.jsp").forward(req, resp);
	}

}
