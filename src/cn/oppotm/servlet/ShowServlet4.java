package cn.oppotm.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.oppotm.dao.GoodDao;
import cn.oppotm.entity.Good;

public class ShowServlet4 extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String name=req.getParameter("name");
    	GoodDao gooddao=new GoodDao();
    	List<Good> glist=gooddao.selectByName(name);
    	req.setAttribute("glist", glist);
    	req.getRequestDispatcher("show.jsp").forward(req, resp);
    }
}
