package cn.oppotm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.oppotm.dao.UserDao;

public class UserServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
    	doPost(req,resp);
    };
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String username=req.getParameter("name");
    	String password=req.getParameter("password");
    	UserDao userdao=new UserDao();
    	int i=userdao.insertUser(username, password);
    	req.setAttribute("name", username);
    	req.getRequestDispatcher("login.jsp").forward(req, resp);
    }
}
