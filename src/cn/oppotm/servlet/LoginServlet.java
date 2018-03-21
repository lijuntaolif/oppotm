package cn.oppotm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.oppotm.dao.UserDao;

public class LoginServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	doPost(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	int i=0;
    	String name=req.getParameter("name");
    	String pwd=req.getParameter("pwd");
    	UserDao userdao=new UserDao();
    	i=userdao.selectByNameAndPwd(name, pwd);
    	if(i==1){
             resp.getWriter().print("true");
    	}else{
    		 resp.getWriter().print("false");
    	}
    }
}
